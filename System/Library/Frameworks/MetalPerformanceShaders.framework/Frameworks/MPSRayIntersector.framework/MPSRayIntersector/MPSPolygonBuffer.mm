@interface MPSPolygonBuffer
+ (MPSPolygonBuffer)polygonBuffer;
- (MPSPolygonBuffer)copyWithZone:(NSZone *)zone;
- (MPSPolygonBuffer)init;
- (MPSPolygonBuffer)initWithCoder:(NSCoder *)aDecoder;
- (id)description;
- (void)dealloc;
- (void)validateWithVerticesPerPolygon:(unint64_t)polygon vertexStride:(unint64_t)stride indexStride:(unint64_t)indexStride;
@end

@implementation MPSPolygonBuffer

- (MPSPolygonBuffer)init
{
  v3.receiver = self;
  v3.super_class = MPSPolygonBuffer;
  return [(MPSPolygonBuffer *)&v3 init];
}

- (MPSPolygonBuffer)initWithCoder:(NSCoder *)aDecoder
{
  v7.receiver = self;
  v7.super_class = MPSPolygonBuffer;
  v5 = [(MPSPolygonBuffer *)&v7 init];
  if (v5)
  {
    v5->_polygonCount = objc_msgSend_decodeInt64ForKey_(aDecoder, v4, @"MPSPolygonBufferKeyPolygonCount");
  }

  return v5;
}

+ (MPSPolygonBuffer)polygonBuffer
{
  v2 = objc_alloc_init(MPSPolygonBuffer);

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSPolygonBuffer;
  [(MPSPolygonBuffer *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = MPSPolygonBuffer;
  v4 = [(MPSPolygonBuffer *)&v7 description];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tvertex buffer: %p\n\tvertex buffer offset: %llu\n\tindex buffer: %p\n\tindex buffer offset: %llu\n\tmask buffer: %p\n\tmask buffer offset: %llu\n\tpolygon count: %llu", v4, self->_vertexBuffer, self->_vertexBufferOffset, self->_indexBuffer, self->_indexBufferOffset, self->_maskBuffer, self->_maskBufferOffset, self->_polygonCount);
}

- (MPSPolygonBuffer)copyWithZone:(NSZone *)zone
{
  v5 = objc_opt_class();
  result = objc_msgSend_allocWithZone_(v5, v6, zone);
  result->_polygonCount = self->_polygonCount;
  return result;
}

- (void)validateWithVerticesPerPolygon:(unint64_t)polygon vertexStride:(unint64_t)stride indexStride:(unint64_t)indexStride
{
  p_vertexBuffer = &self->_vertexBuffer;
  if (!self->_vertexBuffer)
  {
    sub_239E245A0(self, a2);
  }

  objc_msgSend_length(self->_vertexBuffer, a2, polygon);
  vertexBufferOffset = self->_vertexBufferOffset;
  if (vertexBufferOffset >= objc_msgSend_length(self->_vertexBuffer, v11, v12))
  {
    sub_239E245F0(&self->_vertexBufferOffset, p_vertexBuffer);
  }

  if ((self->_vertexBufferOffset & 3) != 0)
  {
    sub_239E24648(&self->_vertexBufferOffset, v13);
  }

  p_indexBuffer = &self->_indexBuffer;
  indexBuffer = self->_indexBuffer;
  if (indexBuffer)
  {
    objc_msgSend_length(indexBuffer, v13, v14);
    v19 = objc_msgSend_length(self->_indexBuffer, v17, v18);
    p_indexBufferOffset = &self->_indexBufferOffset;
    p_polygonCount = &self->_polygonCount;
    if (v19 < self->_indexBufferOffset + indexStride * polygon * self->_polygonCount)
    {
      sub_239E246A4(&self->_indexBuffer, p_polygonCount);
    }

    objc_msgSend_length(*p_indexBuffer, p_polygonCount, v20);
    v23 = *p_indexBufferOffset;
    if (v23 >= objc_msgSend_length(*p_indexBuffer, v24, v25))
    {
      sub_239E24700(&self->_indexBufferOffset, &self->_indexBuffer);
    }

    if (*p_indexBufferOffset % indexStride)
    {
      sub_239E24758(&self->_indexBufferOffset, indexStride);
    }
  }

  else
  {
    objc_msgSend_length(self->_vertexBuffer, v13, v14);
    v30 = objc_msgSend_length(self->_vertexBuffer, v28, v29);
    v26 = &self->_polygonCount;
    if (v30 < self->_vertexBufferOffset + stride * polygon * self->_polygonCount)
    {
      sub_239E247A8(p_vertexBuffer, v26);
    }
  }

  p_maskBuffer = &self->_maskBuffer;
  maskBuffer = self->_maskBuffer;
  if (maskBuffer)
  {
    objc_msgSend_length(maskBuffer, v26, v27);
    v35 = objc_msgSend_length(self->_maskBuffer, v33, v34);
    maskBufferOffset = self->_maskBufferOffset;
    p_maskBufferOffset = &self->_maskBufferOffset;
    v39 = (p_maskBufferOffset + 1);
    if (v35 < maskBufferOffset + 4 * p_maskBufferOffset[1])
    {
      sub_239E24804(p_maskBuffer, v39);
    }

    objc_msgSend_length(*p_maskBuffer, v39, v36);
    v40 = *p_maskBufferOffset;
    if (v40 >= objc_msgSend_length(*p_maskBuffer, v41, v42))
    {
      sub_239E24864(p_maskBufferOffset, p_maskBuffer);
    }

    if ((*p_maskBufferOffset & 3) != 0)
    {
      sub_239E248BC(p_maskBufferOffset, v43);
    }
  }
}

@end