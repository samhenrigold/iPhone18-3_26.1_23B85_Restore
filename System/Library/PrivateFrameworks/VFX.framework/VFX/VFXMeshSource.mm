@interface VFXMeshSource
+ (id)_meshSourceWithData:(id)data semantic:(id)semantic vectorCount:(int64_t)count componentType:(signed __int16)type componentCount:(unint64_t)componentCount dataOffset:(int64_t)offset dataStride:(int64_t)stride;
+ (id)_modelSourceWithSource:(id)source vertexFormat:(unint64_t)format;
+ (id)dataByConvertingDoublesToFloats:(const double *)floats count:(int64_t)count;
+ (id)dataWithPointArray:(const CGPoint *)array count:(int64_t)count bytesPerComponent:(int64_t *)component;
+ (id)dataWithVector3Array:(id)array count:(SEL)count bytesPerComponent:;
+ (id)geometrySourceWithColorData:(id)data colorSpace:(CGColorSpace *)space vectorCount:(int64_t)count floatComponents:(BOOL)components componentsPerVector:(int64_t)vector bytesPerComponent:(int64_t)component dataOffset:(int64_t)offset dataStride:(int64_t)self0;
+ (id)meshSourceWithBuffer:(id)buffer vertexFormat:(unint64_t)format semantic:(id)semantic vertexCount:(int64_t)count dataOffset:(int64_t)offset dataStride:(int64_t)stride;
+ (id)meshSourceWithColorComponents:(const float *)components count:(int64_t)count hasAlpha:(BOOL)alpha colorSpace:(CGColorSpace *)space;
+ (id)meshSourceWithData:(id)data semantic:(id)semantic vectorCount:(int64_t)count floatComponents:(BOOL)components componentsPerVector:(int64_t)vector bytesPerComponent:(int64_t)component dataOffset:(int64_t)offset dataStride:(int64_t)self0;
+ (id)meshSourceWithMDLVertexAttribute:(id)attribute mesh:(id)mesh;
+ (id)meshSourceWithMeshSourceRef:(__CFXMeshSource *)ref;
+ (id)meshSourceWithNormals:(id)normals count:(SEL)count;
+ (id)meshSourceWithTextureCoordinates:(const CGPoint *)coordinates count:(int64_t)count;
+ (id)meshSourceWithVertices:(id)vertices count:(SEL)count;
- (NSData)data;
- (NSString)description;
- (VFXMeshSource)initWithBuffer:(id)buffer vertexFormat:(unint64_t)format semantic:(id)semantic vertexCount:(int64_t)count dataOffset:(int64_t)offset dataStride:(int64_t)stride;
- (VFXMeshSource)initWithCoder:(id)coder;
- (VFXMeshSource)initWithData:(id)data semantic:(id)semantic colorSpace:(CGColorSpace *)space vectorCount:(int64_t)count floatComponents:(BOOL)components componentsPerVector:(int64_t)vector bytesPerComponent:(int64_t)component dataOffset:(int64_t)self0 dataStride:(int64_t)self1;
- (VFXMeshSource)initWithData:(id)data semantic:(id)semantic vectorCount:(int64_t)count componentType:(signed __int16)type componentCount:(unint64_t)componentCount dataOffset:(int64_t)offset dataStride:(int64_t)stride;
- (VFXMeshSource)initWithMeshSource:(__CFXMeshSource *)source;
- (VFXWorld)world;
- (__CFXMeshSource)meshSource;
- (__CFXWorld)worldRef;
- (id)_uninterleaveData:(id)data count:(unint64_t)count srcOffset:(unint64_t)offset srcStride:(unint64_t)stride dstStride:(unint64_t)dstStride;
- (id)dataByConvertingColorData:(id)data colorSpace:(CGColorSpace *)space newColorSpace:(CGColorSpace *)colorSpace vectorCount:(int64_t)count componentsPerVector:(int64_t)vector bytesPerComponent:(int64_t)component dataOffset:(int64_t)offset dataStride:(int64_t)self0 newDataOffset:(int64_t *)self1 newDataStride:(int64_t *)self2;
- (id)mkSemantic;
- (void)_clearCFXCache;
- (void)_printData;
- (void)addWorldReference:(id)reference;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)removeWorldReference:(id)reference;
- (void)setMkSemantic:(id)semantic;
- (void)setWorld:(id)world;
@end

@implementation VFXMeshSource

+ (id)meshSourceWithMeshSourceRef:(__CFXMeshSource *)ref
{
  result = sub_1AF16CDEC(ref);
  if (!result)
  {
    v6 = [self alloc];
    v8 = objc_msgSend_initWithMeshSource_(v6, v7, ref);

    return v8;
  }

  return result;
}

- (VFXMeshSource)initWithMeshSource:(__CFXMeshSource *)source
{
  v18.receiver = self;
  v18.super_class = VFXMeshSource;
  v4 = [(VFXMeshSource *)&v18 init];
  if (source)
  {
    v4->_meshSource = CFRetain(source);
    v4->_data = sub_1AF1AE6E8(source, v5);
    v16 = 0u;
    v17 = 0u;
    sub_1AF1AE1A8(source, v6, &v16);
    v8 = sub_1AF1AE3D8(source, v7);
    v9 = sub_1AF2E4E18(v8);
    v10 = v17;
    v4->_semantic = &v9->isa;
    v4->_vectorCount = v10;
    v4->_componentType = BYTE7(v17);
    v4->_componentCount = BYTE8(v17);
    v4->_mkSemantic = sub_1AF1AF854(source, v11);
    sub_1AF16CDFC(source, v4);
    v13 = sub_1AF1AF080(source, v12);
    v4->_dataOffset = sub_1AF1CB564(v13, v14);
    v4->_dataStride = sub_1AF121B74(v13);
  }

  return v4;
}

- (void)dealloc
{
  meshSource = self->_meshSource;
  if (meshSource)
  {
    sub_1AF16CDFC(meshSource, 0);
    objc_msgSend_postReleaseCommandWithCFXObject_(VFXTransaction, v4, self->_meshSource);
  }

  colorSpace = self->_colorSpace;
  if (colorSpace)
  {
    CFRelease(colorSpace);
    self->_colorSpace = 0;
  }

  v6.receiver = self;
  v6.super_class = VFXMeshSource;
  [(VFXMeshSource *)&v6 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_semantic(self, v6, v7);
  v11 = objc_msgSend_vectorCount(self, v9, v10);
  v13 = sub_1AF2883D8(self->_componentType, v12);
  v16 = objc_msgSend_componentsPerVector(self, v14, v15);
  return objc_msgSend_stringWithFormat_(v3, v17, @"<%@: %p | semantic=%@ vectors=%d %@x%d>", v5, self, v8, v11, v13, v16);
}

+ (id)dataByConvertingDoublesToFloats:(const double *)floats count:(int64_t)count
{
  countCopy = count;
  v6 = 4 * count;
  v7 = malloc_type_malloc(4 * count, 0x100004052888210uLL);
  v9 = v7;
  if (countCopy >= 1)
  {
    v10 = v7;
    do
    {
      v11 = *floats++;
      v12 = v11;
      *v10++ = v12;
      --countCopy;
    }

    while (countCopy);
  }

  v13 = MEMORY[0x1E695DEF0];

  return objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v13, v8, v9, v6, 1);
}

+ (id)dataWithVector3Array:(id)array count:(SEL)count bytesPerComponent:
{
  if (v4)
  {
    *v4 = 4;
  }

  return objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], count, v2, 16 * v3);
}

+ (id)dataWithPointArray:(const CGPoint *)array count:(int64_t)count bytesPerComponent:(int64_t *)component
{
  countCopy = count;
  if (component)
  {
    *component = 4;
  }

  v7 = 8 * count;
  v8 = malloc_type_malloc(8 * count, 0x100004052888210uLL);
  v10 = v8;
  if (countCopy >= 1)
  {
    v11 = v8;
    do
    {
      v12 = *array++;
      *v11++ = vcvt_f32_f64(v12);
      --countCopy;
    }

    while (countCopy);
  }

  v13 = MEMORY[0x1E695DEF0];

  return objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v13, v9, v10, v7, 1);
}

- (VFXMeshSource)initWithData:(id)data semantic:(id)semantic colorSpace:(CGColorSpace *)space vectorCount:(int64_t)count floatComponents:(BOOL)components componentsPerVector:(int64_t)vector bytesPerComponent:(int64_t)component dataOffset:(int64_t)self0 dataStride:(int64_t)self1
{
  componentsCopy = components;
  offsetCopy = offset;
  strideCopy = stride;
  v20 = sub_1AF2E54B8(semantic, a2);
  if ((v20 & 1) == 0)
  {
    v26 = sub_1AF0D5194(v20, v21);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF6228();
    }

    goto LABEL_11;
  }

  v37.receiver = self;
  v37.super_class = VFXMeshSource;
  v22 = [(VFXMeshSource *)&v37 init];
  self = v22;
  if (v22)
  {
    componentCopy = component;
    if (component == 8)
    {
      if (offsetCopy || strideCopy && 8 * vector != strideCopy)
      {
        v25 = sub_1AF0D5194(v22, v23);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF625C();
        }

LABEL_11:

        return 0;
      }

      v27 = objc_opt_class();
      v30 = objc_msgSend_bytes(data, v28, v29);
      data = objc_msgSend_dataByConvertingDoublesToFloats_count_(v27, v31, v30, vector * count);
      strideCopy = 4 * vector;
      stride = 4 * vector;
      componentCopy = 4;
    }

    if (space && objc_msgSend_isEqualToString_(semantic, v23, @"kGeometrySourceSemanticColor"))
    {
      data = objc_msgSend_dataByConvertingColorData_colorSpace_newColorSpace_vectorCount_componentsPerVector_bytesPerComponent_dataOffset_dataStride_newDataOffset_newDataStride_(self, v32, data, space, &self->_colorSpace, count, vector, componentCopy, offsetCopy, strideCopy, &offset, &stride);
    }

    self->_data = data;
    self->_semantic = objc_msgSend_copy(semantic, v33, v34);
    self->_vectorCount = count;
    self->_componentType = sub_1AF288ADC(componentCopy, 1, componentsCopy);
    self->_componentCount = vector;
    strideCopy2 = stride;
    if (!stride)
    {
      strideCopy2 = componentCopy * vector;
    }

    self->_dataOffset = offset;
    self->_dataStride = strideCopy2;
  }

  return self;
}

- (VFXMeshSource)initWithData:(id)data semantic:(id)semantic vectorCount:(int64_t)count componentType:(signed __int16)type componentCount:(unint64_t)componentCount dataOffset:(int64_t)offset dataStride:(int64_t)stride
{
  componentCountCopy = componentCount;
  typeCopy = type;
  v16 = sub_1AF2E54B8(semantic, a2);
  if (v16)
  {
    v25.receiver = self;
    v25.super_class = VFXMeshSource;
    v18 = [(VFXMeshSource *)&v25 init];
    if (v18)
    {
      strideCopy = stride;
      v18->_data = data;
      v18->_semantic = objc_msgSend_copy(semantic, v20, v21);
      v18->_vectorCount = count;
      v18->_componentType = typeCopy;
      v18->_componentCount = componentCountCopy;
      v18->_dataOffset = offset;
      if (!stride)
      {
        strideCopy = sub_1AF288070(typeCopy, v22) * v18->_componentCount;
      }

      v18->_dataStride = strideCopy;
    }
  }

  else
  {
    v23 = sub_1AF0D5194(v16, v17);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF6228();
    }

    return 0;
  }

  return v18;
}

- (VFXMeshSource)initWithBuffer:(id)buffer vertexFormat:(unint64_t)format semantic:(id)semantic vertexCount:(int64_t)count dataOffset:(int64_t)offset dataStride:(int64_t)stride
{
  v15 = sub_1AF2E54B8(semantic, a2);
  if (v15)
  {
    v27.receiver = self;
    v27.super_class = VFXMeshSource;
    v17 = [(VFXMeshSource *)&v27 init];
    if (v17)
    {
      v17->_mtlBuffer = buffer;
      v17->_semantic = objc_msgSend_copy(semantic, v18, v19);
      v17->_vectorCount = count;
      v17->_mtlVertexFormat = format;
      v21 = sub_1AF1F1980(format, v20);
      v17->_componentType = sub_1AF28844C(v21, v22);
      v17->_componentCount = sub_1AF2884B4(v21, v23);
      v17->_dataOffset = offset;
      if (!stride)
      {
        stride = sub_1AF288070(v21, v24);
      }

      v17->_dataStride = stride;
    }
  }

  else
  {
    v25 = sub_1AF0D5194(v15, v16);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF6228();
    }

    return 0;
  }

  return v17;
}

+ (id)meshSourceWithData:(id)data semantic:(id)semantic vectorCount:(int64_t)count floatComponents:(BOOL)components componentsPerVector:(int64_t)vector bytesPerComponent:(int64_t)component dataOffset:(int64_t)offset dataStride:(int64_t)self0
{
  componentsCopy = components;
  v16 = [self alloc];
  v18 = objc_msgSend_initWithData_semantic_colorSpace_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(v16, v17, data, semantic, 0, count, componentsCopy, vector, component, offset, stride);

  return v18;
}

+ (id)_meshSourceWithData:(id)data semantic:(id)semantic vectorCount:(int64_t)count componentType:(signed __int16)type componentCount:(unint64_t)componentCount dataOffset:(int64_t)offset dataStride:(int64_t)stride
{
  typeCopy = type;
  v15 = [self alloc];
  v17 = objc_msgSend_initWithData_semantic_vectorCount_componentType_componentCount_dataOffset_dataStride_(v15, v16, data, semantic, count, typeCopy, componentCount, offset, stride);

  return v17;
}

+ (id)meshSourceWithVertices:(id)vertices count:(SEL)count
{
  v4 = v3;
  v9 = 0;
  v6 = objc_msgSend_dataWithVector3Array_count_bytesPerComponent_(vertices, count, v2);
  return objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(vertices, v7, v6, @"kGeometrySourceSemanticPosition", v4, 1, 3, v9, 0, 16);
}

+ (id)meshSourceWithNormals:(id)normals count:(SEL)count
{
  v4 = v3;
  v9 = 0;
  v6 = objc_msgSend_dataWithVector3Array_count_bytesPerComponent_(normals, count, v2);
  return objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(normals, v7, v6, @"kGeometrySourceSemanticNormal", v4, 1, 3, v9, 0, 16);
}

+ (id)meshSourceWithTextureCoordinates:(const CGPoint *)coordinates count:(int64_t)count
{
  v9 = 0;
  v6 = objc_msgSend_dataWithPointArray_count_bytesPerComponent_(self, a2, coordinates, count, &v9);
  return objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(self, v7, v6, @"kGeometrySourceSemanticTexcoord", count, 1, 2, v9, 0, 0);
}

- (id)dataByConvertingColorData:(id)data colorSpace:(CGColorSpace *)space newColorSpace:(CGColorSpace *)colorSpace vectorCount:(int64_t)count componentsPerVector:(int64_t)vector bytesPerComponent:(int64_t)component dataOffset:(int64_t)offset dataStride:(int64_t)self0 newDataOffset:(int64_t *)self1 newDataStride:(int64_t *)self2
{
  dataStrideCopy2 = dataStride;
  offsetCopy2 = offset;
  sub_1AF16425C(self, a2);
  ColorSpace = CGColorTransformGetColorSpace();
  v20 = *colorSpace;
  if (*colorSpace != ColorSpace)
  {
    if (v20)
    {
      CFRelease(v20);
      *colorSpace = 0;
    }

    if (ColorSpace)
    {
      v21 = CFRetain(ColorSpace);
    }

    else
    {
      v21 = 0;
    }

    *colorSpace = v21;
  }

  if (CFEqual(space, ColorSpace))
  {
    goto LABEL_19;
  }

  v35 = 3 * component;
  v24 = component * vector;
  if (stride)
  {
    strideCopy = stride;
  }

  else
  {
    strideCopy = component * vector;
  }

  dataCopy = data;
  v26 = objc_msgSend_bytes(data, v22, v23) + offset;
  v37 = v24 * count;
  v27 = malloc_type_malloc(v24 * count, 0x100004077774924uLL);
  if (!CGColorTransformConvertData())
  {
    free(v27);
    dataStrideCopy2 = dataStride;
    offsetCopy2 = offset;
    data = dataCopy;
LABEL_19:
    *dataOffset = offsetCopy2;
    *dataStrideCopy2 = stride;
    return data;
  }

  *dataOffset = 0;
  *dataStride = v24;
  if (vector == 4)
  {
    v29 = v27;
    if (count >= 1)
    {
      v30 = &v27[v35];
      v31 = (v26 + v35);
      do
      {
        memcpy(v30, v31, component);
        v30 += v24;
        v31 += strideCopy;
        --count;
      }

      while (count);
    }

    v32 = MEMORY[0x1E695DEF0];
    v33 = v29;
  }

  else
  {
    v32 = MEMORY[0x1E695DEF0];
    v33 = v27;
  }

  return objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v32, v28, v33, v37, 1);
}

+ (id)meshSourceWithColorComponents:(const float *)components count:(int64_t)count hasAlpha:(BOOL)alpha colorSpace:(CGColorSpace *)space
{
  alphaCopy = alpha;
  selfCopy = self;
  sub_1AF16425C(self, a2);
  ColorSpace = CGColorTransformGetColorSpace();
  v13 = ColorSpace;
  if (!space)
  {
    space = sub_1AF164420(ColorSpace, v12);
  }

  if (alphaCopy)
  {
    v14 = 4;
  }

  else
  {
    v14 = 3;
  }

  if (CFEqual(space, v13))
  {
    v16 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v15, components, 4 * v14 * count);
  }

  else
  {
    v31 = selfCopy;
    v17 = malloc_type_malloc(4 * v14 * count, 0x100004052888210uLL);
    v30 = 4 * v14;
    v29 = 4 * v14;
    if (CGColorTransformConvertData())
    {
      if (count >= 1 && alphaCopy)
      {
        v19 = v17 + 3;
        v20 = components + 3;
        countCopy = count;
        do
        {
          v22 = *v20;
          v20 += 4;
          *v19 = v22;
          v19 += 4;
          --countCopy;
        }

        while (countCopy);
      }

      v23 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v18, v17, 4 * v14 * count, 1, v29, v17, 96, v30);
    }

    else
    {
      free(v17);
      v23 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v24, components, 4 * v14 * count, v29, v17, 96, v30);
    }

    v16 = v23;
    selfCopy = v31;
  }

  v25 = [selfCopy alloc];
  v27 = objc_msgSend_initWithData_semantic_colorSpace_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(v25, v26, v16, @"kGeometrySourceSemanticColor", v13, count, 1, v14, 4, 0, 4 * v14);

  return v27;
}

+ (id)geometrySourceWithColorData:(id)data colorSpace:(CGColorSpace *)space vectorCount:(int64_t)count floatComponents:(BOOL)components componentsPerVector:(int64_t)vector bytesPerComponent:(int64_t)component dataOffset:(int64_t)offset dataStride:(int64_t)self0
{
  componentsCopy = components;
  v16 = [self alloc];
  v18 = objc_msgSend_initWithData_semantic_colorSpace_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(v16, v17, data, @"kGeometrySourceSemanticColor", space, count, componentsCopy, vector, component, offset, stride);

  return v18;
}

+ (id)meshSourceWithBuffer:(id)buffer vertexFormat:(unint64_t)format semantic:(id)semantic vertexCount:(int64_t)count dataOffset:(int64_t)offset dataStride:(int64_t)stride
{
  if (format)
  {
    v14 = [self alloc];
    v16 = objc_msgSend_initWithBuffer_vertexFormat_semantic_vertexCount_dataOffset_dataStride_(v14, v15, buffer, format, semantic, count, offset, stride);

    return v16;
  }

  else
  {
    v18 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF6290();
    }

    return 0;
  }
}

+ (id)_modelSourceWithSource:(id)source vertexFormat:(unint64_t)format
{
  if (!source)
  {
    return 0;
  }

  if (!format)
  {
    v16 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF62C4();
    }

    return 0;
  }

  v6 = sub_1AF1F1980(format, a2);
  v9 = objc_msgSend_meshSource(source, v7, v8);
  v10 = sub_1AF1AF184(v9, v6, 0);
  if (!v10)
  {
    NSLog(&cfstr_Modelsourcewit.isa);
    return 0;
  }

  v11 = v10;
  v12 = [self alloc];
  v14 = objc_msgSend_initWithMeshSource_(v12, v13, v11);

  return v14;
}

- (id)mkSemantic
{
  mkSemantic = self->_mkSemantic;
  if (mkSemantic > 9)
  {
    v3 = MEMORY[0x1E6974AF8];
  }

  else
  {
    v3 = qword_1E7A7E9F0[mkSemantic];
  }

  return *v3;
}

- (void)setMkSemantic:(id)semantic
{
  if (objc_msgSend_isEqualToString_(semantic, a2, *MEMORY[0x1E6974AE0]))
  {
    v6 = 0;
  }

  else if (objc_msgSend_isEqualToString_(semantic, v5, *MEMORY[0x1E6974B28]))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(semantic, v7, *MEMORY[0x1E6974B38]))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(semantic, v8, *MEMORY[0x1E6974B18]))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(semantic, v9, @"aoCoord"))
  {
    v6 = 4;
  }

  else if (objc_msgSend_isEqualToString_(semantic, v10, *MEMORY[0x1E6974AF8]))
  {
    v6 = 5;
  }

  else if (objc_msgSend_isEqualToString_(semantic, v11, *MEMORY[0x1E6974B20]))
  {
    v6 = 6;
  }

  else if (objc_msgSend_isEqualToString_(semantic, v12, *MEMORY[0x1E6974B30]))
  {
    v6 = 7;
  }

  else if (objc_msgSend_isEqualToString_(semantic, v13, *MEMORY[0x1E6974AE8]))
  {
    v6 = 8;
  }

  else if (objc_msgSend_isEqualToString_(semantic, v14, @"lightmapCoord"))
  {
    v6 = 9;
  }

  else
  {
    v6 = 0;
  }

  self->_mkSemantic = v6;
  meshSource = self->_meshSource;
  if (meshSource)
  {

    sub_1AF1AF89C(meshSource, v6);
  }
}

- (NSData)data
{
  result = self->_data;
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
  v3 = objc_msgSend_meshSource(self, a2, v2);
  v5 = sub_1AF1AE6EC(v3, v4);

  sub_1AF1AF380(v3, v5);
}

- (void)_clearCFXCache
{
  if (self->_data)
  {
    meshSource = self->_meshSource;
    if (meshSource)
    {
      if (!sub_1AF1B72E0(meshSource, a2, v2))
      {
        v5 = self->_meshSource;
        if (v5)
        {
          sub_1AF16CDFC(v5, 0);
          v6 = self->_meshSource;
          if (v6)
          {
            CFRelease(v6);
            self->_meshSource = 0;
          }
        }
      }
    }
  }
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
      v9[2] = sub_1AF2E64B0;
      v9[3] = &unk_1E7A7E428;
      v9[4] = self;
      objc_msgSend_enumerateReferencesForOperation_usingBlock_(self, a2, 1, v9);
    }

    self->_world = world;
    if (world)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1AF2E6510;
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

- (__CFXMeshSource)meshSource
{
  if (!self->_meshSource)
  {
    if (self->_componentType)
    {
      mtlBuffer = self->_mtlBuffer;
      v5 = sub_1AF2E4E38(self->_semantic, a2);
      if (mtlBuffer)
      {
        v6 = sub_1AF1F2F0C(v5, self->_mtlBuffer, self->_mtlVertexFormat, self->_vectorCount, self->_dataStride, self->_dataOffset);
      }

      else
      {
        v6 = sub_1AF1ADC58(v5, self->_data, self->_componentType, self->_componentCount, self->_vectorCount, self->_dataStride, self->_dataOffset);
      }

      self->_meshSource = v6;
      sub_1AF1AF89C(v6, self->_mkSemantic);
      meshSource = self->_meshSource;
      if (meshSource)
      {
        sub_1AF16CDFC(meshSource, self);
      }
    }

    else
    {
      v7 = sub_1AF0D5194(self, a2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF62F8();
      }
    }
  }

  return self->_meshSource;
}

- (id)_uninterleaveData:(id)data count:(unint64_t)count srcOffset:(unint64_t)offset srcStride:(unint64_t)stride dstStride:(unint64_t)dstStride
{
  countCopy = count;
  v12 = dstStride * count;
  v13 = objc_msgSend_dataWithCapacity_(MEMORY[0x1E695DF88], a2, dstStride * count);
  objc_msgSend_setLength_(v13, v14, v12);
  v17 = objc_msgSend_mutableBytes(v13, v15, v16);
  v20 = objc_msgSend_bytes(data, v18, v19);
  if (countCopy)
  {
    v21 = (v20 + offset);
    do
    {
      memcpy(v17, v21, dstStride);
      v21 += stride;
      v17 += dstStride;
      --countCopy;
    }

    while (countCopy);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  LOWORD(v5) = self->_componentType;
  dataOffset = self->_dataOffset;
  dataStride = self->_dataStride;
  v8 = objc_msgSend_data(self, a2, coder);
  if (v8)
  {
    v11 = v8;
    if (self->_encodeDataAsHalf)
    {
      componentType = self->_componentType;
      v13 = sub_1AF28844C(componentType, v9);
      if (componentType != v13)
      {
        v15 = sub_1AF0D5194(v13, v14);
        v13 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);
        if (v13)
        {
          sub_1AFDF632C(v15, v14, v16, v17, v18, v19, v20, v21);
        }
      }

      if (self->_componentType == 14)
      {
        v22 = v11;
        sub_1AF288070(14, v23);
      }

      else
      {
        if (self->_componentCount - 2 >= 3)
        {
          v29 = sub_1AF0D5194(v13, v14);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDF63A4(v29, v30, v31, v32, v33, v34, v35, v36);
          }
        }

        v38 = sub_1AF1AF184(self->_meshSource, *&asc_1AFF8173E[2 * self->_componentCount - 4], 0);
        if (!v38)
        {
          v39 = sub_1AF0D5194(0, v37);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDF641C(v39, v37, v40, v41, v42, v43, v44, v45);
          }
        }

        v46 = sub_1AF1AF080(v38, v37);
        v47 = sub_1AF1CAED8(v46);
        v5 = sub_1AF28844C(v47, v48);
        dataStride = sub_1AF121B74(v46);
        v50 = sub_1AF1CB564(v46, v49);
        dataOffset = v50;
        if (v5 != 14)
        {
          v52 = sub_1AF0D5194(v50, v51);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDF6494(v52, v51, v53, v54, v55, v56, v57, v58);
          }
        }

        sub_1AF288070(v5, v51);
        v22 = sub_1AF1AE6E8(v38, v59);
        CFRelease(v38);
      }

      v90 = vImageEncodeVectorOptionsCreate();
      vImageEncodeVectorOptionsSetQuantization();
      v89 = 0;
      objc_msgSend_bytes(v22, v60, v61);
      objc_msgSend_length(v22, v62, v63);
      v64 = vImageEncodeVectorHalf();

      if (!v64)
      {
        v67 = sub_1AF0D5194(v65, v66);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDF650C(v67, v68, v69, v70, v71, v72, v73, v74);
        }
      }

      vImageEncodeVectorOptionsFree();
      v76 = objc_msgSend_dataWithBytesNoCopy_length_(MEMORY[0x1E695DEF0], v75, v89, v64);
      objc_msgSend_encodeObject_forKey_(coder, v77, v76, @"cdata");
    }

    else
    {
      v24 = objc_msgSend_bytesPerComponent(self, v9, v10);
      v28 = objc_msgSend_componentsPerVector(self, v25, v26) * v24;
      if (v28 < self->_dataStride)
      {
        v11 = objc_msgSend__uninterleaveData_count_srcOffset_srcStride_dstStride_(self, v27, v11, self->_vectorCount, self->_dataOffset);
        dataOffset = 0;
        dataStride = v28;
      }

      objc_msgSend_encodeObject_forKey_(coder, v27, v11, @"data");
    }
  }

  semantic = self->_semantic;
  if (semantic)
  {
    objc_msgSend_encodeObject_forKey_(coder, v9, semantic, @"semantic");
  }

  objc_msgSend_encodeInteger_forKey_(coder, v9, self->_vectorCount, @"vectorCount");
  v89 = 0;
  v90 = 0;
  v88 = 0;
  if (sub_1AF288A0C(v5, &v90, &v89, &v88))
  {
    objc_msgSend_encodeBool_forKey_(coder, v79, v88, @"floatComponents");
    objc_msgSend_encodeInteger_forKey_(coder, v80, v90, @"bytesPerComponent");
  }

  else
  {
    objc_msgSend_encodeInteger_forKey_(coder, v79, v5, @"componentType");
  }

  objc_msgSend_encodeInteger_forKey_(coder, v81, self->_componentCount, @"componentsPerVector");
  objc_msgSend_encodeInteger_forKey_(coder, v82, dataOffset, @"dataOffset");
  objc_msgSend_encodeInteger_forKey_(coder, v83, dataStride, @"dataStride");
  objc_msgSend_encodeInt_forKey_(coder, v84, self->_mkSemantic, @"mkSemantic");
  colorSpace = self->_colorSpace;
  if (colorSpace)
  {
    v86 = CGColorSpaceCopyPropertyList(colorSpace);
    objc_msgSend_encodeObject_forKey_(coder, v87, v86, @"colorSpace");
    CFRelease(v86);
  }
}

- (VFXMeshSource)initWithCoder:(id)coder
{
  v83.receiver = self;
  v83.super_class = VFXMeshSource;
  v6 = [(VFXMeshSource *)&v83 init];
  if (v6)
  {
    v7 = objc_msgSend_immediateMode(VFXTransaction, v4, v5);
    objc_msgSend_setImmediateMode_(VFXTransaction, v8, 1);
    v9 = objc_opt_class();
    v11 = objc_msgSend_vfx_decodeObjectOfClass_forKey_(coder, v10, v9, @"semantic");
    if (objc_msgSend_isEqualToString_(v11, v12, @"kGeometrySourceSemanticVertex"))
    {
      v11 = @"kGeometrySourceSemanticPosition";
    }

    v14 = sub_1AF2E54B8(v11, v13);
    if ((v14 & 1) == 0)
    {
      v24 = sub_1AF0D5194(v14, v15);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF6228();
      }

      goto LABEL_12;
    }

    v6->_semantic = v11;
    v6->_vectorCount = objc_msgSend_decodeIntegerForKey_(coder, v16, @"vectorCount");
    v6->_dataOffset = objc_msgSend_decodeIntegerForKey_(coder, v17, @"dataOffset");
    v6->_dataStride = objc_msgSend_decodeIntegerForKey_(coder, v18, @"dataStride");
    v6->_componentCount = objc_msgSend_decodeIntegerForKey_(coder, v19, @"componentsPerVector");
    v21 = objc_msgSend_decodeIntegerForKey_(coder, v20, @"componentType");
    v6->_componentType = v21;
    if (v21)
    {
      if (v21 < 0 || (v21 & 0x7FFEu) >= 0x2EuLL)
      {
        v23 = sub_1AF0D5194(v21, v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF6584();
        }

        goto LABEL_13;
      }
    }

    else
    {
      v27 = objc_msgSend_decodeBoolForKey_(coder, v22, @"floatComponents");
      v29 = objc_msgSend_decodeIntegerForKey_(coder, v28, @"bytesPerComponent");
      v6->_componentType = sub_1AF288ADC(v29, 1, v27);
    }

    v30 = objc_opt_class();
    v32 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v31, v30, @"cdata");
    v6->_encodeDataAsHalf = v32 != 0;
    if (v32)
    {
      v34 = v32;
      componentType = v6->_componentType;
      v36 = sub_1AF28844C(componentType, v33);
      v37 = componentType != v36;
      if (componentType != v36)
      {
        v38 = sub_1AF0D5194(v36, v25);
        v36 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
        if (v36)
        {
          sub_1AFDF65B8();
        }
      }

      if (v6->_componentType != 14)
      {
        v39 = sub_1AF0D5194(v36, v25);
        v36 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
        if (v36)
        {
          sub_1AFDF65EC();
        }

        v37 = 1;
      }

      if (v6->_componentCount - 2 >= 3)
      {
        v72 = sub_1AF0D5194(v36, v25);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF6620();
        }

        goto LABEL_12;
      }

      if (v37)
      {
LABEL_12:
        objc_msgSend_setImmediateMode_(VFXTransaction, v25, v7);
LABEL_13:

        return 0;
      }

      sub_1AF288070(v6->_componentType, v25);
      v40 = v6->_dataStride * v6->_vectorCount;
      v41 = malloc_type_malloc(v40, 0x26F14FD4uLL);
      objc_msgSend_bytes(v34, v42, v43);
      objc_msgSend_length(v34, v44, v45);
      v46 = vImageDecodeVectorHalf();
      if (v46 != v40)
      {
        v48 = sub_1AF0D5194(v46, v47);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDF6654(v48, v49, v50, v51, v52, v53, v54, v55);
        }
      }

      v56 = objc_alloc(MEMORY[0x1E695DEF0]);
      v58 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v56, v57, v41, v40, 1);
    }

    else
    {
      v61 = objc_opt_class();
      v58 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v62, v61, @"data");
    }

    v6->_data = v58;
    v63 = objc_msgSend_bytesPerComponent(v6, v59, v60);
    v66 = objc_msgSend_componentsPerVector(v6, v64, v65);
    v69 = objc_msgSend_length(v6->_data, v67, v68);
    if (v69 < v6->_dataOffset + v66 * v63 + (v6->_vectorCount - 1) * v6->_dataStride)
    {
      v71 = sub_1AF0D5194(v69, v70);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF66CC();
      }

      goto LABEL_12;
    }

    v6->_mkSemantic = objc_msgSend_decodeIntForKey_(coder, v70, @"mkSemantic");
    v74 = objc_msgSend_decodePropertyListForKey_(coder, v73, @"colorSpace");
    if (v74)
    {
      v76 = CGColorSpaceCreateWithPropertyList(v74);
      if (v76)
      {
        v77 = v76;
        data = v6->_data;
        vectorCount = v6->_vectorCount;
        componentCount = v6->_componentCount;
        v81 = sub_1AF288518(v6->_componentType, v75);
        v6->_data = objc_msgSend_dataByConvertingColorData_colorSpace_newColorSpace_vectorCount_componentsPerVector_bytesPerComponent_dataOffset_dataStride_newDataOffset_newDataStride_(v6, v82, data, v77, &v6->_colorSpace, vectorCount, componentCount, v81, v6->_dataOffset, v6->_dataStride, &v6->_dataOffset, &v6->_dataStride);
        CFRelease(v77);
      }
    }

    objc_msgSend_setImmediateMode_(VFXTransaction, v75, v7);
  }

  return v6;
}

+ (id)meshSourceWithMDLVertexAttribute:(id)attribute mesh:(id)mesh
{
  v6 = objc_msgSend_vertexDescriptor(mesh, a2, attribute);
  v11 = (objc_msgSend_format(attribute, v7, v8) >> 16) & 0xF;
  if (v11 >= 5)
  {
    v12 = 0;
    v13 = 2;
    if (v11 >= 9)
    {
      v14 = v11 - 11;
      if (v14)
      {
        v12 = v14 < 0xFFFFFFFE;
        v13 = 4;
      }
    }
  }

  else
  {
    v12 = 0;
    v13 = 1;
  }

  v15 = objc_msgSend_name(attribute, v9, v10);
  v17 = objc_msgSend_containsString_(v15, v16, *MEMORY[0x1E6974B28]);
  v20 = MEMORY[0x1E6974AF8];
  if (v17)
  {
    v21 = VFXMeshSourceSemanticPosition;
  }

  else
  {
    if ((objc_msgSend_containsString_(v15, v18, *MEMORY[0x1E6974B18]) & 1) == 0)
    {
      if (objc_msgSend_containsString_(v15, v18, *MEMORY[0x1E6974B38]))
      {
        v21 = VFXMeshSourceSemanticTexcoord;
        goto LABEL_14;
      }

      if (objc_msgSend_containsString_(v15, v18, *MEMORY[0x1E6974B30]))
      {
        v21 = VFXMeshSourceSemanticTangent;
        goto LABEL_14;
      }

      v22 = @"aoCoord";
      if (objc_msgSend_isEqualToString_(v15, v18, @"aoCoord") & 1) != 0 || (v22 = @"lightmapCoord", (objc_msgSend_isEqualToString_(v15, v18, @"lightmapCoord")))
      {
        v21 = VFXMeshSourceSemanticTexcoord;
        goto LABEL_15;
      }

      if (objc_msgSend_containsString_(v15, v18, *v20) & 1) != 0 || (v135 = objc_msgSend_containsString_(v15, v18, *MEMORY[0x1E6974B20]), (v135))
      {
        v21 = VFXMeshSourceSemanticColor;
        goto LABEL_14;
      }

      v136 = sub_1AF0D5194(v135, v18);
      if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF6934(v15, v136);
      }
    }

    v21 = VFXMeshSourceSemanticNormal;
  }

LABEL_14:
  v22 = @"unknown";
LABEL_15:
  v23 = *v21;
  v24 = objc_msgSend_layouts(v6, v18, v19);
  v27 = objc_msgSend_bufferIndex(attribute, v25, v26);
  v29 = objc_msgSend_objectAtIndexedSubscript_(v24, v28, v27);
  v32 = objc_msgSend_stride(v29, v30, v31);
  v35 = objc_msgSend_format(attribute, v33, v34);
  v38 = objc_msgSend_offset(attribute, v36, v37);
  v41 = objc_msgSend_name(attribute, v39, v40);
  if (objc_msgSend_containsString_(v41, v42, *v20) && objc_msgSend_format(attribute, v43, v44) == 65540)
  {
    v45 = objc_msgSend_vertexBuffers(mesh, v43, v44);
    v48 = objc_msgSend_bufferIndex(attribute, v46, v47);
    v50 = objc_msgSend_objectAtIndexedSubscript_(v45, v49, v48);
    v53 = objc_msgSend_map(v50, v51, v52);
    v56 = objc_msgSend_bytes(v53, v54, v55);
    v59 = objc_msgSend_vertexBuffers(mesh, v57, v58);
    v62 = objc_msgSend_bufferIndex(attribute, v60, v61);
    v64 = objc_msgSend_objectAtIndexedSubscript_(v59, v63, v62);
    v67 = objc_msgSend_length(v64, v65, v66);
    if (objc_msgSend_format(attribute, v68, v69) == 786436)
    {
      __p = 0;
      v138 = 0;
      v139 = 0;
      if (v67 >= 0x10)
      {
        v72 = 4 * (v67 >> 4);
        sub_1AF2F8E14(&__p, v72);
        v73 = 0;
        v74 = (v56 + 8);
        do
        {
          *(__p + v73) = (*(v74 - 2) * 255.0);
          *(__p + v73 + 1) = (*(v74 - 1) * 255.0);
          *(__p + v73 + 2) = (*v74 * 255.0);
          *(__p + v73 + 3) = (v74[1] * 255.0);
          v73 += 4;
          v74 += 4;
        }

        while (v72 != v73);
      }
    }

    else
    {
      if (objc_msgSend_format(attribute, v70, v71) != 786435)
      {
        if (objc_msgSend_format(attribute, v70, v113) == 65539)
        {
          v119 = v67 / 3;
          __p = 0;
          v138 = 0;
          v139 = 0;
          sub_1AF121C28(&__p, 4 * (v67 / 3));
          v122 = __p;
          if (v67 >= 3)
          {
            v123 = (__p + 8);
            v124 = (v56 + 2);
            do
            {
              LOBYTE(v121) = *(v124 - 2);
              *&v125 = LODWORD(v121) / 255.0;
              *(v123 - 2) = *&v125;
              LOBYTE(v125) = *(v124 - 1);
              *&v126 = v125 / 255.0;
              *(v123 - 1) = *&v126;
              LOBYTE(v126) = *v124;
              v121 = v126 / 255.0;
              *v123 = v121;
              v123[1] = 1.0;
              v123 += 4;
              v124 += 3;
              --v119;
            }

            while (v119);
          }
        }

        else
        {
          if (objc_msgSend_format(attribute, v117, v118) != 65540)
          {
            return 0;
          }

          __p = 0;
          v138 = 0;
          v139 = 0;
          sub_1AF121C28(&__p, v67 & 0xFFFFFFFFFFFFFFFCLL);
          v122 = __p;
          if (v67 >= 4)
          {
            v128 = v67 >> 2;
            v129 = (v56 + 3);
            v130 = (__p + 8);
            do
            {
              LOBYTE(v127) = *(v129 - 3);
              *&v131 = LODWORD(v127) / 255.0;
              *(v130 - 2) = *&v131;
              LOBYTE(v131) = *(v129 - 2);
              *&v132 = v131 / 255.0;
              *(v130 - 1) = *&v132;
              LOBYTE(v132) = *(v129 - 1);
              *&v133 = v132 / 255.0;
              *v130 = *&v133;
              LOBYTE(v133) = *v129;
              v127 = v133 / 255.0;
              v130[1] = v127;
              v129 += 4;
              v130 += 4;
              --v128;
            }

            while (v128);
          }
        }

        v102 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v120, v122, v138 - v122);
        if (__p)
        {
          v138 = __p;
          operator delete(__p);
        }

        v38 = 0;
        v12 = 1;
        v32 = 16;
        v75 = 4;
        v13 = 4;
        goto LABEL_23;
      }

      __p = 0;
      v138 = 0;
      v139 = 0;
      if (v67 >= 0xC)
      {
        v114 = 4 * (v67 / 0xC);
        sub_1AF2F8E14(&__p, v114);
        v115 = 0;
        v116 = (v56 + 4);
        do
        {
          *(__p + v115) = (*(v116 - 1) * 255.0);
          *(__p + v115 + 1) = (*v116 * 255.0);
          *(__p + v115 + 2) = (v116[1] * 255.0);
          *(__p + v115 + 3) = -1;
          v115 += 4;
          v116 += 3;
        }

        while (v114 != v115);
      }
    }

    v102 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v70, __p, v138 - __p);
    if (__p)
    {
      v138 = __p;
      operator delete(__p);
    }

    v38 = 0;
    v12 = 0;
    v13 = 1;
    v75 = 4;
    v32 = 4;
  }

  else
  {
    v75 = v35 & 7;
    v76 = objc_msgSend_vertexBuffers(mesh, v43, v44);
    v79 = objc_msgSend_bufferIndex(attribute, v77, v78);
    v81 = objc_msgSend_objectAtIndexedSubscript_(v76, v80, v79);
    v84 = objc_msgSend_map(v81, v82, v83);
    v87 = objc_msgSend_bytes(v84, v85, v86);
    v90 = objc_msgSend_vertexBuffers(mesh, v88, v89);
    v93 = objc_msgSend_bufferIndex(attribute, v91, v92);
    v95 = objc_msgSend_objectAtIndexedSubscript_(v90, v94, v93);
    v98 = objc_msgSend_length(v95, v96, v97);
    v102 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v99, v87, v98);
  }

LABEL_23:
  if (!v102)
  {
    return 0;
  }

  v103 = objc_msgSend_length(v102, v100, v101) / v32;
  if (objc_msgSend_isEqualToString_(v23, v104, @"kGeometrySourceSemanticTexcoord"))
  {
    v107 = objc_msgSend_format(attribute, v105, v106);
    v110 = objc_msgSend_bytes(v102, v108, v109);
    sub_1AF2F07B4(v107, v110, v38, v32, v103);
  }

  v111 = objc_msgSend_meshSourceWithData_semantic_vectorCount_floatComponents_componentsPerVector_bytesPerComponent_dataOffset_dataStride_(VFXMeshSource, v105, v102, v23, v103, v12, v75, v13, v38, v32);
  objc_msgSend_setMkSemantic_(v111, v112, v22);
  return v111;
}

@end