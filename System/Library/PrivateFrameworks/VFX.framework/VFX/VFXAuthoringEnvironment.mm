@interface VFXAuthoringEnvironment
+ (id)authoringEnvironmentForWorldRenderer:(id)renderer createIfNeeded:(BOOL)needed;
+ (id)rendererForWorldRenderer:(id)renderer;
- (BOOL)didTapAtPoint:(CGPoint)point;
- (BOOL)selectionIsReadonly;
- (VFXNode)authoringOverlayLayer;
- (__n128)viewMatrix;
- (id)_initWithEngineContext:(__CFXEngineContext *)context;
- (id)authoringEnvironment2;
- (id)renderer;
- (void)_setupAuthoringEnv2:(id)env2;
- (void)beginEditingNodes:(id)nodes;
- (void)dealloc;
- (void)drawLineFromPoint:(VFXAuthoringEnvironment *)self toPoint:(SEL)point color:(id)color;
- (void)drawString:(id)string atPoint:(CGPoint)point color:(id)color;
- (void)saveInitialSelection;
- (void)setEditingSpace:(int64_t)space;
- (void)setSelectionIsReadonly:(BOOL)readonly;
- (void)setupAuthoringEnv2;
- (void)update;
- (void)worldDidChange:(id)change;
@end

@implementation VFXAuthoringEnvironment

- (id)_initWithEngineContext:(__CFXEngineContext *)context
{
  v5.receiver = self;
  v5.super_class = VFXAuthoringEnvironment;
  v3 = [(VFXAuthoringEnvironment *)&v5 init];
  if (v3)
  {
    LOBYTE(v3->_gridUnit) = 0;
    sub_1AF111FD8();
  }

  return 0;
}

+ (id)rendererForWorldRenderer:(id)renderer
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return renderer;
  }

  v4 = objc_opt_respondsToSelector();
  if ((v4 & 1) == 0)
  {
    v8 = sub_1AF0D5194(v4, v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDCF730();
    }

    return 0;
  }

  return objc_msgSend_renderer(renderer, v5, v6);
}

+ (id)authoringEnvironmentForWorldRenderer:(id)renderer createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v6 = objc_msgSend_rendererForWorldRenderer_(self, a2, renderer);
  v9 = objc_msgSend__engineContext(v6, v7, v8);
  v10 = sub_1AF12EE9C(v9, neededCopy);
  v11 = v10;
  if (v10)
  {
    *(v10 + 16) = renderer;
    objc_opt_class();
    v11[24] = objc_opt_isKindOfClass() & 1;
  }

  return v11;
}

- (id)renderer
{
  v3 = objc_opt_class();
  worldRenderer = self->_worldRenderer;

  return objc_msgSend_rendererForWorldRenderer_(v3, v4, worldRenderer);
}

- (__n128)viewMatrix
{
  v1 = *(self + 8);
  if (v1)
  {
    v2 = sub_1AF13050C(v1, 1);
  }

  else
  {
    v2 = &VFXMatrix4Identity;
  }

  return *v2;
}

- (BOOL)selectionIsReadonly
{
  v3 = objc_msgSend_manipulator(self[1].super.isa, a2, v2);

  return objc_msgSend_readonly(v3, v4, v5);
}

- (void)setSelectionIsReadonly:(BOOL)readonly
{
  readonlyCopy = readonly;
  v4 = objc_msgSend_manipulator(self[1].super.isa, a2, readonly);

  MEMORY[0x1EEE66B58](v4, sel_setReadonly_, readonlyCopy);
}

- (void)setEditingSpace:(int64_t)space
{
  if (self->_editingSpace != space)
  {
    self->_editingSpace = space;
    v4 = objc_msgSend_manipulator(self, a2, space);

    MEMORY[0x1EEE66B58](v4, sel_editingSpaceChanged, v5);
  }
}

- (void)_setupAuthoringEnv2:(id)env2
{
  if (!self[1].super.isa)
  {
    self[1].super.isa = objc_msgSend_authoringEnvironmentForWorld_createIfNeeded_(VFXAuthoringEnvironment2, a2, env2, 1);
  }
}

- (void)setupAuthoringEnv2
{
  if (!self[1].super.isa)
  {
    v3 = sub_1AF12DDCC(self->_engineContext, a2);
    v4 = sub_1AF16CDEC(v3);
    if (v4)
    {

      MEMORY[0x1EEE66B58](self, sel__setupAuthoringEnv2_, v4);
    }
  }
}

- (id)authoringEnvironment2
{
  result = self[1].super.isa;
  if (!result)
  {
    objc_msgSend_setupAuthoringEnv2(self, a2, v2);
    return self[1].super.isa;
  }

  return result;
}

- (void)update
{
  v2 = sub_1AF12E2AC(self->_engineContext, a2);
  if (v2)
  {

    objc_msgSend_showsAuthoringEnvironment(v2, v3, v4);
  }
}

- (void)worldDidChange:(id)change
{
  v5 = objc_msgSend_authoringEnvironment2(self, a2, change);
  v8 = objc_msgSend_manipulator(v5, v6, v7);
  objc_msgSend__setAuthoringEnvironment_(v8, v9, 0);

  self[1].super.isa = 0;

  MEMORY[0x1EEE66B58](self, sel__setupAuthoringEnv2_, change);
}

- (VFXNode)authoringOverlayLayer
{
  v3 = objc_msgSend_authoringEnvironment2(self, a2, v2);

  return objc_msgSend_authoringOverlayLayer(v3, v4, v5);
}

- (void)beginEditingNodes:(id)nodes
{
  v5 = &self->_timedRecordingBuffer[63664];
  v6 = objc_msgSend_count(self->_selectedNodes, a2, nodes);
  v9 = objc_msgSend_authoringEnvironment2(self, v7, v8);
  v12 = objc_msgSend_manipulator(v9, v10, v11);
  objc_msgSend__setAuthoringEnvironment_(v12, v13, self);
  objc_msgSend_selectNodes_(v5[177], v14, nodes);
  objc_sync_enter(self);
  v16 = sub_1AF12DDCC(self->_engineContext, v15);
  sub_1AF102C88(v5[52], v16, 0);

  v19 = objc_msgSend_copy(nodes, v17, v18);
  v5[52] = v19;
  sub_1AF102C88(v19, v16, 1);
  v20 = MEMORY[0x1E695DF70];
  v23 = objc_msgSend_count(nodes, v21, v22);
  v25 = objc_msgSend_arrayWithCapacity_(v20, v24, v23);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = sub_1AF102FA4;
  v36[3] = &unk_1E7A796D8;
  v36[4] = v25;
  objc_msgSend_enumerateObjectsUsingBlock_(nodes, v26, v36);

  v27 = objc_alloc(MEMORY[0x1E695DFA0]);
  v5[51] = objc_msgSend_initWithArray_(v27, v28, v25);
  objc_sync_exit(self);
  v32 = objc_msgSend_count(v5[51], v29, v30);
  if ((v6 == 0) == (v32 != 0))
  {
    v33 = sub_1AF12DDCC(self->_engineContext, v31);
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v33, 0, 1u);
  }

  if (v32)
  {
    objc_msgSend_setTargets_(v12, v31, v5[51]);
  }

  else
  {
    objc_msgSend_setTargets_(v12, v31, 0);
  }

  objc_msgSend__setNeedsDisplay(self->_worldRenderer, v34, v35);
}

- (void)saveInitialSelection
{
  v5 = objc_msgSend_selectedItems(self, v3, v4);
  v8 = objc_msgSend_set(v5, v6, v7);
  self->_selection = objc_msgSend_copy(v8, v9, v10);
}

- (BOOL)didTapAtPoint:(CGPoint)point
{
  v3 = &self->_timedRecordingBuffer[63664];
  if (!LOBYTE(self->_statisticsInfo.waitDisplayLinkTime))
  {
    goto LABEL_12;
  }

  y = point.y;
  x = point.x;
  v17 = 0;
  sub_1AF103B5C(0, &v17, 0, @"$1$", 0, &self->_boldTextInfo, 0, 0);
  v16 = *&v17;
  v7 = 3.0;
  if (v3[457] == 1)
  {
    v7 = ((self->_normalTextInfo.lineHeight * 7.0) + 14.0) + 3.0;
  }

  v8 = sub_1AF1305E8(self->_engineContext).n128_u64[0];
  v20.origin.y = (v7 + *(&v8 + 1));
  v20.size.height = v16;
  v20.origin.x = (*&v8 + 7.0);
  v20.size.width = v16;
  v21 = CGRectInset(v20, -10.0, -10.0);
  v9 = v21.origin.x;
  v10 = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  v18.x = x;
  v18.y = y;
  if (CGRectContainsPoint(v21, v18))
  {
    v13 = 0;
  }

  else
  {
    v22.origin.x = v9 + (v16 + 5.0);
    v22.origin.y = v10;
    v22.size.width = width;
    v22.size.height = height;
    v19.x = x;
    v19.y = y;
    v14 = CGRectContainsPoint(v22, v19);
    if (!v14)
    {
      return v14;
    }

    v13 = 1;
  }

  *(v3 + 59) = v13;
  if (!v3[456])
  {
LABEL_12:
    LOBYTE(v14) = 0;
    return v14;
  }

  if ((v13 & 1) == 0)
  {
    v3[457] ^= 1u;
  }

  *(v3 + 59) = -1;
  LOBYTE(v14) = 1;
  return v14;
}

- (void)drawLineFromPoint:(VFXAuthoringEnvironment *)self toPoint:(SEL)point color:(id)color
{
  v7 = v3;
  v8 = v4;
  v9[0] = sub_1AF371798(color, 0);
  v9[1] = v6;
  sub_1AF0FE080(self, 0, v9, 0, v7, v8);
}

- (void)drawString:(id)string atPoint:(CGPoint)point color:(id)color
{
  x = point.x;
  y = point.y;
  v11[0] = sub_1AF371798(color, 0);
  v11[1] = v7;
  v8.f64[0] = x;
  v8.f64[1] = y;
  sub_1AF100BB8(self, string, v11, COERCE_DOUBLE(vcvt_f32_f64(v8)));
}

- (void)dealloc
{
  v4 = &self->_timedRecordingBuffer[63664];
  v5 = objc_msgSend_authoringEnvironment2(self, a2, v2);
  v8 = objc_msgSend_manipulator(v5, v6, v7);
  objc_msgSend__setAuthoringEnvironment_(v8, v9, 0);
  sub_1AF1C4640(self->_depthOnCullOnStates);
  sub_1AF1C4640(self->_depthOnCullOffStates);
  sub_1AF1C4640(self->_depthOffCullOnStates);
  sub_1AF1C4640(self->_depthOffCullOffStates);

  sub_1AF103614(self, &self->_logsInfo);
  sub_1AF103614(self, &self->_dynamicLinesInfo);
  sub_1AF103614(self, &self->_dynamicLinesNoDepthTestInfo);
  sub_1AF103614(self, &self->_overlayDynamicLinesInfo);
  sub_1AF103614(self, &self->_overlayDynamicTriangleInfo);
  sub_1AF103614(self, &self->_dynamicTrianglesInfo);
  sub_1AF103614(self, &self->_lightProbesInfo);
  sub_1AF103614(self, &self->_textInfo);
  sub_1AF103614(self, &self->_boldLogsInfo);
  texture = self->_normalTextInfo.textureInfo.texture;
  if (texture)
  {
    CFRelease(texture);
    self->_normalTextInfo.textureInfo.texture = 0;
  }

  symbolRects = self->_normalTextInfo.symbolRects;
  if (symbolRects)
  {
    free(symbolRects);
  }

  characterWidth_typography = self->_normalTextInfo.characterWidth_typography;
  if (characterWidth_typography)
  {
    free(characterWidth_typography);
  }

  v13 = self->_boldTextInfo.textureInfo.texture;
  if (v13)
  {
    CFRelease(v13);
    self->_boldTextInfo.textureInfo.texture = 0;
  }

  v14 = self->_boldTextInfo.symbolRects;
  if (v14)
  {
    free(v14);
  }

  v15 = self->_boldTextInfo.characterWidth_typography;
  if (v15)
  {
    free(v15);
  }

  noColorProgram = self->_noColorProgram;
  if (noColorProgram)
  {
    CFRelease(noColorProgram);
    self->_noColorProgram = 0;
  }

  colorOnlyProgram = self->_colorOnlyProgram;
  if (colorOnlyProgram)
  {
    CFRelease(colorOnlyProgram);
    self->_colorOnlyProgram = 0;
  }

  colorAndTextureProgram = self->_colorAndTextureProgram;
  if (colorAndTextureProgram)
  {
    CFRelease(colorAndTextureProgram);
    self->_colorAndTextureProgram = 0;
  }

  lightProbesProgram = self->_lightProbesProgram;
  if (lightProbesProgram)
  {
    CFRelease(lightProbesProgram);
    self->_lightProbesProgram = 0;
  }

  wireframeProgram = self->_wireframeProgram;
  if (wireframeProgram)
  {
    CFRelease(wireframeProgram);
    self->_wireframeProgram = 0;
  }

  drawInstancedQuadProgram = self->_drawInstancedQuadProgram;
  if (drawInstancedQuadProgram)
  {
    CFRelease(drawInstancedQuadProgram);
    self->_drawInstancedQuadProgram = 0;
  }

  drawInstancedCubeProgram = self->_drawInstancedCubeProgram;
  if (drawInstancedCubeProgram)
  {
    CFRelease(drawInstancedCubeProgram);
    self->_drawInstancedCubeProgram = 0;
  }

  v23 = *(v4 + 62);
  if (v23)
  {
    CFRelease(v23);
    *(v4 + 62) = 0;
  }

  v24 = *(v4 + 61);
  if (v24)
  {
    CFRelease(v24);
    *(v4 + 61) = 0;
  }

  v25 = *(v4 + 60);
  if (v25)
  {
    CFRelease(v25);
    *(v4 + 60) = 0;
  }

  sub_1AF112018(*(v4 + 55));

  v26.receiver = self;
  v26.super_class = VFXAuthoringEnvironment;
  [(VFXAuthoringEnvironment *)&v26 dealloc];
}

@end