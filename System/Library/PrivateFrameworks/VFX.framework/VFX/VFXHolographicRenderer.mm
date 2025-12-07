@interface VFXHolographicRenderer
- (BOOL)isNodeInsideFrustum:(id)frustum withPointOfView:(id)view;
- (CGRect)currentViewport;
- (VFXHolographicRenderer)initWithDevice:(id)device options:(id)options;
- (double)projectPoint:(const char *)point;
- (id)hitTest:(CGPoint)test options:(id)options;
- (id)nodesInsideFrustumWithPointOfView:(id)view;
- (uint64_t)unprojectPoint:(uint64_t)point;
- (void)dealloc;
- (void)setJitteringEnabled:(BOOL)enabled;
- (void)setPointOfView:(id)view;
- (void)setShowsStatistics:(BOOL)statistics;
@end

@implementation VFXHolographicRenderer

- (VFXHolographicRenderer)initWithDevice:(id)device options:(id)options
{
  v21.receiver = self;
  v21.super_class = VFXHolographicRenderer;
  v7 = [(VFXHolographicRenderer *)&v21 init];
  if (v7)
  {
    if (device || (device = objc_msgSend_deviceForOptions_(VFXView, v6, options)) != 0)
    {
      if (!objc_msgSend_objectForKeyedSubscript_(options, v6, @"maxInFlightFrameCount"))
      {
        if (options)
        {
          v10 = objc_msgSend_mutableCopy(options, v8, v9);
        }

        else
        {
          v12 = objc_alloc(MEMORY[0x1E695DF90]);
          v10 = objc_msgSend_initWithCapacity_(v12, v13, 1);
        }

        v14 = v10;
        objc_msgSend_setObject_forKeyedSubscript_(v10, v11, &unk_1F25D4510, @"maxInFlightFrameCount");
        options = v14;
      }

      v15 = [VFXRenderer alloc];
      isPrivateRenderer_privateRendererOwner_clearsOnDraw = objc_msgSend__initWithDevice_options_isPrivateRenderer_privateRendererOwner_clearsOnDraw_(v15, v16, device, options, 1, v7, 0);
      v7->_renderer = isPrivateRenderer_privateRendererOwner_clearsOnDraw;
      objc_msgSend_setRendererKind_(isPrivateRenderer_privateRendererOwner_clearsOnDraw, v18, 3);
      objc_msgSend_setShouldLoadFinalTexture_(v7->_renderer, v19, 1);
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXHolographicRenderer;
  [(VFXHolographicRenderer *)&v3 dealloc];
}

- (id)hitTest:(CGPoint)test options:(id)options
{
  objc_msgSend__backingSize(self->_renderer, a2, options);
  renderer = self->_renderer;

  return MEMORY[0x1EEE66B58](renderer, sel__hitTest_viewport_options_, options);
}

- (CGRect)currentViewport
{
  (MEMORY[0x1EEE66B58])(self->_renderer, sel_currentViewport);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)isNodeInsideFrustum:(id)frustum withPointOfView:(id)view
{
  renderer = self->_renderer;
  objc_msgSend__viewport(renderer, a2, frustum);

  return MEMORY[0x1EEE66B58](renderer, sel__isNodeInsideFrustum_withPointOfView_viewport_, frustum);
}

- (id)nodesInsideFrustumWithPointOfView:(id)view
{
  renderer = self->_renderer;
  objc_msgSend__viewport(renderer, a2, view);

  return MEMORY[0x1EEE66B58](renderer, sel__nodesInsideFrustumWithPointOfView_viewport_, view);
}

- (double)projectPoint:(const char *)point
{
  objc_msgSend__viewport(*(self + 24), point, a4);
  objc_msgSend__projectPoint_viewport_(*(self + 24), v5, v6, a2, v7, *&v7, v8);
  LODWORD(v10) = v9;
  *(&v10 + 1) = v13 - v11;
  return v10;
}

- (uint64_t)unprojectPoint:(uint64_t)point
{
  objc_msgSend__viewport(*(self + 24), a2, point);
  v5 = *(self + 24);

  return MEMORY[0x1EEE66B58](v5, sel__unprojectPoint_viewport_, v4);
}

- (void)setPointOfView:(id)view
{
  viewCopy = view;

  self->_pointOfView = view;
}

- (void)setJitteringEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v4 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFB978(self, v4);
    }
  }
}

- (void)setShowsStatistics:(BOOL)statistics
{
  v5 = sub_1AF0D5C40(0) | statistics;
  renderer = self->_renderer;

  objc_msgSend_setShowsStatistics_(renderer, v4, v5);
}

@end