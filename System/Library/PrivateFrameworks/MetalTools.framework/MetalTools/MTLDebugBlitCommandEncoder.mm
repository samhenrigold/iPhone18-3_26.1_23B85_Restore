@interface MTLDebugBlitCommandEncoder
- (MTLDebugBlitCommandEncoder)initWithBlitCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor;
- (id).cxx_construct;
- (void)_setDefaults;
- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationOffset:(unint64_t)destinationOffset size:(unint64_t)size;
- (void)copyFromTensor:(id)tensor sourceSlice:(MTLTensorSlice)slice toTensor:(id)toTensor destinationSlice:(MTLTensorSlice)destinationSlice;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0;
- (void)copyFromTexture:(id)texture toTexture:(id)toTexture;
- (void)copyIndirectCommandBuffer:(id)buffer sourceRange:(_NSRange)range destination:(id)destination destinationIndex:(unint64_t)index;
- (void)dealloc;
- (void)endEncoding;
- (void)fillBuffer:(id)buffer range:(_NSRange)range pattern4:(unsigned int)pattern4;
- (void)fillBuffer:(id)buffer range:(_NSRange)range value:(unsigned __int8)value;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region bytes:(const void *)bytes length:(unint64_t)length;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format;
- (void)filterCounterRangeWithFirstBatch:(unsigned int)batch lastBatch:(unsigned int)lastBatch filterIndex:(unsigned int)index;
- (void)generateMipmapsForTexture:(id)texture;
- (void)getTextureAccessCounters:(id)counters region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice resetCounters:(BOOL)resetCounters countersBuffer:(id)buffer countersBufferOffset:(unint64_t)offset;
- (void)internalValidateCopyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2;
- (void)invalidateCompressedTexture:(id)texture;
- (void)invalidateCompressedTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level;
- (void)optimizeContentsForCPUAccess:(id)access;
- (void)optimizeContentsForCPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level;
- (void)optimizeContentsForGPUAccess:(id)access;
- (void)optimizeContentsForGPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level;
- (void)optimizeIndirectCommandBuffer:(id)buffer withRange:(_NSRange)range;
- (void)resetCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)resetTextureAccessCounters:(id)counters region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice;
- (void)resolveCounters:(id)counters inRange:(_NSRange)range destinationBuffer:(id)buffer destinationOffset:(unint64_t)offset;
- (void)sampleCountersInBuffer:(id)buffer atSampleIndex:(unint64_t)index withBarrier:(BOOL)barrier;
- (void)updateFence:(id)fence;
- (void)validateCopyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2;
- (void)validateCopyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2;
- (void)validateCopyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2 move:(BOOL)self3;
- (void)validateCopyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel options:(unint64_t)self0 sliceCount:(unint64_t)self1 levelCount:(unint64_t)self2;
- (void)validateTextureAccess:(id)access region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice;
- (void)waitForFence:(id)fence;
@end

@implementation MTLDebugBlitCommandEncoder

- (void)_setDefaults
{
  *(&self->hasEndEncoding + 2) = 0;
  *(&self->hasEndEncoding + 3) = 0;
  *(&self->hasEndEncoding + 4) = 0;
  p_updatedFences = &self->updatedFences;
  var0 = self->updatedFences.__map_.var0;
  var1 = self->updatedFences.__map_.var1;
  self->updatedFences.__size_ = 0;
  v5 = (var1 - var0) >> 3;
  if (v5 >= 3)
  {
    do
    {
      operator delete(*var0);
      v6 = p_updatedFences->__map_.var1;
      var0 = (p_updatedFences->__map_.var0 + 1);
      p_updatedFences->__map_.var0 = var0;
      v5 = (v6 - var0) >> 3;
    }

    while (v5 > 2);
  }

  if (v5 == 1)
  {
    v7 = 256;
  }

  else
  {
    if (v5 != 2)
    {
      return;
    }

    v7 = 512;
  }

  p_updatedFences->__start_ = v7;
}

- (MTLDebugBlitCommandEncoder)initWithBlitCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor
{
  v11.receiver = self;
  v11.super_class = MTLDebugBlitCommandEncoder;
  v7 = [MTLToolsBlitCommandEncoder initWithBlitCommandEncoder:sel_initWithBlitCommandEncoder_parent_descriptor_ parent:encoder descriptor:?];
  v8 = v7;
  if (v7)
  {
    v7->_commandBuffer = buffer;
    [(MTLDebugBlitCommandEncoder *)v7 _setDefaults];
    if (descriptor)
    {
      for (i = 0; i != 4; ++i)
      {
        -[MTLDebugCommandBuffer addObject:retained:purgeable:](v8->_commandBuffer, "addObject:retained:purgeable:", [objc_msgSend(objc_msgSend(descriptor "sampleBufferAttachments")], 1, 0);
      }
    }
  }

  return v8;
}

- (void)dealloc
{
  p_updatedFences = &self->updatedFences;
  var0 = self->updatedFences.__map_.var0;
  var1 = self->updatedFences.__map_.var1;
  self->updatedFences.__size_ = 0;
  v6 = (var1 - var0) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*var0);
      v7 = p_updatedFences->__map_.var1;
      var0 = (p_updatedFences->__map_.var0 + 1);
      p_updatedFences->__map_.var0 = var0;
      v6 = (v7 - var0) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v8 = 256;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v8 = 512;
  }

  p_updatedFences->__start_ = v8;
LABEL_8:
  if (*(&self->hasEndEncoding + 2))
  {
    v9.receiver = self;
    v9.super_class = MTLDebugBlitCommandEncoder;
    [(MTLToolsObject *)&v9 dealloc];
  }

  else
  {
    [-[MTLToolsObject baseObject](self "baseObject")];
    v9.receiver = self;
    v9.super_class = MTLDebugBlitCommandEncoder;
    [(MTLToolsObject *)&v9 dealloc];
    MTLReportFailure();
  }
}

- (void)internalValidateCopyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2
{
  sliceCopy2 = options;
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if ((~options & 3) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLDebugValidateBlitOption(options & 0xFFFFFFFF9FFFFFFFLL, &v54);
  if (*(&self->hasEndEncoding + 4))
  {
    _MTLMessageContextPush_();
  }

  v19 = &selRef_loadTexture_slice_level_size_bytesPerRow_bytesPerImage_dstOrigin_handle_handleOffset_;
  v20 = &OBJC_IVAR___MTLToolsObject__device;
  if (!texture)
  {
    goto LABEL_167;
  }

  if (([texture conformsToProtocol:&unk_28423C818] & 1) == 0)
  {
    goto LABEL_164;
  }

  while (1)
  {
    if (![texture conformsToProtocol:{*(v19 + 376), var0, var1, var2, v48}])
    {
      goto LABEL_11;
    }

    device = self->super.super.super._device;
    if (device != [texture device])
    {
      _MTLMessageContextPush_();
    }

    if ([texture storageMode] == 3)
    {
LABEL_167:
      _MTLMessageContextPush_();
      if (!toTexture)
      {
        goto LABEL_168;
      }
    }

    else
    {
LABEL_11:
      if (!toTexture)
      {
        goto LABEL_168;
      }
    }

    if (([toTexture conformsToProtocol:*(v19 + 376)] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if ([toTexture conformsToProtocol:*(v19 + 376)])
    {
      v19 = self->super.super.super._device;
      if (v19 != [toTexture device])
      {
        _MTLMessageContextPush_();
      }

      if ([toTexture storageMode] == 3)
      {
LABEL_168:
        _MTLMessageContextPush_();
      }
    }

    if (!(size->var1 * size->var0 * size->var2))
    {
      var2 = size->var2;
      v48 = 0;
      var0 = size->var0;
      var1 = size->var1;
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
    if (texture)
    {
      break;
    }

    [MTLDebugBlitCommandEncoder internalValidateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:];
LABEL_164:
    _MTLMessageContextPush_();
  }

  if (toTexture)
  {
    v20 = size->var0;
    device = size->var1;
    sizeCopy = size;
    v19 = size->var2;
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    validateBlitProtectionOptions([(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] protectionOptions], texture, toTexture, @"texture", @"texture", &v54);
    v52 = toTexture + 72;
    pixelFormat = [texture pixelFormat];
    v49 = texture + 72;
    if (pixelFormat != [toTexture pixelFormat])
    {
      v22 = *(texture + 20);
      v23 = (texture + 72);
      if (((v22 & 0x20) == 0 || (*(toTexture + 80) & 0x20) == 0) && ((v22 & 0x40) == 0 || (*(toTexture + 80) & 0x40) == 0))
      {
        v24 = (texture + 72);
        if ((v22 & 0x20) == 0)
        {
          if ((*(toTexture + 80) & 0x20) != 0)
          {
            v24 = (toTexture + 72);
          }

          else
          {
            v24 = 0;
          }
        }

        v25 = (texture + 72);
        sliceCopy2 = slice;
        if ((v22 & 0x40) == 0)
        {
          if ((*(toTexture + 80) & 0x40) != 0)
          {
            v25 = (toTexture + 72);
          }

          else
          {
            v25 = 0;
          }
        }

        if (v24)
        {
          if (!v25 || v24 == v25)
          {
            v26 = v23 == v24 ? toTexture + 72 : texture + 72;
            if ((v26[9] & 4) == 0)
            {
              v27 = v24[3];
              if (v27 != 2)
              {
                v27 = 4;
              }

              if (v27 == *(v26 + 3))
              {
LABEL_71:
                sampleCount = [texture sampleCount];
                if (sampleCount == [toTexture sampleCount])
                {
                  goto LABEL_72;
                }

                goto LABEL_166;
              }
            }
          }

LABEL_70:
          var0 = *v23;
          var1 = *v52;
          _MTLMessageContextPush_();
          goto LABEL_71;
        }

        if (v25)
        {
          if (v23 == v25)
          {
            v28 = toTexture + 72;
          }

          else
          {
            v28 = texture + 72;
          }

          if ((v28[9] & 4) == 0 && *(v28 + 3) == 1)
          {
            goto LABEL_71;
          }

          goto LABEL_70;
        }

        v29 = *(texture + 11);
        v30 = *(toTexture + 11);
        v31 = *(toTexture + 20);
        if ((v22 & 0x400) == 0)
        {
          if ((v31 & 0x400) != 0)
          {
            v32 = (toTexture + 72);
          }

          else
          {
            v32 = 0;
          }

          goto LABEL_61;
        }

        v32 = (texture + 72);
        if ((v31 & 0x400) == 0)
        {
LABEL_61:
          if (v29 != v30 && v32)
          {
            if (v23 == v32)
            {
              v33 = toTexture + 72;
            }

            else
            {
              v33 = texture + 72;
            }

            if (*(v33 + 3) == v32[3])
            {
              v35 = v32[4];
              v34 = v32[5];
              v36 = v32[6];
              if (v23 == v32)
              {
                v20 /= v35;
                device /= v34;
                v19 /= v36;
              }

              else
              {
                v20 *= v35;
                device *= v34;
                v19 *= v36;
              }

              goto LABEL_71;
            }

            goto LABEL_70;
          }
        }

        if (v29 == v30)
        {
          goto LABEL_71;
        }

        goto LABEL_70;
      }

      if (*(texture + 11) != *(toTexture + 11))
      {
        var0 = *v23;
        var1 = *v52;
        _MTLMessageContextPush_();
      }
    }

    sliceCopy2 = slice;
    goto LABEL_71;
  }

  [MTLDebugBlitCommandEncoder internalValidateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:];
LABEL_166:
  [MTLDebugBlitCommandEncoder internalValidateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:];
LABEL_72:
  if ([texture isFramebufferOnly])
  {
    _MTLMessageContextPush_();
  }

  if ([toTexture isFramebufferOnly])
  {
    _MTLMessageContextPush_();
  }

  if ([texture mipmapLevelCount] <= level)
  {
    levelCopy = level;
    var1 = [texture mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  numFaces = [texture numFaces];
  if ([texture arrayLength] * numFaces <= sliceCopy2)
  {
    [MTLDebugBlitCommandEncoder internalValidateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:];
  }

  if ([toTexture mipmapLevelCount] <= destinationLevel)
  {
    destinationLevelCopy = destinationLevel;
    mipmapLevelCount = [toTexture mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  numFaces2 = [toTexture numFaces];
  if ([toTexture arrayLength] * numFaces2 <= destinationSlice)
  {
    [MTLDebugBlitCommandEncoder internalValidateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:];
  }

  _MTLMessageContextEnd();
  [texture pixelFormat];
  [texture width];
  [texture height];
  [texture depth];
  [texture sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();
  [toTexture pixelFormat];
  [toTexture width];
  [toTexture height];
  [toTexture depth];
  [toTexture sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();
  _MTLAdjustMTLSize();
  _MTLAdjustMTLSize();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  v40 = origin->var0;
  if ((v49[9] & 4) != 0)
  {
    if (v40)
    {
      _MTLMessageContextPush_();
    }

    if (origin->var1)
    {
      _MTLMessageContextPush_();
    }

    if (origin->var2)
    {
LABEL_169:
      _MTLMessageContextPush_();
    }
  }

  else
  {
    if (sizeCopy->var0 + v40)
    {
      _MTLMessageContextPush_();
    }

    if (sizeCopy->var1 + origin->var1)
    {
      _MTLMessageContextPush_();
    }

    if (sizeCopy->var2 + origin->var2)
    {
      goto LABEL_169;
    }
  }

  v41 = destinationOrigin->var0;
  if ((v52[9] & 4) != 0)
  {
    if (v41)
    {
      _MTLMessageContextPush_();
    }

    if (destinationOrigin->var1)
    {
      _MTLMessageContextPush_();
    }

    if (destinationOrigin->var2)
    {
LABEL_170:
      _MTLMessageContextPush_();
    }
  }

  else
  {
    if (v41 + v20)
    {
      _MTLMessageContextPush_();
    }

    if (destinationOrigin->var1 + device)
    {
      _MTLMessageContextPush_();
    }

    if (destinationOrigin->var2 + v19)
    {
      goto LABEL_170;
    }
  }

  if ((v49[9] & 4) != 0)
  {
    if (origin->var0 % *(v49 + 4))
    {
      _MTLMessageContextPush_();
    }

    if (origin->var1 % *(v49 + 5))
    {
      _MTLMessageContextPush_();
    }

    if (origin->var2 % *(v49 + 6))
    {
      _MTLMessageContextPush_();
    }

    if (0uLL % *(v49 + 4))
    {
      _MTLMessageContextPush_();
    }

    if (0uLL % *(v49 + 5))
    {
      _MTLMessageContextPush_();
    }

    if (0uLL % *(v49 + 6))
    {
      _MTLMessageContextPush_();
    }
  }

  if ((v52[9] & 4) != 0)
  {
    if (destinationOrigin->var0 % *(v52 + 4))
    {
      _MTLMessageContextPush_();
    }

    if (destinationOrigin->var1 % *(v52 + 5))
    {
      _MTLMessageContextPush_();
    }

    if (destinationOrigin->var2 % *(v52 + 6))
    {
      _MTLMessageContextPush_();
    }

    if (0uLL % *(v52 + 4))
    {
      _MTLMessageContextPush_();
    }

    if (0uLL % *(v52 + 5))
    {
      _MTLMessageContextPush_();
    }

    if (0uLL % *(v52 + 6))
    {
      _MTLMessageContextPush_();
    }
  }

  if ((v49[9] & 0x20) != 0 || (v52[9] & 0x20) != 0)
  {
    if (origin->var0)
    {
      _MTLMessageContextPush_();
    }

    if (origin->var1)
    {
      _MTLMessageContextPush_();
    }

    if (origin->var2)
    {
      _MTLMessageContextPush_();
    }

    if (sizeCopy->var0)
    {
      _MTLMessageContextPush_();
    }

    if (sizeCopy->var1)
    {
      _MTLMessageContextPush_();
    }

    if (sizeCopy->var2)
    {
      _MTLMessageContextPush_();
    }

    if (destinationOrigin->var0)
    {
      _MTLMessageContextPush_();
    }

    if (destinationOrigin->var1)
    {
      _MTLMessageContextPush_();
    }

    if (destinationOrigin->var2)
    {
      _MTLMessageContextPush_();
    }

    if (v20)
    {
      _MTLMessageContextPush_();
    }

    if (device)
    {
      _MTLMessageContextPush_();
    }

    if (v19)
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
}

- (void)validateCopyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2 move:(BOOL)self3
{
  v17 = *origin;
  v16 = *size;
  v15 = *destinationOrigin;
  [(MTLDebugBlitCommandEncoder *)self internalValidateCopyFromTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v17 sourceSize:&v16 toTexture:destinationSlice destinationSlice:destinationLevel destinationLevel:&v15 destinationOrigin:options options:?];
  v17.var2 = 0;
  *&v17.var0 = texture;
  v16.var2 = 0;
  *&v16.var0 = toTexture;
  validateResourceAliasing(&v17, &v16, move);
}

- (void)validateCopyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel options:(unint64_t)self0 sliceCount:(unint64_t)self1 levelCount:(unint64_t)self2
{
  v23 = 0uLL;
  v24[0] = 0;
  v21 = *&size->var0;
  v22[0] = size->var2;
  v19 = 0uLL;
  v20 = 0;
  [(MTLDebugBlitCommandEncoder *)self internalValidateCopyFromTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v23 sourceSize:&v21 toTexture:toTexture destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:&v19 options:options];
  *&v23 = ResourceIdentity::UnwindTexture(texture, slice, count, level, levelCount, v24, v24 + 1);
  DWORD2(v23) = [texture usage];
  HIDWORD(v23) = [texture bufferBytesPerRow];
  *&v21 = ResourceIdentity::UnwindTexture(toTexture, destinationSlice, count, destinationLevel, levelCount, v22, v22 + 1);
  DWORD2(v21) = [toTexture usage];
  HIDWORD(v21) = [toTexture bufferBytesPerRow];
  v19 = v23;
  v20 = v24[0];
  v17 = v21;
  v18 = v22[0];
  validateResourceAliasing(&v19, &v17, 1);
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  v24 = *origin;
  v23 = *size;
  v22 = *destinationOrigin;
  LOBYTE(v20) = 0;
  [(MTLDebugBlitCommandEncoder *)self validateCopyFromTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v24 sourceSize:&v23 toTexture:destinationSlice destinationSlice:destinationLevel destinationLevel:&v22 destinationOrigin:0 options:v20 move:?];
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:texture retained:1 purgeable:1];
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:toTexture retained:1 purgeable:1];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v24 = *origin;
  v23 = *size;
  baseObject3 = [toTexture baseObject];
  v22 = *destinationOrigin;
  [baseObject copyFromTexture:baseObject2 sourceSlice:slice sourceLevel:level sourceOrigin:&v24 sourceSize:&v23 toTexture:baseObject3 destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:&v22];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2
{
  if ((options & 0x20000000) == 0)
  {
    v33 = options & 0xFFFFFFFF9FFFFFFFLL;
    v35 = *&origin->var0;
    *&v36 = origin->var2;
    v40 = *size;
    v39 = *destinationOrigin;
    LOBYTE(v30) = 0;
    [(MTLDebugBlitCommandEncoder *)self validateCopyFromTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v35 sourceSize:&v40 toTexture:toTexture destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:&v39 options:options move:v30];
    toTextureCopy = toTexture;
    v19 = toTexture + 72;
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    v20 = *(texture + 20);
    if ((~v20 & 0x60) == 0 && (~*(v19 + 2) & 0x60) == 0)
    {
      [(__CFString *)_MTLDebugBlitOptionString(v33) cStringUsingEncoding:4];
      _MTLMessageContextPush_();
      v20 = *(texture + 20);
    }

    if ((options & 1) != 0 && (v20 & 0x20) == 0)
    {
      [(__CFString *)_MTLDebugBlitOptionString(v33) cStringUsingEncoding:4];
      _MTLMessageContextPush_();
      v20 = *(texture + 20);
    }

    if ((options & 2) != 0 && (v20 & 0x40) == 0)
    {
      [(__CFString *)_MTLDebugBlitOptionString(v33) cStringUsingEncoding:4];
      _MTLMessageContextPush_();
    }

    v21 = *(v19 + 2);
    if (options)
    {
      levelCopy2 = level;
      if ((v21 & 0x20) == 0)
      {
        [(__CFString *)_MTLDebugBlitOptionString(v33) cStringUsingEncoding:4];
        _MTLMessageContextPush_();
        v21 = *(v19 + 2);
      }

      if ((options & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      levelCopy2 = level;
      if ((options & 2) == 0)
      {
LABEL_17:
        _MTLMessageContextEnd();
        *(&self->hasEndEncoding + 3) = 1;
        [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:texture retained:1 purgeable:1];
        [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:toTextureCopy retained:1 purgeable:1];
        baseObject = [(MTLToolsObject *)self baseObject];
        baseObject2 = [texture baseObject];
        v40 = *origin;
        v39 = *size;
        baseObject3 = [toTextureCopy baseObject];
        v34 = *destinationOrigin;
        [baseObject copyFromTexture:baseObject2 sourceSlice:slice sourceLevel:levelCopy2 sourceOrigin:&v40 sourceSize:&v39 toTexture:baseObject3 destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:&v34 options:v33];
        return;
      }
    }

    if ((v21 & 0x40) == 0)
    {
      [(__CFString *)_MTLDebugBlitOptionString(v33) cStringUsingEncoding:4];
      _MTLMessageContextPush_();
    }

    goto LABEL_17;
  }

  v35 = *&origin->var0;
  *&v36 = origin->var2;
  v40 = *size;
  v39 = *destinationOrigin;
  LOBYTE(v30) = 0;
  [(MTLDebugBlitCommandEncoder *)self validateCopyFromTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v35 sourceSize:&v40 toTexture:toTexture destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:&v39 options:options move:v30];
  *(&self->hasEndEncoding + 3) = 1;
  baseObject4 = [(MTLToolsObject *)self baseObject];
  baseObject5 = [texture baseObject];
  v35 = *&origin->var0;
  *&v36 = origin->var2;
  v40 = *size;
  baseObject6 = [toTexture baseObject];
  v39 = *destinationOrigin;
  [baseObject4 copyFromTexture:baseObject5 sourceSlice:slice sourceLevel:level sourceOrigin:&v35 sourceSize:&v40 toTexture:baseObject6 destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:&v39 options:options & 0xFFFFFFFF9FFFFFFFLL];
}

- (void)validateCopyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2
{
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if ((~options & 3) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLDebugValidateBlitOption(options & 0xFFFFFFFF9FFFFFFFLL, &v60);
  if (*(&self->hasEndEncoding + 4))
  {
    _MTLMessageContextPush_();
  }

  depth = &OBJC_IVAR___MTLToolsObject__device;
  if (!buffer)
  {
    goto LABEL_65;
  }

  originCopy = &selRef_loadTexture_slice_level_size_bytesPerRow_bytesPerImage_dstOrigin_handle_handleOffset_;
  if (([buffer conformsToProtocol:&unk_284222E68] & 1) == 0)
  {
    goto LABEL_63;
  }

  while (1)
  {
    if ([buffer conformsToProtocol:{originCopy[15].var0, var0}] && (v18 = *(&self->super.super.super.super.isa + *depth), v18 != objc_msgSend(buffer, "device")))
    {
LABEL_65:
      _MTLMessageContextPush_();
      if (!texture)
      {
        goto LABEL_66;
      }
    }

    else if (!texture)
    {
      goto LABEL_66;
    }

    if (([texture conformsToProtocol:&unk_28423C818] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if ([texture conformsToProtocol:&unk_28423C818])
    {
      v19 = *(&self->super.super.super.super.isa + *depth);
      if (v19 != [texture device])
      {
        _MTLMessageContextPush_();
      }

      if ([texture storageMode] == 3)
      {
LABEL_66:
        _MTLMessageContextPush_();
      }
    }

    if (!(size->var1 * size->var0 * size->var2))
    {
      var2 = size->var2;
      v30 = 0;
      var0 = size->var0;
      var1 = size->var1;
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    validateBlitProtectionOptions([(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] protectionOptions], buffer, texture, @"buffer", @"texture", &v60);
    if ([texture isFramebufferOnly])
    {
      _MTLMessageContextPush_();
    }

    bufferCopy = buffer;
    originCopy = origin;
    if ([texture mipmapLevelCount] <= level)
    {
      levelCopy = level;
      var1 = [texture mipmapLevelCount];
      _MTLMessageContextPush_();
    }

    numFaces = [texture numFaces];
    if ([texture arrayLength] * numFaces <= slice)
    {
      [MTLDebugBlitCommandEncoder internalValidateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:];
    }

    _MTLMessageContextEnd();
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v34 = *depth;
    [texture pixelFormat];
    buffer = [texture width];
    [texture height];
    depth = [texture depth];
    [texture sampleCount];
    MTLGetTextureLevelInfoForDeviceWithOptions();
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    if (size->var0 + origin->var0)
    {
      var0 = size->var0 + origin->var0;
      var1 = 0;
      _MTLMessageContextPush_();
    }

    if (size->var1 + origin->var1 > *(&v53 + 1))
    {
      var0 = size->var1 + origin->var1;
      var1 = *(&v53 + 1);
      _MTLMessageContextPush_();
    }

    if (size->var2 + origin->var2 > v54)
    {
      var0 = size->var2 + origin->var2;
      var1 = v54;
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
    if (texture)
    {
      break;
    }

    [MTLDebugBlitCommandEncoder validateCopyFromBuffer:sourceOffset:sourceBytesPerRow:sourceBytesPerImage:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:];
LABEL_63:
    _MTLMessageContextPush_();
  }

  v21 = (texture + 72);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v49 = *origin;
  v47 = *&size->var0;
  v48 = size->var2;
  v44 = v57;
  v45 = v58;
  v46 = v59;
  v40 = v53;
  v41 = v54;
  v42 = v55;
  v43 = v56;
  v22 = *(texture + 88);
  textureCopy = *(texture + 72);
  v37 = v22;
  v38 = *(texture + 104);
  v39 = *(texture + 15);
  _MTLAdjustMTLSize();
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (*(&v57 + 1))
  {
    if (offset % *(&v57 + 1))
    {
      var0 = offset;
      var1 = *(&v57 + 1);
      _MTLMessageContextPush_();
    }
  }

  else
  {
    [MTLDebugBlitCommandEncoder validateCopyFromBuffer:sourceOffset:sourceBytesPerRow:sourceBytesPerImage:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:];
  }

  if ((*(texture + 81) & 4) != 0)
  {
    if (origin->var0 % *(texture + 13))
    {
      var1 = *v21;
      var2 = *(texture + 13);
      var0 = origin->var0;
      _MTLMessageContextPush_();
    }

    if (origin->var1 % *(texture + 14))
    {
      var1 = *v21;
      var2 = *(texture + 14);
      var0 = origin->var1;
      _MTLMessageContextPush_();
    }

    if (origin->var2 % *(texture + 15))
    {
      var1 = *v21;
      var2 = *(texture + 15);
      var0 = origin->var2;
      _MTLMessageContextPush_();
    }

    if (v50 % *(texture + 13))
    {
      var1 = *v21;
      var2 = *(texture + 13);
      var0 = v50;
      _MTLMessageContextPush_();
    }

    if (v51 % *(texture + 14))
    {
      var1 = *v21;
      var2 = *(texture + 14);
      var0 = v51;
      _MTLMessageContextPush_();
    }

    if (v52 % *(texture + 15))
    {
      var1 = *v21;
      var2 = *(texture + 15);
      var0 = v52;
      _MTLMessageContextPush_();
    }

    if ((*(texture + 81) & 0x20) != 0)
    {
      if ((options & 4) == 0)
      {
        goto LABEL_67;
      }
    }

    else if ((options & 4) != 0)
    {
LABEL_67:
      var0 = *v21;
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  [texture pixelFormat];
  [texture sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();
  v23 = -row - image + offset;
  if (v23 > [bufferCopy length])
  {
    imageCopy = v23 + *(&v42 + 1) * image;
    v28 = [bufferCopy length];
    _MTLMessageContextPush_();
  }

  if (row % *(&v57 + 1))
  {
    imageCopy = row;
    v28 = *(&v57 + 1);
    _MTLMessageContextPush_();
  }

  if (image % *(&v57 + 1))
  {
    imageCopy = image;
    v28 = *(&v57 + 1);
    _MTLMessageContextPush_();
  }

  if ([texture textureType] != 9 && row > *(&v57 + 1) * _MTLDebugFindMaxTextureWidth(*(&self->super.super.super.super.isa + v34), texture))
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *&v41 = 0;
  v40 = bufferCopy;
  *&v37 = 0;
  textureCopy = texture;
  validateResourceAliasing(&v40, &textureCopy, 0);
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  v23 = *size;
  v22 = *origin;
  [(MTLDebugBlitCommandEncoder *)self validateCopyFromBuffer:buffer sourceOffset:offset sourceBytesPerRow:row sourceBytesPerImage:image sourceSize:&v23 toTexture:slice destinationSlice:level destinationLevel:&v22 destinationOrigin:0 options:?];
  if ((~*(texture + 20) & 0x60) == 0)
  {
    v20 = *(texture + 9);
    MTLReportFailure();
  }

  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:buffer retained:1 purgeable:1, v20];
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:texture retained:1 purgeable:1];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  v23 = *size;
  baseObject3 = [texture baseObject];
  v22 = *origin;
  [baseObject copyFromBuffer:baseObject2 sourceOffset:offset sourceBytesPerRow:row sourceBytesPerImage:image sourceSize:&v23 toTexture:baseObject3 destinationSlice:slice destinationLevel:level destinationOrigin:&v22];
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2
{
  v16 = options & 0xFFFFFFFF9FFFFFFFLL;
  v25 = *&size->var0;
  *&v26 = size->var2;
  v29 = *origin;
  [(MTLDebugBlitCommandEncoder *)self validateCopyFromBuffer:buffer sourceOffset:offset sourceBytesPerRow:row sourceBytesPerImage:image sourceSize:&v25 toTexture:slice destinationSlice:level destinationLevel:&v29 destinationOrigin:options options:?];
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  v17 = *(texture + 20);
  if ((options & 1) != 0 && (v17 & 0x20) == 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(v16) cStringUsingEncoding:4];
    _MTLMessageContextPush_();
    v17 = *(texture + 20);
  }

  if ((options & 2) != 0 && (v17 & 0x40) == 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(v16) cStringUsingEncoding:4];
    _MTLMessageContextPush_();
    v17 = *(texture + 20);
  }

  if ((v17 & 0x20) != 0 && !v16 && (v17 & 0x40) != 0)
  {
    [@"MTLBlitOptionNone" cStringUsingEncoding:4];
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:buffer retained:1 purgeable:1];
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:texture retained:1 purgeable:1];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  v29 = *size;
  baseObject3 = [texture baseObject];
  v24 = *origin;
  [baseObject copyFromBuffer:baseObject2 sourceOffset:offset sourceBytesPerRow:row sourceBytesPerImage:image sourceSize:&v29 toTexture:baseObject3 destinationSlice:slice destinationLevel:level destinationOrigin:&v24 options:v16];
}

- (void)validateCopyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2
{
  selfCopy = self;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if ((~options & 3) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLDebugValidateBlitOption(options & 0xFFFFFFFF9FFFFFFFLL, &v64);
  if (*(&selfCopy->hasEndEncoding + 4))
  {
    _MTLMessageContextPush_();
  }

  depth = &OBJC_IVAR___MTLToolsObject__device;
  if (!texture)
  {
    goto LABEL_71;
  }

  v20 = &selRef_loadTexture_slice_level_size_bytesPerRow_bytesPerImage_dstOrigin_handle_handleOffset_;
  if (([texture conformsToProtocol:&unk_28423C818] & 1) == 0)
  {
    goto LABEL_69;
  }

  while (1)
  {
    if (![texture conformsToProtocol:v20[47]])
    {
      goto LABEL_11;
    }

    v21 = *(&selfCopy->super.super.super.super.isa + *depth);
    if (v21 != [texture device])
    {
      _MTLMessageContextPush_();
    }

    if ([texture storageMode] == 3)
    {
LABEL_71:
      _MTLMessageContextPush_();
      if (!buffer)
      {
        goto LABEL_72;
      }
    }

    else
    {
LABEL_11:
      if (!buffer)
      {
        goto LABEL_72;
      }
    }

    if (([buffer conformsToProtocol:&unk_284222E68] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if ([buffer conformsToProtocol:&unk_284222E68])
    {
      v22 = *(&selfCopy->super.super.super.super.isa + *depth);
      if (v22 != [buffer device])
      {
LABEL_72:
        _MTLMessageContextPush_();
      }
    }

    if (!(size->var1 * size->var0 * size->var2))
    {
      var2 = size->var2;
      v36 = 0;
      var0 = size->var0;
      var1 = size->var1;
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    v64 = 0u;
    [(MTLToolsObject *)selfCopy device];
    _MTLMessageContextBegin_();
    validateBlitProtectionOptions([(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)selfCopy commandBuffer] protectionOptions], texture, buffer, @"texture", @"buffer", &v64);
    if ([texture isFramebufferOnly])
    {
      _MTLMessageContextPush_();
    }

    if ([texture mipmapLevelCount] <= level)
    {
      levelCopy = level;
      var1 = [texture mipmapLevelCount];
      _MTLMessageContextPush_();
    }

    bufferCopy = buffer;
    numFaces = [texture numFaces];
    if ([texture arrayLength] * numFaces <= slice)
    {
      [MTLDebugBlitCommandEncoder internalValidateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:];
    }

    _MTLMessageContextEnd();
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v38 = *depth;
    slice = *(&selfCopy->super.super.super.super.isa + v38);
    buffer = [texture pixelFormat];
    [texture width];
    v20 = selfCopy;
    selfCopy = [texture height];
    depth = [texture depth];
    [texture sampleCount];
    MTLGetTextureLevelInfoForDeviceWithOptions();
    if (texture)
    {
      break;
    }

    [MTLDebugBlitCommandEncoder validateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:options:];
LABEL_69:
    _MTLMessageContextPush_();
  }

  v24 = (texture + 72);
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v52 = *&origin->var0;
  v53 = origin->var2;
  v50 = *&size->var0;
  v51 = size->var2;
  v47 = v61;
  v48 = v62;
  v49 = v63;
  textureCopy = v57;
  v44 = v58;
  v45 = v59;
  v46 = v60;
  v25 = *(texture + 88);
  v39 = *(texture + 72);
  v40 = v25;
  v41 = *(texture + 104);
  v42 = *(texture + 15);
  _MTLAdjustMTLSize();
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0;
  [v20 device];
  _MTLMessageContextBegin_();
  v26 = origin->var0;
  if ((*(texture + 81) & 4) != 0)
  {
    v28 = v54 + v26;
    if (v28 > v60)
    {
      var0 = v28;
      var1 = v60;
      _MTLMessageContextPush_();
    }

    if (v55 + origin->var1 > *(&v60 + 1))
    {
      var0 = v55 + origin->var1;
      var1 = *(&v60 + 1);
      _MTLMessageContextPush_();
    }

    if (v56 + origin->var2 > v61)
    {
      var0 = v56 + origin->var2;
      var1 = v61;
LABEL_74:
      _MTLMessageContextPush_();
    }
  }

  else
  {
    v27 = size->var0 + v26;
    if (v27 > v57)
    {
      var0 = v27;
      var1 = v57;
      _MTLMessageContextPush_();
    }

    if (size->var1 + origin->var1 > *(&v57 + 1))
    {
      var0 = size->var1 + origin->var1;
      var1 = *(&v57 + 1);
      _MTLMessageContextPush_();
    }

    if (size->var2 + origin->var2 > v58)
    {
      var0 = size->var2 + origin->var2;
      var1 = v58;
      goto LABEL_74;
    }
  }

  if (*(&v61 + 1))
  {
    if (offset % *(&v61 + 1))
    {
      var0 = offset;
      var1 = *(&v61 + 1);
      _MTLMessageContextPush_();
    }
  }

  else
  {
    [MTLDebugBlitCommandEncoder validateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:options:];
  }

  if ((*(texture + 81) & 4) != 0)
  {
    if (origin->var0 % *(texture + 13))
    {
      var1 = *v24;
      var2 = *(texture + 13);
      var0 = origin->var0;
      _MTLMessageContextPush_();
    }

    if (origin->var1 % *(texture + 14))
    {
      var1 = *v24;
      var2 = *(texture + 14);
      var0 = origin->var1;
      _MTLMessageContextPush_();
    }

    if (origin->var2 % *(texture + 15))
    {
      var1 = *v24;
      var2 = *(texture + 15);
      var0 = origin->var2;
      _MTLMessageContextPush_();
    }

    if (v54 % *(texture + 13))
    {
      var1 = *v24;
      var2 = *(texture + 13);
      var0 = v54;
      _MTLMessageContextPush_();
    }

    if (v55 % *(texture + 14))
    {
      var1 = *v24;
      var2 = *(texture + 14);
      var0 = v55;
      _MTLMessageContextPush_();
    }

    if (v56 % *(texture + 15))
    {
      var1 = *v24;
      var2 = *(texture + 15);
      var0 = v56;
      _MTLMessageContextPush_();
    }

    if ((*(texture + 81) & 0x20) != 0)
    {
      if ((options & 4) == 0)
      {
        goto LABEL_75;
      }
    }

    else if ((options & 4) != 0)
    {
LABEL_75:
      var0 = *v24;
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  [v20 device];
  _MTLMessageContextBegin_();
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  textureCopy = 0u;
  v44 = 0u;
  [texture pixelFormat];
  [texture sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();
  v29 = -row - image + offset;
  if (v29 > [bufferCopy length])
  {
    imageCopy = v29 + *(&v45 + 1) * image;
    v34 = [bufferCopy length];
    _MTLMessageContextPush_();
  }

  if (row % *(&v61 + 1))
  {
    _MTLMessageContextPush_();
    imageCopy = row;
    v34 = *(&v61 + 1);
    _MTLMessageContextPush_();
  }

  if (image % *(&v61 + 1))
  {
    imageCopy = image;
    v34 = *(&v61 + 1);
    _MTLMessageContextPush_();
  }

  if ([texture textureType] != 9 && row > *(&v61 + 1) * _MTLDebugFindMaxTextureWidth(*(v20 + v38), texture))
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *&v44 = 0;
  textureCopy = texture;
  *&v40 = 0;
  v39 = bufferCopy;
  validateResourceAliasing(&textureCopy, &v39, 0);
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1
{
  v22 = *origin;
  v21 = *size;
  [(MTLDebugBlitCommandEncoder *)self validateCopyFromTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v22 sourceSize:&v21 toBuffer:offset destinationOffset:row destinationBytesPerRow:image destinationBytesPerImage:0 options:?];
  if ((~*(texture + 20) & 0x60) == 0)
  {
    v19 = *(texture + 9);
    MTLReportFailure();
  }

  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:texture retained:1 purgeable:1, v19];
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:buffer retained:1 purgeable:1];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v22 = *origin;
  v21 = *size;
  [baseObject copyFromTexture:baseObject2 sourceSlice:slice sourceLevel:level sourceOrigin:&v22 sourceSize:&v21 toBuffer:objc_msgSend(buffer destinationOffset:"baseObject") destinationBytesPerRow:offset destinationBytesPerImage:{row, image}];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2
{
  v17 = options & 0xFFFFFFFF9FFFFFFFLL;
  v25 = *&origin->var0;
  *&v26 = origin->var2;
  v29 = *size;
  [(MTLDebugBlitCommandEncoder *)self validateCopyFromTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v25 sourceSize:&v29 toBuffer:offset destinationOffset:row destinationBytesPerRow:image destinationBytesPerImage:options options:?];
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  v18 = *(texture + 20);
  if ((options & 1) != 0 && (v18 & 0x20) == 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(v17) cStringUsingEncoding:4];
    _MTLMessageContextPush_();
    v18 = *(texture + 20);
  }

  if ((options & 2) != 0 && (v18 & 0x40) == 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(v17) cStringUsingEncoding:4];
    _MTLMessageContextPush_();
    v18 = *(texture + 20);
  }

  if ((v18 & 0x20) != 0 && !v17 && (v18 & 0x40) != 0)
  {
    [@"MTLBlitOptionNone" cStringUsingEncoding:4];
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:texture retained:1 purgeable:1];
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:buffer retained:1 purgeable:1];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v29 = *origin;
  v23 = *&size->var0;
  var2 = size->var2;
  [baseObject copyFromTexture:baseObject2 sourceSlice:slice sourceLevel:level sourceOrigin:&v29 sourceSize:&v23 toBuffer:objc_msgSend(buffer destinationOffset:"baseObject") destinationBytesPerRow:offset destinationBytesPerImage:row options:{image, v17}];
}

- (void)generateMipmapsForTexture:(id)texture
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!texture)
  {
    _MTLMessageContextPush_();
  }

  if (([texture conformsToProtocol:&unk_28423C818] & 1) == 0)
  {
    goto LABEL_17;
  }

  while (1)
  {
    device = self->super.super.super._device;
    if (device != [texture device])
    {
      _MTLMessageContextPush_();
    }

    if ([texture storageMode] == 3)
    {
      _MTLMessageContextPush_();
    }

    if ([texture mipmapLevelCount] <= 1)
    {
      [MTLDebugBlitCommandEncoder generateMipmapsForTexture:texture];
    }

    v6 = (texture + 72);
    v7 = *(texture + 20);
    if ((v7 & 0x10) != 0)
    {
      if ((v7 & 4) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v8 = *v6;
      _MTLMessageContextPush_();
      v6 = (texture + 72);
      if ((*(texture + 20) & 4) != 0)
      {
        goto LABEL_12;
      }
    }

    v8 = *v6;
    _MTLMessageContextPush_();
LABEL_12:
    if (*(&self->hasEndEncoding + 4))
    {
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
    if (texture)
    {
      break;
    }

    [MTLDebugBlitCommandEncoder generateMipmapsForTexture:];
LABEL_17:
    _MTLMessageContextPush_();
  }

  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:texture retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)fillBuffer:(id)buffer range:(_NSRange)range value:(unsigned __int8)value
{
  valueCopy = value;
  length = range.length;
  location = range.location;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!buffer)
  {
    _MTLMessageContextPush_();
  }

  if (([buffer conformsToProtocol:&unk_284222E68] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device != [buffer device])
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [objc_msgSend(buffer "baseObject")])
  {
    [MTLDebugBlitCommandEncoder fillBuffer:range:value:];
    if (length)
    {
      goto LABEL_9;
    }
  }

  else if (length)
  {
    goto LABEL_9;
  }

  _MTLMessageContextPush_();
LABEL_9:
  if (*(&self->hasEndEncoding + 4))
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:buffer retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)fillBuffer:(id)buffer range:(_NSRange)range pattern4:(unsigned int)pattern4
{
  v5 = *&pattern4;
  length = range.length;
  location = range.location;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!buffer)
  {
    _MTLMessageContextPush_();
  }

  if (([buffer conformsToProtocol:&unk_284222E68] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device != [buffer device])
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [objc_msgSend(buffer "baseObject")])
  {
    [MTLDebugBlitCommandEncoder fillBuffer:range:value:];
    if (length)
    {
      goto LABEL_9;
    }
  }

  else if (length)
  {
    goto LABEL_9;
  }

  _MTLMessageContextPush_();
LABEL_9:
  if ((location & 3) != 0)
  {
    _MTLMessageContextPush_();
  }

  if ((length & 3) != 0)
  {
    _MTLMessageContextPush_();
  }

  if (*(&self->hasEndEncoding + 4))
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:buffer retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationOffset:(unint64_t)destinationOffset size:(unint64_t)size
{
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (*(&self->hasEndEncoding + 4))
  {
    _MTLMessageContextPush_();
  }

  if (buffer)
  {
    if (([buffer conformsToProtocol:&unk_284222E68] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (![buffer conformsToProtocol:&unk_284222E68] || (device = self->super.super.super._device, device == objc_msgSend(buffer, "device")))
    {
      if (toBuffer)
      {
        goto LABEL_9;
      }

LABEL_22:
      _MTLMessageContextPush_();
      goto LABEL_13;
    }
  }

  _MTLMessageContextPush_();
  if (!toBuffer)
  {
    goto LABEL_22;
  }

LABEL_9:
  if (([toBuffer conformsToProtocol:&unk_284222E68] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([toBuffer conformsToProtocol:&unk_284222E68])
  {
    v14 = self->super.super.super._device;
    if (v14 != [toBuffer device])
    {
      goto LABEL_22;
    }
  }

LABEL_13:
  _MTLMessageContextEnd();
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (size + offset > [objc_msgSend(buffer "baseObject")])
  {
    [MTLDebugBlitCommandEncoder copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:];
  }

  if (size + destinationOffset > [objc_msgSend(toBuffer "baseObject")])
  {
    [MTLDebugBlitCommandEncoder copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:];
    if (size)
    {
      goto LABEL_17;
    }

LABEL_20:
    v15 = 0;
    _MTLMessageContextPush_();
    goto LABEL_17;
  }

  if (!size)
  {
    goto LABEL_20;
  }

LABEL_17:
  validateBlitProtectionOptions([(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] protectionOptions], buffer, toBuffer, @"buffer", @"buffer", &v18);
  _MTLMessageContextEnd();
  v17[1] = 0;
  v17[2] = 0;
  v16[2] = 0;
  v17[0] = buffer;
  v16[0] = toBuffer;
  v16[1] = 0;
  validateResourceAliasing(v17, v16, 1);
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:buffer retained:1 purgeable:1];
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:toBuffer retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)updateFence:(id)fence
{
  fenceCopy = fence;
  std::deque<objc_object *>::push_back(&self->updatedFences, &fenceCopy);
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:fence retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)waitForFence:(id)fence
{
  p_updatedFences = &self->updatedFences;
  size = self->updatedFences.__size_;
  if (size)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      if ((*(p_updatedFences->__map_.var0 + (((p_updatedFences->__start_ + v7) >> 6) & 0x3FFFFFFFFFFFFF8)))[(p_updatedFences->__start_ + v7) & 0x1FF] == fence)
      {
        MTLReportFailure();
        size = p_updatedFences->__size_;
      }

      v7 = v8;
    }

    while (size > v8++);
  }

  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:fence retained:1 purgeable:0];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [fence baseObject];

  [baseObject waitForFence:baseObject2];
}

- (void)endEncoding
{
  if (*(&self->hasEndEncoding + 4))
  {
    [MTLDebugBlitCommandEncoder endEncoding];
  }

  if (!*(&self->hasEndEncoding + 3))
  {
    [MTLDebugBlitCommandEncoder endEncoding];
  }

  *(&self->hasEndEncoding + 2) = 1;
  *(&self->hasEndEncoding + 4) = 1;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject endEncoding];
}

- (void)filterCounterRangeWithFirstBatch:(unsigned int)batch lastBatch:(unsigned int)lastBatch filterIndex:(unsigned int)index
{
  v5 = *&index;
  v6 = *&lastBatch;
  v7 = *&batch;
  if (batch > lastBatch)
  {
    v10 = *&batch;
    v11 = *&lastBatch;
    MTLReportFailure();
  }

  v9 = [(MTLToolsObject *)self baseObject:v10];

  [v9 filterCounterRangeWithFirstBatch:v7 lastBatch:v6 filterIndex:v5];
}

- (void)getTextureAccessCounters:(id)counters region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice resetCounters:(BOOL)resetCounters countersBuffer:(id)buffer countersBufferOffset:(unint64_t)offset
{
  resetCountersCopy = resetCounters;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!buffer)
  {
    _MTLMessageContextPush_();
  }

  if (!v24)
  {
    if (([buffer conformsToProtocol:&unk_284222E68] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    device = self->super.super.super._device;
    if (device != [buffer device])
    {
      _MTLMessageContextPush_();
    }

    if ([objc_msgSend(buffer "baseObject")] < offset)
    {
      [MTLDebugBlitCommandEncoder getTextureAccessCounters:region:mipLevel:slice:resetCounters:countersBuffer:countersBufferOffset:];
    }
  }

  if (([counters isSparse] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v17 = *&region->var0.var2;
  v21 = *&region->var0.var0;
  v22 = v17;
  v23 = *&region->var1.var1;
  [(MTLDebugBlitCommandEncoder *)self validateTextureAccess:counters region:&v21 mipLevel:level slice:slice];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [counters baseObject];
  v20 = *&region->var0.var2;
  v21 = *&region->var0.var0;
  v22 = v20;
  v23 = *&region->var1.var1;
  [baseObject getTextureAccessCounters:baseObject2 region:&v21 mipLevel:level slice:slice resetCounters:resetCountersCopy countersBuffer:objc_msgSend(buffer countersBufferOffset:{"baseObject"), offset}];
}

- (void)resetTextureAccessCounters:(id)counters region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice
{
  if (([counters isSparse] & 1) == 0)
  {
    [MTLDebugBlitCommandEncoder resetTextureAccessCounters:region:mipLevel:slice:];
  }

  v11 = *&region->var0.var2;
  v15 = *&region->var0.var0;
  v16 = v11;
  v17 = *&region->var1.var1;
  [(MTLDebugBlitCommandEncoder *)self validateTextureAccess:counters region:&v15 mipLevel:level slice:slice];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [counters baseObject];
  v14 = *&region->var0.var2;
  v15 = *&region->var0.var0;
  v16 = v14;
  v17 = *&region->var1.var1;
  [baseObject resetTextureAccessCounters:baseObject2 region:&v15 mipLevel:level slice:slice];
}

- (void)validateTextureAccess:(id)access region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice
{
  selfCopy = self;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  arrayLength = [access arrayLength];
  textureType = [access textureType];
  v13 = 6;
  if ((textureType - 5) >= 2)
  {
    v13 = 1;
  }

  if (v13 * arrayLength <= slice)
  {
    sliceCopy = slice;
    arrayLength2 = [access arrayLength];
    _MTLMessageContextPush_();
  }

  v14 = [access mipmapLevelCount] - 1;
  if (v14 >= [access firstMipmapInTail])
  {
    firstMipmapInTail = [access firstMipmapInTail];
  }

  else
  {
    firstMipmapInTail = [access mipmapLevelCount] - 1;
  }

  if (firstMipmapInTail < level)
  {
    [MTLDebugBlitCommandEncoder validateTextureAccess:access region:? mipLevel:? slice:?];
  }

  _MTLMessageContextEnd();
  v16 = *(selfCopy + 24);
  [access pixelFormat];
  [access width];
  [access height];
  [access depth];
  [access sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();
  if (access)
  {
    if ([access placementSparsePageSize])
    {
      device = [access device];
      [access textureType];
      [access pixelFormat];
      [access sampleCount];
      [access placementSparsePageSize];
      if (device)
      {
        objc_msgSend_sparseTileSizeWithTextureType_pixelFormat_sampleCount_sparsePageSize_(device);
LABEL_16:
        v18 = v23;
        device = v24;
        access = v25;
        goto LABEL_18;
      }
    }

    else
    {
      device = [access device];
      [access textureType];
      [access pixelFormat];
      [access sampleCount];
      if (device)
      {
        objc_msgSend_sparseTileSizeWithTextureType_pixelFormat_sampleCount_(device);
        goto LABEL_16;
      }
    }

    access = 0;
    v18 = 0;
LABEL_18:
    [selfCopy device];
    _MTLMessageContextBegin_();
    v19 = (v18 - 1) / v18;
    v16 = access - 1;
    selfCopy = (device - 1) / device;
    if (region->var1.var0 + region->var0.var0 <= v19)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  [MTLDebugBlitCommandEncoder validateTextureAccess:region:mipLevel:slice:];
LABEL_25:
  _MTLMessageContextPush_();
LABEL_19:
  v20 = v16 / access;
  if (region->var1.var1 + region->var0.var1 > selfCopy)
  {
    _MTLMessageContextPush_();
  }

  if (region->var1.var2 + region->var0.var2 > v20)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
}

- (void)optimizeContentsForGPUAccess:(id)access
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!access)
  {
    _MTLMessageContextPush_();
  }

  if (([access conformsToProtocol:&unk_28423C818] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device != [access device])
  {
    _MTLMessageContextPush_();
  }

  if (*(&self->hasEndEncoding + 4))
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:access retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)optimizeContentsForGPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!access)
  {
    _MTLMessageContextPush_();
  }

  if (([access conformsToProtocol:&unk_28423C818] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device != [access device])
  {
    _MTLMessageContextPush_();
  }

  if ([access mipmapLevelCount] <= level)
  {
    levelCopy = level;
    mipmapLevelCount = [access mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  numFaces = [access numFaces];
  if ([access arrayLength] * numFaces <= slice)
  {
    [MTLDebugBlitCommandEncoder optimizeContentsForGPUAccess:slice:level:];
  }

  if (*(&self->hasEndEncoding + 4))
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:access retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)optimizeContentsForCPUAccess:(id)access
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!access)
  {
    _MTLMessageContextPush_();
  }

  if (([access conformsToProtocol:&unk_28423C818] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device != [access device])
  {
    _MTLMessageContextPush_();
  }

  if (*(&self->hasEndEncoding + 4))
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:access retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)optimizeContentsForCPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!access)
  {
    _MTLMessageContextPush_();
  }

  if (([access conformsToProtocol:&unk_28423C818] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device != [access device])
  {
    _MTLMessageContextPush_();
  }

  if ([access mipmapLevelCount] <= level)
  {
    levelCopy = level;
    mipmapLevelCount = [access mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  numFaces = [access numFaces];
  if ([access arrayLength] * numFaces <= slice)
  {
    [MTLDebugBlitCommandEncoder optimizeContentsForGPUAccess:slice:level:];
  }

  if (*(&self->hasEndEncoding + 4))
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:access retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)resetCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v62.length = [buffer size];
  v60.location = location;
  v60.length = length;
  v62.location = 0;
  v8 = NSIntersectionRange(v60, v62);
  if (v8.location != location || v8.length != length)
  {
    v51 = length;
    v52 = [buffer size];
    v50 = location;
    MTLReportFailure();
  }

  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:buffer retained:1 purgeable:1, v50, v51, v52];
  [-[MTLToolsObject baseObject](self "baseObject")];
  __p = 0;
  v58 = 0;
  v59 = 0;
  optimizedRangeList = [buffer optimizedRangeList];
  v11 = 0;
  __src = 0;
  v55 = 0;
  v56 = 0;
  while (v11 < [optimizedRangeList count])
  {
    v12 = [objc_msgSend(optimizedRangeList objectAtIndexedSubscript:{v11), "rangeValue"}];
    v14 = v13;
    v61.location = [objc_msgSend(optimizedRangeList objectAtIndexedSubscript:{v11), "rangeValue"}];
    v63.location = location;
    v63.length = length;
    v15 = NSIntersectionRange(v61, v63);
    if (v12 == location && v14 == length || v12 == v15.location && v14 == v15.length)
    {
      v53 = v11;
      std::vector<unsigned long long>::push_back[abi:ne200100](&__p, &v53);
    }

    else if (v15.length)
    {
      v53 = v11;
      std::vector<unsigned long long>::push_back[abi:ne200100](&__p, &v53);
      v16 = (LODWORD(v15.location) - v12);
      if (v16 < 1)
      {
        LODWORD(v16) = 0;
      }

      else
      {
        v17 = v55;
        if (v55 >= v56)
        {
          v19 = __src;
          v20 = v55 - __src;
          v21 = (v55 - __src) >> 4;
          v22 = v21 + 1;
          if ((v21 + 1) >> 60)
          {
            std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
          }

          v23 = v56 - __src;
          if ((v56 - __src) >> 3 > v22)
          {
            v22 = v23 >> 3;
          }

          v24 = v23 >= 0x7FFFFFFFFFFFFFF0;
          v25 = 0xFFFFFFFFFFFFFFFLL;
          if (!v24)
          {
            v25 = v22;
          }

          if (v25)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(&__src, v25);
          }

          v26 = (v55 - __src) >> 4;
          v27 = (16 * v21);
          *v27 = v12;
          v27[1] = v16;
          v18 = 16 * v21 + 16;
          v28 = &v27[-2 * v26];
          memcpy(v28, v19, v20);
          v29 = __src;
          __src = v28;
          v55 = v18;
          v56 = 0;
          if (v29)
          {
            operator delete(v29);
          }
        }

        else
        {
          *v55 = v12;
          *(v17 + 1) = v16;
          v18 = (v17 + 16);
        }

        v55 = v18;
      }

      v30 = (v14 - v16 - LODWORD(v15.length));
      if (v30 >= 1)
      {
        v31 = v15.location + v15.length;
        v32 = v55;
        if (v55 >= v56)
        {
          v34 = __src;
          v35 = v55 - __src;
          v36 = (v55 - __src) >> 4;
          v37 = v36 + 1;
          if ((v36 + 1) >> 60)
          {
            std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
          }

          v38 = v56 - __src;
          if ((v56 - __src) >> 3 > v37)
          {
            v37 = v38 >> 3;
          }

          v24 = v38 >= 0x7FFFFFFFFFFFFFF0;
          v39 = 0xFFFFFFFFFFFFFFFLL;
          if (!v24)
          {
            v39 = v37;
          }

          if (v39)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(&__src, v39);
          }

          v40 = (v55 - __src) >> 4;
          v41 = (16 * v36);
          *v41 = v31;
          v41[1] = v30;
          v33 = 16 * v36 + 16;
          v42 = (16 * v36 - 16 * v40);
          memcpy(v42, v34, v35);
          v43 = __src;
          __src = v42;
          v55 = v33;
          v56 = 0;
          if (v43)
          {
            operator delete(v43);
          }
        }

        else
        {
          *v55 = v31;
          *(v32 + 1) = v30;
          v33 = (v32 + 16);
        }

        v55 = v33;
      }
    }

    ++v11;
  }

  v44 = __p;
  if (v58 != __p)
  {
    v45 = 0;
    v46 = 0;
    do
    {
      [optimizedRangeList removeObjectAtIndex:v45 + v44[v46++]];
      v44 = __p;
      --v45;
    }

    while (v46 < (v58 - __p) >> 3);
  }

  v47 = __src;
  if (v55 != __src)
  {
    v48 = 0;
    v49 = 0;
    do
    {
      [optimizedRangeList addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRange:", *&v47[v48], *&v47[v48 + 8])}];
      ++v49;
      v47 = __src;
      v48 += 16;
    }

    while (v49 < (v55 - __src) >> 4);
  }

  if (v47)
  {
    v55 = v47;
    operator delete(v47);
  }

  if (__p)
  {
    v58 = __p;
    operator delete(__p);
  }
}

- (void)copyIndirectCommandBuffer:(id)buffer sourceRange:(_NSRange)range destination:(id)destination destinationIndex:(unint64_t)index
{
  length = range.length;
  location = range.location;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (([buffer conformsToProtocol:&unk_28421F578] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (([destination conformsToProtocol:&unk_28421F578] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:buffer retained:1 purgeable:1];
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:destination retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)optimizeIndirectCommandBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  v20.length = [buffer size];
  v18.location = location;
  v18.length = length;
  v20.location = 0;
  v8 = NSIntersectionRange(v18, v20);
  if (v8.location != location || v8.length != length)
  {
    v16 = length;
    v17 = [buffer size];
    v15 = location;
    _MTLMessageContextPush_();
  }

  optimizedRangeList = [buffer optimizedRangeList];
  if (![optimizedRangeList count])
  {
    _MTLMessageContextEnd();
LABEL_21:
    [optimizedRangeList addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRange:", location, length)}];
    goto LABEL_22;
  }

  v10 = 0;
  do
  {
    v12 = [objc_msgSend(optimizedRangeList objectAtIndexedSubscript:{v10), "rangeValue"}] == location && v11 == length;
    v13 = v12;
    if (!v12)
    {
      v19.location = [objc_msgSend(optimizedRangeList objectAtIndexedSubscript:{v10), "rangeValue"}];
      v21.location = location;
      v21.length = length;
      if (NSIntersectionRange(v19, v21).length)
      {
        _MTLMessageContextPush_();
      }
    }

    if (++v10 >= [optimizedRangeList count])
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }
  }

  while ((v14 & 1) == 0);
  _MTLMessageContextEnd();
  if ((v13 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:buffer retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region bytes:(const void *)bytes length:(unint64_t)length
{
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  _MTLMessageContextBegin_();
  if (*(&self->hasEndEncoding + 4))
  {
    _MTLMessageContextPush_();
    if (bytes)
    {
      goto LABEL_3;
    }
  }

  else if (bytes)
  {
    goto LABEL_3;
  }

  _MTLMessageContextPush_();
LABEL_3:
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  validateTextureRegion(self->super.super.super._device, texture, level, slice, region, &v26);
  if ((BYTE8(v26) & 0x61) == 1)
  {
    if ((WORD4(v26) & 0x2000) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v18 = v26;
    _MTLMessageContextPush_();
    if ((WORD4(v26) & 0x2000) == 0)
    {
      goto LABEL_17;
    }
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  [texture pixelFormat];
  [texture width];
  [texture height];
  [texture depth];
  [texture sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();
  if (region->var0.var0)
  {
    _MTLMessageContextPush_();
  }

  if (region->var0.var1)
  {
    _MTLMessageContextPush_();
  }

  if (region->var0.var2)
  {
    _MTLMessageContextPush_();
  }

  if (region->var1.var0 != v19)
  {
    _MTLMessageContextPush_();
  }

  if (region->var1.var1 != *(&v19 + 1))
  {
    _MTLMessageContextPush_();
  }

  if (region->var1.var2 != v20)
  {
    _MTLMessageContextPush_();
  }

LABEL_17:
  if (*(&v27 + 1) > length)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:texture retained:1 purgeable:1];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v17 = *&region->var0.var2;
  v19 = *&region->var0.var0;
  v20 = v17;
  v21 = *&region->var1.var1;
  [baseObject fillTexture:baseObject2 level:level slice:slice region:&v19 bytes:bytes length:length];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  _MTLMessageContextBegin_();
  if (*(&self->hasEndEncoding + 4))
  {
    _MTLMessageContextPush_();
  }

  v21 = 0;
  memset(v20, 0, sizeof(v20));
  validateTextureRegion(self->super.super.super._device, texture, level, slice, region, v20);
  if ((WORD4(v20[0]) & 0x461) != 1)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:texture retained:1 purgeable:1];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v18 = *&region->var0.var2;
  v19[0] = *&region->var0.var0;
  v19[1] = v18;
  v19[2] = *&region->var1.var1;
  [baseObject fillTexture:baseObject2 level:level slice:slice region:v19 color:{var0, var1, var2, var3}];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  _MTLMessageContextBegin_();
  if (*(&self->hasEndEncoding + 4))
  {
    _MTLMessageContextPush_();
  }

  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  validateTextureRegion(self->super.super.super._device, texture, level, slice, region, &v23);
  v22 = 0;
  memset(&v21[3], 0, 48);
  [(MTLToolsObject *)self->super.super.super._device baseObject];
  MTLPixelFormatGetInfoForDevice();
  _MTLMessageContextPush_();
  if (v24)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:texture retained:1 purgeable:1];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v20 = *&region->var0.var2;
  v21[0] = *&region->var0.var0;
  v21[1] = v20;
  v21[2] = *&region->var1.var1;
  [baseObject fillTexture:baseObject2 level:level slice:slice region:v21 color:format pixelFormat:var0, var1, var2, var3];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0
{
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  _MTLMessageContextBegin_();
  if (!count)
  {
    _MTLMessageContextPush_();
  }

  if (!levelCount)
  {
    _MTLMessageContextPush_();
  }

  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  [texture pixelFormat];
  [texture width];
  [texture height];
  [texture depth];
  [texture sampleCount];
  MTLGetTextureLevelInfoForDevice();
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  [toTexture pixelFormat];
  [toTexture width];
  [toTexture height];
  [toTexture depth];
  [toTexture sampleCount];
  MTLGetTextureLevelInfoForDevice();
  numFaces = [texture numFaces];
  numFaces2 = [toTexture numFaces];
  if (levelCount + level > [texture mipmapLevelCount])
  {
    levelCountCopy = levelCount;
    mipmapLevelCount = [texture mipmapLevelCount];
    levelCopy = level;
    _MTLMessageContextPush_();
  }

  if (levelCount + destinationLevel > [toTexture mipmapLevelCount])
  {
    levelCountCopy2 = levelCount;
    mipmapLevelCount2 = [toTexture mipmapLevelCount];
    destinationLevelCopy = destinationLevel;
    _MTLMessageContextPush_();
  }

  if (count + slice > [texture arrayLength] * numFaces)
  {
    arrayLength = [texture arrayLength];
    v26 = numFaces;
    sliceCopy = slice;
    countCopy = count;
    _MTLMessageContextPush_();
  }

  if (count + destinationSlice > [toTexture arrayLength] * numFaces2)
  {
    [toTexture arrayLength];
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  memset(v33, 0, sizeof(v33));
  [(MTLDebugBlitCommandEncoder *)self validateCopyFromTexture:texture sourceSlice:slice sourceLevel:level sourceSize:v33 toTexture:toTexture destinationSlice:destinationSlice destinationLevel:destinationLevel options:0 sliceCount:count levelCount:levelCount];
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:texture retained:1 purgeable:1];
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:toTexture retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)copyFromTexture:(id)texture toTexture:(id)toTexture
{
  width = [texture width];
  height = [texture height];
  depth = [texture depth];
  v75 = depth;
  v76 = height;
  width2 = [toTexture width];
  height2 = [toTexture height];
  depth2 = [toTexture depth];
  v12 = 0;
  v73 = depth2;
  v74 = height2;
  v13 = &v74;
  v14 = &v73;
  v15 = &v74;
  v16 = &v73;
  v17 = depth > depth2;
  if (depth <= depth2)
  {
    v18 = depth2;
  }

  else
  {
    v18 = depth;
  }

  if (depth <= depth2)
  {
    v19 = height2;
  }

  else
  {
    v19 = height;
  }

  if (v17)
  {
    v20 = width2;
  }

  else
  {
    v20 = width;
  }

  if (v17)
  {
    v21 = width;
  }

  else
  {
    v16 = &v75;
    v21 = width2;
  }

  v22 = v17;
  if (!v17)
  {
    v15 = &v76;
  }

  if (height <= height2)
  {
    v23 = v18;
  }

  else
  {
    v23 = depth;
  }

  if (height <= height2)
  {
    v24 = v19;
  }

  else
  {
    v24 = height;
  }

  if (height <= height2)
  {
    v25 = v20;
  }

  else
  {
    v25 = width2;
  }

  if (height <= height2)
  {
    v26 = v22;
  }

  else
  {
    v21 = width;
    v26 = 1;
  }

  if (height <= height2)
  {
    v27 = v16;
  }

  else
  {
    v27 = &v73;
  }

  if (height <= height2)
  {
    v28 = v15;
  }

  else
  {
    v28 = &v74;
  }

  if (width <= width2)
  {
    v29 = v23;
  }

  else
  {
    v29 = depth;
  }

  if (width <= width2)
  {
    v30 = v24;
  }

  else
  {
    v30 = height;
  }

  if (width <= width2)
  {
    v31 = v25;
  }

  else
  {
    v31 = width2;
  }

  if (width <= width2)
  {
    v13 = v28;
  }

  v32 = *v13;
  if (width <= width2)
  {
    v33 = v21;
  }

  else
  {
    v33 = width;
  }

  if (width <= width2)
  {
    v14 = v27;
  }

  v34 = *v14;
  if (width <= width2)
  {
    v35 = v26;
  }

  else
  {
    v35 = 1;
  }

  while (v33 > v31 || v30 > v32 || v29 > v34)
  {
    v33 >>= 1;
    v30 >>= 1;
    ++v12;
    v29 >>= 1;
  }

  if (v35)
  {
    v36 = v12;
  }

  else
  {
    v36 = 0;
  }

  v52 = v36;
  if (v35)
  {
    v37 = 0;
  }

  else
  {
    v37 = v12;
  }

  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  [toTexture pixelFormat];
  [toTexture width];
  [toTexture height];
  [toTexture depth];
  [toTexture sampleCount];
  MTLGetTextureLevelInfoForDevice();
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  [texture pixelFormat];
  [texture width];
  [texture height];
  [texture depth];
  [texture sampleCount];
  MTLGetTextureLevelInfoForDevice();
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  _MTLMessageContextEnd();
  arrayLength = [texture arrayLength];
  numFaces = [texture numFaces];
  arrayLength2 = [toTexture arrayLength];
  numFaces2 = [toTexture numFaces];
  v42 = [texture mipmapLevelCount] - v52;
  v43 = [toTexture mipmapLevelCount] - v37;
  if (v42 >= v43)
  {
    textureCopy = toTexture;
  }

  else
  {
    textureCopy = texture;
  }

  if (v42 >= v43)
  {
    v45 = v37;
  }

  else
  {
    v45 = v52;
  }

  mipmapLevelCount = [textureCopy mipmapLevelCount];
  v47 = numFaces * arrayLength;
  if (numFaces * arrayLength >= (numFaces2 * arrayLength2))
  {
    v47 = numFaces2 * arrayLength2;
  }

  memset(v54, 0, sizeof(v54));
  [(MTLDebugBlitCommandEncoder *)self validateCopyFromTexture:texture sourceSlice:0 sourceLevel:v52 sourceSize:v54 toTexture:toTexture destinationSlice:0 destinationLevel:v37 options:0 sliceCount:v47 levelCount:mipmapLevelCount - v45];
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:texture retained:1 purgeable:1];
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:toTexture retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)sampleCountersInBuffer:(id)buffer atSampleIndex:(unint64_t)index withBarrier:(BOOL)barrier
{
  barrierCopy = barrier;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!buffer)
  {
    _MTLMessageContextPush_();
  }

  if (([buffer conformsToProtocol:&unk_2842206E8] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device != [buffer device])
  {
    _MTLMessageContextPush_();
  }

  if ([buffer sampleCount] <= index)
  {
    indexCopy = index;
    sampleCount = [buffer sampleCount];
    _MTLMessageContextPush_();
  }

  if (![(MTLToolsDevice *)self->super.super.super._device supportsCounterSampling:4, indexCopy, sampleCount])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:buffer retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)resolveCounters:(id)counters inRange:(_NSRange)range destinationBuffer:(id)buffer destinationOffset:(unint64_t)offset
{
  length = range.length;
  location = range.location;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!counters)
  {
    _MTLMessageContextPush_();
  }

  if (([counters conformsToProtocol:&unk_2842206E8] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (([buffer conformsToProtocol:&unk_284222E68] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device != [counters device])
  {
    _MTLMessageContextPush_();
  }

  v13 = self->super.super.super._device;
  if (v13 != [buffer device])
  {
    _MTLMessageContextPush_();
  }

  minConstantBufferAlignmentBytes = [(MTLToolsDevice *)self->super.super.super._device minConstantBufferAlignmentBytes];
  if (offset % minConstantBufferAlignmentBytes)
  {
    offsetCopy = offset;
    v16 = minConstantBufferAlignmentBytes;
    _MTLMessageContextPush_();
  }

  if (location + length > [counters sampleCount])
  {
    [counters sampleCount];
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:counters retained:1 purgeable:0];
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:buffer retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)invalidateCompressedTexture:(id)texture
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  _MTLMessageContextBegin_();
  if (!texture)
  {
    _MTLMessageContextPush_();
  }

  if (!v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    device = self->super.super.super._device;
    if (device != [texture device])
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v6.receiver = self;
  v6.super_class = MTLDebugBlitCommandEncoder;
  [(MTLToolsBlitCommandEncoder *)&v6 invalidateCompressedTexture:texture];
}

- (void)invalidateCompressedTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  _MTLMessageContextBegin_();
  if (!texture)
  {
    _MTLMessageContextPush_();
  }

  if (!v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    device = self->super.super.super._device;
    if (device != [texture device])
    {
      _MTLMessageContextPush_();
    }

    if ([texture mipmapLevelCount] <= level)
    {
      levelCopy = level;
      mipmapLevelCount = [texture mipmapLevelCount];
      _MTLMessageContextPush_();
    }

    numFaces = [texture numFaces];
    if ([texture arrayLength] * numFaces <= slice)
    {
      [MTLDebugBlitCommandEncoder optimizeContentsForGPUAccess:slice:level:];
    }
  }

  _MTLMessageContextEnd();
  v13.receiver = self;
  v13.super_class = MTLDebugBlitCommandEncoder;
  [(MTLToolsBlitCommandEncoder *)&v13 invalidateCompressedTexture:texture slice:slice level:level];
}

- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  if (*(&self->hasEndEncoding + 4))
  {
    [MTLDebugBlitCommandEncoder barrierAfterQueueStages:beforeStages:];
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject barrierAfterQueueStages:stages beforeStages:beforeStages];
}

- (void)copyFromTensor:(id)tensor sourceSlice:(MTLTensorSlice)slice toTensor:(id)toTensor destinationSlice:(MTLTensorSlice)destinationSlice
{
  var1 = destinationSlice.var1;
  var0 = destinationSlice.var0;
  v9 = slice.var1;
  v10 = slice.var0;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  _MTLMessageContextBegin_();
  verifyCopyFromTensorToTensor(&v13, tensor, v10, v9, toTensor, var0, var1);
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self baseObject];
}

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  return self;
}

- (uint64_t)internalValidateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [v0 sampleCount];
  v3 = [OUTLINED_FUNCTION_6() sampleCount];
  return OUTLINED_FUNCTION_7(v3, v1, @"[sourceTexture sampleCount](%lu) must equal [destinationTexture sampleCount](%lu).");
}

- (uint64_t)internalValidateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  [v0 numFaces];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  return OUTLINED_FUNCTION_4_0(v1, v2, @"sourceSlice(%lu) must be < (%lu).");
}

- (uint64_t)internalValidateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  [v0 numFaces];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  return OUTLINED_FUNCTION_4_0(v1, v2, @"destinationSlice(%lu) must be < (%lu).");
}

- (uint64_t)validateCopyFromBuffer:sourceOffset:sourceBytesPerRow:sourceBytesPerImage:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v3 = [(__CFString *)_MTLDebugBlitOptionString(v0) cStringUsingEncoding:4];
  return OUTLINED_FUNCTION_7(v3, v1, @"option (%s) is not a valid MTLBlitOption for destinationTexture with pixel format %s.");
}

- (uint64_t)validateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:options:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v3 = [(__CFString *)_MTLDebugBlitOptionString(v0) cStringUsingEncoding:4];
  return OUTLINED_FUNCTION_7(v3, v1, @"option (%s) is not a valid MTLBlitOption for sourceTexture with pixel format %s.");
}

- (uint64_t)fillBuffer:range:value:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v3 = [objc_msgSend(v0 "baseObject")];
  return OUTLINED_FUNCTION_4_0(v3, v1, @"(range.location + range.length)(%lu) must be <= [buffer length](%lu).");
}

- (uint64_t)copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v3 = [objc_msgSend(v0 "baseObject")];
  return OUTLINED_FUNCTION_4_0(v3, v1, @"(sourceOffset + size)(%lu) must be <= [sourceBuffer length](%lu).");
}

- (uint64_t)copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v3 = [objc_msgSend(v0 "baseObject")];
  return OUTLINED_FUNCTION_4_0(v3, v1, @"(destinationOffset + size)(%lu) must be <= [destinationBuffer length](%lu).");
}

- (uint64_t)getTextureAccessCounters:region:mipLevel:slice:resetCounters:countersBuffer:countersBufferOffset:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v3 = [objc_msgSend(v0 "baseObject")];
  return OUTLINED_FUNCTION_4_0(v3, v1, @"(countersBufferOffset)(%lu) must be < [countersBuffer length](%lu).");
}

- (uint64_t)validateTextureAccess:(void *)a1 region:mipLevel:slice:.cold.1(void *a1)
{
  v2 = [a1 mipmapLevelCount] - 1;
  if (v2 >= [a1 firstMipmapInTail])
  {
    v3 = [a1 firstMipmapInTail];
  }

  else
  {
    v3 = [a1 mipmapLevelCount] - 1;
  }

  return OUTLINED_FUNCTION_7(v3, v4, @"mipLevel(%lu) must be lower or equal to min(mipmapLevelCount-1,firstMipmapInTail)(%lu)");
}

- (uint64_t)optimizeContentsForGPUAccess:slice:level:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [v0 numFaces];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  return OUTLINED_FUNCTION_4_0(v1, v2, @"slice(%lu) must be < (%lu).");
}

@end