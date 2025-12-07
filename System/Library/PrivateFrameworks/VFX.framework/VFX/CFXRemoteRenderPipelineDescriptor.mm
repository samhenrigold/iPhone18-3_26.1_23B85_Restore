@interface CFXRemoteRenderPipelineDescriptor
- ($0A5B5EE80FF9A3BD0C0D8CB2CCC95C0F)blendingDescAt:(int64_t)at;
- (BOOL)isEqual:(id)equal;
- (CFXRemoteRenderPipelineDescriptor)initWithCoder:(id)coder;
- (CFXRemoteRenderPipelineDescriptor)initWithDescriptor:(id *)descriptor;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setBlendingDesc:(id)desc at:(int64_t)at;
@end

@implementation CFXRemoteRenderPipelineDescriptor

- (CFXRemoteRenderPipelineDescriptor)initWithDescriptor:(id *)descriptor
{
  v28.receiver = self;
  v28.super_class = CFXRemoteRenderPipelineDescriptor;
  v4 = [(CFXRemoteRenderPipelineDescriptor *)&v28 init];
  if (v4)
  {
    v5 = objc_opt_new();
    v6 = objc_opt_new();
    objc_msgSend_setVertexFunction_(v4, v7, v5);
    objc_msgSend_setFragmentFunction_(v4, v8, v6);
    objc_msgSend_setArgumentEncoder_(v4, v9, 0);

    objc_msgSend_setProgramHashCode_(v4, v10, descriptor->var0.var0);
    objc_msgSend_setVertexDescriptor_(v4, v11, descriptor->var7);
    objc_msgSend_setPrimitiveTopologyClass_(v4, v12, descriptor->var5);
    objc_msgSend_setRasterizationEnabled_(v4, v13, 1);
    objc_msgSend_setMaxVertexAmplificationCount_(v4, v14, 2);
    for (i = 0; i != 4; ++i)
    {
      var3 = descriptor->var3;
      if (var3 && i < sub_1AF15BA14(var3, v15))
      {
        v18 = sub_1AF15B948(descriptor->var3, i);
        v19 = v18 & 0xFF00000000000000;
        v20 = v18 & 1;
        v21 = v18 & 0xFF000000000000;
        v22 = v18 & 0xFF0000000000;
        v23 = v18 & 0xFF00000000;
        v24 = v18 & 0xFF000000;
        v25 = v18 & 0xFF0000;
      }

      else
      {
        v20 = 0;
        v25 = 0;
        v24 = 0;
        v23 = 0;
        v22 = 0;
        v21 = 0;
        v19 = 0;
      }

      if (descriptor->var16)
      {
        v26 = descriptor->var4[i] << 8;
      }

      else
      {
        v26 = 0;
      }

      objc_msgSend_setBlendingDesc_at_(v4, v15, v25 | v20 | v24 | v23 | v22 | v21 | v19 | v26, i);
    }
  }

  return v4;
}

- (void)dealloc
{
  objc_msgSend_setArgumentEncoder_(self, a2, 0);

  sub_1AF13F914(self->_programHashCode);
  v3.receiver = self;
  v3.super_class = CFXRemoteRenderPipelineDescriptor;
  [(CFXRemoteRenderPipelineDescriptor *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (!objc_msgSend_isEqual_(self->_vertexFunction, a2, *(equal + 10)))
  {
    return 0;
  }

  if (!objc_msgSend_isEqual_(self->_fragmentFunction, v5, *(equal + 11)))
  {
    return 0;
  }

  vertexDescriptor = self->_vertexDescriptor;
  v8 = *(equal + 12);
  if (vertexDescriptor != v8 && !objc_msgSend_isEqual_(vertexDescriptor, v6, v8))
  {
    return 0;
  }

  programHashCode = self->_programHashCode;
  v10 = *(equal + 16);

  return objc_msgSend_isEqual_(programHashCode, v6, v10);
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_vertexFunction, a2, v2) + 2654435769;
  v7 = (objc_msgSend_hash(self->_fragmentFunction, v5, v6) + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
  v10 = objc_msgSend_hash(self->_vertexDescriptor, v8, v9);
  v11 = 0;
  v12 = (v10 + (v7 << 6) + (v7 >> 2) + 2654435769u) ^ v7;
  v13 = (self->_primitiveTopologyClass + (v12 << 6) + (v12 >> 2) + 2654435769u) ^ v12;
  v14 = ((self->_rasterizationEnabled | (v13 << 6)) + (v13 >> 2) + 2654435769u) ^ v13;
  v15 = v14 ^ 0xA929E4D6F47A6540 ^ (self->_maxVertexAmplificationCount + (v14 << 6) + (v14 >> 2) + 2654435769u);
  do
  {
    v16 = self->_blendingDesc[v11++];
    v15 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *&v16) ^ ((0xC6A4A7935BD1E995 * *&v16) >> 47))) ^ v15);
  }

  while (v11 != 8);
  v17 = (0xC6A4A7935BD1E995 * (v15 ^ (v15 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v15 ^ (v15 >> 47))) >> 47);
  return (self->_programHashCode + 64 * v17 + (v17 >> 2) + 2654435769u) ^ v17;
}

- (void)setBlendingDesc:(id)desc at:(int64_t)at
{
  if (at >= 8)
  {
    v7 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEDF10(v7);
    }
  }

  self->_blendingDesc[at] = desc;
}

- ($0A5B5EE80FF9A3BD0C0D8CB2CCC95C0F)blendingDescAt:(int64_t)at
{
  if (at >= 8)
  {
    v5 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEDF10(v5);
    }
  }

  return self->_blendingDesc[at];
}

- (void)encodeWithCoder:(id)coder
{
  vertexFunction = self->_vertexFunction;
  if (vertexFunction)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, vertexFunction, @"vertexFunction");
  }

  fragmentFunction = self->_fragmentFunction;
  if (fragmentFunction)
  {
    objc_msgSend_encodeObject_forKey_(coder, a2, fragmentFunction, @"fragmentFunction");
  }

  vertexDescriptor = self->_vertexDescriptor;
  if (vertexDescriptor)
  {
    v8 = objc_msgSend_encode_(MEMORY[0x1E69741E0], a2, vertexDescriptor);
    if (v8)
    {
      objc_msgSend_encodeObject_forKey_(coder, a2, v8, @"vertexDescriptor");
    }
  }

  objc_msgSend_encodeInteger_forKey_(coder, a2, self->_primitiveTopologyClass, @"primitiveTopologyClass");
  objc_msgSend_encodeBool_forKey_(coder, v9, self->_rasterizationEnabled, @"rasterizationEnabled");
  objc_msgSend_encodeInteger_forKey_(coder, v10, self->_maxVertexAmplificationCount, @"maxVertexAmp");
  v12 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v11, self->_blendingDesc, 64, 0);
  objc_msgSend_encodeObject_forKey_(coder, v13, v12, @"blendingDesc");
  programHashCode = self->_programHashCode;
  if (programHashCode)
  {
    v17 = objc_msgSend_programHashCodeEncoderWithHashCode_(CFXProgramHashCodeEncoder, v14, programHashCode);

    objc_msgSend_encodeObject_forKey_(coder, v16, v17, @"hashCode");
  }
}

- (CFXRemoteRenderPipelineDescriptor)initWithCoder:(id)coder
{
  v48.receiver = self;
  v48.super_class = CFXRemoteRenderPipelineDescriptor;
  v4 = [(CFXRemoteRenderPipelineDescriptor *)&v48 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"vertexFunction");
    objc_msgSend_setVertexFunction_(v4, v8, v7);
    v9 = objc_opt_class();
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v10, v9, @"fragmentFunction");
    objc_msgSend_setFragmentFunction_(v4, v12, v11);
    v13 = objc_opt_class();
    v15 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v14, v13, @"vertexDescriptor");
    if (v15)
    {
      v17 = objc_msgSend_decode_(MEMORY[0x1E69741E0], v16, v15);
      objc_msgSend_setVertexDescriptor_(v4, v18, v17);
    }

    v19 = objc_msgSend_decodeIntegerForKey_(coder, v16, @"primitiveTopologyClass");
    objc_msgSend_setPrimitiveTopologyClass_(v4, v20, v19);
    v22 = objc_msgSend_decodeBoolForKey_(coder, v21, @"rasterizationEnabled");
    objc_msgSend_setRasterizationEnabled_(v4, v23, v22);
    v25 = objc_msgSend_decodeIntegerForKey_(coder, v24, @"maxVertexAmp");
    objc_msgSend_setMaxVertexAmplificationCount_(v4, v26, v25);
    v27 = objc_opt_class();
    v29 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v28, v27, @"blendingDesc");
    v32 = objc_msgSend_length(v29, v30, v31);
    if (v32 == 64)
    {
      v35 = objc_msgSend_bytes(v29, v33, v34);
      v36 = v35[2];
      v37 = v35[3];
      v38 = v35[1];
      *(v4 + 8) = *v35;
      *(v4 + 56) = v37;
      *(v4 + 40) = v36;
      *(v4 + 24) = v38;
    }

    else
    {
      v39 = sub_1AF0D5194(v32, v33);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDEDF94(v39);
      }
    }

    v40 = objc_opt_class();
    v42 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v41, v40, @"hashCode");
    v45 = objc_msgSend_hashCode(v42, v43, v44);
    objc_msgSend_setProgramHashCode_(v4, v46, v45);
  }

  return v4;
}

@end