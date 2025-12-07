@interface MPSQuadrilateralAccelerationStructure
- (MPSQuadrilateralAccelerationStructure)initWithDevice:(id)device;
- (MPSQuadrilateralAccelerationStructure)initWithGroup:(id)group;
- (id)vertexBuffer;
- (void)setPolygonType:(unint64_t)type;
@end

@implementation MPSQuadrilateralAccelerationStructure

- (void)setPolygonType:(unint64_t)type
{
  if (type != 1)
  {
    sub_239E2074C(self, a2);
  }
}

- (MPSQuadrilateralAccelerationStructure)initWithDevice:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSQuadrilateralAccelerationStructure;
  v3 = [(MPSPolygonAccelerationStructure *)&v7 initWithDevice:device];
  v4 = v3;
  if (v3)
  {
    v6.receiver = v3;
    v6.super_class = MPSQuadrilateralAccelerationStructure;
    [(MPSPolygonAccelerationStructure *)&v6 setPolygonType:1];
  }

  return v4;
}

- (MPSQuadrilateralAccelerationStructure)initWithGroup:(id)group
{
  v7.receiver = self;
  v7.super_class = MPSQuadrilateralAccelerationStructure;
  v3 = [(MPSPolygonAccelerationStructure *)&v7 initWithGroup:group];
  v4 = v3;
  if (v3)
  {
    v6.receiver = v3;
    v6.super_class = MPSQuadrilateralAccelerationStructure;
    [(MPSPolygonAccelerationStructure *)&v6 setPolygonType:1];
  }

  return v4;
}

- (id)vertexBuffer
{
  if (objc_msgSend_polygonBuffers(self, a2, v2))
  {
    v6 = objc_msgSend_polygonBuffers(self, v4, v5);
    objc_msgSend_count(v6, v7, v8);
  }

  if (objc_msgSend_polygonBuffers(self, v4, v5))
  {
    v11 = objc_msgSend_polygonBuffers(self, v9, v10);
    v14 = objc_msgSend_count(v11, v12, v13);
    if (v14 != 1)
    {
      sub_239E2079C(v14, v9);
    }
  }

  v15 = objc_msgSend_polygonBuffers(self, v9, v10);
  v17 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, 0);

  return objc_msgSend_vertexBuffer(v17, v18, v19);
}

@end