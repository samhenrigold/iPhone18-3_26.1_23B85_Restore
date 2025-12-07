@interface VFXTextureCoreAnimationSource
- (CGSize)layerSizeInPixels;
- (double)__renderLayerUsingMetal:(id)metal withCARenderer:(id)renderer engineContext:(__CFXEngineContext *)context viewport:(double)viewport atTime:;
- (double)__updateTextureWithLayer:(id)layer texture:(id)texture engineContext:(__CFXEngineContext *)context sampler:(id)sampler;
- (double)layerContentsScaleFactor;
- (id)metalTextureWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time status:(id *)status;
- (void)_resizeLayer:(id)layer toSize:(CGSize)size updateLayer:(BOOL)updateLayer updateTransform:(BOOL)transform caRenderer:(id)renderer;
- (void)dealloc;
- (void)renderWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time status:(id *)status;
- (void)setLayer:(id)layer;
@end

@implementation VFXTextureCoreAnimationSource

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXTextureCoreAnimationSource;
  [(VFXTextureSource *)&v3 dealloc];
}

- (void)setLayer:(id)layer
{
  layer = self->_layer;
  if (layer != layer)
  {

    self->_layer = layer;
  }
}

- (void)renderWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time status:(id *)status
{
  if (sub_1AF12E2AC(context, a2))
  {
    FrameTime_status = objc_msgSend_metalTextureWithEngineContext_textureSampler_nextFrameTime_status_(self, v11, context, sampler, time, status);
    v14 = sub_1AF12E2AC(context, v13);

    MEMORY[0x1EEE66B58](v14, sel__drawFullScreenTexture_, FrameTime_status);
  }
}

- (void)_resizeLayer:(id)layer toSize:(CGSize)size updateLayer:(BOOL)updateLayer updateTransform:(BOOL)transform caRenderer:(id)renderer
{
  height = size.height;
  width = size.width;
  v14 = objc_msgSend_requiresMainThreadUpdates(self, a2, layer);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1AF28AC9C;
  v17[3] = &unk_1E7A7E0C0;
  updateLayerCopy = updateLayer;
  v17[4] = renderer;
  v17[5] = layer;
  transformCopy = transform;
  v17[6] = self;
  *&v17[7] = width;
  *&v17[8] = height;
  if (v14)
  {
    dispatch_async(MEMORY[0x1E69E96A0], v17);
  }

  else
  {
    v15 = dispatch_group_create();
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_group_async(v15, global_queue, v17);
    dispatch_group_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v15);
  }
}

- (double)__renderLayerUsingMetal:(id)metal withCARenderer:(id)renderer engineContext:(__CFXEngineContext *)context viewport:(double)viewport atTime:
{
  rect2 = vcvt_hight_f64_f32(*&viewport);
  objc_msgSend_bounds(renderer, a2, metal);
  v22.size.width = rect2.f64[0];
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.height = rect2.f64[1];
  if (!CGRectEqualToRect(v21, v22))
  {
    objc_msgSend_setBounds_(renderer, v9, v10, 0.0, 0.0, *&rect2);
  }

  v13 = objc_msgSend_layer(renderer, v9, v10);
  if (v13 != metal || metal && (objc_msgSend_transform(metal, v11, v12), v20 > 0.0))
  {
    objc_msgSend__resizeLayer_toSize_updateLayer_updateTransform_caRenderer_(self, v11, metal, v13 != metal, 1, renderer, *&rect2);
  }

  objc_msgSend_addUpdateRect_(renderer, v11, v12, 0.0, 0.0, *&rect2);
  objc_msgSend_render(renderer, v14, v15);
  objc_msgSend_nextFrameTime(renderer, v16, v17);
  return result;
}

- (double)__updateTextureWithLayer:(id)layer texture:(id)texture engineContext:(__CFXEngineContext *)context sampler:(id)sampler
{
  v10 = sub_1AF12DDCC(context, a2);
  if (v10)
  {
    if (!sub_1AF1CF830(v10, v11))
    {
      v14 = sub_1AF0D5194(0, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF36AC(v14);
      }
    }

    v15 = sub_1AF1302C4(context);
  }

  else
  {
    v15 = 0.0;
  }

  if (self->super._framebufferSize.width > 0.0 && self->_lastUpdate != v15)
  {
    v16 = objc_msgSend_sharedRegistry(VFXSourceRendererRegistry, v11, v12);
    v18 = objc_msgSend_sourceRendererForEngineContext_source_textureSource_targetTexture_(v16, v17, context, layer, self, texture);
    v19 = sub_1AF1302D4(context);
    v20 = CACurrentMediaTime();
    if ((objc_msgSend_requiresMainThreadUpdates(self, v21, v22) & 1) == 0)
    {
      objc_msgSend_begin(MEMORY[0x1E6979518], v23, v24);
      objc_msgSend_setDisableActions_(MEMORY[0x1E6979518], v25, 1);
      objc_msgSend_setTimeOffset_(layer, v26, v27, v19 - v20);
      objc_msgSend_commit(MEMORY[0x1E6979518], v28, v29);
    }

    lastUpdate = self->_lastUpdate;
    if (lastUpdate == 0.0 || v15 >= self->_nextUpdateDate + -0.0166666667)
    {
      objc_msgSend_beginFrameAtTime_timeStamp_(v18, v23, 0, v20);
      goto LABEL_18;
    }

    if (v15 != lastUpdate)
    {
      objc_msgSend_beginFrameAtTime_timeStamp_(v18, v23, 0, v20);
      objc_msgSend_updateBounds(v18, v31, v32);
      if (CGRectIsEmpty(v39))
      {
        v35 = INFINITY;
LABEL_25:
        objc_msgSend_endFrame(v18, v33, v34);
        return v35;
      }

LABEL_18:
      self->_lastUpdate = v15;
      if (texture)
      {
        objc_msgSend___renderLayerUsingMetal_withCARenderer_engineContext_viewport_atTime_(self, v33, layer, v18, context, *vcvt_hight_f32_f64(0, self->super._framebufferSize).i64, v20);
        v35 = v36;
      }

      else
      {
        v35 = 0.0;
      }

      self->_nextUpdateDate = 3.40282347e38;
      if (v35 != INFINITY && v35 != 3.40282347e38)
      {
        v37 = CACurrentMediaTime() - v35;
        if (v37 > 0.0)
        {
          self->_nextUpdateDate = v15 + v37;
        }
      }

      goto LABEL_25;
    }
  }

  return INFINITY;
}

- (CGSize)layerSizeInPixels
{
  v3 = objc_msgSend_layer(self, a2, v2);
  objc_msgSend_bounds(v3, v4, v5);
  v7 = v6;
  v9 = v8;
  objc_msgSend_contentsScale(v3, v10, v11);
  v13 = v12 * v9;
  v14 = v12 * v7;
  result.height = v13;
  result.width = v14;
  return result;
}

- (double)layerContentsScaleFactor
{
  v3 = objc_msgSend_layer(self, a2, v2);

  objc_msgSend_contentsScale(v3, v4, v5);
  return result;
}

- (id)metalTextureWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time status:(id *)status
{
  if (objc_msgSend_supportsMetal(self, a2, context))
  {
    v12 = sub_1AF12E2AC(context, v11);
    v14 = sub_1AF12DE14(context, v13);
    v15 = CACurrentMediaTime();
    prof_beginFlame("CA texture source", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/ObjC/Texture sources/Custom sources/VFXCoreAnimationSource.m", 422);
    v18 = objc_msgSend_layer(self, v16, v17);
    if (v18)
    {
      v21 = v18;
      objc_msgSend_layerSizeInPixels(self, v19, v20);
      v23 = v22;
      v25 = v24;
      self->super._framebufferSize.width = v22;
      self->super._framebufferSize.height = v24;
      v28 = objc_msgSend_MTLTextureCache(self, v26, v27);
      if (v28)
      {
        v30 = v28;
        v31 = 0;
      }

      else
      {
        v33 = sub_1AF1F2C50(0);
        v42 = 0uLL;
        v43 = 0;
        CFXTextureDescriptorMake2D(v23, v25, v33, &v42);
        LOBYTE(v43) = 5;
        v36 = objc_msgSend_gpuDevice(v12, v34, v35);
        v40 = v42;
        v41 = v43;
        v30 = CFXGPUDeviceCreateTexture(v36, &v40);
        objc_msgSend_setMTLTextureCache_(self, v37, v30);

        v31 = 1;
      }

      status->var0 = v31;
      status->var1 = 1;
      objc_msgSend___updateTextureWithLayer_texture_engineContext_sampler_(self, v29, v21, v30, context, sampler);
      *time = v38;
      *(v14 + 160) = *(v14 + 160) + CACurrentMediaTime() - v15;
      prof_endFlame();
    }

    else
    {
      v32 = sub_1AF0D5194(0, v19);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF3730(v32);
      }

      *(v14 + 160) = *(v14 + 160) + CACurrentMediaTime() - v15;
      prof_endFlame();
      return 0;
    }
  }

  else
  {
    v44.receiver = self;
    v44.super_class = VFXTextureCoreAnimationSource;
    return [(VFXTextureSource *)&v44 metalTextureWithEngineContext:context textureSampler:sampler nextFrameTime:time status:status];
  }

  return v30;
}

@end