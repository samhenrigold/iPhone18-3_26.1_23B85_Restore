@interface VFXMeshElement
+ (id)_optimizedmodelElementWithData:(id)data primitiveType:(int64_t)type primitiveCount:(int64_t)count bytesPerIndex:(int64_t)index;
+ (id)meshElementWithBuffer:(id)buffer primitiveType:(int64_t)type primitiveCount:(int64_t)count indicesChannelCount:(int64_t)channelCount interleavedIndicesChannels:(BOOL)channels bytesPerIndex:(int64_t)index;
+ (id)meshElementWithData:(id)data primitiveType:(int64_t)type primitiveCount:(int64_t)count bytesPerIndex:(int64_t)index;
+ (id)meshElementWithData:(id)data primitiveType:(int64_t)type primitiveCount:(int64_t)count indicesChannelCount:(int64_t)channelCount interleavedIndicesChannels:(BOOL)channels bytesPerIndex:(int64_t)index;
+ (id)meshElementWithMeshElementRef:(id *)ref;
+ (id)modelElementWithMDLSubmesh:(id)submesh;
- (NSData)data;
- (NSString)description;
- (VFXMeshElement)initWithBuffer:(id)buffer primitiveType:(int64_t)type primitiveCount:(int64_t)count indicesChannelCount:(int64_t)channelCount interleavedIndicesChannels:(BOOL)channels bytesPerIndex:(int64_t)index;
- (VFXMeshElement)initWithCoder:(id)coder;
- (VFXMeshElement)initWithData:(id)data primitiveType:(int64_t)type primitiveCount:(int64_t)count indicesChannelCount:(int64_t)channelCount interleavedIndicesChannels:(BOOL)channels bytesPerIndex:(int64_t)index;
- (VFXMeshElement)initWithMeshElement:(const void *)element;
- (VFXWorld)world;
- (_NSRange)primitiveRange;
- (__CFXMeshElement)meshElement;
- (__CFXWorld)worldRef;
- (unint64_t)indexCount;
- (void)_optimizeTriangleIndices;
- (void)_printData;
- (void)addWorldReference:(id)reference;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateIndexes:(id)indexes;
- (void)removeWorldReference:(id)reference;
- (void)setMaximumPointScreenSpaceRadius:(float)radius;
- (void)setMinimumPointScreenSpaceRadius:(float)radius;
- (void)setPointSize:(float)size;
- (void)setPrimitiveRange:(_NSRange)range;
- (void)setPrimitiveRanges:(id)ranges;
- (void)setWorld:(id)world;
@end

@implementation VFXMeshElement

- (VFXMeshElement)initWithMeshElement:(const void *)element
{
  v25.receiver = self;
  v25.super_class = VFXMeshElement;
  v4 = [(VFXMeshElement *)&v25 init];
  __asm { FMOV            V0.2S, #1.0 }

  *&v4->_pointSize = _D0;
  v4->_maximumPointScreenSpaceRadius = 1.0;
  if (element)
  {
    sub_1AF16CDFC(element, v4);
    v24 = 0;
    v4->_meshElement = CFRetain(element);
    v4->_elementData = sub_1AF1A73C0(element, &v24);
    v4->_primitiveType = sub_1AF1A7034(element, v10);
    v4->_primitiveCount = sub_1AF1A7674(element);
    v4->_indicesChannelCount = sub_1AF1A7634(element);
    v4->_interleavedIndicesChannels = sub_1AF1A763C(element);
    v23 = 0;
    v11 = sub_1AF1A745C(element, &v23);
    if (v11)
    {
      v12 = v11;
      v13 = objc_alloc(MEMORY[0x1E695DF70]);
      v16 = objc_msgSend_initWithCapacity_(v13, v14, v23);
      if (v23)
      {
        v17 = 0;
        v18 = (v12 + 8);
        do
        {
          v19 = *v18;
          if (*(v18 - 1) == -1)
          {
            v20 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v15, 0x7FFFFFFFFFFFFFFFLL, v19);
          }

          else
          {
            v20 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v15, *(v18 - 1), v19);
          }

          objc_msgSend_addObject_(v16, v21, v20);
          ++v17;
          v18 += 2;
        }

        while (v17 < v23);
      }

      v4->_primitiveRanges = v16;
    }

    v4->_bytesPerIndex = v24;
    v4->_pointSize = sub_1AF1A7644(element);
    v4->_minimumPointScreenSpaceRadius = sub_1AF1A7654(element);
    v4->_maximumPointScreenSpaceRadius = sub_1AF1A7664(element);
  }

  return v4;
}

- (void)dealloc
{
  meshElement = self->_meshElement;
  if (meshElement)
  {
    sub_1AF16CDFC(meshElement, 0);
    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, v4, self->_meshElement);
  }

  v5.receiver = self;
  v5.super_class = VFXMeshElement;
  [(VFXMeshElement *)&v5 dealloc];
}

- (void)enumerateIndexes:(id)indexes
{
  v5 = objc_msgSend_indexCount(self, a2, indexes);
  v8 = objc_msgSend_data(self, v6, v7);
  v11 = objc_msgSend_bytes(v8, v9, v10);
  v14 = objc_msgSend_bytesPerIndex(self, v12, v13);
  if (v14 > 3)
  {
    if (v14 == 4)
    {
      if (v5)
      {
        for (i = 0; i != v5; ++i)
        {
          (*(indexes + 2))(indexes, i, *(v11 + 4 * i));
        }
      }
    }

    else if (v14 == 8 && v5)
    {
      for (j = 0; j != v5; ++j)
      {
        (*(indexes + 2))(indexes, j, *(v11 + 8 * j));
      }
    }
  }

  else if (v14 == 1)
  {
    if (v5)
    {
      for (k = 0; k != v5; ++k)
      {
        (*(indexes + 2))(indexes, k, *(v11 + k));
      }
    }
  }

  else if (v14 == 2 && v5)
  {
    for (m = 0; m != v5; ++m)
    {
      (*(indexes + 2))(indexes, m, *(v11 + 2 * m));
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  primitiveType = self->_primitiveType;
  primitiveCount = self->_primitiveCount;
  if (primitiveType > 4)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E7A7E938[primitiveType];
  }

  indicesChannelCount = self->_indicesChannelCount;
  v10 = sub_1AF288ADC(self->_bytesPerIndex, 1, 0);
  v12 = sub_1AF2883D8(v10, v11);
  return objc_msgSend_stringWithFormat_(v3, v13, @"<%@: %p | %u x %@, %u channels, %@ indices>", v5, self, primitiveCount, v8, indicesChannelCount, v12);
}

+ (id)meshElementWithBuffer:(id)buffer primitiveType:(int64_t)type primitiveCount:(int64_t)count indicesChannelCount:(int64_t)channelCount interleavedIndicesChannels:(BOOL)channels bytesPerIndex:(int64_t)index
{
  channelsCopy = channels;
  v14 = objc_alloc(objc_opt_class());
  v16 = objc_msgSend_initWithBuffer_primitiveType_primitiveCount_indicesChannelCount_interleavedIndicesChannels_bytesPerIndex_(v14, v15, buffer, type, count, channelCount, channelsCopy, index);

  return v16;
}

- (VFXMeshElement)initWithBuffer:(id)buffer primitiveType:(int64_t)type primitiveCount:(int64_t)count indicesChannelCount:(int64_t)channelCount interleavedIndicesChannels:(BOOL)channels bytesPerIndex:(int64_t)index
{
  v19.receiver = self;
  v19.super_class = VFXMeshElement;
  v14 = [(VFXMeshElement *)&v19 init];
  v16 = v14;
  if (v14)
  {
    if (type == 4)
    {
      v17 = sub_1AF0D5194(v14, v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF6070(v17);
      }
    }

    v16->_mtlBuffer = buffer;
    v16->_primitiveType = type;
    v16->_primitiveCount = count;
    v16->_indicesChannelCount = channelCount;
    v16->_interleavedIndicesChannels = channels;
    v16->_bytesPerIndex = index;
  }

  return v16;
}

- (VFXMeshElement)initWithData:(id)data primitiveType:(int64_t)type primitiveCount:(int64_t)count indicesChannelCount:(int64_t)channelCount interleavedIndicesChannels:(BOOL)channels bytesPerIndex:(int64_t)index
{
  v28.receiver = self;
  v28.super_class = VFXMeshElement;
  v16 = [(VFXMeshElement *)&v28 init];
  if (!v16)
  {
    return v16;
  }

  if (type != 4)
  {
LABEL_18:
    v16->_elementData = objc_msgSend_copy(data, v14, v15);
    v16->_primitiveType = type;
    v16->_primitiveCount = count;
    v16->_indicesChannelCount = channelCount;
    v16->_interleavedIndicesChannels = channels;
    v16->_bytesPerIndex = index;
    return v16;
  }

  v17 = objc_msgSend_length(data, v14, v15);
  if (v17 < index * count)
  {
    v18 = sub_1AF0D5194(v17, v14);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF60B4(v18);
    }
  }

  if (count < 1)
  {
LABEL_17:
    v23 = objc_msgSend_length(data, v14, v15);
    data = objc_msgSend_subdataWithRange_(data, v24, index * count, v23 - index * count);
    type = 0;
    goto LABEL_18;
  }

  v19 = 0;
  type = 4;
  countCopy = count;
  while (1)
  {
    v21 = objc_msgSend_bytes(data, v14, v15);
    if (index != 4)
    {
      break;
    }

    v22 = *(v21 + v19);
LABEL_14:
    if (v22 <= 2)
    {
      v26 = sub_1AF0D5194(v21, v14);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF6138(v22, v26);
      }

      goto LABEL_24;
    }

    if (v22 != 3)
    {
      goto LABEL_18;
    }

    v19 += index;
    if (!--countCopy)
    {
      goto LABEL_17;
    }
  }

  if (index == 2)
  {
    v22 = *(v21 + v19);
    goto LABEL_14;
  }

  if (index == 1)
  {
    v22 = *(v21 + v19);
    goto LABEL_14;
  }

  v27 = sub_1AF0D5194(v21, v14);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF61B0(index, v27);
  }

LABEL_24:

  return 0;
}

+ (id)meshElementWithMeshElementRef:(id *)ref
{
  result = sub_1AF16CDEC(ref);
  if (!result)
  {
    v6 = [self alloc];
    v8 = objc_msgSend_initWithMeshElement_(v6, v7, ref);

    return v8;
  }

  return result;
}

+ (id)meshElementWithData:(id)data primitiveType:(int64_t)type primitiveCount:(int64_t)count indicesChannelCount:(int64_t)channelCount interleavedIndicesChannels:(BOOL)channels bytesPerIndex:(int64_t)index
{
  channelsCopy = channels;
  v14 = [self alloc];
  v16 = objc_msgSend_initWithData_primitiveType_primitiveCount_indicesChannelCount_interleavedIndicesChannels_bytesPerIndex_(v14, v15, data, type, count, channelCount, channelsCopy, index);

  return v16;
}

+ (id)meshElementWithData:(id)data primitiveType:(int64_t)type primitiveCount:(int64_t)count bytesPerIndex:(int64_t)index
{
  v10 = [self alloc];
  v12 = objc_msgSend_initWithData_primitiveType_primitiveCount_indicesChannelCount_interleavedIndicesChannels_bytesPerIndex_(v10, v11, data, type, count, 1, 1, index);

  return v12;
}

- (NSData)data
{
  result = self->_elementData;
  if (!result)
  {
    result = self->_mtlBuffer;
    if (result)
    {
      v5 = MEMORY[0x1E695DEF0];
      v6 = objc_msgSend_contents(result, a2, v2);
      v10 = objc_msgSend_length(self->_mtlBuffer, v7, v8);

      return objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v5, v9, v6, v10, 0);
    }
  }

  return result;
}

- (void)_printData
{
  v3 = objc_msgSend_meshElement(self, a2, v2);

  sub_1AF1AADF4(v3, v4);
}

- (unint64_t)indexCount
{
  v3 = objc_msgSend_meshElement(self, a2, v2);

  return sub_1AF1A70CC(v3, v4);
}

- (void)addWorldReference:(id)reference
{
  world = self->_world;
  if (world == reference)
  {
    v5 = self->_worldReferenceCounter + 1;
  }

  else
  {
    if (world)
    {
      self->_worldReferenceCounter = 0;
    }

    objc_msgSend_setWorld_(self, a2, reference);
    v5 = 1;
  }

  self->_worldReferenceCounter = v5;
}

- (void)removeWorldReference:(id)reference
{
  p_world = &self->_world;
  if (!reference || self->_world == reference)
  {
    worldReferenceCounter = self->_worldReferenceCounter;
    if (worldReferenceCounter)
    {
      v6 = worldReferenceCounter - 1;
      self->_worldReferenceCounter = v6;
      if (!v6)
      {

        objc_msgSend_setWorld_(self, a2, 0);
      }
    }

    else
    {
      v7 = sub_1AF0D5194(self, a2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF4930(self, p_world, v7);
      }
    }
  }
}

- (void)setWorld:(id)world
{
  world = self->_world;
  if (world != world)
  {
    v9[9] = v3;
    v9[10] = v4;
    if (world)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1AF2E41CC;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2E422C;
      v8[3] = &unk_1E7A7E428;
      v8[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v8);
    }
  }
}

- (VFXWorld)world
{
  if ((*(self + 28) & 1) == 0)
  {
    return self->_world;
  }

  result = objc_msgSend_worldRef(self, a2, v2);
  if (result)
  {

    return sub_1AF16CDEC(&result->super.isa);
  }

  return result;
}

- (__CFXWorld)worldRef
{
  v3 = objc_msgSend___CFObject(self, a2, v2);

  return sub_1AF1C3FAC(v3, v4);
}

- (_NSRange)primitiveRange
{
  if (objc_msgSend_count(self->_primitiveRanges, a2, v2) == 1)
  {
    v5 = objc_msgSend_objectAtIndexedSubscript_(self->_primitiveRanges, v4, 0);

    v8 = objc_msgSend_rangeValue(v5, v6, v7);
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    v9 = 0;
  }

  result.length = v9;
  result.location = v8;
  return result;
}

- (void)setPrimitiveRange:(_NSRange)range
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], a2, range.location, range.length);
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v7, 1);
  objc_msgSend_setPrimitiveRanges_(self, v6, v5);
}

- (void)setPrimitiveRanges:(id)ranges
{
  primitiveRanges = self->_primitiveRanges;
  if (primitiveRanges != ranges)
  {
    v13[8] = v3;
    v13[9] = v4;

    v10 = objc_msgSend_count(ranges, v8, v9);
    if (v10)
    {
      v10 = objc_msgSend_copy(ranges, v11, v12);
    }

    self->_primitiveRanges = v10;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1AF2E4498;
    v13[3] = &unk_1E7A7E220;
    v13[4] = self;
    v13[5] = ranges;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v11, self, v13);
  }
}

- (void)setPointSize:(float)size
{
  if (self->_pointSize != size)
  {
    v7 = v3;
    v8 = v4;
    self->_pointSize = size;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2E460C;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = size;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (void)setMinimumPointScreenSpaceRadius:(float)radius
{
  if (self->_minimumPointScreenSpaceRadius != radius)
  {
    v7 = v3;
    v8 = v4;
    self->_minimumPointScreenSpaceRadius = radius;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2E46B8;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = radius;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (void)setMaximumPointScreenSpaceRadius:(float)radius
{
  if (self->_maximumPointScreenSpaceRadius != radius)
  {
    v7 = v3;
    v8 = v4;
    self->_maximumPointScreenSpaceRadius = radius;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1AF2E4764;
    v5[3] = &unk_1E7A7E270;
    v5[4] = self;
    *&v6 = radius;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, self, v5);
  }
}

- (__CFXMeshElement)meshElement
{
  result = self->_meshElement;
  if (!result)
  {
    v4 = sub_1AF1A6834(0, *&a2);
    self->_meshElement = v4;
    mtlBuffer = self->_mtlBuffer;
    primitiveCount = self->_primitiveCount;
    interleavedIndicesChannels = self->_interleavedIndicesChannels;
    if (mtlBuffer)
    {
      sub_1AF1A69F0(v4, LOBYTE(self->_primitiveType), primitiveCount, self->_indicesChannelCount, interleavedIndicesChannels, mtlBuffer, self->_bytesPerIndex);
    }

    else
    {
      sub_1AF1A6928(v4, LOBYTE(self->_primitiveType), primitiveCount, self->_indicesChannelCount, interleavedIndicesChannels, self->_elementData, self->_bytesPerIndex);
    }

    sub_1AF2E44A4(self->_meshElement, self->_primitiveRanges, v8);
    result = self->_meshElement;
    if (result)
    {
      sub_1AF16CDFC(result, self);
      return self->_meshElement;
    }
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  if (self->_elementData)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v7 = objc_msgSend_options(coder, v5, v6), v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"VFXWorldExportCompressMeshElements"), objc_msgSend_BOOLValue(v9, v10, v11)))
    {
      elementData = self->_elementData;
      if (!self->_primitiveType)
      {
        elementData = objc_msgSend_vfx_indexedDataEncodingTrianglePairsWithBytesPerIndex_(elementData, v5, self->_bytesPerIndex);
      }

      v13 = objc_msgSend_vfx_indexedDataEncodingHighWatermarkWithBytesPerIndex_(elementData, v5, self->_bytesPerIndex);
      v15 = objc_msgSend_vfx_compressedDataUsingCompressionAlgorithm_(v13, v14, 774);
      objc_msgSend_encodeObject_forKey_(coder, v16, v15, @"compressedElementData");
    }

    else
    {
      objc_msgSend_encodeObject_forKey_(coder, v5, self->_elementData, @"elementData");
    }
  }

  objc_msgSend_encodeInteger_forKey_(coder, a2, self->_primitiveType, @"primitiveType");
  objc_msgSend_encodeInteger_forKey_(coder, v17, self->_primitiveCount, @"primitiveCount");
  if (objc_msgSend_count(self->_primitiveRanges, v18, v19) == 1)
  {
    v21 = objc_msgSend_objectAtIndexedSubscript_(self->_primitiveRanges, v20, 0);
    v24 = objc_msgSend_rangeValue(v21, v22, v23);
    v26 = v25;
    objc_msgSend_encodeInteger_forKey_(coder, v25, v24, @"primitiveRangeLocation");
    objc_msgSend_encodeInteger_forKey_(coder, v27, v26, @"primitiveRangeLength");
  }

  objc_msgSend_encodeInteger_forKey_(coder, v20, self->_indicesChannelCount, @"indicesChannelCount");
  objc_msgSend_encodeBool_forKey_(coder, v28, self->_interleavedIndicesChannels, @"interleavedIndicesChannels");
  objc_msgSend_encodeInteger_forKey_(coder, v29, self->_bytesPerIndex, @"bytesPerIndex");
  *&v30 = self->_pointSize;
  objc_msgSend_encodeFloat_forKey_(coder, v31, @"ptSize", v30);
  *&v32 = self->_minimumPointScreenSpaceRadius;
  objc_msgSend_encodeFloat_forKey_(coder, v33, @"minimumPointScreenSpaceRadius", v32);
  *&v35 = self->_maximumPointScreenSpaceRadius;

  objc_msgSend_encodeFloat_forKey_(coder, v34, @"maximumPointScreenSpaceRadius", v35);
}

- (VFXMeshElement)initWithCoder:(id)coder
{
  v41.receiver = self;
  v41.super_class = VFXMeshElement;
  v6 = [(VFXMeshElement *)&v41 init];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    v6->_primitiveType = objc_msgSend_decodeIntegerForKey_(coder, v9, @"primitiveType");
    v6->_primitiveCount = objc_msgSend_decodeIntegerForKey_(coder, v10, @"primitiveCount");
    if (objc_msgSend_containsValueForKey_(coder, v11, @"primitiveRangeLocation") && objc_msgSend_containsValueForKey_(coder, v12, @"primitiveRangeLength"))
    {
      v13 = objc_msgSend_decodeIntegerForKey_(coder, v12, @"primitiveRangeLocation");
      v15 = objc_msgSend_decodeIntegerForKey_(coder, v14, @"primitiveRangeLength");
      v40 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v16, v13, v15);
      v17 = objc_alloc(MEMORY[0x1E695DEC8]);
      v6->_primitiveRanges = objc_msgSend_initWithObjects_count_(v17, v18, &v40, 1);
    }

    if (objc_msgSend_containsValueForKey_(coder, v12, @"indicesChannelCount") && objc_msgSend_containsValueForKey_(coder, v19, @"interleavedIndicesChannels"))
    {
      v6->_indicesChannelCount = objc_msgSend_decodeIntegerForKey_(coder, v19, @"indicesChannelCount");
      v6->_interleavedIndicesChannels = objc_msgSend_decodeBoolForKey_(coder, v20, @"interleavedIndicesChannels");
    }

    else
    {
      v6->_indicesChannelCount = 1;
      v6->_interleavedIndicesChannels = 1;
    }

    v6->_bytesPerIndex = objc_msgSend_decodeIntegerForKey_(coder, v19, @"bytesPerIndex");
    if (objc_msgSend_containsValueForKey_(coder, v21, @"ptSize"))
    {
      objc_msgSend_decodeFloatForKey_(coder, v22, @"pointSize");
      v6->_pointSize = v23;
      objc_msgSend_decodeFloatForKey_(coder, v24, @"minimumPointScreenSpaceRadius");
      v6->_minimumPointScreenSpaceRadius = v25;
      objc_msgSend_decodeFloatForKey_(coder, v26, @"maximumPointScreenSpaceRadius");
      v6->_maximumPointScreenSpaceRadius = v27;
    }

    v28 = objc_opt_class();
    v30 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v29, v28, @"compressedElementData");
    if (v30)
    {
      v32 = objc_msgSend_vfx_uncompressedDataUsingCompressionAlgorithm_(v30, v31, 774);
      v34 = objc_msgSend_vfx_indexedDataDecodingHighWatermarkWithBytesPerIndex_(v32, v33, v6->_bytesPerIndex);
      if (!v6->_primitiveType)
      {
        v34 = objc_msgSend_vfx_indexedDataDecodingTrianglePairsWithBytesPerIndex_(v34, v35, v6->_bytesPerIndex);
      }
    }

    else
    {
      v36 = objc_opt_class();
      v34 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v37, v36, @"elementData");
    }

    v6->_elementData = v34;
    objc_msgSend_setImmediateMode_(VFXTransaction, v38, v7);
  }

  return v6;
}

+ (id)_optimizedmodelElementWithData:(id)data primitiveType:(int64_t)type primitiveCount:(int64_t)count bytesPerIndex:(int64_t)index
{
  if (type)
  {
    v10 = objc_opt_class();
    dataCopy = data;
    typeCopy = type;
  }

  else
  {
    v14 = sub_1AF1ABE4C(data, count, index);
    v10 = objc_opt_class();
    dataCopy = v14;
    typeCopy = 0;
  }

  return objc_msgSend_meshElementWithData_primitiveType_primitiveCount_bytesPerIndex_(v10, v11, dataCopy, typeCopy, count, index);
}

- (void)_optimizeTriangleIndices
{
  if (!self->_primitiveType)
  {
    v7 = v2;
    v8 = v3;
    sub_1AF1AC1B0(self->_meshElement);
    v6 = 0;
    self->_elementData = sub_1AF1A73C0(self->_meshElement, &v6);
    self->_primitiveType = sub_1AF1A7034(self->_meshElement, v5);
    self->_primitiveCount = sub_1AF1A7674(self->_meshElement);
    self->_bytesPerIndex = v6;
  }
}

+ (id)modelElementWithMDLSubmesh:(id)submesh
{
  v5 = objc_msgSend_faceIndexing(submesh, a2, submesh);
  v8 = objc_msgSend_geometryType(submesh, v6, v7);
  if (!v5)
  {
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:
          v15 = objc_msgSend_indexCount(submesh, v9, v10) - 2;
          v12 = 1;
          goto LABEL_23;
        case 4:
          v15 = objc_msgSend_indexCount(submesh, v9, v10) >> 2;
          break;
        case 5:
          v16 = objc_msgSend_topology(submesh, v9, v10);
          v15 = objc_msgSend_faceCount(v16, v17, v18);
          break;
        default:
LABEL_17:
          v19 = sub_1AF0D5194(v8, v9);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDF6A30(v19, v9, v10);
          }

          goto LABEL_19;
      }

      v12 = 4;
    }

    else
    {
      if (!v8)
      {
LABEL_19:
        v15 = objc_msgSend_indexCount(submesh, v9, v10);
        v12 = 3;
        goto LABEL_23;
      }

      if (v8 != 1)
      {
        if (v8 == 2)
        {
          v12 = 0;
          v15 = objc_msgSend_indexCount(submesh, v9, v10) / 3uLL;
          goto LABEL_23;
        }

        goto LABEL_17;
      }

      v15 = objc_msgSend_indexCount(submesh, v9, v10) >> 1;
      v12 = 2;
    }

LABEL_23:
    v20 = objc_msgSend_indexType(submesh, v13, v14) >> 3;
    v23 = objc_msgSend_indexBuffer(submesh, v21, v22);
    v26 = objc_msgSend_map(v23, v24, v25);
    v29 = objc_msgSend_bytes(v26, v27, v28);
    v32 = objc_msgSend_indexBuffer(submesh, v30, v31);
    v35 = objc_msgSend_length(v32, v33, v34);
    if (objc_msgSend_geometryType(submesh, v36, v37) == 4)
    {
      v40 = objc_alloc(MEMORY[0x1E695DF88]);
      v42 = objc_msgSend_initWithCapacity_(v40, v41, v35 + v20 * v15);
      objc_msgSend_setLength_(v42, v43, v20 * v15);
      if (v15)
      {
        for (i = 0; i != v15; ++i)
        {
          if (v20 > 3)
          {
            if (v20 == 4)
            {
              *(objc_msgSend_mutableBytes(v42, v44, v45) + 4 * i) = 4;
            }

            else if (v20 == 8)
            {
              *(objc_msgSend_mutableBytes(v42, v44, v45) + 8 * i) = 4;
            }
          }

          else if (v20 == 1)
          {
            *(objc_msgSend_mutableBytes(v42, v44, v45) + i) = 4;
          }

          else if (v20 == 2)
          {
            *(objc_msgSend_mutableBytes(v42, v44, v45) + 2 * i) = 4;
          }
        }
      }

      objc_msgSend_appendBytes_length_(v42, v44, v29, v35);
      v47 = v42;
    }

    else
    {
      if (objc_msgSend_geometryType(submesh, v38, v39) != 5)
      {
        v73 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v48, v29, v35);
        return objc_msgSend_meshElementWithData_primitiveType_primitiveCount_bytesPerIndex_(self, v74, v73, v12, v15, v20);
      }

      v50 = objc_msgSend_topology(submesh, v48, v49);
      v53 = objc_msgSend_faceTopology(v50, v51, v52);
      v56 = objc_msgSend_map(v53, v54, v55);
      v59 = objc_msgSend_bytes(v56, v57, v58);
      v60 = objc_alloc(MEMORY[0x1E695DF88]);
      v62 = objc_msgSend_initWithCapacity_(v60, v61, v35 + v20 * v15);
      objc_msgSend_setLength_(v62, v63, v20 * v15);
      if (v15)
      {
        for (j = 0; j != v15; ++j)
        {
          if (v20 > 3)
          {
            if (v20 == 4)
            {
              v70 = *(v59 + j);
              *(objc_msgSend_mutableBytes(v62, v64, v65) + 4 * j) = v70;
            }

            else if (v20 == 8)
            {
              v68 = *(v59 + j);
              *(objc_msgSend_mutableBytes(v62, v64, v65) + 8 * j) = v68;
            }
          }

          else if (v20 == 1)
          {
            v69 = *(v59 + j);
            *(objc_msgSend_mutableBytes(v62, v64, v65) + j) = v69;
          }

          else if (v20 == 2)
          {
            v67 = *(v59 + j);
            *(objc_msgSend_mutableBytes(v62, v64, v65) + 2 * j) = v67;
          }
        }
      }

      objc_msgSend_appendBytes_length_(v62, v64, v29, v35);
      v47 = v62;
    }

    v71 = v47;
    return objc_msgSend_meshElementWithData_primitiveType_primitiveCount_bytesPerIndex_(self, v72, v71, v12, v15, v20);
  }

  if (v8 != 5)
  {
    return 0;
  }

  return sub_1AF2F6074(submesh, v9, v10);
}

@end