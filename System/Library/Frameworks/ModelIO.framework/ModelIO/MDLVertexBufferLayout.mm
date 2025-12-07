@interface MDLVertexBufferLayout
- (BOOL)isEqual:(id)equal;
- (MDLVertexBufferLayout)initWithStride:(NSUInteger)stride;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MDLVertexBufferLayout

- (MDLVertexBufferLayout)initWithStride:(NSUInteger)stride
{
  v8.receiver = self;
  v8.super_class = MDLVertexBufferLayout;
  v4 = [(MDLVertexBufferLayout *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_stride = stride;
    v6 = v4;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13 = objc_msgSend_allocWithZone_(MDLVertexBufferLayout, a2, zone, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  stride = self->_stride;

  return MEMORY[0x2821F9670](v13, sel_initWithStride_, stride, v14, v15, v16, v17, v18);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_stride == equalCopy->_stride;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v16 = objc_msgSend_stride(self, v5, v6, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  return objc_msgSend_stringWithFormat_(v3, v17, @"<%@: %p stride=%lu>", v18, v23, v24, v25, v26, v19, v20, v21, v22, v4, self, v16);
}

@end