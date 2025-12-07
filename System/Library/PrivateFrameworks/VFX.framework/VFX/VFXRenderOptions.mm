@interface VFXRenderOptions
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)dealloc;
- (void)setCommandBuffer:(id)buffer;
- (void)setRasterizationRateMap:(id)map;
- (void)setRayMap:(id)map;
- (void)setViewpoints:(id)viewpoints;
@end

@implementation VFXRenderOptions

- (void)setRasterizationRateMap:(id)map
{
  rasterizationRateMap = self->_rasterizationRateMap;
  if (rasterizationRateMap != map)
  {

    self->_rasterizationRateMap = map;
  }
}

- (void)setRayMap:(id)map
{
  rayMap = self->_rayMap;
  if (rayMap != map)
  {

    self->_rayMap = map;
  }
}

- (void)setViewpoints:(id)viewpoints
{
  viewpoints = self->_viewpoints;
  if (viewpoints != viewpoints)
  {

    self->_viewpoints = objc_msgSend_copy(viewpoints, v6, v7);
  }
}

- (void)setCommandBuffer:(id)buffer
{
  commandBuffer = self->_commandBuffer;
  if (commandBuffer != buffer)
  {

    self->_commandBuffer = buffer;
  }
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v7 = objc_msgSend_viewpoints(self, v5, v6);
  v11 = objc_msgSend_viewpoints(equal, v8, v9);

  return objc_msgSend_isEqual_(v7, v10, v11);
}

- (unint64_t)hash
{
  v4 = objc_msgSend_viewpoints(self, a2, v2);
  if (!objc_msgSend_count(v4, v5, v6))
  {
    return 0;
  }

  v9 = objc_msgSend_viewpoints(self, v7, v8);
  Object = objc_msgSend_firstObject(v9, v10, v11);
  v15 = objc_msgSend_hash(Object, v13, v14);
  v18 = objc_msgSend_viewpoints(self, v16, v17);
  if (objc_msgSend_count(v18, v19, v20) >= 2)
  {
    v23 = objc_msgSend_viewpoints(self, v21, v22);
    if (objc_msgSend_count(v23, v24, v25) >= 2)
    {
      v28 = 1;
      do
      {
        v29 = objc_msgSend_viewpoints(self, v26, v27);
        v31 = objc_msgSend_objectAtIndexedSubscript_(v29, v30, v28);
        v15 ^= objc_msgSend_hash(v31, v32, v33);
        ++v28;
        v36 = objc_msgSend_viewpoints(self, v34, v35);
      }

      while (v28 < objc_msgSend_count(v36, v37, v38));
    }
  }

  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXRenderOptions;
  [(VFXRenderOptions *)&v3 dealloc];
}

@end