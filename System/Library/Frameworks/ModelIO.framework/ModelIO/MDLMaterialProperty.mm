@interface MDLMaterialProperty
+ (__n128)_decodeMatrixPropertyWithCoder:(void *)coder forKey:(void *)key;
+ (__n128)_decodeVectorWithCoder:(id)coder forKey:(uint64_t)key;
+ (id)decodeMaterialPropertyWithCoder:(id)coder forKey:(id)key allocator:(id)allocator;
- (CGColorRef)color;
- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic;
- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic URL:(NSURL *)URL;
- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic color:(CGColorRef)color;
- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic float2:(vector_float2)value;
- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic float3:(vector_float3)value;
- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic float4:(vector_float4)value;
- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic float:(float)value;
- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic matrix4x4:(matrix_float4x4)value;
- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic string:(NSString *)string;
- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic textureSampler:(MDLTextureSampler *)textureSampler;
- (MDLMaterialProperty)initWithName:(id)name buffer:(id)buffer;
- (MDLMaterialProperty)initWithName:(id)name buffer:(id)buffer stride:(unint64_t)stride;
- (MDLMaterialProperty)initWithName:(id)name semantic:(unint64_t)semantic float4WithSRGBA:;
- (MDLTextureSampler)textureSamplerValue;
- (NSString)stringValue;
- (NSURL)URLValue;
- (__n128)setMatrix4x4Value:(__n128)value;
- (float)floatValue;
- (float)luminance;
- (id)copyWithZone:(_NSZone *)zone;
- (matrix_float4x4)matrix4x4;
- (vector_float2)float2Value;
- (vector_float3)float3Value;
- (vector_float4)float4Value;
- (void)_encodeMatrixPropertyWithCoder:(id)coder forKey:(id)key;
- (void)_encodeVector:(id)vector withCoder:(id)coder forKey:;
- (void)clear;
- (void)dealloc;
- (void)encodeMaterialPropertyWithCoder:(id)coder forKey:(id)key allocator:(id)allocator;
- (void)setColor:(CGColorRef)color;
- (void)setFloat2Value:(vector_float2)float2Value;
- (void)setFloat3Value:(vector_float3)float3Value;
- (void)setFloat4Value:(vector_float4)float4Value;
- (void)setFloatValue:(float)floatValue;
- (void)setMatrix4x4:(matrix_float4x4)matrix4x4;
- (void)setName:(NSString *)name;
- (void)setProperties:(MDLMaterialProperty *)property;
- (void)setStringValue:(NSString *)stringValue;
- (void)setTextureSamplerValue:(MDLTextureSampler *)textureSamplerValue;
- (void)setURLValue:(NSURL *)URLValue;
@end

@implementation MDLMaterialProperty

- (MDLTextureSampler)textureSamplerValue
{
  WeakRetained = objc_loadWeakRetained(&self->_overrider);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_overrider);
    v16 = objc_msgSend_textureSamplerValue(v4, v5, v6, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  }

  else
  {
    v16 = self->_textureSampler;
  }

  return v16;
}

- (void)clear
{
  string = self->_string;
  self->_string = 0;

  name = self->_name;
  self->_name = 0;

  url = self->_url;
  self->_url = 0;

  textureSampler = self->_textureSampler;
  self->_textureSampler = 0;

  self->_color = 0;
  *&self->_anon_40[32] = 0u;
  *&self->_anon_40[48] = 0u;
  *self->_anon_40 = 0u;
  *&self->_anon_40[16] = 0u;
  *self->_float = 0u;
  self->_semantic = 0x8000;
  objc_storeWeak(&self->_node, 0);
  objc_storeWeak(&self->_overrider, 0);

  objc_storeWeak(&self->_overridee, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v16 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  v28 = objc_msgSend_init(v16, v17, v18, v19, v24, v25, v26, v27, v20, v21, v22, v23);
  v39 = objc_msgSend_copyWithZone_(self->_string, v29, zone, v30, v35, v36, v37, v38, v31, v32, v33, v34);
  v40 = *(v28 + 8);
  *(v28 + 8) = v39;

  v51 = objc_msgSend_copyWithZone_(self->_name, v41, zone, v42, v47, v48, v49, v50, v43, v44, v45, v46);
  v52 = *(v28 + 16);
  *(v28 + 16) = v51;

  v63 = objc_msgSend_copyWithZone_(self->_url, v53, zone, v54, v59, v60, v61, v62, v55, v56, v57, v58);
  v64 = *(v28 + 24);
  *(v28 + 24) = v63;

  objc_storeStrong((v28 + 32), self->_textureSampler);
  *(v28 + 48) = *self->_float;
  v65 = *self->_anon_40;
  v66 = *&self->_anon_40[16];
  v67 = *&self->_anon_40[32];
  v68 = *&self->_anon_40[48];
  *(v28 + 96) = v67;
  *(v28 + 112) = v68;
  *(v28 + 64) = v65;
  *(v28 + 80) = v66;
  *(v28 + 152) = self->_semantic;
  *(v28 + 192) = self->_type;
  objc_msgSend_setColor_(v28, v69, self->_color, v70, v65, v66, v67, v68, v71, v72, v73, v74);
  return v28;
}

- (void)setName:(NSString *)name
{
  v4 = name;
  v15 = v4;
  if (v4)
  {
    v4 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v4, v4, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  }

  v14 = self->_name;
  self->_name = v4;
}

- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic
{
  v6 = name;
  objc_msgSend_clear(self, v7, v8, v9, v14, v15, v16, v17, v10, v11, v12, v13);
  v39.receiver = self;
  v39.super_class = MDLMaterialProperty;
  v24 = [(MDLMaterialProperty *)&v39 init];
  if (v24)
  {
    if (v6)
    {
      v29 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v18, v6, v19, v25, v26, v27, v28, v20, v21, v22, v23);
      v30 = v24->_name;
      v24->_name = v29;
    }

    v24->_semantic = semantic;
    v31 = MEMORY[0x277D860B8];
    v32 = *(MEMORY[0x277D860B8] + 16);
    *v24->_anon_40 = *MEMORY[0x277D860B8];
    *&v24->_anon_40[16] = v32;
    v33 = *(v31 + 48);
    *&v24->_anon_40[32] = *(v31 + 32);
    *&v24->_anon_40[48] = v33;
    *v24->_float = 0;
    *&v24->_float[8] = 0;
    textureSampler = v24->_textureSampler;
    v24->_textureSampler = 0;

    url = v24->_url;
    v24->_url = 0;

    string = v24->_string;
    v24->_string = 0;

    v24->_type = 5;
    buffer = v24->_buffer;
    v24->_buffer = 0;

    objc_storeWeak(&v24->_node, 0);
    objc_storeWeak(&v24->_overridee, 0);
    objc_storeWeak(&v24->_overrider, 0);
    v24->_isDefaultValue = 1;
  }

  return v24;
}

- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic float:(float)value
{
  v7 = name;
  objc_msgSend_clear(self, v8, v9, v10, v15, v16, v17, v18, v11, v12, v13, v14);
  v28 = objc_msgSend_initWithName_semantic_(self, v19, v7, semantic, v24, v25, v26, v27, v20, v21, v22, v23);
  v29 = v28;
  if (v28)
  {
    *(v28 + 48) = LODWORD(value);
    *(v28 + 192) = 5;
  }

  return v29;
}

- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic float2:(vector_float2)value
{
  v8 = name;
  objc_msgSend_clear(self, v9, v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v29 = objc_msgSend_initWithName_semantic_(self, v20, v8, semantic, v25, v26, v27, v28, v21, v22, v23, v24);
  v31 = v29;
  if (v29)
  {
    *&v30 = value;
    *(v29 + 48) = v30;
    *(v29 + 192) = 6;
  }

  return v31;
}

- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic float3:(vector_float3)value
{
  v33 = v5;
  v8 = name;
  objc_msgSend_clear(self, v9, v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v29 = objc_msgSend_initWithName_semantic_(self, v20, v8, semantic, v25, v26, v27, v28, v21, v22, v23, v24);
  v30 = v29;
  if (v29)
  {
    v31 = v33;
    HIDWORD(v31) = 0;
    *(v29 + 48) = v31;
    *(v29 + 192) = 7;
  }

  return v30;
}

- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic float4:(vector_float4)value
{
  v7 = name;
  objc_msgSend_clear(self, v8, v9, v10, v15, v16, v17, v18, v11, v12, v13, v14);
  v28 = objc_msgSend_initWithName_semantic_(self, v19, v7, semantic, v24, v25, v26, v27, v20, v21, v22, v23);
  v29 = v28;
  if (v28)
  {
    v28[3] = value;
    v28[12].i64[0] = 8;
  }

  return v29;
}

- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic matrix4x4:(matrix_float4x4)value
{
  v7 = name;
  objc_msgSend_clear(self, v8, v9, v10, v15, v16, v17, v18, v11, v12, v13, v14);
  v28 = objc_msgSend_initWithName_semantic_(self, v19, v7, semantic, v24, v25, v26, v27, v20, v21, v22, v23);
  v29 = v28;
  if (v28)
  {
    v28[1] = value;
    v28[3].columns[0].i64[0] = 9;
  }

  return v29;
}

- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic URL:(NSURL *)URL
{
  v8 = name;
  v9 = URL;
  objc_msgSend_clear(self, v10, v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v30 = objc_msgSend_initWithName_semantic_(self, v21, v8, semantic, v26, v27, v28, v29, v22, v23, v24, v25);
  v31 = v30;
  if (v30)
  {
    objc_storeStrong((v30 + 24), URL);
    v31->_type = 2;
  }

  return v31;
}

- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic string:(NSString *)string
{
  v8 = name;
  v9 = string;
  objc_msgSend_clear(self, v10, v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v37 = objc_msgSend_initWithName_semantic_(self, v21, v8, semantic, v26, v27, v28, v29, v22, v23, v24, v25);
  if (v37)
  {
    v42 = objc_msgSend_copy(v9, v30, v31, v32, v38, v39, v40, v41, v33, v34, v35, v36);
    v43 = v37->_string;
    v37->_string = v42;

    v37->_type = 1;
  }

  return v37;
}

- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic textureSampler:(MDLTextureSampler *)textureSampler
{
  v8 = name;
  v9 = textureSampler;
  objc_msgSend_clear(self, v10, v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v30 = objc_msgSend_initWithName_semantic_(self, v21, v8, semantic, v26, v27, v28, v29, v22, v23, v24, v25);
  v31 = v30;
  if (v30)
  {
    objc_storeStrong((v30 + 32), textureSampler);
    v31->_type = 3;
  }

  return v31;
}

- (MDLMaterialProperty)initWithName:(id)name semantic:(unint64_t)semantic float4WithSRGBA:
{
  v31 = v4;
  nameCopy = name;
  objc_msgSend_clear(self, v8, v9, v10, v15, v16, v17, v18, v11, v12, v13, v14);
  v28 = objc_msgSend_initWithName_semantic_(self, v19, nameCopy, semantic, v24, v25, v26, v27, v20, v21, v22, v23);
  v29 = v28;
  if (v28)
  {
    *(v28 + 48) = v31;
    *(v28 + 192) = 8;
  }

  return v29;
}

- (MDLMaterialProperty)initWithName:(NSString *)name semantic:(MDLMaterialSemantic)semantic color:(CGColorRef)color
{
  v8 = name;
  objc_msgSend_clear(self, v9, v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v29 = objc_msgSend_initWithName_semantic_(self, v20, v8, semantic, v25, v26, v27, v28, v21, v22, v23, v24);
  if (v29)
  {
    v29->_color = CGColorCreateCopy(color);
    v29->_type = 4;
  }

  return v29;
}

- (MDLMaterialProperty)initWithName:(id)name buffer:(id)buffer stride:(unint64_t)stride
{
  nameCopy = name;
  bufferCopy = buffer;
  objc_msgSend_clear(self, v10, v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v30 = objc_msgSend_initWithName_semantic_(self, v21, nameCopy, 32769, v26, v27, v28, v29, v22, v23, v24, v25);
  v31 = v30;
  if (v30)
  {
    objc_storeStrong((v30 + 136), buffer);
    v31->_stride = stride;
    v31->_type = 10;
  }

  return v31;
}

- (MDLMaterialProperty)initWithName:(id)name buffer:(id)buffer
{
  nameCopy = name;
  bufferCopy = buffer;
  objc_msgSend_clear(self, v9, v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v36 = objc_msgSend_initWithName_semantic_(self, v20, nameCopy, 32769, v25, v26, v27, v28, v21, v22, v23, v24);
  if (v36)
  {
    if (objc_msgSend_type(bufferCopy, v29, v30, v31, v37, v38, v39, v40, v32, v33, v34, v35) != 3)
    {
      v41 = NSStringFromSelector(a2);
      v42 = MEMORY[0x277CBEAD8];
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      objc_msgSend_raise_format_(v42, v45, @"ModelIOException", @"[%@ %@]: value.type must be MDLMeshBufferTypeCustom", v50, v51, v52, v53, v46, v47, v48, v49, v44, v41);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v36->_buffer, buffer);
    }

    else
    {
      NSLog(&cfstr_MdlmeshbufferI.isa);
    }

    v36->_stride = 0;
    v36->_type = 10;
  }

  return v36;
}

- (void)dealloc
{
  color = self->_color;
  if (color)
  {
    CFRelease(color);
    self->_color = 0;
  }

  v4.receiver = self;
  v4.super_class = MDLMaterialProperty;
  [(MDLMaterialProperty *)&v4 dealloc];
}

- (void)setProperties:(MDLMaterialProperty *)property
{
  v41 = property;
  if (self != v41)
  {
    objc_msgSend_clear(self, v4, v5, v6, v11, v12, v13, v14, v7, v8, v9, v10);
    name = v41->_name;
    if (name)
    {
      v26 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v15, name, v16, v21, v22, v23, v24, v17, v18, v19, v20);
      v27 = self->_name;
      self->_name = v26;
    }

    self->_semantic = v41->_semantic;
    v28 = *v41->_anon_40;
    v29 = *&v41->_anon_40[16];
    v30 = *&v41->_anon_40[48];
    *&self->_anon_40[32] = *&v41->_anon_40[32];
    *&self->_anon_40[48] = v30;
    *self->_anon_40 = v28;
    *&self->_anon_40[16] = v29;
    *self->_float = *v41->_float;
    objc_storeStrong(&self->_textureSampler, v41->_textureSampler);
    objc_storeStrong(&self->_url, v41->_url);
    objc_storeStrong(&self->_string, v41->_string);
    self->_type = v41->_type;
    self->_isDefaultValue = v41->_isDefaultValue;
    objc_msgSend_setColor_(self, v31, v41->_color, v32, v37, v38, v39, v40, v33, v34, v35, v36);
  }
}

- (CGColorRef)color
{
  WeakRetained = objc_loadWeakRetained(&self->_overrider);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_overrider);
    color = objc_msgSend_color(v4, v5, v6, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  }

  else
  {
    color = self->_color;
  }

  return color;
}

- (void)setColor:(CGColorRef)color
{
  v5 = self->_color;
  if (v5)
  {
    CFRelease(v5);
    self->_color = 0;
  }

  if (color)
  {
    self->_color = CGColorCreateCopy(color);
  }

  self->_isDefaultValue = 0;
}

- (NSString)stringValue
{
  WeakRetained = objc_loadWeakRetained(&self->_overrider);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_overrider);
    v16 = objc_msgSend_stringValue(v4, v5, v6, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  }

  else
  {
    v16 = self->_string;
  }

  return v16;
}

- (void)setStringValue:(NSString *)stringValue
{
  objc_storeStrong(&self->_string, stringValue);
  self->_type = 1;
  self->_isDefaultValue = 0;
}

- (NSURL)URLValue
{
  WeakRetained = objc_loadWeakRetained(&self->_overrider);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_overrider);
    v16 = objc_msgSend_URLValue(v4, v5, v6, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  }

  else
  {
    v16 = self->_url;
  }

  return v16;
}

- (void)setURLValue:(NSURL *)URLValue
{
  objc_storeStrong(&self->_url, URLValue);
  self->_type = 2;
  self->_isDefaultValue = 0;
}

- (void)setTextureSamplerValue:(MDLTextureSampler *)textureSamplerValue
{
  objc_storeStrong(&self->_textureSampler, textureSamplerValue);
  self->_type = 3;
  self->_isDefaultValue = 0;
}

- (float)floatValue
{
  WeakRetained = objc_loadWeakRetained(&self->_overrider);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_overrider);
    objc_msgSend_floatValue(v4, v5, v6, v7, v12, v13, v14, v15, v8, v9, v10, v11);
    v17 = v16;
  }

  else
  {
    v17 = *self->_float;
  }

  return v17;
}

- (void)setFloatValue:(float)floatValue
{
  *self->_float = floatValue;
  self->_type = 5;
  self->_isDefaultValue = 0;
}

- (float)luminance
{
  WeakRetained = objc_loadWeakRetained(&self->_overrider);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_overrider);
    objc_msgSend_luminance(v4, v5, v6, v7, v12, v13, v14, v15, v8, v9, v10, v11);
    v17 = v16;

    return v17;
  }

  type = self->_type;
  v17 = 0.0;
  if (type > 6)
  {
    if ((type - 7) < 2)
    {
      v20 = vmulq_f64(vcvtq_f64_f32(*self->_float), xmmword_239F9B940);
      return COERCE_FLOAT(*&self->_float[8]) + 0.072187 + v20.f64[1] + v20.f64[0];
    }

    return v17;
  }

  if (type != 4)
  {
    if (type == 5)
    {
      return *self->_float;
    }

    if (type == 6)
    {
      return vaddv_f32(*self->_float) * 0.5;
    }

    return v17;
  }

  color = self->_color;

  return sub_239E848C4(color);
}

- (vector_float2)float2Value
{
  WeakRetained = objc_loadWeakRetained(&self->_overrider);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_overrider);
    objc_msgSend_float2Value(v4, v5, v6, v7, v12, v13, v14, v15, v8, v9, v10, v11);
    v17 = v16;
  }

  else
  {
    v17 = *self->_float;
  }

  return v17;
}

- (void)setFloat2Value:(vector_float2)float2Value
{
  v3 = vextq_s8(*self->_float, *self->_float, 8uLL).u64[0];
  *self->_float = *float2Value.f32;
  self->_type = 6;
  self->_isDefaultValue = 0;
}

- (vector_float3)float3Value
{
  WeakRetained = objc_loadWeakRetained(&self->_overrider);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_overrider);
    objc_msgSend_float3Value(v4, v5, v6, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  }

  result.i64[1] = v17;
  result.i64[0] = v16;
  return result;
}

- (void)setFloat3Value:(vector_float3)float3Value
{
  HIDWORD(v3) = *&self->_float[12];
  *self->_float = v3;
  self->_type = 7;
  self->_isDefaultValue = 0;
}

- (vector_float4)float4Value
{
  WeakRetained = objc_loadWeakRetained(&self->_overrider);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_overrider);
    objc_msgSend_float4Value(v4, v5, v6, v7, v12, v13, v14, v15, v8, v9, v10, v11);
    v18 = v16;
  }

  else
  {
    v18 = *self->_float;
  }

  return v18;
}

- (void)setFloat4Value:(vector_float4)float4Value
{
  *self->_float = float4Value;
  self->_type = 8;
  self->_isDefaultValue = 0;
}

- (matrix_float4x4)matrix4x4
{
  WeakRetained = objc_loadWeakRetained(&self->_overrider);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_overrider);
    objc_msgSend_matrix4x4(v4, v5, v6, v7, v12, v13, v14, v15, v8, v9, v10, v11);
    v26 = v17;
    v27 = v16;
    v24 = v19;
    v25 = v18;
  }

  else
  {
    v26 = *&self->_anon_40[16];
    v27 = *self->_anon_40;
    v24 = *&self->_anon_40[48];
    v25 = *&self->_anon_40[32];
  }

  v21 = v26;
  v20 = v27;
  v23 = v24;
  v22 = v25;
  result.columns[3] = v23;
  result.columns[2] = v22;
  result.columns[1] = v21;
  result.columns[0] = v20;
  return result;
}

- (__n128)setMatrix4x4Value:(__n128)value
{
  result[4] = a2;
  result[5] = value;
  result[6] = a4;
  result[7] = a5;
  result[12].n128_u64[0] = 9;
  result[11].n128_u8[8] = 0;
  return result;
}

- (void)_encodeVector:(id)vector withCoder:(id)coder forKey:
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = v7;
  objc_msgSend_encodeBytes_length_forKey_(vector, a2, &v11, 16, v7, v8, v9, v10, coder, v4, v5, v6);
}

+ (__n128)_decodeVectorWithCoder:(id)coder forKey:(uint64_t)key
{
  v17 = 0;
  coderCopy = coder;
  v15 = objc_msgSend_decodeBytesForKey_returnedLength_(coderCopy, v6, key, &v17, v11, v12, v13, v14, v7, v8, v9, v10);
  result.n128_u64[0] = 0;
  if (v17 == 16)
  {
    return *v15;
  }

  return result;
}

- (void)_encodeMatrixPropertyWithCoder:(id)coder forKey:(id)key
{
  coderCopy = coder;
  keyCopy = key;
  v79 = *self->_anon_40;
  v16 = objc_msgSend_stringByAppendingString_(keyCopy, v7, @".column0", v8, v79, v13, v14, v15, v9, v10, v11, v12);
  objc_msgSend__encodeVector_withCoder_forKey_(self, v17, coderCopy, v16, v79, v22, v23, v24, v18, v19, v20, v21);

  v80 = *&self->_anon_40[16];
  v34 = objc_msgSend_stringByAppendingString_(keyCopy, v25, @".column1", v26, v80, v31, v32, v33, v27, v28, v29, v30);
  objc_msgSend__encodeVector_withCoder_forKey_(self, v35, coderCopy, v34, v80, v40, v41, v42, v36, v37, v38, v39);

  v81 = *&self->_anon_40[32];
  v52 = objc_msgSend_stringByAppendingString_(keyCopy, v43, @".column2", v44, v81, v49, v50, v51, v45, v46, v47, v48);
  objc_msgSend__encodeVector_withCoder_forKey_(self, v53, coderCopy, v52, v81, v58, v59, v60, v54, v55, v56, v57);

  v82 = *&self->_anon_40[48];
  v70 = objc_msgSend_stringByAppendingString_(keyCopy, v61, @".column3", v62, v82, v67, v68, v69, v63, v64, v65, v66);
  objc_msgSend__encodeVector_withCoder_forKey_(self, v71, coderCopy, v70, v82, v76, v77, v78, v72, v73, v74, v75);
}

+ (__n128)_decodeMatrixPropertyWithCoder:(void *)coder forKey:(void *)key
{
  coderCopy = coder;
  keyCopy = key;
  v18 = objc_msgSend_stringByAppendingString_(keyCopy, v8, @".column0", v9, v14, v15, v16, v17, v10, v11, v12, v13);
  objc_msgSend__decodeVectorWithCoder_forKey_(self, v19, coderCopy, v18, v24, v25, v26, v27, v20, v21, v22, v23);
  v90 = v28;

  v39 = objc_msgSend_stringByAppendingString_(keyCopy, v29, @".column1", v30, v35, v36, v37, v38, v31, v32, v33, v34);;
  objc_msgSend__decodeVectorWithCoder_forKey_(self, v40, coderCopy, v39, v45, v46, v47, v48, v41, v42, v43, v44);

  v59 = objc_msgSend_stringByAppendingString_(keyCopy, v49, @".column2", v50, v55, v56, v57, v58, v51, v52, v53, v54);
  objc_msgSend__decodeVectorWithCoder_forKey_(self, v60, coderCopy, v59, v65, v66, v67, v68, v61, v62, v63, v64);

  v79 = objc_msgSend_stringByAppendingString_(keyCopy, v69, @".column3", v70, v75, v76, v77, v78, v71, v72, v73, v74);
  objc_msgSend__decodeVectorWithCoder_forKey_(self, v80, coderCopy, v79, v85, v86, v87, v88, v81, v82, v83, v84);

  return v90;
}

- (void)encodeMaterialPropertyWithCoder:(id)coder forKey:(id)key allocator:(id)allocator
{
  coderCopy = coder;
  keyCopy = key;
  allocatorCopy = allocator;
  string = self->_string;
  v21 = objc_msgSend_stringByAppendingString_(keyCopy, v11, @".string", v12, v17, v18, v19, v20, v13, v14, v15, v16);
  objc_msgSend_encodeObject_forKey_(coderCopy, v22, string, v21, v27, v28, v29, v30, v23, v24, v25, v26);

  name = self->_name;
  v42 = objc_msgSend_stringByAppendingString_(keyCopy, v32, @".name", v33, v38, v39, v40, v41, v34, v35, v36, v37);
  objc_msgSend_encodeObject_forKey_(coderCopy, v43, name, v42, v48, v49, v50, v51, v44, v45, v46, v47);

  url = self->_url;
  v63 = objc_msgSend_stringByAppendingString_(keyCopy, v53, @".url", v54, v59, v60, v61, v62, v55, v56, v57, v58);
  objc_msgSend_encodeObject_forKey_(coderCopy, v64, url, v63, v69, v70, v71, v72, v65, v66, v67, v68);

  v173 = *self->_float;
  v82 = objc_msgSend_stringByAppendingString_(keyCopy, v73, @".vector", v74, v173, v79, v80, v81, v75, v76, v77, v78);
  objc_msgSend__encodeVector_withCoder_forKey_(self, v83, coderCopy, v82, v173, v88, v89, v90, v84, v85, v86, v87);

  v101 = objc_msgSend_stringByAppendingString_(keyCopy, v91, @".matrix", v92, v97, v98, v99, v100, v93, v94, v95, v96);
  objc_msgSend__encodeMatrixPropertyWithCoder_forKey_(self, v102, coderCopy, v101, v107, v108, v109, v110, v103, v104, v105, v106);

  buffer = self->_buffer;
  v122 = objc_msgSend_stringByAppendingString_(keyCopy, v112, @".buffer", v113, v118, v119, v120, v121, v114, v115, v116, v117);
  objc_msgSend_encodeBuffer_withCoder_forKey_(allocatorCopy, v123, buffer, coderCopy, v127, v128, v129, v130, v122, v124, v125, v126);

  stride = self->_stride;
  v142 = objc_msgSend_stringByAppendingString_(keyCopy, v132, @".stride", v133, v138, v139, v140, v141, v134, v135, v136, v137);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v143, stride, v142, v148, v149, v150, v151, v144, v145, v146, v147);

  semantic = self->_semantic;
  v163 = objc_msgSend_stringByAppendingString_(keyCopy, v153, @".semantic", v154, v159, v160, v161, v162, v155, v156, v157, v158);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v164, semantic, v163, v169, v170, v171, v172, v165, v166, v167, v168);
}

+ (id)decodeMaterialPropertyWithCoder:(id)coder forKey:(id)key allocator:(id)allocator
{
  coderCopy = coder;
  keyCopy = key;
  allocatorCopy = allocator;
  v11 = objc_alloc_init(MDLMaterialProperty);
  v12 = objc_opt_class();
  v23 = objc_msgSend_stringByAppendingString_(keyCopy, v13, @".string", v14, v19, v20, v21, v22, v15, v16, v17, v18);
  v33 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v24, v12, v23, v29, v30, v31, v32, v25, v26, v27, v28);
  string = v11->_string;
  v11->_string = v33;

  v35 = objc_opt_class();
  v46 = objc_msgSend_stringByAppendingString_(keyCopy, v36, @".name", v37, v42, v43, v44, v45, v38, v39, v40, v41);
  v56 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v47, v35, v46, v52, v53, v54, v55, v48, v49, v50, v51);
  name = v11->_name;
  v11->_name = v56;

  v58 = objc_opt_class();
  v69 = objc_msgSend_stringByAppendingString_(keyCopy, v59, @".url", v60, v65, v66, v67, v68, v61, v62, v63, v64);
  v79 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v70, v58, v69, v75, v76, v77, v78, v71, v72, v73, v74);
  url = v11->_url;
  v11->_url = v79;

  v91 = objc_msgSend_stringByAppendingString_(keyCopy, v81, @".vector", v82, v87, v88, v89, v90, v83, v84, v85, v86);
  objc_msgSend__decodeVectorWithCoder_forKey_(self, v92, coderCopy, v91, v97, v98, v99, v100, v93, v94, v95, v96);
  *v11->_float = v101;

  v112 = objc_msgSend_stringByAppendingString_(keyCopy, v102, @".matrix", v103, v108, v109, v110, v111, v104, v105, v106, v107);
  objc_msgSend__decodeMatrixPropertyWithCoder_forKey_(self, v113, coderCopy, v112, v118, v119, v120, v121, v114, v115, v116, v117);
  *v11->_anon_40 = v122;
  *&v11->_anon_40[16] = v123;
  *&v11->_anon_40[32] = v124;
  *&v11->_anon_40[48] = v125;

  v136 = objc_msgSend_stringByAppendingString_(keyCopy, v126, @".buffer", v127, v132, v133, v134, v135, v128, v129, v130, v131);
  v146 = objc_msgSend_decodeBufferWithCoder_forKey_(allocatorCopy, v137, coderCopy, v136, v142, v143, v144, v145, v138, v139, v140, v141);
  buffer = v11->_buffer;
  v11->_buffer = v146;

  v158 = objc_msgSend_stringByAppendingString_(keyCopy, v148, @".stride", v149, v154, v155, v156, v157, v150, v151, v152, v153);
  v11->_stride = objc_msgSend_decodeIntegerForKey_(coderCopy, v159, v158, v160, v165, v166, v167, v168, v161, v162, v163, v164);

  v11->_semantic = objc_msgSend_decodeIntegerForKey_(coderCopy, v169, @".semantic", v170, v175, v176, v177, v178, v171, v172, v173, v174);

  return v11;
}

- (void)setMatrix4x4:(matrix_float4x4)matrix4x4
{
  *&self[1].super.isa = matrix4x4.columns[0];
  *&self[1]._name = matrix4x4.columns[1];
  *&self[1]._textureSampler = matrix4x4.columns[2];
  *self[1]._float = matrix4x4.columns[3];
}

@end