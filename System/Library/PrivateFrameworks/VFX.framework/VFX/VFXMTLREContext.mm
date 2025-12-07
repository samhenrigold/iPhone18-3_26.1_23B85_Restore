@interface VFXMTLREContext
- (BufferSlice)_buffer:(int)_buffer :(id)a4;
- (BufferSlice)_buffer:(int)_buffer :(id)a4 fallback:(id)fallback;
- (VFXMTLREContext)init;
- (VFX_RE_C_EntityConstants_s)_computeEntityData;
- (VFX_RE_C_GlobalConstants_s)_computeGlobalData;
- (id).cxx_construct;
- (id)_texture:(int)_texture :(id)a4 fallback:(id)fallback fallbackScope:(int)scope;
- (re_vfx_object_constants)_computeVFXObjectConstants;
- (void)_computeViewData;
- (void)_updateAvailableSelectors;
- (void)dealloc;
@end

@implementation VFXMTLREContext

- (VFXMTLREContext)init
{
  v5.receiver = self;
  v5.super_class = VFXMTLREContext;
  v2 = [(VFXMTLREContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_anon_1ec[84] = 0u;
    *&v2->_anon_1ec[100] = 0u;
    *&v2->_anon_1ec[52] = 0u;
    *&v2->_anon_1ec[68] = 0u;
    *&v2->_anon_1ec[20] = 0u;
    *&v2->_anon_1ec[36] = 0u;
    *&v2->_entityConstants.fakeFresnelOpacityBasedBoostFactor = 0u;
    *&v2->_anon_1ec[4] = 0u;
    *&v2->_entityConstants.lodDrawInfo = 0u;
    *&v2->_entityConstants.clippingIndexSlice.offset = 0u;
    bzero(v2->_anon_500, 0x400uLL);
    *&v3->_anon_ac8[40] = 0u;
    *&v3->_anon_ac8[24] = 0u;
    *&v3->_anon_ac8[8] = 0u;
    *&v3->_globalConstants.var0 = 0u;
    *v3->_anon_b10 = 0u;
    *&v3->_anon_b10[16] = 0u;
    *&v3->_anon_b10[32] = 0u;
    *&v3->_anon_b10[48] = 0u;
    v3->_vfxObjectConstants = 0;
    v3->_currentEntityBuffer = 0u;
    v3->_currentViewBuffer = 0u;
    v3->_currentGlobalBuffer = 0u;
    v3->_currentObjectBuffer = 0u;
    v3->_viewBufferCountForFrame = 0;
    *&v3->_optionalSelectorsInitialized = 0;
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMTLREContext;
  [(VFXMTLREContext *)&v3 dealloc];
}

- (void)_updateAvailableSelectors
{
  if (!self->_optionalSelectorsInitialized && self->_drawCallContext)
  {
    if (objc_opt_respondsToSelector())
    {
      self->_respondToSystemTreatmentRenderOptions = 1;
    }

    self->_optionalSelectorsInitialized = 1;
  }
}

- (VFX_RE_C_EntityConstants_s)_computeEntityData
{
  sub_1AF22BD6C(v21, &self->_entityBufferMetadata, &off_1E7A7D438, 13, self->_drawCallContext);
  *&retstr[2].environmentLightingWeight = 0u;
  *&retstr[3].debugMode = 0u;
  *&retstr[2].tintFactor = 0u;
  *&retstr[2].sfFactor = 0u;
  *&retstr[1].samplerIndexCount = 0u;
  *&retstr[1].btTextureReadIndex = 0u;
  *&retstr->fakeFresnelOpacityBasedBoostFactor = 0u;
  *&retstr[1].fadeOpacity = 0u;
  *&retstr->lodDrawInfo = 0u;
  *&retstr->clippingIndexSlice.offset = 0u;
  sub_1AF22BFA0(v21, &retstr->fadeOpacity);
  v4 = sub_1AF22BFA0(&v22, &retstr->tintFactor);
  v6 = v23;
  if (!v23)
  {
    v7 = sub_1AF0D5194(v4, v5);
    v4 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT);
    if (v4)
    {
      sub_1AFDEBE1C();
    }
  }

  v9 = *(v6 + 24);
  v8 = (v6 + 24);
  if (v9 != 4)
  {
    v10 = sub_1AF0D5194(v4, v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEBE9C();
    }
  }

  v11 = sub_1AF22C83C(&v23, v5);
  memcpy(&retstr->clippingIndexSlice, v11, *v8);
  sub_1AF22C044(&v24, &retstr->btTextureReadIndex);
  sub_1AF22C044(&v25, &retstr->stencilReferenceValue);
  sub_1AF22BFA0(&v26, &retstr->environmentLightingWeight);
  v12 = sub_1AF22C0E8(&v27, &retstr[1].fadeOpacity);
  v14 = v28;
  if (!v28)
  {
    v15 = sub_1AF0D5194(v12, v13);
    v12 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);
    if (v12)
    {
      sub_1AFDEBE1C();
    }
  }

  v17 = *(v14 + 24);
  v16 = (v14 + 24);
  if (v17 != 1)
  {
    v18 = sub_1AF0D5194(v12, v13);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEBF20();
    }
  }

  v19 = sub_1AF22C83C(&v28, v13);
  memcpy(&retstr[2].sfFactor, v19, *v16);
  sub_1AF22C18C(&v29, &retstr[2].sfFactor + 2);
  sub_1AF22BFA0(&v30, &retstr[2].btTextureReadIndex);
  sub_1AF22BFA0(&v31, &retstr->sfFactor);
  sub_1AF22BFA0(&v32, &retstr[3]);
  return sub_1AF22C18C(&v33, &retstr[3].tintFactor);
}

- (void)_computeViewData
{
  sub_1AF22BD6C(v20, self + 624, &off_1E7A7D5D8, 9, *(self + 8));
  bzero(a2, 0x400uLL);
  sub_1AF22C3D0(v20, a2);
  sub_1AF22C3D0(&v21, (a2 + 256));
  sub_1AF22C3D0(&v22, (a2 + 512));
  v3 = sub_1AF22C3D0(&v23, (a2 + 640));
  v5 = v24;
  if (!v24)
  {
    v6 = sub_1AF0D5194(v3, v4);
    v3 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (v3)
    {
      sub_1AFDEBE1C();
    }
  }

  v8 = *(v5 + 24);
  v7 = (v5 + 24);
  if (v8 != 32)
  {
    v9 = sub_1AF0D5194(v3, v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEC284();
    }
  }

  v10 = sub_1AF22C83C(&v24, v4);
  memcpy((a2 + 768), v10, *v7);
  v11 = sub_1AF22C0E8(&v25, (a2 + 880));
  v13 = v26;
  if (!v26)
  {
    v14 = sub_1AF0D5194(v11, v12);
    v11 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);
    if (v11)
    {
      sub_1AFDEBE1C();
    }
  }

  v16 = *(v13 + 24);
  v15 = (v13 + 24);
  if (v16 != 32)
  {
    v17 = sub_1AF0D5194(v11, v12);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEC284();
    }
  }

  v18 = sub_1AF22C83C(&v26, v12);
  memcpy((a2 + 832), v18, *v15);
  sub_1AF22BFA0(&v27, (a2 + 940));
  return sub_1AF22BFA0(&v28, (a2 + 944));
}

- (VFX_RE_C_GlobalConstants_s)_computeGlobalData
{
  v3 = v2;
  sub_1AF22BD6C(v13, &self->_globalBufferMetadata, &off_1E7A7D778, 2, self->_drawCallContext);
  v3[2] = 0u;
  v3[3] = 0u;
  *v3 = 0u;
  v3[1] = 0u;
  v6 = v13[0];
  if (!v13[0])
  {
    v7 = sub_1AF0D5194(v4, v5);
    v4 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT);
    if (v4)
    {
      sub_1AFDEBE1C();
    }
  }

  v9 = *(v6 + 24);
  v8 = (v6 + 24);
  if (v9 != 16)
  {
    v10 = sub_1AF0D5194(v4, v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEC38C();
    }
  }

  v11 = sub_1AF22C83C(v13, v5);
  memcpy(v3, v11, *v8);
  return sub_1AF22BFA0(&v14, v3 + 20);
}

- (re_vfx_object_constants)_computeVFXObjectConstants
{
  objc_msgSend__updateAvailableSelectors(self, a2, v2);
  drawCallContext = self->_drawCallContext;
  if (self->_respondToSystemTreatmentRenderOptions)
  {
    v7 = objc_msgSend_systemTreatmentsRenderOptions(drawCallContext, v4, v5);
    v10 = ((2 * v7) & 0x7E0 | v7 & 7);
  }

  else
  {
    if (objc_msgSend_enableBreakthrough(drawCallContext, v4, v5))
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    v10 = (v13 | objc_msgSend_enableClipping(self->_drawCallContext, v11, v12));
  }

  if (objc_msgSend_portalClippingMode(self->_drawCallContext, v8, v9) - 1 >= 3)
  {
    return v10;
  }

  else
  {
    return (*&v10 | 0x10);
  }
}

- (BufferSlice)_buffer:(int)_buffer :(id)a4 fallback:(id)fallback
{
  v12 = 0;
  v13 = 0;
  v8 = objc_msgSend_buffer__::(self->_drawCallContext, a2, *&_buffer, a4, &v13, &v12);
  if (fallback && !v8)
  {
    objc_msgSend_buffer__::(self->_drawCallContext, v9, 0, a4, &v13, &v12);
  }

  CFXBufferSliceMake();
  *&result.impl._offset = v11;
  result.impl._buffer = v10;
  return result;
}

- (BufferSlice)_buffer:(int)_buffer :(id)a4
{
  v4 = objc_msgSend__buffer::fallback_(self, a2, *&_buffer, a4, 0);
  *&result.impl._offset = v5;
  result.impl._buffer = v4;
  return result;
}

- (id)_texture:(int)_texture :(id)a4 fallback:(id)fallback fallbackScope:(int)scope
{
  v6 = *&scope;
  result = objc_msgSend_texture::(self->_drawCallContext, a2, *&_texture, a4);
  if (fallback && !result)
  {
    drawCallContext = self->_drawCallContext;

    return objc_msgSend_texture::(drawCallContext, v10, v6, fallback);
  }

  return result;
}

- (id).cxx_construct
{
  for (i = 0; i != 416; i += 32)
  {
    v3 = self + i;
    *(v3 + 6) = -1;
    *(v3 + 14) = 0;
    *(v3 + 4) = 0;
    *(v3 + 5) = 0;
  }

  v4 = 0;
  *(self + 38) = 0u;
  do
  {
    v5 = self + v4;
    *(v5 + 158) = -1;
    *(v5 + 318) = 0;
    *(v5 + 40) = 0uLL;
    v4 += 32;
  }

  while (v4 != 416);
  v6 = 0;
  *(self + 144) = 0u;
  do
  {
    v7 = self + v6;
    *(v7 + 584) = -1;
    *(v7 + 1170) = 0;
    *(self + v6 + 2344) = 0uLL;
    v6 += 32;
  }

  while (v6 != 416);
  *(self + 176) = 0u;
  *(self + 2904) = 0u;
  *(self + 2920) = 0u;
  *(self + 2936) = 0u;
  *(self + 2952) = 0u;
  *(self + 2968) = 0u;
  *(self + 2984) = 0u;
  *(self + 3000) = 0u;
  *(self + 3016) = 0u;
  *(self + 3032) = 0u;
  return self;
}

@end