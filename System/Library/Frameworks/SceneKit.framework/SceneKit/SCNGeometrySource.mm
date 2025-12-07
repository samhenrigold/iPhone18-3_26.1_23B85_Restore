@interface SCNGeometrySource
+ (SCNGeometrySource)geometrySourceWithBuffer:(id)buffer vertexFormat:(MTLVertexFormat)vertexFormat semantic:(SCNGeometrySourceSemantic)semantic vertexCount:(NSInteger)vertexCount dataOffset:(NSInteger)offset dataStride:(NSInteger)stride;
+ (SCNGeometrySource)geometrySourceWithColorComponents:(const float *)components count:(int64_t)count hasAlpha:(BOOL)alpha colorSpace:(CGColorSpace *)space;
+ (SCNGeometrySource)geometrySourceWithColorData:(id)data colorSpace:(CGColorSpace *)space vectorCount:(int64_t)count floatComponents:(BOOL)components componentsPerVector:(int64_t)vector bytesPerComponent:(int64_t)component dataOffset:(int64_t)offset dataStride:(int64_t)self0;
+ (SCNGeometrySource)geometrySourceWithData:(NSData *)data semantic:(SCNGeometrySourceSemantic)semantic vectorCount:(NSInteger)vectorCount floatComponents:(BOOL)floatComponents componentsPerVector:(NSInteger)componentsPerVector bytesPerComponent:(NSInteger)bytesPerComponent dataOffset:(NSInteger)offset dataStride:(NSInteger)stride;
+ (SCNGeometrySource)geometrySourceWithMDLVertexAttribute:(id)attribute mesh:(id)mesh;
+ (SCNGeometrySource)geometrySourceWithMeshSourceRef:(__C3DMeshSource *)ref;
+ (SCNGeometrySource)geometrySourceWithNormals:(const SCNVector3 *)normals count:(NSInteger)count;
+ (SCNGeometrySource)geometrySourceWithTextureCoordinates:(const CGPoint *)texcoord count:(NSInteger)count;
+ (SCNGeometrySource)geometrySourceWithVertices:(const SCNVector3 *)vertices count:(NSInteger)count;
+ (id)_geometrySourceWithData:(id)data semantic:(id)semantic vectorCount:(int64_t)count componentType:(signed __int16)type componentCount:(unint64_t)componentCount dataOffset:(int64_t)offset dataStride:(int64_t)stride;
+ (id)_geometrySourceWithSource:(id)source vertexFormat:(unint64_t)format;
+ (id)dataByConvertingDoublesToFloats:(const double *)floats count:(int64_t)count;
+ (id)dataWithPointArray:(const CGPoint *)array count:(int64_t)count bytesPerComponent:(int64_t *)component;
+ (id)dataWithVector3Array:(const SCNVector3 *)array count:(int64_t)count bytesPerComponent:(int64_t *)component;
- (NSData)data;
- (SCNGeometrySource)initWithBuffer:(id)buffer vertexFormat:(unint64_t)format semantic:(id)semantic vertexCount:(int64_t)count dataOffset:(int64_t)offset dataStride:(int64_t)stride;
- (SCNGeometrySource)initWithCoder:(id)coder;
- (SCNGeometrySource)initWithData:(id)data semantic:(id)semantic colorSpace:(CGColorSpace *)space vectorCount:(int64_t)count floatComponents:(BOOL)components componentsPerVector:(int64_t)vector bytesPerComponent:(int64_t)component dataOffset:(int64_t)self0 dataStride:(int64_t)self1;
- (SCNGeometrySource)initWithData:(id)data semantic:(id)semantic vectorCount:(int64_t)count componentType:(signed __int16)type componentCount:(unint64_t)componentCount dataOffset:(int64_t)offset dataStride:(int64_t)stride;
- (SCNGeometrySource)initWithMeshSource:(__C3DMeshSource *)source;
- (__C3DMeshSource)meshSource;
- (__C3DScene)sceneRef;
- (id)_uninterleaveData:(id)data count:(unint64_t)count srcOffset:(unint64_t)offset srcStride:(unint64_t)stride dstStride:(unint64_t)dstStride;
- (id)dataByConvertingColorData:(id)data colorSpace:(CGColorSpace *)space newColorSpace:(CGColorSpace *)colorSpace vectorCount:(int64_t)count componentsPerVector:(int64_t)vector bytesPerComponent:(int64_t)component dataOffset:(int64_t)offset dataStride:(int64_t)self0 newDataOffset:(int64_t *)self1 newDataStride:(int64_t *)self2;
- (id)description;
- (id)mkSemantic;
- (id)scene;
- (void)_clearC3DCache;
- (void)_printData;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setMkSemantic:(id)semantic;
@end

@implementation SCNGeometrySource

+ (SCNGeometrySource)geometrySourceWithMDLVertexAttribute:(id)attribute mesh:(id)mesh
{
  vertexDescriptor = [mesh vertexDescriptor];
  v7 = ([attribute format] >> 16) & 0xF;
  if (v7 >= 5)
  {
    v8 = 0;
    v9 = 2;
    if (v7 >= 9)
    {
      v10 = v7 - 11;
      if (v10)
      {
        v8 = v10 < 0xFFFFFFFE;
        v9 = 4;
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  name = [attribute name];
  v12 = [name containsString:*MEMORY[0x277CD7AB0]];
  v13 = MEMORY[0x277CD7A80];
  if (v12)
  {
    v14 = &SCNGeometrySourceSemanticVertex;
  }

  else
  {
    if (([name containsString:*MEMORY[0x277CD7AA0]] & 1) == 0)
    {
      if ([name containsString:*MEMORY[0x277CD7AC0]])
      {
        v14 = &SCNGeometrySourceSemanticTexcoord;
        goto LABEL_14;
      }

      if ([name containsString:*MEMORY[0x277CD7AB8]])
      {
        v14 = &SCNGeometrySourceSemanticTangent;
        goto LABEL_14;
      }

      v15 = @"aoCoord";
      if (objc_msgSend_isEqualToString_(name) & 1) != 0 || (v15 = @"lightmapCoord", (objc_msgSend_isEqualToString_(name)))
      {
        v14 = &SCNGeometrySourceSemanticTexcoord;
        goto LABEL_15;
      }

      if ([name containsString:*v13] & 1) != 0 || (v51 = objc_msgSend(name, "containsString:", *MEMORY[0x277CD7AA8]), (v51))
      {
        v14 = &SCNGeometrySourceSemanticColor;
        goto LABEL_14;
      }

      v53 = scn_default_log(v51, v52);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        [SCNGeometrySource(SCNModelIO) geometrySourceWithMDLVertexAttribute:name mesh:v53];
      }
    }

    v14 = &SCNGeometrySourceSemanticNormal;
  }

LABEL_14:
  v15 = @"unknown";
LABEL_15:
  v16 = *v14;
  v17 = [objc_msgSend(objc_msgSend(vertexDescriptor "layouts")];
  format = [attribute format];
  offset = [attribute offset];
  if ([objc_msgSend(attribute "name")] && objc_msgSend(attribute, "format") == 65540)
  {
    v20 = [objc_msgSend(objc_msgSend(objc_msgSend(mesh "vertexBuffers")];
    v21 = [objc_msgSend(objc_msgSend(mesh "vertexBuffers")];
    if ([attribute format] == 786436)
    {
      memset(&__p, 0, sizeof(__p));
      if (v21 >= 0x10)
      {
        v22 = 4 * (v21 >> 4);
        std::vector<unsigned char>::__append(&__p, v22);
        v23 = 0;
        v24 = (v20 + 8);
        do
        {
          LOBYTE(__p.__begin_[v23 / 4]) = (*(v24 - 2) * 255.0);
          BYTE1(__p.__begin_[v23 / 4]) = (*(v24 - 1) * 255.0);
          BYTE2(__p.__begin_[v23 / 4]) = (*v24 * 255.0);
          HIBYTE(__p.__begin_[v23 / 4]) = (v24[1] * 255.0);
          v23 += 4;
          v24 += 4;
        }

        while (v22 != v23);
      }
    }

    else
    {
      if ([attribute format] != 786435)
      {
        if ([attribute format] == 65539)
        {
          v36 = v21 / 3;
          memset(&__p, 0, sizeof(__p));
          std::vector<float>::resize(&__p, 4 * (v21 / 3));
          begin = __p.__begin_;
          if (v21 >= 3)
          {
            v39 = __p.__begin_ + 2;
            v40 = (v20 + 2);
            do
            {
              LOBYTE(v37) = *(v40 - 2);
              *&v41 = LODWORD(v37) / 255.0;
              *(v39 - 2) = v41;
              LOBYTE(v41) = *(v40 - 1);
              *&v42 = v41 / 255.0;
              *(v39 - 1) = v42;
              LOBYTE(v42) = *v40;
              v37 = v42 / 255.0;
              *v39 = v37;
              v39[1] = 1065353216;
              v39 += 4;
              v40 += 3;
              --v36;
            }

            while (v36);
          }
        }

        else
        {
          if ([attribute format] != 65540)
          {
            return 0;
          }

          memset(&__p, 0, sizeof(__p));
          std::vector<float>::resize(&__p, v21 & 0xFFFFFFFFFFFFFFFCLL);
          begin = __p.__begin_;
          if (v21 >= 4)
          {
            v44 = v21 >> 2;
            v45 = (v20 + 3);
            v46 = (__p.__begin_ + 2);
            do
            {
              LOBYTE(v43) = *(v45 - 3);
              *&v47 = LODWORD(v43) / 255.0;
              *(v46 - 2) = *&v47;
              LOBYTE(v47) = *(v45 - 2);
              *&v48 = v47 / 255.0;
              *(v46 - 1) = *&v48;
              LOBYTE(v48) = *(v45 - 1);
              *&v49 = v48 / 255.0;
              *v46 = *&v49;
              LOBYTE(v49) = *v45;
              v43 = v49 / 255.0;
              v46[1] = v43;
              v45 += 4;
              v46 += 4;
              --v44;
            }

            while (v44);
          }
        }

        begin = [MEMORY[0x277CBEA90] dataWithBytes:begin length:__p.__end_ - begin];
        if (__p.__begin_)
        {
          __p.__end_ = __p.__begin_;
          operator delete(__p.__begin_);
        }

        offset = 0;
        v8 = 1;
        v17 = 16;
        v25 = 4;
        v9 = 4;
        goto LABEL_23;
      }

      memset(&__p, 0, sizeof(__p));
      if (v21 >= 0xC)
      {
        v33 = 4 * (v21 / 0xC);
        std::vector<unsigned char>::__append(&__p, v33);
        v34 = 0;
        v35 = (v20 + 4);
        do
        {
          LOBYTE(__p.__begin_[v34 / 4]) = (*(v35 - 1) * 255.0);
          BYTE1(__p.__begin_[v34 / 4]) = (*v35 * 255.0);
          BYTE2(__p.__begin_[v34 / 4]) = (v35[1] * 255.0);
          HIBYTE(__p.__begin_[v34 / 4]) = -1;
          v34 += 4;
          v35 += 3;
        }

        while (v33 != v34);
      }
    }

    begin = [MEMORY[0x277CBEA90] dataWithBytes:__p.__begin_ length:__p.__end_ - __p.__begin_];
    if (__p.__begin_)
    {
      __p.__end_ = __p.__begin_;
      operator delete(__p.__begin_);
    }

    offset = 0;
    v8 = 0;
    v9 = 1;
    v25 = 4;
    v17 = 4;
  }

  else
  {
    v25 = format & 7;
    v26 = [objc_msgSend(objc_msgSend(objc_msgSend(mesh "vertexBuffers")];
    v27 = [objc_msgSend(objc_msgSend(mesh "vertexBuffers")];
    begin = [MEMORY[0x277CBEA90] dataWithBytes:v26 length:v27];
  }

LABEL_23:
  if (!begin)
  {
    return 0;
  }

  v29 = [begin length];
  v30 = v29 / v17;
  if ((C3DWasLinkedBeforeMajorOSYear2018(v29, v31) & 1) == 0 && objc_msgSend_isEqualToString_(v16))
  {
    flip_UVs([attribute format], objc_msgSend(begin, "bytes"), offset, v17, v30);
  }

  v32 = [SCNGeometrySource geometrySourceWithData:begin semantic:v16 vectorCount:v30 floatComponents:v8 componentsPerVector:v25 bytesPerComponent:v9 dataOffset:offset dataStride:v17];
  [(SCNGeometrySource *)v32 setMkSemantic:v15];
  return v32;
}

+ (SCNGeometrySource)geometrySourceWithMeshSourceRef:(__C3DMeshSource *)ref
{
  result = C3DEntityGetObjCWrapper(ref);
  if (!result)
  {
    v6 = [[self alloc] initWithMeshSource:ref];

    return v6;
  }

  return result;
}

- (SCNGeometrySource)initWithMeshSource:(__C3DMeshSource *)source
{
  v23.receiver = self;
  v23.super_class = SCNGeometrySource;
  v4 = [(SCNGeometrySource *)&v23 init];
  if (source)
  {
    v4->_meshSource = CFRetain(source);
    v4->_data = C3DMeshSourceGetData();
    v21 = 0u;
    v22 = 0u;
    C3DMeshSourceGetContent(source, v5, &v21);
    Semantic = C3DMeshSourceGetSemantic(source, v6);
    v8 = SCNGeometrySemanticForMeshSourceSemantic(Semantic);
    v9 = v22;
    v4->_semantic = &v8->isa;
    v4->_vectorCount = v9;
    v4->_componentType = BYTE7(v22);
    v4->_componentCount = BYTE8(v22);
    v4->_mkSemantic = C3DMeshSourceGetModelKitSemantic(source, v10);
    C3DEntitySetObjCWrapper(source, v4);
    Accessor = C3DMeshSourceGetAccessor(source, v11, v12, v13, v14, v15, v16, v17);
    v4->_dataOffset = C3DSourceAccessorGetOffset(Accessor, v19);
    v4->_dataStride = C3DSceneSourceGetLibrary(Accessor);
  }

  return v4;
}

- (void)dealloc
{
  meshSource = self->_meshSource;
  if (meshSource)
  {
    C3DEntitySetObjCWrapper(meshSource, 0);
    v4 = self->_meshSource;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__SCNGeometrySource_dealloc__block_invoke;
    v7[3] = &__block_descriptor_40_e8_v16__0d8l;
    v7[4] = v4;
    [SCNTransaction postCommandWithContext:0 object:0 applyBlock:v7];
  }

  colorSpace = self->_colorSpace;
  if (colorSpace)
  {
    CFRelease(colorSpace);
    self->_colorSpace = 0;
  }

  v6.receiver = self;
  v6.super_class = SCNGeometrySource;
  [(SCNGeometrySource *)&v6 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  semantic = [(SCNGeometrySource *)self semantic];
  vectorCount = [(SCNGeometrySource *)self vectorCount];
  return [v3 stringWithFormat:@"<%@: %p | semantic=%@ vectors=%d %@x%d>", v5, self, semantic, vectorCount, C3DBaseTypeStringDescription(self->_componentType, v8), -[SCNGeometrySource componentsPerVector](self, "componentsPerVector")];
}

+ (id)dataByConvertingDoublesToFloats:(const double *)floats count:(int64_t)count
{
  countCopy = count;
  v6 = 4 * count;
  v7 = malloc_type_malloc(4 * count, 0x100004052888210uLL);
  v8 = v7;
  if (countCopy >= 1)
  {
    v9 = v7;
    do
    {
      v10 = *floats++;
      v11 = v10;
      *v9++ = v11;
      --countCopy;
    }

    while (countCopy);
  }

  v12 = MEMORY[0x277CBEA90];

  return [v12 dataWithBytesNoCopy:v8 length:v6 freeWhenDone:1];
}

+ (id)dataWithVector3Array:(const SCNVector3 *)array count:(int64_t)count bytesPerComponent:(int64_t *)component
{
  if (component)
  {
    *component = 4;
  }

  return [MEMORY[0x277CBEA90] dataWithBytes:array length:12 * count];
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
  v9 = v8;
  if (countCopy >= 1)
  {
    v10 = v8;
    do
    {
      v11 = *array++;
      *v10++ = vcvt_f32_f64(v11);
      --countCopy;
    }

    while (countCopy);
  }

  v12 = MEMORY[0x277CBEA90];

  return [v12 dataWithBytesNoCopy:v9 length:v7 freeWhenDone:1];
}

- (SCNGeometrySource)initWithData:(id)data semantic:(id)semantic colorSpace:(CGColorSpace *)space vectorCount:(int64_t)count floatComponents:(BOOL)components componentsPerVector:(int64_t)vector bytesPerComponent:(int64_t)component dataOffset:(int64_t)self0 dataStride:(int64_t)self1
{
  componentsCopy = components;
  offsetCopy = offset;
  strideCopy = stride;
  IsValid = SCNGeometrySourceSemanticIsValid(semantic, a2);
  if ((IsValid & 1) == 0)
  {
    v26 = scn_default_log(IsValid, v21);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [SCNGeometrySource initWithData:semantic:colorSpace:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:];
    }

    goto LABEL_11;
  }

  v29.receiver = self;
  v29.super_class = SCNGeometrySource;
  v22 = [(SCNGeometrySource *)&v29 init];
  self = v22;
  if (v22)
  {
    componentCopy = component;
    if (component == 8)
    {
      if (offsetCopy || strideCopy && 8 * vector != strideCopy)
      {
        v25 = scn_default_log(v22, v23);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [SCNGeometrySource initWithData:semantic:colorSpace:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:];
        }

LABEL_11:

        return 0;
      }

      data = [objc_opt_class() dataByConvertingDoublesToFloats:objc_msgSend(data count:{"bytes"), vector * count}];
      strideCopy = 4 * vector;
      stride = 4 * vector;
      componentCopy = 4;
    }

    if (space && objc_msgSend_isEqualToString_(semantic))
    {
      data = [(SCNGeometrySource *)self dataByConvertingColorData:data colorSpace:space newColorSpace:&self->_colorSpace vectorCount:count componentsPerVector:vector bytesPerComponent:componentCopy dataOffset:offsetCopy dataStride:strideCopy newDataOffset:&offset newDataStride:&stride];
    }

    self->_data = data;
    self->_semantic = [semantic copy];
    self->_vectorCount = count;
    self->_componentType = C3DBaseTypeFromDescription(componentCopy, 1, componentsCopy);
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

- (SCNGeometrySource)initWithData:(id)data semantic:(id)semantic vectorCount:(int64_t)count componentType:(signed __int16)type componentCount:(unint64_t)componentCount dataOffset:(int64_t)offset dataStride:(int64_t)stride
{
  componentCountCopy = componentCount;
  typeCopy = type;
  IsValid = SCNGeometrySourceSemanticIsValid(semantic, a2);
  if (IsValid)
  {
    v23.receiver = self;
    v23.super_class = SCNGeometrySource;
    v18 = [(SCNGeometrySource *)&v23 init];
    if (v18)
    {
      strideCopy = stride;
      v18->_data = data;
      v18->_semantic = [semantic copy];
      v18->_vectorCount = count;
      v18->_componentType = typeCopy;
      v18->_componentCount = componentCountCopy;
      v18->_dataOffset = offset;
      if (!stride)
      {
        strideCopy = C3DSizeOfBaseType(typeCopy, v20) * v18->_componentCount;
      }

      v18->_dataStride = strideCopy;
    }
  }

  else
  {
    v21 = scn_default_log(IsValid, v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [SCNGeometrySource initWithData:semantic:colorSpace:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:];
    }

    return 0;
  }

  return v18;
}

- (SCNGeometrySource)initWithBuffer:(id)buffer vertexFormat:(unint64_t)format semantic:(id)semantic vertexCount:(int64_t)count dataOffset:(int64_t)offset dataStride:(int64_t)stride
{
  IsValid = SCNGeometrySourceSemanticIsValid(semantic, a2);
  if (IsValid)
  {
    v25.receiver = self;
    v25.super_class = SCNGeometrySource;
    v17 = [(SCNGeometrySource *)&v25 init];
    if (v17)
    {
      v17->_mtlBuffer = buffer;
      v17->_semantic = [semantic copy];
      v17->_vectorCount = count;
      v17->_mtlVertexFormat = format;
      v19 = SCNMTLVertexFormatToC3DBaseType(format, v18);
      v17->_componentType = C3DBaseTypeGetComponentType(v19, v20);
      v17->_componentCount = C3DBaseTypeGetComponentCount(v19, v21);
      v17->_dataOffset = offset;
      if (!stride)
      {
        stride = C3DSizeOfBaseType(v19, v22);
      }

      v17->_dataStride = stride;
    }
  }

  else
  {
    v23 = scn_default_log(IsValid, v16);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [SCNGeometrySource initWithData:semantic:colorSpace:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:];
    }

    return 0;
  }

  return v17;
}

+ (SCNGeometrySource)geometrySourceWithData:(NSData *)data semantic:(SCNGeometrySourceSemantic)semantic vectorCount:(NSInteger)vectorCount floatComponents:(BOOL)floatComponents componentsPerVector:(NSInteger)componentsPerVector bytesPerComponent:(NSInteger)bytesPerComponent dataOffset:(NSInteger)offset dataStride:(NSInteger)stride
{
  v10 = [[self alloc] initWithData:data semantic:semantic colorSpace:0 vectorCount:vectorCount floatComponents:floatComponents componentsPerVector:componentsPerVector bytesPerComponent:bytesPerComponent dataOffset:offset dataStride:stride];

  return v10;
}

+ (id)_geometrySourceWithData:(id)data semantic:(id)semantic vectorCount:(int64_t)count componentType:(signed __int16)type componentCount:(unint64_t)componentCount dataOffset:(int64_t)offset dataStride:(int64_t)stride
{
  v9 = [[self alloc] initWithData:data semantic:semantic vectorCount:count componentType:type componentCount:componentCount dataOffset:offset dataStride:stride];

  return v9;
}

+ (SCNGeometrySource)geometrySourceWithVertices:(const SCNVector3 *)vertices count:(NSInteger)count
{
  v8 = 0;
  v6 = [self dataWithVector3Array:vertices count:count bytesPerComponent:&v8];
  return [self geometrySourceWithData:v6 semantic:@"kGeometrySourceSemanticVertex" vectorCount:count floatComponents:1 componentsPerVector:3 bytesPerComponent:v8 dataOffset:0 dataStride:0];
}

+ (SCNGeometrySource)geometrySourceWithNormals:(const SCNVector3 *)normals count:(NSInteger)count
{
  v8 = 0;
  v6 = [self dataWithVector3Array:normals count:count bytesPerComponent:&v8];
  return [self geometrySourceWithData:v6 semantic:@"kGeometrySourceSemanticNormal" vectorCount:count floatComponents:1 componentsPerVector:3 bytesPerComponent:v8 dataOffset:0 dataStride:0];
}

+ (SCNGeometrySource)geometrySourceWithTextureCoordinates:(const CGPoint *)texcoord count:(NSInteger)count
{
  v8 = 0;
  v6 = [self dataWithPointArray:texcoord count:count bytesPerComponent:&v8];
  return [self geometrySourceWithData:v6 semantic:@"kGeometrySourceSemanticTexcoord" vectorCount:count floatComponents:1 componentsPerVector:2 bytesPerComponent:v8 dataOffset:0 dataStride:0];
}

- (id)dataByConvertingColorData:(id)data colorSpace:(CGColorSpace *)space newColorSpace:(CGColorSpace *)colorSpace vectorCount:(int64_t)count componentsPerVector:(int64_t)vector bytesPerComponent:(int64_t)component dataOffset:(int64_t)offset dataStride:(int64_t)self0 newDataOffset:(int64_t *)self1 newDataStride:(int64_t *)self2
{
  dataStrideCopy2 = dataStride;
  offsetCopy2 = offset;
  C3DGetColorTransformToGlobalColorSpace();
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

  v32 = 3 * component;
  v22 = component * vector;
  if (stride)
  {
    strideCopy = stride;
  }

  else
  {
    strideCopy = component * vector;
  }

  dataCopy = data;
  v24 = [data bytes] + offset;
  v34 = v22 * count;
  v25 = malloc_type_malloc(v22 * count, 0x100004077774924uLL);
  if (!CGColorTransformConvertData())
  {
    free(v25);
    dataStrideCopy2 = dataStride;
    offsetCopy2 = offset;
    data = dataCopy;
LABEL_19:
    *dataOffset = offsetCopy2;
    *dataStrideCopy2 = stride;
    return data;
  }

  *dataOffset = 0;
  *dataStride = v22;
  if (vector == 4)
  {
    v26 = v25;
    if (count >= 1)
    {
      v27 = &v25[v32];
      v28 = (v24 + v32);
      do
      {
        memcpy(v27, v28, component);
        v27 += v22;
        v28 += strideCopy;
        --count;
      }

      while (count);
    }

    v29 = MEMORY[0x277CBEA90];
    v30 = v26;
  }

  else
  {
    v29 = MEMORY[0x277CBEA90];
    v30 = v25;
  }

  return [v29 dataWithBytesNoCopy:v30 length:v34 freeWhenDone:1];
}

+ (SCNGeometrySource)geometrySourceWithColorComponents:(const float *)components count:(int64_t)count hasAlpha:(BOOL)alpha colorSpace:(CGColorSpace *)space
{
  alphaCopy = alpha;
  C3DGetColorTransformToGlobalColorSpace();
  ColorSpace = CGColorTransformGetColorSpace();
  v13 = ColorSpace;
  if (!space)
  {
    space = C3DColorSpaceSRGB(ColorSpace, v12);
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
    v15 = [MEMORY[0x277CBEA90] dataWithBytes:components length:4 * v14 * count];
  }

  else
  {
    selfCopy = self;
    v16 = malloc_type_malloc(4 * v14 * count, 0x100004052888210uLL);
    LODWORD(v25) = 4 * v14;
    LODWORD(v24) = 4 * v14;
    if (CGColorTransformConvertData())
    {
      if (count >= 1 && alphaCopy)
      {
        v17 = v16 + 3;
        v18 = components + 3;
        countCopy = count;
        do
        {
          v20 = *v18;
          v18 += 4;
          *v17 = v20;
          v17 += 4;
          --countCopy;
        }

        while (countCopy);
      }

      v21 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v16 length:4 * v14 * count freeWhenDone:{1, v24, v16, 96, v25}];
    }

    else
    {
      free(v16);
      v21 = [MEMORY[0x277CBEA90] dataWithBytes:components length:{4 * v14 * count, v24, v16, 96, v25}];
    }

    v15 = v21;
    self = selfCopy;
  }

  v22 = [[self alloc] initWithData:v15 semantic:@"kGeometrySourceSemanticColor" colorSpace:v13 vectorCount:count floatComponents:1 componentsPerVector:v14 bytesPerComponent:4 dataOffset:0 dataStride:4 * v14];

  return v22;
}

+ (SCNGeometrySource)geometrySourceWithColorData:(id)data colorSpace:(CGColorSpace *)space vectorCount:(int64_t)count floatComponents:(BOOL)components componentsPerVector:(int64_t)vector bytesPerComponent:(int64_t)component dataOffset:(int64_t)offset dataStride:(int64_t)self0
{
  v10 = [[self alloc] initWithData:data semantic:@"kGeometrySourceSemanticColor" colorSpace:space vectorCount:count floatComponents:components componentsPerVector:vector bytesPerComponent:component dataOffset:offset dataStride:stride];

  return v10;
}

+ (SCNGeometrySource)geometrySourceWithBuffer:(id)buffer vertexFormat:(MTLVertexFormat)vertexFormat semantic:(SCNGeometrySourceSemantic)semantic vertexCount:(NSInteger)vertexCount dataOffset:(NSInteger)offset dataStride:(NSInteger)stride
{
  if (vertexFormat)
  {
    v8 = [[self alloc] initWithBuffer:buffer vertexFormat:vertexFormat semantic:semantic vertexCount:vertexCount dataOffset:offset dataStride:stride];

    return v8;
  }

  else
  {
    v10 = scn_default_log(self, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[SCNGeometrySource geometrySourceWithBuffer:vertexFormat:semantic:vertexCount:dataOffset:dataStride:];
    }

    return 0;
  }
}

+ (id)_geometrySourceWithSource:(id)source vertexFormat:(unint64_t)format
{
  if (!source)
  {
    return 0;
  }

  if (!format)
  {
    v16 = scn_default_log(self, a2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[SCNGeometrySource _geometrySourceWithSource:vertexFormat:];
    }

    return 0;
  }

  v6 = SCNMTLVertexFormatToC3DBaseType(format, a2);
  meshSource = [source meshSource];
  CopyWithBaseType = C3DMeshSourceCreateCopyWithBaseType(meshSource, v6, 0, v8, v9, v10, v11, v12);
  if (!CopyWithBaseType)
  {
    NSLog(&cfstr_Geometrysource_1.isa);
    return 0;
  }

  v14 = [[self alloc] initWithMeshSource:CopyWithBaseType];

  return v14;
}

- (id)mkSemantic
{
  mkSemantic = self->_mkSemantic;
  if (mkSemantic > 9)
  {
    v3 = MEMORY[0x277CD7A80];
  }

  else
  {
    v3 = qword_278300740[mkSemantic];
  }

  return *v3;
}

- (void)setMkSemantic:(id)semantic
{
  if (objc_msgSend_isEqualToString_(semantic, a2, *MEMORY[0x277CD7A70]))
  {
    v5 = 0;
  }

  else if (objc_msgSend_isEqualToString_(semantic))
  {
    v5 = 1;
  }

  else if (objc_msgSend_isEqualToString_(semantic))
  {
    v5 = 2;
  }

  else if (objc_msgSend_isEqualToString_(semantic))
  {
    v5 = 3;
  }

  else if (objc_msgSend_isEqualToString_(semantic))
  {
    v5 = 4;
  }

  else if (objc_msgSend_isEqualToString_(semantic))
  {
    v5 = 5;
  }

  else if (objc_msgSend_isEqualToString_(semantic))
  {
    v5 = 6;
  }

  else if (objc_msgSend_isEqualToString_(semantic))
  {
    v5 = 7;
  }

  else if (objc_msgSend_isEqualToString_(semantic))
  {
    v5 = 8;
  }

  else if (objc_msgSend_isEqualToString_(semantic))
  {
    v5 = 9;
  }

  else
  {
    v5 = 0;
  }

  self->_mkSemantic = v5;
  meshSource = self->_meshSource;
  if (meshSource)
  {

    C3DMeshSourceSetModelKitSemantic(meshSource, v5);
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
      v4 = MEMORY[0x277CBEA90];
      contents = [(NSData *)result contents];
      v6 = [(MTLBuffer *)self->_mtlBuffer length];

      return [v4 dataWithBytesNoCopy:contents length:v6 freeWhenDone:0];
    }
  }

  return result;
}

- (void)_printData
{
  meshSource = [(SCNGeometrySource *)self meshSource];
  Count = C3DMeshSourceGetCount(meshSource, v3);

  C3DMeshSourcePrintData(meshSource, Count, v5, v6, v7, v8, v9, v10);
}

- (void)_clearC3DCache
{
  if (self->_data)
  {
    meshSource = self->_meshSource;
    if (meshSource)
    {
      if (!C3DMeshSourceOwnsItsData(meshSource, a2))
      {
        v4 = self->_meshSource;
        if (v4)
        {
          C3DEntitySetObjCWrapper(v4, 0);
          v5 = self->_meshSource;
          if (v5)
          {
            CFRelease(v5);
            self->_meshSource = 0;
          }
        }
      }
    }
  }
}

- (__C3DScene)sceneRef
{
  __CFObject = [(SCNGeometrySource *)self __CFObject];

  return C3DGetScene(__CFObject, v3);
}

- (id)scene
{
  result = [(SCNGeometrySource *)self sceneRef];
  if (result)
  {

    return C3DEntityGetObjCWrapper(result);
  }

  return result;
}

- (__C3DMeshSource)meshSource
{
  if (!self->_meshSource)
  {
    if (self->_componentType)
    {
      mtlBuffer = self->_mtlBuffer;
      v5 = SCNGeometrySourceSemanticToMeshSourceSemantic(self->_semantic, a2);
      if (mtlBuffer)
      {
        v6 = C3DMeshSourceCreateWithMTLBuffer(v5, self->_mtlBuffer, self->_mtlVertexFormat, self->_vectorCount, self->_dataStride, self->_dataOffset);
      }

      else
      {
        v6 = C3DMeshSourceCreateWithData(v5, self->_data, self->_componentType, self->_componentCount, self->_vectorCount, self->_dataStride, self->_dataOffset);
      }

      self->_meshSource = v6;
      C3DMeshSourceSetModelKitSemantic(v6, self->_mkSemantic);
      meshSource = self->_meshSource;
      if (meshSource)
      {
        C3DEntitySetObjCWrapper(meshSource, self);
      }
    }

    else
    {
      v7 = scn_default_log(self, a2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [SCNGeometrySource meshSource];
      }
    }
  }

  return self->_meshSource;
}

- (id)_uninterleaveData:(id)data count:(unint64_t)count srcOffset:(unint64_t)offset srcStride:(unint64_t)stride dstStride:(unint64_t)dstStride
{
  countCopy = count;
  v12 = dstStride * count;
  v13 = [MEMORY[0x277CBEB28] dataWithCapacity:dstStride * count];
  [v13 setLength:v12];
  mutableBytes = [v13 mutableBytes];
  bytes = [data bytes];
  if (countCopy)
  {
    v16 = (bytes + offset);
    do
    {
      memcpy(mutableBytes, v16, dstStride);
      v16 += stride;
      mutableBytes += dstStride;
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
  data = [(SCNGeometrySource *)self data];
  if (data)
  {
    v9 = data;
    if (self->_encodeDataAsHalf && C3DSceneSourceGetSceneCount())
    {
      componentType = self->_componentType;
      v12 = C3DBaseTypeGetComponentType(componentType, v10);
      if (componentType != v12)
      {
        v19 = scn_default_log(v12, v13);
        v12 = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);
        if (v12)
        {
          [(SCNGeometrySource *)v19 encodeWithCoder:v13, v20, v14, v15, v16, v17, v18];
        }
      }

      if (self->_componentType == 15)
      {
        v21 = v9;
        C3DSizeOfBaseType(15, v22);
      }

      else
      {
        if (self->_componentCount - 2 >= 3)
        {
          v28 = scn_default_log(v12, v13);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
          {
            [(SCNGeometrySource *)v28 encodeWithCoder:v29, v30, v14, v15, v16, v17, v18];
          }
        }

        CopyWithBaseType = C3DMeshSourceCreateCopyWithBaseType(self->_meshSource, *&asc_21C357C8A[2 * self->_componentCount - 4], 0, v14, v15, v16, v17, v18);
        if (!CopyWithBaseType)
        {
          v39 = scn_default_log(0, v31);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
          {
            [(SCNGeometrySource *)v39 encodeWithCoder:v31, v32, v33, v34, v35, v36, v37];
          }
        }

        Accessor = C3DMeshSourceGetAccessor(CopyWithBaseType, v31, v32, v33, v34, v35, v36, v37);
        ComponentsValueType = C3DSourceAccessorGetComponentsValueType(Accessor);
        v5 = C3DBaseTypeGetComponentType(ComponentsValueType, v42);
        dataStride = C3DSceneSourceGetLibrary(Accessor);
        Offset = C3DSourceAccessorGetOffset(Accessor, v43);
        dataOffset = Offset;
        if (v5 != 15)
        {
          v46 = scn_default_log(Offset, v45);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
          {
            [(SCNGeometrySource *)v46 encodeWithCoder:v45, v47, v48, v49, v50, v51, v52];
          }
        }

        C3DSizeOfBaseType(v5, v45);
        v21 = C3DMeshSourceGetData();
        CFRelease(CopyWithBaseType);
      }

      v71 = vImageEncodeVectorOptionsCreate();
      vImageEncodeVectorOptionsSetQuantization();
      v70 = 0;
      [(NSData *)v21 bytes];
      [(NSData *)v21 length];
      v53 = vImageEncodeVectorHalf();

      if (!v53)
      {
        v56 = scn_default_log(v54, v55);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
        {
          [(SCNGeometrySource *)v56 encodeWithCoder:v57, v58, v59, v60, v61, v62, v63];
        }
      }

      vImageEncodeVectorOptionsFree();
      v27 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v70 length:v53];
      v25 = @"cdata";
      coderCopy2 = coder;
    }

    else
    {
      bytesPerComponent = [(SCNGeometrySource *)self bytesPerComponent];
      v24 = [(SCNGeometrySource *)self componentsPerVector]* bytesPerComponent;
      if (v24 < self->_dataStride)
      {
        v9 = [SCNGeometrySource _uninterleaveData:"_uninterleaveData:count:srcOffset:srcStride:dstStride:" count:v9 srcOffset:self->_vectorCount srcStride:self->_dataOffset dstStride:?];
        dataOffset = 0;
        dataStride = v24;
      }

      v25 = @"data";
      coderCopy2 = coder;
      v27 = v9;
    }

    [coderCopy2 encodeObject:v27 forKey:v25];
  }

  semantic = self->_semantic;
  if (semantic)
  {
    [coder encodeObject:semantic forKey:@"semantic"];
  }

  [coder encodeInteger:self->_vectorCount forKey:@"vectorCount"];
  v70 = 0;
  v71 = 0;
  v69 = 0;
  if (C3DBaseTypeDescription(v5, &v71, &v70, &v69))
  {
    [coder encodeBool:v69 forKey:@"floatComponents"];
    v65 = v71;
    v66 = @"bytesPerComponent";
  }

  else
  {
    v65 = v5;
    v66 = @"componentType";
  }

  [coder encodeInteger:v65 forKey:v66];
  [coder encodeInteger:self->_componentCount forKey:@"componentsPerVector"];
  [coder encodeInteger:dataOffset forKey:@"dataOffset"];
  [coder encodeInteger:dataStride forKey:@"dataStride"];
  [coder encodeInt:self->_mkSemantic forKey:@"mkSemantic"];
  colorSpace = self->_colorSpace;
  if (colorSpace)
  {
    v68 = CGColorSpaceCopyPropertyList(colorSpace);
    [coder encodeObject:v68 forKey:@"colorSpace"];
    CFRelease(v68);
  }
}

- (SCNGeometrySource)initWithCoder:(id)coder
{
  v77.receiver = self;
  v77.super_class = SCNGeometrySource;
  v4 = [(SCNGeometrySource *)&v77 init];
  if (!v4)
  {
    return v4;
  }

  v5 = +[SCNTransaction immediateMode];
  [SCNTransaction setImmediateMode:1];
  v6 = [coder scn_decodeObjectOfClass:objc_opt_class() forKey:@"semantic"];
  IsValid = SCNGeometrySourceSemanticIsValid(v6, v7);
  if ((IsValid & 1) == 0)
  {
    v13 = scn_default_log(IsValid, v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SCNGeometrySource initWithData:semantic:colorSpace:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:];
    }

    goto LABEL_44;
  }

  v4->_semantic = v6;
  v4->_vectorCount = [coder decodeIntegerForKey:@"vectorCount"];
  v4->_dataOffset = [coder decodeIntegerForKey:@"dataOffset"];
  v4->_dataStride = [coder decodeIntegerForKey:@"dataStride"];
  v4->_componentCount = [coder decodeIntegerForKey:@"componentsPerVector"];
  v10 = [coder decodeIntegerForKey:@"componentType"];
  v4->_componentType = v10;
  if (v10)
  {
    if (v10 < 0 || (v10 & 0x7FFEu) >= 0x2EuLL)
    {
      v12 = scn_default_log(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SCNGeometrySource initWithCoder:];
      }

      goto LABEL_45;
    }
  }

  else
  {
    v4->_componentType = C3DBaseTypeFromDescription([coder decodeIntegerForKey:@"bytesPerComponent"], 1, objc_msgSend(coder, "decodeBoolForKey:", @"floatComponents"));
  }

  v14 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"cdata"];
  v4->_encodeDataAsHalf = v14 != 0;
  if (v14)
  {
    v15 = v14;
    SceneCount = C3DSceneSourceGetSceneCount();
    if (!SceneCount)
    {
      v36 = scn_default_log(SceneCount, v17);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [SCNGeometrySource initWithCoder:];
      }

      goto LABEL_30;
    }

    componentType = v4->_componentType;
    v19 = C3DBaseTypeGetComponentType(componentType, v17);
    v21 = componentType != v19;
    if (componentType != v19)
    {
      v22 = scn_default_log(v19, v20);
      v19 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
      if (v19)
      {
        [SCNGeometrySource initWithCoder:];
      }
    }

    if (v4->_componentType != 15)
    {
      v23 = scn_default_log(v19, v20);
      v19 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      if (v19)
      {
        [SCNGeometrySource initWithCoder:];
      }

      v21 = 1;
    }

    if (v4->_componentCount - 2 >= 3)
    {
      v51 = scn_default_log(v19, v20);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [SCNGeometrySource initWithCoder:];
      }

      goto LABEL_44;
    }

    if (v21)
    {
LABEL_44:
      [SCNTransaction setImmediateMode:v5];
LABEL_45:

      return 0;
    }

    C3DSizeOfBaseType(v4->_componentType, v20);
    v74 = v4->_dataStride * v4->_vectorCount;
    v24 = malloc_type_malloc(v74, 0xF5E43E0EuLL);
    [v15 bytes];
    [v15 length];
    v25 = vImageDecodeVectorHalf();
    if (v25 != v74)
    {
      v27 = scn_default_log(v25, v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        [(SCNGeometrySource *)v27 initWithCoder:v28, v29, v30, v31, v32, v33, v34];
      }
    }

    v35 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v24 length:v74 freeWhenDone:1];
  }

  else
  {
    v35 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  }

  v4->_data = v35;
LABEL_30:
  bytesPerComponent = [(SCNGeometrySource *)v4 bytesPerComponent];
  componentsPerVector = [(SCNGeometrySource *)v4 componentsPerVector];
  v39 = [(NSData *)v4->_data length];
  if (v39 < v4->_dataOffset + componentsPerVector * bytesPerComponent + (v4->_vectorCount - 1) * v4->_dataStride)
  {
    v41 = scn_default_log(v39, v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [SCNGeometrySource initWithCoder:];
    }

    goto LABEL_44;
  }

  v4->_mkSemantic = [coder decodeIntForKey:@"mkSemantic"];
  v42 = [coder decodePropertyListForKey:@"colorSpace"];
  if (v42)
  {
    v43 = CGColorSpaceCreateWithPropertyList(v42);
    if (v43)
    {
      v45 = v43;
      v4->_data = [(SCNGeometrySource *)v4 dataByConvertingColorData:v4->_data colorSpace:v43 newColorSpace:&v4->_colorSpace vectorCount:v4->_vectorCount componentsPerVector:v4->_componentCount bytesPerComponent:C3DBaseTypeGetBytesPerComponent(v4->_componentType dataOffset:v44) dataStride:v4->_dataOffset newDataOffset:v4->_dataStride newDataStride:&v4->_dataOffset, &v4->_dataStride];
      CFRelease(v45);
    }
  }

  if (!C3DMetalIsSupported() || C3DPreferencesGetBool(0))
  {
    v46 = v4->_componentType;
    if (v46 <= 0x18 && ((1 << v46) & 0x1808000) != 0)
    {
      meshSource = [(SCNGeometrySource *)v4 meshSource];
      Semantic = C3DMeshSourceGetSemantic(meshSource, v48);
      if (v4->_componentType - 23 >= 2)
      {
        componentCount = v4->_componentCount;
      }

      else
      {
        componentCount = 4;
        v4->_componentCount = 4;
      }

      if (componentCount == 4 && Semantic <= 1)
      {
        componentCount = 3;
        v4->_componentCount = 3;
      }

      CompoundType = C3DBaseTypeGetCompoundType(1, componentCount);
      CopyWithBaseType = C3DMeshSourceCreateCopyWithBaseType(meshSource, CompoundType, 0, v54, v55, v56, v57, v58);
      if (CopyWithBaseType)
      {
        v61 = CopyWithBaseType;
        meshSource = v4->_meshSource;
        if (meshSource)
        {
          CFRelease(meshSource);
        }

        v4->_meshSource = v61;

        v4->_data = C3DMeshSourceGetData();
        v75 = 0u;
        v76 = 0u;
        C3DMeshSourceGetContent(v61, v63, &v75);
        v4->_componentType = 1;
        v4->_componentCount = BYTE8(v76);
        C3DEntitySetObjCWrapper(v61, v4);
        Accessor = C3DMeshSourceGetAccessor(v61, v64, v65, v66, v67, v68, v69, v70);
        v4->_dataOffset = C3DSourceAccessorGetOffset(Accessor, v72);
        v4->_dataStride = C3DSceneSourceGetLibrary(Accessor);
      }

      else
      {
        v73 = scn_default_log(0, v60);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          [SCNGeometrySource initWithCoder:];
        }
      }
    }
  }

  [SCNTransaction setImmediateMode:v5];
  return v4;
}

- (void)encodeWithCoder:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_componentType == C3DBaseTypeGetComponentType(_componentType)";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. SCNGeometrySource should only store a base type", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)encodeWithCoder:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_componentCount >= 2 && _componentCount <= 4";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. vImageEncodeVectorHalf only supports half2/3/4", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)encodeWithCoder:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "halfSource";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)encodeWithCoder:(uint64_t)a3 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "encodedComponentType == kC3DBaseTypeHalf";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Consistenty check issue during conversion for vImageEncodeVectorHalf", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)encodeWithCoder:(uint64_t)a3 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "compressedSize > 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. vImageEncodeVectorHalf failed to write bytes", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithCoder:(uint64_t)a3 .cold.7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "decompressedSize == decompressedDataCapacity";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Decoding failed", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end