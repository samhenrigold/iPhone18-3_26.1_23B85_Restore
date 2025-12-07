@interface VFXREWorldSimulation
- (BOOL)wantsCollisionPlanes;
- (VFXREWorldSimulation)initWithCommandQueue:(id)queue;
- (id).cxx_construct;
- (id)_sceneForCollisionPlanes;
- (id)recycleBuffersGetCompletion;
- (uint64_t)addCollisionPlaneWithExtents:(void *)extents transform:;
- (uint64_t)updateCollisionPlane:(float32x4_t)plane extents:(float32x4_t)extents transform:(int32x4_t)transform;
- (void)addSecondaryPointOfView:(id)view;
- (void)beginFrameWithEncoder:(id)encoder frameIndex:(unint64_t)index;
- (void)dealloc;
- (void)endFrame;
- (void)enumerateDrawCallsForNode:(id)node usingBlock:(id)block;
- (void)enumerateSecondaryPointOfViewsUsingBlock:(id)block;
- (void)removeCollisionPlane:(unint64_t)plane;
- (void)setWorld:(id)world;
- (void)updateCollisionPlane:(unint64_t)plane collideOutsideExtents:(BOOL)extents;
- (void)updateWithDeltaTime:(double)time;
@end

@implementation VFXREWorldSimulation

- (VFXREWorldSimulation)initWithCommandQueue:(id)queue
{
  v14[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VFXREWorldSimulation;
  v5 = [(VFXREWorldSimulation *)&v12 init];
  if (v5)
  {
    v13 = @"kVFXRendererInitOptionForRERendering";
    v14[0] = MEMORY[0x1E695E118];
    v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v14, &v13, 1);
    v8 = objc_msgSend_rendererWithCommandQueue_options_(VFXRenderer, v7, queue, v6);
    v5->_renderer = v8;
    objc_msgSend_setRendererKind_(v8, v9, 6);
    v10 = objc_alloc_init(VFXDrawCall);
    v5->_transientDrawCall = v10;
    v5->_transientPass = sub_1AF1D6224(v10);
    v5->_systemTime = 0.0;
    operator new();
  }

  return 0;
}

- (void)setWorld:(id)world
{
  objc_msgSend_flush(VFXTransaction, a2, world);
  objc_msgSend_setImmediateMode_(VFXTransaction, v5, 1);
  self->_world = world;
  worldCopy = world;
  v9 = objc_msgSend_rootNode(self->_world, v7, v8);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v12 = objc_msgSend_rootNode(self->_world, v10, v11);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1AF325410;
  v23[3] = &unk_1E7A7E710;
  v23[4] = &v24;
  objc_msgSend_enumerateChildNodesUsingBlock_(v12, v13, v23);
  if ((v25[3] & 1) == 0)
  {
    v16 = objc_msgSend_node(VFXNode, v14, v15);
    v19 = objc_msgSend_camera(VFXCamera, v17, v18);
    objc_msgSend_setCamera_(v16, v20, v19);
    objc_msgSend_addChildNode_(v9, v21, v16);
  }

  objc_msgSend_setWorld_(self->_renderer, v14, self->_world);
  objc_msgSend_setImmediateMode_(VFXTransaction, v22, 0);
  _Block_object_dispose(&v24, 8);
}

- (void)addSecondaryPointOfView:(id)view
{
  v5 = objc_msgSend_camera(view, a2, view);
  if (v5 && (objc_msgSend_usesOrthographicProjection(v5, v6, v7) & 1) == 0)
  {
    secondaryPovs = self->_secondaryPovs;

    objc_msgSend_addObject_(secondaryPovs, v8, view);
  }
}

- (void)enumerateSecondaryPointOfViewsUsingBlock:(id)block
{
  secondaryPovs = self->_secondaryPovs;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF325528;
  v4[3] = &unk_1E7A7F050;
  v4[4] = block;
  objc_msgSend_enumerateObjectsUsingBlock_(secondaryPovs, a2, v4);
}

- (void)dealloc
{
  transientPass = self->_transientPass;
  if (transientPass)
  {
    CFRelease(transientPass);
    self->_transientPass = 0;
  }

  v4.receiver = self;
  v4.super_class = VFXREWorldSimulation;
  [(VFXREWorldSimulation *)&v4 dealloc];
}

- (void)updateWithDeltaTime:(double)time
{
  objc_msgSend_flush(VFXTransaction, a2, v3);
  systemTime = self->_systemTime;
  if (systemTime == 0.0)
  {
    v9 = CACurrentMediaTime();
  }

  else
  {
    v9 = systemTime + time;
  }

  self->_systemTime = v9;
  renderer = self->_renderer;

  objc_msgSend_updateAtTime_(renderer, v6, v7);
}

- (void)enumerateDrawCallsForNode:(id)node usingBlock:(id)block
{
  v7 = objc_msgSend__engineContext(self->_renderer, a2, node, block, self->_transientDrawCall, self->_transientPass);
  v14[3] = sub_1AF12E2AC(v7, v8);
  v14[4] = objc_msgSend_worldRef(self->_world, v9, v10);
  v14[5] = objc_msgSend_nodeRef(node, v11, v12);
  objc_msgSend_enumerateDrawCallsUsingBlock_context_(node, v13, block, v14);
}

- (void)beginFrameWithEncoder:(id)encoder frameIndex:(unint64_t)index
{
  v4 = objc_msgSend__engineContext(self->_renderer, a2, encoder);
  v6 = sub_1AF12E2AC(v4, v5);
  objc_msgSend_frameConstantBufferPool(v6, v7, v8);
  operator new();
}

- (void)endFrame
{
  v3 = objc_msgSend__engineContext(self->_renderer, a2, v2);
  v5 = sub_1AF12E2AC(v3, v4);

  MEMORY[0x1EEE66B58](v5, sel_endExternalFrame, v6);
}

- (id)recycleBuffersGetCompletion
{
  v4 = objc_msgSend__engineContext(self->_renderer, a2, v2);
  v7 = sub_1AF130C80(v4, v5, v6);
  v10 = objc_msgSend_presentationScene(self->_world, v8, v9);

  return MEMORY[0x1EEE66B58](v10, sel_recycleBuffersGetCompletionWithRenderer_, v7);
}

- (id)_sceneForCollisionPlanes
{
  v3 = objc_msgSend_world(self, a2, v2);

  return objc_msgSend_presentationScene(v3, v4, v5);
}

- (uint64_t)addCollisionPlaneWithExtents:(void *)extents transform:
{
  v3 = objc_msgSend__sceneForCollisionPlanes(extents, v1, v2);

  return MEMORY[0x1EEE66B58](v3, sel_createCollisionPlane_transform_, v4);
}

- (uint64_t)updateCollisionPlane:(float32x4_t)plane extents:(float32x4_t)extents transform:(int32x4_t)transform
{
  v8 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(transform, transform), transform, 0xCuLL), vnegq_f32(extents)), transform, vextq_s8(vuzp1q_s32(extents, extents), extents, 0xCuLL));
  v9 = vmulq_f32(plane, vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL));
  v10 = (v9.f32[2] + vaddv_f32(*v9.f32)) < 0.0;
  v11 = 1.0;
  if (v10)
  {
    v11 = -1.0;
  }

  v12 = vmulq_f32(plane, plane);
  v13 = vmulq_f32(extents, extents);
  v14 = vadd_f32(vzip1_s32(*v12.i8, *v13.i8), vzip2_s32(*v12.i8, *v13.i8));
  v15 = vextq_s8(v12, v12, 8uLL);
  *v15.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v15.f32, *&vextq_s8(v13, v13, 8uLL)), v14));
  v16 = vmulq_f32(transform, transform);
  v15.i32[2] = sqrtf(v16.f32[2] + vaddv_f32(*v16.f32));
  v17 = vmulq_n_f32(v15, v11);
  v18 = vcltzq_f32(v17);
  v19 = vmvnq_s8(vorrq_s8(v18, vcgezq_f32(v17)));
  v19.i32[3] = v19.i32[2];
  v19.i32[0] = vmaxvq_u32(v19);
  v18.i32[0] = -1;
  v20 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v19, v18), 0), v17, 0);
  v21 = vceqzq_f32(v20);
  v21.i32[3] = v21.i32[2];
  if ((vmaxvq_u32(v21) & 0x80000000) != 0)
  {
    v22 = objc_msgSend__sceneForCollisionPlanes(self, a6, a7, 0, 0);
  }

  else
  {
    v22 = objc_msgSend__sceneForCollisionPlanes(self, a6, a7, *&v20);
  }

  return MEMORY[0x1EEE66B58](v22, sel_updateCollisionPlane_scale_orientation_position_, a7);
}

- (void)removeCollisionPlane:(unint64_t)plane
{
  v4 = objc_msgSend__sceneForCollisionPlanes(self, a2, plane);

  MEMORY[0x1EEE66B58](v4, sel_destroyCollisionPlane_, plane);
}

- (BOOL)wantsCollisionPlanes
{
  v3 = objc_msgSend_world(self, a2, v2);
  v6 = objc_msgSend_scene(v3, v4, v5);

  return MEMORY[0x1EEE66B58](v6, sel_wantsCollisionPlanes, v7);
}

- (void)updateCollisionPlane:(unint64_t)plane collideOutsideExtents:(BOOL)extents
{
  v5 = objc_msgSend__sceneForCollisionPlanes(self, a2, plane);

  MEMORY[0x1EEE66B58](v5, sel_updateCollisionPlane_collideOutsideExtents_, plane);
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

@end