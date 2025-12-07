@interface MDLVertexAttribute
- (BOOL)isEqual:(id)equal;
- (MDLVertexAttribute)init;
- (MDLVertexAttribute)initWithName:(NSString *)name format:(MDLVertexFormat)format offset:(NSUInteger)offset bufferIndex:(NSUInteger)bufferIndex;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MDLVertexAttribute

- (MDLVertexAttribute)init
{
  v6.receiver = self;
  v6.super_class = MDLVertexAttribute;
  v2 = [(MDLVertexAttribute *)&v6 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = &stru_284D18478;

    v3->_offset = 0;
    v3->_bufferIndex = 0;
    v3->_format = 0;
    *v3->_initializationValue = xmmword_239F9C1B0;
  }

  return v3;
}

- (MDLVertexAttribute)initWithName:(NSString *)name format:(MDLVertexFormat)format offset:(NSUInteger)offset bufferIndex:(NSUInteger)bufferIndex
{
  v10 = name;
  v26.receiver = self;
  v26.super_class = MDLVertexAttribute;
  v11 = [(MDLVertexAttribute *)&v26 init];
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v23 = objc_msgSend_initWithString_(v12, v13, v10, v14, v19, v20, v21, v22, v15, v16, v17, v18);
    v24 = v11->_name;
    v11->_name = v23;

    v11->_bufferIndex = bufferIndex;
    v11->_format = format;
    v11->_offset = offset;
    *v11->_initializationValue = xmmword_239F9C1B0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13 = objc_msgSend_allocWithZone_(MDLVertexAttribute, a2, zone, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  name = self->_name;
  offset = self->_offset;
  bufferIndex = self->_bufferIndex;
  format = self->_format;

  return objc_msgSend_initWithName_format_offset_bufferIndex_(v13, v14, name, format, v17, v18, v19, v20, offset, bufferIndex, v15, v16);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v16 = objc_msgSend_isEqualToString_(self->_name, v6, v5[1], v7, v12, v13, v14, v15, v8, v9, v10, v11) && self->_offset == v5[2] && self->_bufferIndex == v5[3] && self->_format == v5[4];
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v16 = objc_msgSend_name(self, v5, v6, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  v28 = objc_msgSend_format(self, v17, v18, v19, v24, v25, v26, v27, v20, v21, v22, v23);
  v29 = sub_239F1DDD8(v28);
  v41 = objc_msgSend_bufferIndex(self, v30, v31, v32, v37, v38, v39, v40, v33, v34, v35, v36);
  v53 = objc_msgSend_offset(self, v42, v43, v44, v49, v50, v51, v52, v45, v46, v47, v48);
  v64 = objc_msgSend_stringWithFormat_(v3, v54, @"<%@: %p name=%@ format=%s bufferIndex=%lu offset=%lu>", v55, v60, v61, v62, v63, v56, v57, v58, v59, v4, self, v16, v29, v41, v53);

  return v64;
}

@end