@interface VFXCameraNavigationController
- (BOOL)_computeBoundingSphereOmittingFloorsForNode:(__CFXNode *)node sphere:(CFXSphere *)sphere;
- (BOOL)_freeCameraActivated;
- (BOOL)_pointOfViewUsesOrthographicProjection;
- (BOOL)enableInertia;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)wantsRedraw;
- (VFXCameraNavigationController)initWithView:(id)view;
- (__n128)_worldBoundingSphere;
- (double)_defaultTargetForWorld:(void *)world;
- (float)_cappedTranslationDelta:(float)delta;
- (float)_modeSensitivity;
- (float)_orthographicZoomFactorForProposedZoomFactor:(float)factor;
- (float)_pointOfViewOrthographicScale;
- (float)_targetDistance;
- (float)_translationCoef;
- (float)friction;
- (float)zoomFactor;
- (id).cxx_construct;
- (id)gestureRecognizers;
- (id)pointOfView;
- (uint64_t)cameraAutomaticTargetPoint;
- (uint64_t)cameraTarget;
- (uint64_t)worldFront;
- (unint64_t)_effectiveStickyAxis;
- (void)__didChangePointOfView;
- (void)__willChangePointOfView;
- (void)_computeAutomaticTargetPointIfNeeded;
- (void)_computeStickyAxisIfNeeded:(CGPoint)needed;
- (void)_computeTranslationOrigin3DFromPoint:(CGPoint)point;
- (void)_handleDoubleTap:(id)tap;
- (void)_handlePan:(id)pan;
- (void)_handlePinch:(id)pinch;
- (void)_handleRotation:(id)rotation;
- (void)_installFreeViewCameraIfNeeded;
- (void)_prepareFreeViewCamera;
- (void)_resetFreeViewCamera;
- (void)_setPointOfViewOrthographicScale:(float)scale;
- (void)_setupUpVector;
- (void)_startBrowsingIfNeeded:(CGPoint)needed;
- (void)_stopInertia;
- (void)_switchToFreeViewCamera;
- (void)_translateToViewPoint:(CGPoint)point;
- (void)_willBeginInteraction;
- (void)beginGesture:(id)gesture;
- (void)cameraDidChange;
- (void)cameraRotationWillStartForController:(id)controller;
- (void)dealloc;
- (void)focusNode:(id)node;
- (void)focusNodes:(id)nodes;
- (void)panWithGestureRecognizer:(id)recognizer;
- (void)pinchWithGestureRecognizer:(id)recognizer;
- (void)rotateOf:(float)of;
- (void)rotateWithGestureRecognizer:(id)recognizer;
- (void)setAutomaticCameraTarget:(BOOL)target;
- (void)setCameraTarget:(VFXCameraNavigationController *)self;
- (void)setEnableFreeCamera:(BOOL)camera;
- (void)setEnableInertia:(BOOL)inertia;
- (void)setEnabled:(BOOL)enabled;
- (void)setFriction:(float)friction;
- (void)setGimbalLockMode:(BOOL)mode;
- (void)setZoomFactor:(float)factor;
- (void)translateByX:(float)x Y:(float)y Z:(float)z;
- (void)viewWillDrawAtTime:(double)time;
- (void)worldDidChange;
- (void)worldWillChange;
- (void)zoomBy:(float)by animate:(BOOL)animate;
@end

@implementation VFXCameraNavigationController

- (VFXCameraNavigationController)initWithView:(id)view
{
  v19.receiver = self;
  v19.super_class = VFXCameraNavigationController;
  v4 = [(VFXCameraNavigationController *)&v19 init];
  v5 = v4;
  if (v4)
  {
    v4->_view = view;
    v4->_cameraController = objc_alloc_init(VFXCameraController);
    v8 = objc_msgSend_pointOfView(view, v6, v7);
    objc_msgSend_setPointOfView_(*(v5 + 480), v9, v8);
    objc_msgSend_setInertiaEnabled_(*(v5 + 480), v10, 1);
    objc_msgSend_setInteractionMode_(*(v5 + 480), v11, 1);
    objc_msgSend_setDrivenByDefaultNavigationCameraController_(*(v5 + 480), v12, 1);
    objc_msgSend_setDelegate_(*(v5 + 480), v13, v5);
    *(v5 + 336) = 0;
    *(v5 + 252) = 0;
    *(v5 + 84) = 1065353216;
    *(v5 + 474) = 1;
    *(v5 + 89) = 1;
    *(v5 + 289) = 0;
    *(v5 + 93) = 257;
    *(v5 + 184) = xmmword_1AFE47D60;
    objc_msgSend_worldDidChange(v5, v14, v15);
    objc_msgSend_cameraDidChange(v5, v16, v17);
  }

  return v5;
}

- (void)dealloc
{
  objc_msgSend_setDelegate_(self->_cameraController, a2, 0);

  v3.receiver = self;
  v3.super_class = VFXCameraNavigationController;
  [(VFXCameraNavigationController *)&v3 dealloc];
}

- (void)setEnabled:(BOOL)enabled
{
  v16 = *MEMORY[0x1E69E9840];
  self->_enabled = enabled;
  v4 = objc_msgSend_gestureRecognizers(self, a2, enabled);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v11, v15, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_setEnabled_(*(*(&v11 + 1) + 8 * v10++), v7, self->_enabled);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v11, v15, 16);
    }

    while (v8);
  }
}

- (BOOL)enableInertia
{
  v3 = objc_msgSend_cameraController(self, a2, v2);

  return MEMORY[0x1EEE66B58](v3, sel_inertiaEnabled, v4);
}

- (void)setEnableInertia:(BOOL)inertia
{
  inertiaCopy = inertia;
  v4 = objc_msgSend_cameraController(self, a2, inertia);

  objc_msgSend_setInertiaEnabled_(v4, v5, inertiaCopy);
}

- (float)friction
{
  v3 = objc_msgSend_cameraController(self, a2, v2);

  MEMORY[0x1EEE66B58](v3, sel_inertiaFriction, v4);
  return result;
}

- (void)setFriction:(float)friction
{
  v4 = objc_msgSend_cameraController(self, a2, v3);

  MEMORY[0x1EEE66B58](v4, sel_setInertiaFriction_, v5);
}

- (void)setAutomaticCameraTarget:(BOOL)target
{
  if (self->_target.hasAutomatic != target)
  {
    self->_target.hasAutomatic = target;
    objc_msgSend_invalidateCameraTarget(self, a2, target);
  }
}

- (uint64_t)cameraTarget
{
  objc_msgSend__computeAutomaticTargetPointIfNeeded(self, a2, a3);
  v6 = objc_msgSend_cameraController(self, v4, v5);

  return objc_msgSend_target(v6, v7, v8);
}

- (void)setCameraTarget:(VFXCameraNavigationController *)self
{
  v9 = v2;
  objc_msgSend_setAutomaticCameraTarget_(self, a2, 0);
  v6 = objc_msgSend_cameraController(self, v4, v5);

  objc_msgSend_setTarget_(v6, v7, v8, v9);
}

- (void)setGimbalLockMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 1;
  }

  else
  {
    v3 = 3;
  }

  v4 = objc_msgSend_cameraController(self, a2, mode);

  objc_msgSend_setInteractionMode_(v4, v5, v3);
}

- (BOOL)wantsRedraw
{
  v4 = objc_msgSend_cameraController(self, a2, v2);
  if (objc_msgSend_isInertiaRunning(v4, v5, v6))
  {
    return 1;
  }

  os_unfair_lock_lock(&self->_keyboard.lock);
  size = self->_keyboard.keyDown.__tree_.__size_;
  os_unfair_lock_unlock(&self->_keyboard.lock);
  v11 = objc_msgSend_cameraController(self, v9, v10);
  if (objc_msgSend_interactionMode(v11, v12, v13))
  {
    v14 = 1;
  }

  else
  {
    v14 = size == 0;
  }

  return !v14;
}

- (void)focusNode:(id)node
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = node;
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v6, 1);
  objc_msgSend_focusNodes_(self, v5, v4);
}

- (void)focusNodes:(id)nodes
{
  if (nodes)
  {
    self->_didEverFocusNode = 1;
    objc_msgSend_setAutomaticCameraTarget_(self, a2, 0);
    objc_msgSend__switchToFreeViewCamera(self, v5, v6);
    v9 = objc_msgSend_cameraController(self, v7, v8);
    v12 = objc_msgSend_automaticTarget(v9, v10, v11);
    v15 = objc_msgSend_cameraController(self, v13, v14);
    objc_msgSend_setAutomaticTarget_(v15, v16, 1);
    v19 = objc_msgSend_cameraController(self, v17, v18);
    objc_msgSend_frameNodes_(v19, v20, nodes);
    v23 = objc_msgSend_cameraController(self, v21, v22);
    objc_msgSend_setAutomaticTarget_(v23, v24, v12);
    if (objc_msgSend__pointOfViewUsesOrthographicProjection(self, v25, v26))
    {
      originalOrthoScale = self->_originalOrthoScale;
      objc_msgSend__pointOfViewOrthographicScale(self, v27, v28);
      *&v32 = originalOrthoScale / *&v32;

      objc_msgSend_setZoomFactor_(self, v30, v31, v32);
    }
  }
}

- (unint64_t)_effectiveStickyAxis
{
  v2 = *&self->_anon_101[23];
  if (!v2)
  {
    v3 = 280;
    if (self->_stickyAxis.stickyMoveEnabled)
    {
      v3 = 272;
    }

    return *(&self->super.isa + v3);
  }

  return v2;
}

- (void)setEnableFreeCamera:(BOOL)camera
{
  self->_enableFreeCamera = camera;
  if (!camera)
  {
    MEMORY[0x1EEE66B58](self, sel__resetFreeViewCamera, camera);
  }
}

- (void)_resetFreeViewCamera
{
  v4 = objc_msgSend_worldRef(self->_freeViewCameraNode, a2, v2);
  if (v4)
  {
    v7 = v4;
    sub_1AF1CEA20(v4, v5);
    v10 = objc_msgSend_nodeRef(self->_freeViewCameraNode, v8, v9);
    v13 = objc_msgSend_worldRef(self->_freeViewCameraNode, v11, v12);
    sub_1AF1C3A90(v10, v13);
    sub_1AF1CEA9C(v7, v14);
  }

  objc_msgSend_removeFromParentNode(self->_freeViewCameraNode, v5, v6);

  self->_freeViewCameraNode = 0;
}

- (BOOL)_freeCameraActivated
{
  freeViewCameraNode = self->_freeViewCameraNode;
  if (!freeViewCameraNode)
  {
    return 0;
  }

  v4 = objc_msgSend_view(self, a2, v2);
  v7 = objc_msgSend_renderer(v4, v5, v6);
  return freeViewCameraNode == objc_msgSend_pointOfView(v7, v8, v9);
}

- (void)_prepareFreeViewCamera
{
  v4 = objc_msgSend_view(self, a2, v2);
  v7 = objc_msgSend_renderer(v4, v5, v6);
  v10 = objc_msgSend_pointOfView(v7, v8, v9);
  v13 = v10;
  if (v10 && v10 == self->_freeViewCameraNode)
  {
    return;
  }

  v14 = objc_msgSend_presentationNode(v10, v11, v12);
  if (objc_msgSend_camera(v14, v15, v16))
  {
    v19 = objc_msgSend_camera(v14, v17, v18);
  }

  else
  {
    v19 = objc_msgSend_light(v14, v17, v18);
  }

  objc_msgSend_orthographicScale(v19, v20, v21);
  self->_originalOrthoScale = v24;
  self->_orthographicZoomFactor = 1.0;
  freeViewCameraNode = self->_freeViewCameraNode;
  if (!v13)
  {
    if (freeViewCameraNode)
    {
      goto LABEL_13;
    }

    v26 = objc_msgSend_node(VFXNode, v22, v23);
    goto LABEL_12;
  }

  if (v13 == freeViewCameraNode)
  {
LABEL_17:
    v46 = objc_msgSend_presentationNode(v13, v22, v23);
    objc_msgSend_worldTransform(v46, v47, v48);
    goto LABEL_22;
  }

  if (!freeViewCameraNode)
  {
    v26 = objc_msgSend_copy(v13, v22, v23);
LABEL_12:
    self->_freeViewCameraNode = v26;
  }

LABEL_13:
  if (objc_msgSend_camera(v13, v22, v23))
  {
    v29 = objc_msgSend_camera(v13, v27, v28);
    v32 = objc_msgSend_copy(v29, v30, v31);
LABEL_15:
    v34 = v32;
    goto LABEL_16;
  }

  if (!objc_msgSend_light(v13, v27, v28))
  {
    v32 = objc_msgSend_camera(VFXCamera, v53, v54);
    goto LABEL_15;
  }

  v55 = objc_msgSend_light(v13, v53, v54);
  v34 = objc_msgSend_camera(VFXCamera, v56, v57);
  if (v55)
  {
    objc_msgSend_spotOuterAngle(v55, v33, v58);
    objc_msgSend_setFieldOfView_(v34, v59, v60);
    objc_msgSend_zNear(v55, v61, v62);
    objc_msgSend_setZNear_(v34, v63, v64);
    objc_msgSend_zFar(v55, v65, v66);
    objc_msgSend_setZFar_(v34, v67, v68);
  }

LABEL_16:
  objc_msgSend_setCamera_(self->_freeViewCameraNode, v33, v34);
  objc_msgSend_setLight_(self->_freeViewCameraNode, v35, 0);
  objc_msgSend_setModel_(self->_freeViewCameraNode, v36, 0);
  objc_msgSend_setConstraints_(self->_freeViewCameraNode, v37, 0);
  v40 = objc_msgSend_immediateMode(VFXTransaction, v38, v39);
  objc_msgSend_setImmediateMode_(VFXTransaction, v41, 1);
  objc_msgSend_removeAllAnimations(self->_freeViewCameraNode, v42, v43);
  objc_msgSend_setConstraints_(self->_freeViewCameraNode, v44, 0);
  objc_msgSend_setImmediateMode_(VFXTransaction, v45, v40);
  if (v13)
  {
    goto LABEL_17;
  }

  v49 = VFXMatrix4Identity;
  v50 = qword_1AFE48510;
  v51 = xmmword_1AFE48520;
  v52 = 0.0;
LABEL_22:
  v69 = vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL);
  v70 = vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL);
  v71 = vmulq_f32(v49, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v51, v51, 0xCuLL), v51, 8uLL), vnegq_f32(v70)), v69, vextq_s8(vextq_s8(v50, v50, 0xCuLL), v50, 8uLL)));
  if (fabs((v71.f32[2] + vaddv_f32(*v71.f32)) + -1.0) > 0.00001)
  {
    v72 = vnegq_f32(v50);
    v73 = vmlaq_f32(vmulq_f32(v69, v72), v51, v70);
    v74 = vmulq_f32(v49, vextq_s8(vuzp1q_s32(v73, v73), v73, 0xCuLL));
    v106 = (v74.f32[2] + vaddv_f32(*v74.f32)) < 0.0;
    v75 = 1.0;
    if (v106)
    {
      v75 = -1.0;
    }

    v76 = vmulq_f32(v49, v49);
    v77 = vmulq_f32(v50, v50);
    *v72.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v76, v76, 8uLL), *&vextq_s8(v77, v77, 8uLL)), vadd_f32(vzip1_s32(*v76.i8, *v77.f32), vzip2_s32(*v76.i8, *v77.f32))));
    v78 = vmulq_f32(v51, v51);
    v79 = sqrtf(*&v78.i32[2] + vaddv_f32(*v78.i8));
    v80 = vzip2q_s32(v76, v78);
    v81 = vzip1q_s32(vzip1q_s32(v76, v78), v77);
    v82 = vtrn2q_s32(v76, v77);
    v82.i32[2] = v78.i32[1];
    v83 = vaddq_f32(vzip1q_s32(v80, vdupq_laneq_s32(v77, 2)), vaddq_f32(v81, v82));
    v77.i64[0] = 0x80000000800000;
    v77.i64[1] = 0x80000000800000;
    v84 = vcgeq_f32(v77, v83);
    v83.i32[3] = 0;
    v85 = vrsqrteq_f32(v83);
    v86 = vmulq_f32(v85, vrsqrtsq_f32(v83, vmulq_f32(v85, v85)));
    v87 = v84;
    v87.i32[3] = 0;
    v88 = vbslq_s8(vcltzq_s32(v87), v83, vmulq_f32(v86, vrsqrtsq_f32(v83, vmulq_f32(v86, v86))));
    v89 = vmulq_n_f32(v49, v88.f32[0]);
    v90 = vmulq_lane_f32(v50, *v88.f32, 1);
    v91 = vmulq_laneq_f32(v51, v88, 2);
    v92 = vuzp1q_s32(v91, v91);
    v93 = vuzp1q_s32(v90, v90);
    v94 = v89;
    if (v84.i32[0])
    {
      v95 = vmlaq_f32(vmulq_f32(vextq_s8(v92, v91, 0xCuLL), vnegq_f32(v90)), v91, vextq_s8(v93, v90, 0xCuLL));
      v94 = vextq_s8(vuzp1q_s32(v95, v95), v95, 0xCuLL);
    }

    v96 = vuzp1q_s32(v89, v89);
    v97 = v90;
    if (v84.i32[1])
    {
      v98 = vmlaq_f32(vmulq_f32(vextq_s8(v96, v89, 0xCuLL), vnegq_f32(v91)), v89, vextq_s8(v92, v91, 0xCuLL));
      v97 = vextq_s8(vuzp1q_s32(v98, v98), v98, 0xCuLL);
    }

    v72.f32[2] = v79;
    if (v84.i32[2])
    {
      v99 = vmlaq_f32(vmulq_f32(vextq_s8(v93, v90, 0xCuLL), vnegq_f32(v89)), v90, vextq_s8(v96, v89, 0xCuLL));
      v91 = vextq_s8(vuzp1q_s32(v99, v99), v99, 0xCuLL);
    }

    v100 = vmulq_n_f32(v72, v75);
    v101 = (*v94.i32 + *&v97.i32[1]) + v91.f32[2];
    if (v101 > 0.0)
    {
      v102 = sqrtf(v101 + 1.0);
      *v103.f32 = vsub_f32(*&vzip2q_s32(v97, vuzp1q_s32(v97, v91)), *&vtrn2q_s32(v91, vzip2q_s32(v91, v94)));
      v103.f32[2] = *&v94.i32[1] - *v97.i32;
      v103.f32[3] = v102 * v102;
      v104 = 0.5 / v102;
LABEL_33:
      v105 = vmulq_n_f32(v103, v104);
LABEL_42:
      v113 = vmulq_f32(v105, v105);
      *v113.i8 = vadd_f32(*v113.i8, *&vextq_s8(v113, v113, 8uLL));
      v114 = vdupq_lane_s32(vadd_f32(*v113.i8, vdup_lane_s32(*v113.i8, 1)), 0);
      v115 = vrsqrteq_f32(v114);
      v116 = vmulq_f32(v115, vrsqrtsq_f32(v114, vmulq_f32(v115, v115)));
      v50 = vbslq_s8(vceqzq_f32(v114), v105, vmulq_f32(v105, vmulq_f32(v116, vrsqrtsq_f32(v114, vmulq_f32(v116, v116)))));
      v117 = vabsq_f32(v100);
      v117.i32[3] = 0;
      v116.i64[0] = 0x8000000080000000;
      v116.i64[1] = 0x8000000080000000;
      v49 = vorrq_s8(vandq_s8(v100, v116), vabsq_f32(vmaxnmq_f32(v117, xmmword_1AFE20A30)));
      v51 = vmulq_f32(v50, v50);
      v118 = vmulq_laneq_f32(v50, v50, 3);
      v119 = vmuls_lane_f32(v50.f32[0], *v50.f32, 1);
      v120 = vmuls_lane_f32(v50.f32[1], v50, 2);
      v121 = vmuls_lane_f32(v50.f32[0], v50, 2);
      v122 = vaddq_f32(v49, v49);
      v123.i32[3] = 0;
      v123.f32[0] = (0.5 - v51.f32[1]) - v51.f32[2];
      v123.f32[1] = v119 + v118.f32[2];
      v123.f32[2] = v121 - v118.f32[1];
      v124.i32[3] = 0;
      v51.f32[0] = 0.5 - v51.f32[0];
      v125.i32[3] = 0;
      v125.f32[0] = v119 - v118.f32[2];
      v125.f32[1] = v51.f32[0] - v51.f32[2];
      v125.f32[2] = v120 + v118.f32[0];
      v49.i64[0] = vmulq_n_f32(v123, v122.f32[0]).u64[0];
      v50.i64[0] = vmulq_lane_f32(v125, *v122.f32, 1).u64[0];
      v124.f32[0] = v121 + v118.f32[1];
      v124.f32[1] = v120 - v118.f32[0];
      v124.f32[2] = v51.f32[0] - v51.f32[1];
      v51.i64[0] = vmulq_laneq_f32(v124, v122, 2).u64[0];
      goto LABEL_43;
    }

    v106 = *v94.i32 < *&v97.i32[1] || *v94.i32 < v91.f32[2];
    if (v106)
    {
      if (*&v97.i32[1] <= v91.f32[2])
      {
        v159 = vzip2q_s32(v94, v97).u64[0];
        v160 = __PAIR64__(v94.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v91.f32[2] + 1.0) - *v94.i32) - *&v97.i32[1])));
        v161 = vdup_lane_s32(*v97.i8, 0);
        v162 = vsub_f32(*v94.i8, v161);
        v161.i32[0] = v160.i32[0];
        v161.i32[0] = vmul_f32(v160, v161).u32[0];
        v161.i32[1] = v162.i32[1];
        *v103.f32 = vadd_f32(v159, *v91.f32);
        *&v103.u32[2] = v161;
        v104 = 0.5 / v160.f32[0];
        goto LABEL_33;
      }

      v108 = sqrtf(((*&v97.i32[1] + 1.0) - *v94.i32) - v91.f32[2]);
      v112.f32[0] = *&v94.i32[1] + *v97.i32;
      v107 = vzip2q_s32(v94, v97).u64[0];
      v112.f32[1] = v108 * v108;
      *&v112.u32[2] = vext_s8(vadd_f32(*v91.f32, v107), vsub_f32(*v91.f32, v107), 4uLL);
    }

    else
    {
      v108 = sqrtf(((*v94.i32 + 1.0) - *&v97.i32[1]) - v91.f32[2]);
      v112.f32[0] = v108 * v108;
      v109 = *&v94.i32[1] + *v97.i32;
      v110 = vzip2q_s32(v94, v97).u64[0];
      LODWORD(v111) = vadd_f32(v110, *v91.f32).u32[0];
      HIDWORD(v111) = vsub_f32(v110, *&v91).i32[1];
      v112.f32[1] = v109;
      v112.i64[1] = v111;
    }

    v105 = vmulq_n_f32(v112, 0.5 / v108);
    goto LABEL_42;
  }

LABEL_43:
  objc_msgSend_setTransform_(self->_freeViewCameraNode, v22, v23, *v49.i64, *v50.i64, *v51.i64, v52);
  objc_msgSend_setName_(self->_freeViewCameraNode, v126, @"kVFXFreeViewCameraName");
  v128 = objc_msgSend_stringByAppendingString_(@"kVFXFreeViewCameraName", v127, @"Camera");
  v131 = objc_msgSend_camera(self->_freeViewCameraNode, v129, v130);
  objc_msgSend_setName_(v131, v132, v128);
  v135 = objc_msgSend_view(self, v133, v134);
  if (objc_msgSend__showsAuthoringEnvironment(v135, v136, v137))
  {
    v140 = objc_msgSend_camera(self->_freeViewCameraNode, v138, v139);
    objc_msgSend_setAutomaticallyAdjustsZRange_(v140, v141, 1);
  }

  v142 = objc_msgSend_view(self, v138, v139);
  v145 = objc_msgSend_world(v142, v143, v144);
  v148 = objc_msgSend_worldRef(v145, v146, v147);
  if (v148)
  {
    v151 = v148;
    v152 = objc_msgSend_nodeRef(self->_freeViewCameraNode, v149, v150);
    if (!sub_1AF1C3F64(v152, v153))
    {
      sub_1AF1CEA20(v151, v154);
      v157 = objc_msgSend_nodeRef(self->_freeViewCameraNode, v155, v156);
      sub_1AF1C3CB4(v157, v151);

      sub_1AF1CEA9C(v151, v158);
    }
  }
}

- (void)_installFreeViewCameraIfNeeded
{
  if (objc_msgSend_enableFreeCamera(self, a2, v2))
  {
    v6 = objc_msgSend_view(self, v4, v5);
    v9 = objc_msgSend_renderer(v6, v7, v8);
    if (objc_msgSend_pointOfView(v9, v10, v11) != self->_freeViewCameraNode)
    {
      objc_msgSend_begin(VFXTransaction, v12, v13);
      objc_msgSend_setAnimationDuration_(VFXTransaction, v14, v15, 0.0);
      objc_msgSend_setPointOfView_(v9, v16, self->_freeViewCameraNode);
      freeViewCameraNode = self->_freeViewCameraNode;
      v20 = objc_msgSend_cameraController(self, v18, v19);
      objc_msgSend_setPointOfView_(v20, v21, freeViewCameraNode);

      objc_msgSend_commit(VFXTransaction, v22, v23);
    }
  }
}

- (void)_switchToFreeViewCamera
{
  if (objc_msgSend_enableFreeCamera(self, a2, v2))
  {
    if ((objc_msgSend__freeCameraActivated(self, v4, v5) & 1) == 0)
    {
      objc_msgSend_begin(VFXTransaction, v6, v7);
      objc_msgSend_setAnimationDuration_(VFXTransaction, v19, v20, 0.0);
      objc_msgSend__prepareFreeViewCamera(self, v21, v22);
      objc_msgSend__installFreeViewCameraIfNeeded(self, v23, v24);

      objc_msgSend_commit(VFXTransaction, v25, v26);
    }
  }

  else
  {
    v8 = objc_msgSend_view(self, v4, v5);
    v11 = objc_msgSend_renderer(v8, v9, v10);
    v14 = objc_msgSend_pointOfView(v11, v12, v13);
    v17 = objc_msgSend_cameraController(self, v15, v16);

    objc_msgSend_setPointOfView_(v17, v18, v14);
  }
}

- (float)_cappedTranslationDelta:(float)delta
{
  objc_msgSend__targetDistance(self, a2, v3);
  if (v8 >= 10000000.0)
  {
    v9 = objc_msgSend_cameraController(self, v6, v7);
    objc_msgSend_simdTarget(v9, v10, v11);
    v37 = v12;
    v15 = objc_msgSend_pointOfView(self, v13, v14);
    v18 = objc_msgSend_presentationNode(v15, v16, v17);
    objc_msgSend_worldPosition(v18, v19, v20);
    v38 = vsubq_f32(v37, v21);
    v24 = objc_msgSend_cameraController(self, v22, v23);
    v27 = objc_msgSend_pointOfView(v24, v25, v26);
    objc_msgSend_worldFront(v27, v28, v29);
    v31 = vmulq_f32(v38, v30);
    v32 = v31.f32[2] + vaddv_f32(*v31.f32);
    if (v32 >= 0.0 && delta < 0.0)
    {
      deltaCopy = 0.0;
    }

    else
    {
      deltaCopy = delta;
    }

    if (deltaCopy > 0.0 && v32 < 0.0)
    {
      return 0.0;
    }

    else
    {
      return deltaCopy;
    }
  }

  return delta;
}

- (float)_translationCoef
{
  objc_msgSend__targetDistance(self, a2, v2);
  v4 = v3;
  if (v4 > 10000000.0)
  {
    v4 = 10000000.0;
  }

  return fmax(v4, 0.1) * 0.00999999978;
}

- (float)_targetDistance
{
  v4 = objc_msgSend_cameraController(self, a2, v2);
  objc_msgSend_simdTarget(v4, v5, v6);
  v17 = v7;
  v10 = objc_msgSend_pointOfView(self, v8, v9);
  objc_msgSend_worldPosition(v10, v11, v12);
  v14 = vsubq_f32(v13, v17);
  v15 = vmulq_f32(v14, v14);
  result = sqrtf(v15.f32[2] + vaddv_f32(*v15.f32));
  if (result <= 0.1)
  {
    return 0.1;
  }

  return result;
}

- (void)rotateOf:(float)of
{
  objc_msgSend_begin(VFXTransaction, a2, v3);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v6, v7, 0.0);
  if (self->_autoSwitchToFreeCamera || !objc_msgSend_pointOfView(self, v8, v9))
  {
    objc_msgSend__switchToFreeViewCamera(self, v8, v9);
  }

  v10 = objc_msgSend_view(self, v8, v9);
  objc_msgSend_bounds(v10, v11, v12);
  v14 = v13;
  v16 = v15;
  v17 = v13 * 0.5;
  v18 = v15 * 0.5;
  v21 = objc_msgSend_cameraController(self, v19, v20);
  *&v22 = of;
  objc_msgSend_rollBy_aroundScreenPoint_viewport_(v21, v23, v24, v22, v17, v18, v14, v16);

  objc_msgSend_commit(VFXTransaction, v25, v26);
}

- (void)zoomBy:(float)by animate:(BOOL)animate
{
  animateCopy = animate;
  if (objc_msgSend_pointOfView(self, a2, animate))
  {
    if (animateCopy)
    {
      objc_msgSend_begin(VFXTransaction, v7, v8);
      objc_msgSend_setAnimationDuration_(VFXTransaction, v9, v10, 0.3);
      v13 = objc_msgSend_cameraController(self, v11, v12);
      *&v14 = by * -100.0;
      objc_msgSend_translateInCameraSpaceByX_Y_Z_(v13, v15, v16, 0.0, 0.0, v14);

      objc_msgSend_commit(VFXTransaction, v17, v18);
    }

    else
    {
      v19 = objc_msgSend_cameraController(self, v7, v8);

      *&v22 = by * -100.0;
      objc_msgSend_translateInCameraSpaceByX_Y_Z_(v19, v20, v21, 0.0, 0.0, v22);
    }
  }
}

- (float)zoomFactor
{
  v4 = objc_msgSend__pointOfViewUsesOrthographicProjection(self, a2, v2);
  v5 = 76;
  if (v4)
  {
    v5 = 84;
  }

  return *(&self->super.isa + v5);
}

- (id)pointOfView
{
  v3 = objc_msgSend_cameraController(self, a2, v2);

  return objc_msgSend_pointOfView(v3, v4, v5);
}

- (float)_orthographicZoomFactorForProposedZoomFactor:(float)factor
{
  objc_msgSend__orthographicScaleForZoomFactor_(self, a2, v3);
  v7 = v6;
  objc_msgSend__worldBoundingSphere(self, v8, v9);
  v13 = v12;
  if (v12 != 0.0)
  {
    v14 = objc_msgSend_view(self, v10, v11);
    objc_msgSend_bounds(v14, v15, v16);
    v18 = v17;
    v21 = objc_msgSend_view(self, v19, v20);
    objc_msgSend_bounds(v21, v22, v23);
    v25 = v24;
    if (v25 >= v18)
    {
      v26 = v24;
    }

    else
    {
      v26 = v18;
    }

    if (v25 >= v18)
    {
      v25 = v18;
    }

    v27 = v25 / fmaxf(v26, 1.0);
    originalOrthoScale = self->_originalOrthoScale;
    v29 = v13 * 10000000.0;
    if (v29 <= originalOrthoScale)
    {
      v31 = self->_originalOrthoScale;
    }

    else
    {
      v30 = v29;
      v31 = v30;
    }

    v32 = v13 * 0.00001 * v27;
    if (v32 <= originalOrthoScale)
    {
      v33 = v32;
      v34 = v33;
    }

    else
    {
      v34 = self->_originalOrthoScale;
    }

    if (v7 <= v31)
    {
      if (v7 < v34)
      {
        return originalOrthoScale / v34;
      }
    }

    else
    {
      return originalOrthoScale / v31;
    }
  }

  return factor;
}

- (void)setZoomFactor:(float)factor
{
  objc_msgSend_zoomFactor(self, a2, v3);
  if (factor > 0.0 && v8 != factor)
  {
    v10 = objc_msgSend_pointOfView(self, v6, v7);
    if (objc_msgSend__pointOfViewUsesOrthographicProjection(self, v11, v12))
    {
      *&v15 = factor;
      objc_msgSend__orthographicZoomFactorForProposedZoomFactor_(self, v13, v14, v15);
      self->_orthographicZoomFactor = v16;
      objc_msgSend__orthographicScaleForZoomFactor_(self, v17, v18);

      MEMORY[0x1EEE66B58](self, sel__setPointOfViewOrthographicScale_, v19);
    }

    else
    {
      v20 = tan(self->_cameraOriginalFieldOfView * 0.5 / 180.0 * 3.14159265);
      v23 = atan(v20 / factor);
      *&v23 = v23 / 3.14159265 * 180.0 + v23 / 3.14159265 * 180.0;
      v24 = fmin(*&v23, 120.0);
      if (v24 < 1.0)
      {
        v24 = 1.0;
      }

      v25 = v24;
      v26 = objc_msgSend_camera(v10, v21, v22);
      *&v27 = v25;
      objc_msgSend_setFieldOfView_(v26, v28, v29, v27);
      self->_fieldOfViewZoomFactor = factor;
    }
  }
}

- (void)translateByX:(float)x Y:(float)y Z:(float)z
{
  v24 = *&x;
  if (objc_msgSend_pointOfView(self, a2, v5))
  {
    *&v10 = z;
    objc_msgSend__cappedTranslationDelta_(self, v8, v9, v10);
    v11 = v24;
    v11.f32[1] = y;
    v11.i32[2] = v12;
    v25 = v11;
    objc_msgSend__translationCoef(self, v13, v14);
    v26 = vmulq_n_f32(v25, v15);
    v18 = objc_msgSend_cameraController(self, v16, v17);
    LODWORD(v22) = v26.i32[1];

    *&v21 = -v26.f32[2];
    objc_msgSend_translateInCameraSpaceByX_Y_Z_(v18, v19, v20, *v26.i64, v22, v21);
  }
}

- (void)cameraRotationWillStartForController:(id)controller
{
  v4 = objc_msgSend_pointOfView(controller, a2, controller);
  if (objc_msgSend_authoringCameraType(v4, v5, v6))
  {

    objc_msgSend__switchToFreeViewCamera(self, v7, v8);
  }
}

- (void)worldWillChange
{
  *&self->_isWorldBoundingSphereComputed = 0;
  v4 = objc_msgSend_cameraController(self, a2, v2);
  objc_msgSend_setSimdTarget_(v4, v5, v6, 0.0);

  MEMORY[0x1EEE66B58](self, sel__resetFreeViewCamera, v7);
}

- (void)worldDidChange
{
  objc_msgSend_invalidateCameraTarget(self, a2, v2);
  v6 = objc_msgSend_view(self, v4, v5);
  v9 = objc_msgSend_renderer(v6, v7, v8);
  v12 = objc_msgSend_pointOfView(v9, v10, v11);
  if (v12)
  {
    v15 = v12;
    v16 = objc_msgSend_cameraController(self, v13, v14);
    objc_msgSend_setPointOfView_(v16, v17, v15);
    self->_cameraTargetComputed = 0;
    v20 = objc_msgSend_cameraController(self, v18, v19);
    objc_msgSend_setSimdTarget_(v20, v21, v22, 0.0);

    objc_msgSend__computeAutomaticTargetPointIfNeeded(self, v23, v24);
  }
}

- (void)viewWillDrawAtTime:(double)time
{
  v6 = objc_msgSend_immediateMode(VFXTransaction, a2, v3);
  objc_msgSend_setImmediateMode_(VFXTransaction, v7, 1);
  os_unfair_lock_lock(&self->_drawAtTimeLock);
  v10 = objc_msgSend_cameraController(self, v8, v9);
  if (objc_msgSend_isInertiaRunning(v10, v11, v12))
  {
    v15 = objc_msgSend_view(self, v13, v14);
    v18 = objc_msgSend_world(v15, v16, v17);
    v21 = objc_msgSend_worldRef(v18, v19, v20);
    if (v21)
    {
      v24 = v21;
      sub_1AF1CEA20(v21, v22);
      v27 = objc_msgSend_cameraController(self, v25, v26);
      objc_msgSend_updateInertiaAtTime_(v27, v28, v29, time);
      sub_1AF1CEA9C(v24, v30);
    }

    else
    {
      v31 = objc_msgSend_cameraController(self, v22, v23);
      objc_msgSend_updateInertiaAtTime_(v31, v32, v33, time);
    }
  }

  os_unfair_lock_unlock(&self->_drawAtTimeLock);

  objc_msgSend_setImmediateMode_(VFXTransaction, v34, v6);
}

- (void)_setupUpVector
{
  v4 = objc_msgSend_pointOfView(self, a2, v2);
  objc_msgSend_convertVector_fromNode_(v4, v5, 0);
  if ((fabsf(v8.f32[0]) >= 0.001 || fabsf(v8.f32[1]) >= 0.001)
    && (v8.i32[2] = 0, v9 = vmulq_f32(v8, v8), v9.f32[0] = v9.f32[2] + vaddv_f32(*v9.f32), v10 = vdupq_lane_s32(*v9.f32, 0), v10.i32[3] = 0, v11 = vrsqrteq_f32(v10), v12 = vmulq_f32(v11, vrsqrtsq_f32(v10, vmulq_f32(v11, v11))), v13 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v9.f32[0] != 0.0)), 0x1FuLL)), v13.i32[3] = 0, v14 = vbslq_s8(vcltzq_s32(v13), vmulq_f32(v8, vmulq_f32(v12, vrsqrtsq_f32(v10, vmulq_f32(v12, v12)))), v8), v15 = xmmword_1AFE20160, v16 = vmulq_f32(v14, xmmword_1AFE20160), fabsf(v16.f32[2] + vaddv_f32(*v16.f32)) <= 0.99)
    && ((v16.f32[2] + vaddv_f32(*v16.f32)) >= 0.0
      ? (v47 = vaddq_f32(v14, xmmword_1AFE20160), v48 = vmulq_f32(v47, v47), *&v49 = v48.f32[2] + vaddv_f32(*v48.f32), *v48.f32 = vrsqrte_f32(v49), *v48.f32 = vmul_f32(*v48.f32, vrsqrts_f32(v49, vmul_f32(*v48.f32, *v48.f32))), v50 = vmulq_n_f32(v47, vmul_f32(*v48.f32, vrsqrts_f32(v49, vmul_f32(*v48.f32, *v48.f32))).f32[0]), v51 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), vnegq_f32(v14)), v50, vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL)), v46 = vextq_s8(vuzp1q_s32(v51, v51), v51, 0xCuLL), v52 = vmulq_f32(v14, v50), v46.f32[3] = v52.f32[2] + vaddv_f32(*v52.f32))
      : COERCE_FLOAT32_T((v18 = vmulq_f32(v14, v14), v17 = vaddv_f32(*v18.f32), v18.i32[1] = 0, *&v19 = v18.f32[2] + v17, v20 = vrsqrte_f32(COERCE_UNSIGNED_INT(v18.f32[2] + v17)), v21 = vmul_f32(v20, vrsqrts_f32(v19, vmul_f32(v20, v20))), v22 = vrsqrte_f32(1065353216), v23 = vmul_f32(v22, vrsqrts_f32(1065353216, vmul_f32(v22, v22))), v24 = vaddq_f32(vmulq_n_f32(v14, vmul_f32(v21, vrsqrts_f32(v19, vmul_f32(v21, v21))).f32[0]), vmulq_n_f32(xmmword_1AFE20160, vmul_f32(v23, vrsqrts_f32(1065353216, vmul_f32(v23, v23))).f32[0])), v25 = vmulq_f32(v24, v24), v26 = v25.f32[2] + vaddv_f32(*v25.f32), v26 <= 1.4211e-14) ? ((v53 = vabsq_f32(v14), v54 = v53.f32[1], v55 = v53.f32[2], v53.f32[0] <= v53.f32[1]) ? (v56 = v53.f32[0] > v53.f32[2]) : (v56 = 1), v56 ? ((v57 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), v54 <= v55) ? (v58 = vmulq_f32(v14, xmmword_1AFE213B0)) : (v58 = vmulq_f32(v14, xmmword_1AFE213A0), v15 = xmmword_1AFE20180), v59 = vmlaq_f32(v58, v15, v57)) : (v59 = vmlaq_f32(vmulq_f32(v14, xmmword_1AFE213C0), xmmword_1AFE20150, vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL))), v60 = vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL), v61 = vmulq_f32(v59, v59), *&v62 = v61.f32[1] + (v61.f32[2] + v61.f32[0]), *v61.f32 = vrsqrte_f32(v62), *v61.f32 = vmul_f32(*v61.f32, vrsqrts_f32(v62, vmul_f32(*v61.f32, *v61.f32))), v46 = vmulq_n_f32(v60, vmul_f32(*v61.f32, vrsqrts_f32(v62, vmul_f32(*v61.f32, *v61.f32))).f32[0]), v46.i32[3] = 0) : (v27 = LODWORD(v26), v28 = vrsqrte_f32(LODWORD(v26)), v29 = vmul_f32(v28, vrsqrts_f32(v27, vmul_f32(v28, v28))), v30 = vmulq_n_f32(v24, vmul_f32(v29, vrsqrts_f32(v27, vmul_f32(v29, v29))).f32[0]), v31 = vaddq_f32(v14, v30), v32 = vmulq_f32(v31, v31), *&v33 = v32.f32[2] + vaddv_f32(*v32.f32), *v32.f32 = vrsqrte_f32(v33), *v32.f32 = vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32))), v34 = vmulq_n_f32(v31, vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32))).f32[0]), v35 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), vnegq_f32(v14)), v34, vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL)), v36 = vmulq_f32(v14, v34), v37 = vaddq_f32(v30, xmmword_1AFE20160), v38 = vmulq_f32(v37, v37), v18.f32[0] = v38.f32[2] + vaddv_f32(*v38.f32), *v38.f32 = vrsqrte_f32(*v18.f32), *v38.f32 = vmul_f32(*v38.f32, vrsqrts_f32(*v18.f32, vmul_f32(*v38.f32, *v38.f32))), v39 = vmulq_n_f32(v37, vmul_f32(*v38.f32, vrsqrts_f32(*v18.f32, vmul_f32(*v38.f32, *v38.f32))).f32[0]), v40 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), vnegq_f32(v30)), v39, vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL)), v41 = vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL), v42 = vmulq_f32(v30, v39), v41.f32[3] = v42.f32[2] + vaddv_f32(*v42.f32), v43 = vnegq_f32(v41), v44 = vtrn2q_s32(v41, vtrn1q_s32(v41, v43)), v45 = vrev64q_s32(v41), v45.i32[0] = v43.i32[1], v45.i32[3] = v43.i32[2], v46 = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(v41, v36.f32[2] + vaddv_f32(*v36.f32)), v45, *v35.f32, 1), vmlaq_laneq_f32(vmulq_n_f32(vextq_s8(v41, v43, 8uLL), v35.f32[0]), vextq_s8(v44, v44, 8uLL), v35, 2)))),
        v63 = vmulq_f32(v46, xmmword_1AFE21390),
        v64 = vnegq_f32(v63),
        v65 = vtrn2q_s32(v63, vtrn1q_s32(v63, v64)),
        v66 = vmlaq_f32(vextq_s8(v63, v64, 8uLL), 0, vextq_s8(v65, v65, 8uLL)),
        v67 = vrev64q_s32(v63),
        v67.i32[0] = v64.i32[1],
        v67.i32[3] = v64.i32[2],
        v68 = vmlaq_f32(v66, 0, v67),
        v69 = vnegq_f32(v68),
        v70 = vtrn2q_s32(v68, vtrn1q_s32(v68, v69)),
        v71 = vrev64q_s32(v68),
        v71.i32[0] = v69.i32[1],
        v71.i32[3] = v69.i32[2],
        v72 = objc_msgSend_pointOfView(self, v6, v7, vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v68, v46, 3), v71, v46, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v68, v69, 8uLL), *v46.f32, 1), vextq_s8(v70, v70, 8uLL), v46.f32[0]))),
        objc_msgSend_worldRight(v72, v73, v74),
        v76 = vmulq_f32(v75, v79),
        fabsf(v76.f32[2] + vaddv_f32(*v76.f32)) <= 0.70711))
  {
    cameraController = self->_cameraController;

    MEMORY[0x1EEE66B58](cameraController, sel_setSimdUp_, v7);
  }

  else
  {
    v77 = self->_cameraController;

    MEMORY[0x1EEE66B58](v77, sel_setUp_, v7);
  }
}

- (void)_willBeginInteraction
{
  if (!self->_cameraTargetComputed)
  {
    v4 = objc_msgSend_cameraController(self, a2, v2);
    if ((objc_msgSend_automaticTarget(v4, v5, v6) & 1) == 0)
    {
      v7 = objc_msgSend_cameraController(self, a2, v2);
      objc_msgSend_simdTarget(v7, v8, v9);
      v11 = vceqzq_f32(v10);
      v11.i32[3] = v11.i32[2];
      if ((vminvq_u32(v11) & 0x80000000) != 0)
      {
        self->_cameraTargetComputed = 1;
        v12 = objc_msgSend_view(self, a2, v2);
        v15 = objc_msgSend_world(v12, v13, v14);
        objc_msgSend__defaultTargetForWorld_(self, v16, v15);
        v35 = v17;
        v20 = objc_msgSend_cameraController(self, v18, v19);
        objc_msgSend_setSimdTarget_(v20, v21, v22, v35);
      }
    }
  }

  objc_msgSend__stopInertia(self, a2, v2);
  v25 = objc_msgSend_pointOfView(self, v23, v24);
  v28 = objc_msgSend_camera(v25, v26, v27);
  objc_msgSend_fieldOfView(v28, v29, v30);
  self->_cameraOriginalFieldOfView = v31;
  self->_fieldOfViewZoomFactor = 1.0;
  objc_msgSend__pointOfViewOrthographicScale(self, v32, v33);
  self->_originalOrthoScale = v34;
  self->_orthographicZoomFactor = 1.0;
}

- (void)cameraDidChange
{
  v4 = objc_msgSend_view(self, a2, v2);
  v7 = objc_msgSend_renderer(v4, v5, v6);
  v10 = objc_msgSend_pointOfView(v7, v8, v9);
  v13 = objc_msgSend_cameraController(self, v11, v12);
  objc_msgSend_setPointOfView_(v13, v14, v10);

  MEMORY[0x1EEE66B58](self, sel__setupUpVector, v15);
}

- (void)_stopInertia
{
  os_unfair_lock_lock(&self->_drawAtTimeLock);
  v5 = objc_msgSend_cameraController(self, v3, v4);
  objc_msgSend_stopInertia(v5, v6, v7);

  os_unfair_lock_unlock(&self->_drawAtTimeLock);
}

- (id)gestureRecognizers
{
  tapGesture = self->_tapGesture;
  if (tapGesture)
  {
    return objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], a2, self->_pressGesture, self->_panGesture, tapGesture, self->_pinchGesture, self->_rotateGesture, 0);
  }

  v5 = objc_alloc_init(MEMORY[0x1E69DCC48]);
  objc_msgSend_setMinimumPressDuration_(v5, v6, v7, 0.0);
  v8 = objc_alloc_init(MEMORY[0x1E69DD060]);
  v9 = objc_alloc_init(MEMORY[0x1E69DCD80]);
  v10 = objc_alloc_init(MEMORY[0x1E69DCD28]);
  objc_msgSend_setAllowedScrollTypesMask_(v10, v11, 3);
  v12 = objc_alloc_init(MEMORY[0x1E69DCE68]);
  objc_msgSend_setNumberOfTapsRequired_(v8, v13, 2);
  objc_msgSend_addTarget_action_(v9, v14, self, sel__handlePinch_);
  objc_msgSend_addTarget_action_(v10, v15, self, sel__handlePan_);
  objc_msgSend_addTarget_action_(v5, v16, self, sel__handlePress_);
  objc_msgSend_addTarget_action_(v12, v17, self, sel__handleRotation_);
  objc_msgSend_addTarget_action_(v8, v18, self, sel__handleDoubleTap_);
  objc_msgSend_setDelegate_(v5, v19, self);
  objc_msgSend_setDelegate_(v10, v20, self);
  objc_msgSend_setDelegate_(v9, v21, self);
  objc_msgSend_setDelegate_(v12, v22, self);
  objc_msgSend_setDelegate_(v8, v23, self);
  objc_msgSend_setDelaysTouchesBegan_(v9, v24, 0);
  objc_msgSend_setDelaysTouchesBegan_(v12, v25, 0);
  objc_msgSend_setDelaysTouchesBegan_(v10, v26, 0);
  objc_msgSend_setDelaysTouchesBegan_(v8, v27, 0);
  objc_msgSend_setDelaysTouchesBegan_(v5, v28, 0);
  objc_msgSend_setCancelsTouchesInView_(v9, v29, 0);
  objc_msgSend_setCancelsTouchesInView_(v12, v30, 0);
  objc_msgSend_setCancelsTouchesInView_(v10, v31, 0);
  objc_msgSend_setCancelsTouchesInView_(v8, v32, 0);
  objc_msgSend_setCancelsTouchesInView_(v5, v33, 0);
  v36 = objc_msgSend_enabled(self, v34, v35);
  objc_msgSend_setEnabled_(v9, v37, v36);
  v40 = objc_msgSend_enabled(self, v38, v39);
  objc_msgSend_setEnabled_(v12, v41, v40);
  v44 = objc_msgSend_enabled(self, v42, v43);
  objc_msgSend_setEnabled_(v10, v45, v44);
  v48 = objc_msgSend_enabled(self, v46, v47);
  objc_msgSend_setEnabled_(v8, v49, v48);
  v52 = objc_msgSend_enabled(self, v50, v51);
  objc_msgSend_setEnabled_(v5, v53, v52);
  self->_pinchGesture = v9;
  self->_panGesture = v10;
  self->_rotateGesture = v12;
  self->_pressGesture = v5;
  self->_tapGesture = v8;
  return objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], v54, v5, v10, v8, v9, v12, 0);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  v7 = objc_msgSend_enabled(self, a2, recognizer);
  if (v7)
  {
    pressGesture = self->_pressGesture;
    v9 = pressGesture == recognizer || pressGesture == gestureRecognizer;
    LOBYTE(v7) = v9 || (tapGesture = self->_tapGesture, panGesture = self->_panGesture, tapGesture == recognizer) && (panGesture == gestureRecognizer || self->_pinchGesture == gestureRecognizer || self->_rotateGesture == gestureRecognizer) || tapGesture == gestureRecognizer && panGesture == recognizer || tapGesture == gestureRecognizer && self->_pinchGesture == recognizer;
  }

  return v7;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  v6 = objc_msgSend_enabled(self, a2, begin);
  if (v6)
  {
    objc_msgSend_beginGesture_(self, v5, begin);
  }

  return v6;
}

- (void)_handlePinch:(id)pinch
{
  if (objc_msgSend_enabled(self, a2, pinch))
  {

    MEMORY[0x1EEE66B58](self, sel_pinchWithGestureRecognizer_, pinch);
  }
}

- (void)_handlePan:(id)pan
{
  if (objc_msgSend_enabled(self, a2, pan))
  {

    MEMORY[0x1EEE66B58](self, sel_panWithGestureRecognizer_, pan);
  }
}

- (void)_handleRotation:(id)rotation
{
  if (objc_msgSend_enabled(self, a2, rotation))
  {

    MEMORY[0x1EEE66B58](self, sel_rotateWithGestureRecognizer_, rotation);
  }
}

- (void)_handleDoubleTap:(id)tap
{
  if (objc_msgSend_enabled(self, a2, tap))
  {
    v6 = objc_msgSend_delegate(self, v4, v5);

    MEMORY[0x1EEE66B58](v6, sel_switchToNextCamera, v7);
  }
}

- (void)beginGesture:(id)gesture
{
  if (self->_autoSwitchToFreeCamera || !objc_msgSend_pointOfView(self, a2, gesture))
  {
    objc_msgSend__switchToFreeViewCamera(self, a2, gesture);
  }

  objc_msgSend__willBeginInteraction(self, a2, gesture);
  self->_isDraggingWithOneFinger = 0;
  self->_lastGestureFingerCount = 0;
  if (objc_msgSend_numberOfTouches(gesture, v5, v6))
  {
    v9 = objc_msgSend_view(self, v7, v8);
    objc_msgSend_locationInView_(gesture, v10, v9);
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = 0.0;
    v14 = 0.0;
  }

  self->_lastInputLocation.x = v12;
  self->_lastInputLocation.y = v14;
  self->_lastRotationAngle = 0.0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend__startBrowsingIfNeeded_(self, v15, v16, v12, v14);
    v17 = 2;
LABEL_13:
    self->_browseMode = v17;
    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend__startBrowsingIfNeeded_(self, v18, v19, v12, v14);
    if (self->_translationAllowed)
    {
      self->_browseMode = 3;
      v22 = objc_msgSend_view(self, v20, v21);
      objc_msgSend_bounds(v22, v23, v24);
      objc_msgSend__computeTranslationOrigin3DFromPoint_(self, v26, v27, v12, v25 - v14);
    }

    v17 = 1;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_zoomFactor(self, v28, v29);
    self->_initialZoom = v30;
  }
}

- (void)rotateWithGestureRecognizer:(id)recognizer
{
  objc_msgSend_rotation(recognizer, a2, recognizer);
  v6 = v5;
  objc_msgSend__stopInertia(self, v7, v8);
  if (objc_msgSend_state(recognizer, v9, v10) == 1)
  {
    objc_msgSend___willChangePointOfView(self, v11, v12);
  }

  objc_msgSend_begin(VFXTransaction, v11, v12);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v13, v14, 0.0);
  v15 = (v6 - self->_lastRotationAngle) / 3.14159265 * -180.0;
  *&v15 = v15;
  objc_msgSend_rotateOf_(self, v16, v17, v15);
  objc_msgSend_commit(VFXTransaction, v18, v19);
  v20 = v6;
  self->_lastRotationAngle = v20;
  if (objc_msgSend_state(recognizer, v21, v22) == 4 || objc_msgSend_state(recognizer, v23, v24) == 3)
  {

    objc_msgSend___didChangePointOfView(self, v23, v24);
  }
}

- (void)pinchWithGestureRecognizer:(id)recognizer
{
  objc_msgSend__stopInertia(self, a2, recognizer);
  if (objc_msgSend_state(recognizer, v5, v6) == 1)
  {
    objc_msgSend___willChangePointOfView(self, v7, v8);
  }

  objc_msgSend_begin(VFXTransaction, v7, v8);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v9, v10, 0.0);
  v11 = fmax(self->_initialZoom, 0.001);
  objc_msgSend_scale(recognizer, v12, v13);
  v15 = v14 * v11;
  *&v15 = v15;
  objc_msgSend_setZoomFactor_(self, v16, v17, v15);
  objc_msgSend_commit(VFXTransaction, v18, v19);
  if (objc_msgSend_state(recognizer, v20, v21) == 4 || objc_msgSend_state(recognizer, v22, v23) == 3)
  {

    objc_msgSend___didChangePointOfView(self, v22, v23);
  }
}

- (void)panWithGestureRecognizer:(id)recognizer
{
  v5 = objc_msgSend_numberOfTouches(recognizer, a2, recognizer);
  if (self->_browseMode != 2)
  {
    v8 = v5;
    v9 = objc_msgSend_view(self, v6, v7);
    objc_msgSend_locationInView_(recognizer, v10, v9);
    v12 = v11;
    v14 = v13;
    objc_msgSend__stopInertia(self, v15, v16);
    if (objc_msgSend_state(recognizer, v17, v18) == 1)
    {
      objc_msgSend___willChangePointOfView(self, v19, v20);
    }

    objc_msgSend_begin(VFXTransaction, v19, v20);
    objc_msgSend_setAnimationDuration_(VFXTransaction, v21, v22, 0.0);
    if (objc_msgSend_state(recognizer, v23, v24) == 3)
    {
      if (self->_isDraggingWithOneFinger)
      {
        v27 = objc_msgSend_view(self, v25, v26);
        objc_msgSend_velocityInView_(recognizer, v28, v27);
        v31 = objc_msgSend_view(self, v29, v30);
        if (objc_msgSend_preferredFramesPerSecond(v31, v32, v33))
        {
          v36 = objc_msgSend_view(self, v34, v35);
          objc_msgSend_preferredFramesPerSecond(v36, v37, v38);
        }

        v39 = objc_msgSend_cameraController(self, v34, v35);
        v42 = objc_msgSend_view(self, v40, v41);
        objc_msgSend_bounds(v42, v43, v44);
        objc_msgSend_endInteraction_withViewport_velocity_(v39, v45, v46, v12, v14);
        v49 = objc_msgSend_cameraController(self, v47, v48);
        if ((objc_msgSend_isInertiaRunning(v49, v50, v51) & 1) == 0)
        {
          objc_msgSend___didChangePointOfView(self, v25, v26);
        }
      }
    }

    else
    {
      switch(v8)
      {
        case 3:
          if (self->_lastGestureFingerCount != 3)
          {
            objc_msgSend_beginGesture_(self, v25, recognizer);
            self->_lastGestureFingerCount = 3;
          }

          objc_msgSend__translationCoef(self, v25, v26);
          v75 = v74;
          v76 = v14 - self->_lastInputLocation.y;
          *&v76 = v76;
          objc_msgSend__cappedTranslationDelta_(self, v77, v78, v76);
          v80 = v79;
          v83 = objc_msgSend_cameraController(self, v81, v82);
          *&v84 = -(v75 * v80);
          objc_msgSend_translateInCameraSpaceByX_Y_Z_(v83, v85, v86, 0.0, 0.0, v84);
          break;
        case 2:
          if (self->_lastGestureFingerCount != 2)
          {
            objc_msgSend_beginGesture_(self, v25, recognizer);
            self->_lastGestureFingerCount = 2;
          }

          v68 = objc_msgSend_view(self, v25, v26);
          objc_msgSend_bounds(v68, v69, v70);
          v14 = v71 - v14;
          objc_msgSend__translateToViewPoint_(self, v72, v73, v12, v14);
          break;
        case 1:
          if (self->_lastGestureFingerCount == 1)
          {
            self->_isDraggingWithOneFinger = 1;
            v52 = objc_msgSend_cameraController(self, v25, v26);
            v55 = objc_msgSend_view(self, v53, v54);
            objc_msgSend_bounds(v55, v56, v57);
            v59 = v58;
            v61 = v60;
            objc_msgSend__modeSensitivity(self, v62, v63);
            LODWORD(v65) = v64;
            objc_msgSend_continueInteraction_withViewport_sensitivity_(v52, v66, v67, v12, v14, v59, v61, v65);
          }

          else
          {
            objc_msgSend_beginGesture_(self, v25, recognizer);
            v89 = objc_msgSend_cameraController(self, v87, v88);
            v92 = objc_msgSend_view(self, v90, v91);
            objc_msgSend_bounds(v92, v93, v94);
            objc_msgSend_beginInteraction_withViewport_(v89, v95, v96, v12, v14);
            self->_lastGestureFingerCount = 1;
          }

          break;
      }
    }

    objc_msgSend_commit(VFXTransaction, v25, v26);
    self->_lastInputLocation.x = v12;
    self->_lastInputLocation.y = v14;
  }
}

- (float)_modeSensitivity
{
  v4 = objc_msgSend_cameraController(self, a2, v2);
  v7 = objc_msgSend_interactionMode(v4, v5, v6);
  if (v7 >= 5)
  {
    if (v7 == 6)
    {

      MEMORY[0x1EEE66B58](self, sel_truckSensitivity, v8);
    }

    else if (v7 == 5)
    {

      MEMORY[0x1EEE66B58](self, sel_panSensitivity, v8);
    }

    else
    {
      return 1.0;
    }
  }

  else
  {

    MEMORY[0x1EEE66B58](self, sel_rotationSensitivity, v8);
  }

  return result;
}

- (uint64_t)worldFront
{
  v3 = objc_msgSend_cameraController(self, a2, a3);
  v6 = objc_msgSend_pointOfView(v3, v4, v5);

  return objc_msgSend_worldFront(v6, v7, v8);
}

- (void)_startBrowsingIfNeeded:(CGPoint)needed
{
  y = needed.y;
  x = needed.x;
  objc_msgSend_begin(VFXTransaction, a2, v3);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v7, v8, 0.0);
  v13 = objc_msgSend_pointOfView(self, v9, v10);
  if (self->_autoSwitchToFreeCamera || !objc_msgSend_pointOfView(self, v11, v12))
  {
    objc_msgSend__prepareFreeViewCamera(self, v11, v12);
  }

  if (!objc_msgSend_parentNode(v13, v11, v12) && v13 != self->_freeViewCameraNode)
  {
    objc_msgSend__installFreeViewCameraIfNeeded(self, v14, v15);
  }

  objc_msgSend_commit(VFXTransaction, v14, v15);
  self->_initialInputLocation.x = x;
  self->_initialInputLocation.y = y;
  v18 = objc_msgSend_pointOfView(self, v16, v17);
  objc_msgSend_convertPosition_toNode_(v18, v19, 0, 0.0);
  *self->_initialPointOfViewWorldPosition = v20;
  objc_msgSend__pointOfViewOrthographicScale(self, v21, v22);
  self->_originalOrthoScale = v23;
  self->_orthographicZoomFactor = 1.0;
}

- (double)_defaultTargetForWorld:(void *)world
{
  v5 = objc_msgSend_pointOfView(self, a2, world);
  objc_msgSend_worldFront(self, v6, v7);
  v51 = v8;
  v11 = objc_msgSend_presentationObject(v5, v9, v10);
  objc_msgSend_convertPosition_toNode_(v11, v12, 0, 0.0);
  v52 = v13;
  objc_msgSend__worldBoundingSphere(self, v14, v15);
  v48 = *v16.i64;
  v49 = vsubq_f32(v16, v52);
  v19 = objc_msgSend_camera(v5, v17, v18);
  objc_msgSend_fieldOfView(v19, v20, v21);
  v23 = v22 * 3.14159265 / 180.0;
  v26 = cosf(v23);
  v27 = vmulq_f32(v49, v49);
  *&v28 = v27.f32[2] + vaddv_f32(*v27.f32);
  *v27.f32 = vrsqrte_f32(v28);
  *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32)));
  v29 = vmulq_f32(v51, vmulq_n_f32(v49, vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]));
  if ((v29.f32[2] + vaddv_f32(*v29.f32)) > v26)
  {
    return v48;
  }

  v31 = objc_msgSend_camera(v5, v24, v25);
  objc_msgSend_zFar(v31, v32, v33);
  *&v50 = vmlaq_n_f32(v52, v51, v34).u64[0];
  v37 = objc_msgSend_rootNode(world, v35, v36);
  v39 = objc_msgSend_hitTestWithSegmentFromPoint_toPoint_options_(v37, v38, 0, *v52.i64, v50);
  if (objc_msgSend_count(v39, v40, v41))
  {
    Object = objc_msgSend_firstObject(v39, v42, v43);

    objc_msgSend_worldCoordinates(Object, v45, v46);
  }

  else
  {
    objc_msgSend__targetDistance(self, v42, v43);
    *&result = vmlaq_n_f32(v52, v51, v47).u64[0];
  }

  return result;
}

- (uint64_t)cameraAutomaticTargetPoint
{
  objc_msgSend__computeAutomaticTargetPointIfNeeded(self, a2, a3);
  v6 = objc_msgSend_cameraController(self, v4, v5);

  return objc_msgSend_target(v6, v7, v8);
}

- (void)_computeAutomaticTargetPointIfNeeded
{
  if (self->_target.hasAutomatic && !self->_target.automaticLocationUpToDate)
  {
    v4 = objc_msgSend_cameraController(self, a2, v2);
    if ((objc_msgSend_automaticTarget(v4, v5, v6) & 1) == 0)
    {
      self->_target.automaticLocationUpToDate = 1;
      v9 = objc_msgSend_pointOfView(self, v7, v8);
      objc_msgSend_worldFront(self, v10, v11);
      v35 = v12;
      objc_msgSend__targetDistance(self, v13, v14);
      v36 = v15;
      v18 = objc_msgSend_presentationNode(v9, v16, v17);
      objc_msgSend_worldPosition(v18, v19, v20);
      v24 = v23;
      if (self->_didEverFocusNode)
      {
        v26 = v35;
        v25 = v36;
      }

      else
      {
        v37 = v23;
        objc_msgSend__worldBoundingSphere(self, v21, v22);
        v24 = v37;
        v28 = vsubq_f32(v27, v37);
        v29 = vmulq_f32(v35, v28);
        v30 = (v29.f32[2] + vaddv_f32(*v29.f32)) <= 0.5;
        v26 = v35;
        v25 = v36;
        if (!v30)
        {
          v31 = vmulq_f32(v28, v28);
          v25 = sqrtf(v31.f32[2] + vaddv_f32(*v31.f32));
        }
      }

      *&v38 = vmlaq_n_f32(v24, v26, v25).u64[0];
      v32 = objc_msgSend_cameraController(self, v21, v22);

      objc_msgSend_setSimdTarget_(v32, v33, v34, v38);
    }
  }
}

- (__n128)_worldBoundingSphere
{
  v25[1] = *MEMORY[0x1E69E9840];
  if ((self[5].i8[11] & 1) == 0)
  {
    v4 = objc_msgSend_view(self, v1, v2);
    v7 = objc_msgSend_world(v4, v5, v6);
    if (objc_msgSend_rootNode(v7, v8, v9))
    {
      v12 = objc_msgSend_view(self, v10, v11);
      v15 = objc_msgSend_world(v12, v13, v14);
      v25[0] = objc_msgSend_rootNode(v15, v16, v17);
      v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v18, v25, 1);
      VFXNodeGetBoundingSphere(v19, 0, v20);
      v21.i32[0] = *"(knN";
      v23 = v22;
      v23.i32[3] = 1120403456;
      self[7] = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(vdupq_laneq_s32(v22, 3), v21)), 0), v22, v23);
      self[5].i8[11] = 1;
    }
  }

  return self[7];
}

- (BOOL)_computeBoundingSphereOmittingFloorsForNode:(__CFXNode *)node sphere:(CFXSphere *)sphere
{
  *sphere = xmmword_1AFE21260;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1AF36D7D8;
  v6[3] = &unk_1E7A7D938;
  v6[4] = sphere;
  sub_1AF1B94AC(node, v6);
  return *(sphere + 3) >= 0.0;
}

- (void)_computeStickyAxisIfNeeded:(CGPoint)needed
{
  if (self->_stickyAxis.stickyMoveEnabled && !*&self->_anon_101[15])
  {
    y = needed.y;
    v4 = vcvt_f32_f64(vaddq_f64(needed, vcvtq_f64_f32(*&self->_anon_101[7])));
    *&self->_anon_101[7] = v4;
    if (vaddv_f32(vmul_f32(v4, v4)) > 1.0)
    {
      v5 = vdup_n_s32(self->_browseMode == 3);
      v6 = vcvtq_f64_f32(v4);
      v7.i64[0] = v5.u32[0];
      v7.i64[1] = v5.u32[1];
      v8 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v7, 0x3FuLL)), v6, vextq_s8(v6, v6, 8uLL));
      v9 = vabsq_f64(v8);
      if ((vmovn_s64(vcgeq_f64(v9, vdupq_laneq_s64(v9, 1))).u8[0] & 1) != 0 && v8.f64[0] != 0.0)
      {
        v10 = 1;
LABEL_10:
        *&self->_anon_101[15] = v10;
        return;
      }

      if (v8.f64[1] != 0.0)
      {
        v10 = 2;
        goto LABEL_10;
      }
    }
  }
}

- (float)_pointOfViewOrthographicScale
{
  v4 = objc_msgSend_cameraController(self, a2, v2);
  v7 = objc_msgSend_pointOfView(v4, v5, v6);
  v10 = objc_msgSend_camera(v7, v8, v9);
  v13 = objc_msgSend_cameraController(self, v11, v12);
  v16 = objc_msgSend_pointOfView(v13, v14, v15);
  v19 = objc_msgSend_light(v16, v17, v18);
  if (!v10)
  {
    v10 = v19;
    if (!v19)
    {
      return 1.0;
    }
  }

  objc_msgSend_orthographicScale(v10, v20, v21);
  return result;
}

- (void)_setPointOfViewOrthographicScale:(float)scale
{
  v6 = objc_msgSend_cameraController(self, a2, v3);
  v9 = objc_msgSend_pointOfView(v6, v7, v8);
  v12 = objc_msgSend_camera(v9, v10, v11);
  v15 = objc_msgSend_cameraController(self, v13, v14);
  v18 = objc_msgSend_pointOfView(v15, v16, v17);
  v21 = objc_msgSend_light(v18, v19, v20);
  if (v12 || (v12 = v21) != 0)
  {
    *&v24 = scale;

    objc_msgSend_setOrthographicScale_(v12, v22, v23, v24);
  }
}

- (BOOL)_pointOfViewUsesOrthographicProjection
{
  v4 = objc_msgSend_cameraController(self, a2, v2);
  v7 = objc_msgSend_pointOfView(v4, v5, v6);
  v10 = objc_msgSend_camera(v7, v8, v9);
  v13 = objc_msgSend_cameraController(self, v11, v12);
  v16 = objc_msgSend_pointOfView(v13, v14, v15);
  v19 = objc_msgSend_light(v16, v17, v18);
  if (v10)
  {

    LOBYTE(v19) = objc_msgSend_usesOrthographicProjection(v10, v20, v21);
  }

  else if (v19)
  {
    LOBYTE(v19) = objc_msgSend_type(v19, v20, v21) == 2;
  }

  return v19;
}

- (void)_computeTranslationOrigin3DFromPoint:(CGPoint)point
{
  x = point.x;
  y = point.y;
  v5 = objc_msgSend_view(self, a2, v3);
  objc_msgSend_bounds(v5, v6, v7);
  v8.f64[0] = x;
  v8.f64[1] = y;
  v9 = vcvt_f32_f64(v8);
  v11.f64[1] = v10;
  v53 = vcvt_hight_f32_f64(0, v11);
  v14 = objc_msgSend_pointOfView(self, v12, v13);
  objc_msgSend__worldBoundingSphere(self, v15, v16);
  *self->_translationOrigin = v17;
  v20 = objc_msgSend_view(self, v18, v19);
  v23 = objc_msgSend_world(v20, v21, v22);
  v26 = objc_msgSend_worldRef(v23, v24, v25);
  v29 = v26;
  if (v26)
  {
    sub_1AF1CEA20(v26, v27);
  }

  v30 = objc_msgSend_nodeRef(v14, v27, v28);
  v31.n128_u64[0] = v9;
  v35 = sub_1AF281C18(v30, v29, &v55, &v56, v53, v31);
  if (v32)
  {
    objc_msgSend_worldFront(self, v33, v34, v35);
    v37 = vmulq_f32(*self->_translationOrigin, v38);
    v38.f32[3] = -(v37.f32[2] + vaddv_f32(*v37.f32));
    v39 = vsubq_f32(v56, v55);
    v40 = vmulq_f32(v39, v39);
    v40.f32[0] = sqrtf(v40.f32[2] + vaddv_f32(*v40.f32));
    v41 = vdivq_f32(v39, vdupq_lane_s32(*v40.f32, 0));
    v41.i32[3] = 0;
    v42 = vmulq_f32(v38, v41);
    v43 = vaddv_f32(vadd_f32(*v42.i8, *&vextq_s8(v42, v42, 8uLL)));
    if (v43 != 0.0 && ((v44 = v55, v44.i32[3] = 1.0, v45 = vmulq_f32(v44, v38), v46 = -vaddv_f32(vadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL))) / v43, v46 >= 0.0) ? (v47 = v46 <= v40.f32[0]) : (v47 = 0), v47))
    {
      v49 = vmlaq_n_f32(v44, v41, v46);
    }

    else
    {
      v48.i64[0] = 0x3F0000003F000000;
      v48.i64[1] = 0x3F0000003F000000;
      v49 = vmulq_f32(vaddq_f32(v55, v56), v48);
    }

    *self->_translationOrigin = v49;
  }

  else
  {
    v50 = sub_1AF0D5194(v32, v33);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AF0CE000, v50, OS_LOG_TYPE_DEFAULT, "Warning: _computeTranslationOrigin3DFromPoint: invalid zRange", buf, 2u);
    }
  }

  if (v29)
  {
    sub_1AF1CEA9C(v29, v36);
  }
}

- (void)_translateToViewPoint:(CGPoint)point
{
  x = point.x;
  y = point.y;
  v5 = objc_msgSend_view(self, a2, v3);
  objc_msgSend_bounds(v5, v6, v7);
  v9.f64[1] = v8;
  v66 = vcvt_hight_f32_f64(0, v9);
  v10.f64[0] = x;
  v10.f64[1] = y;
  v11 = vcvt_f32_f64(v10);
  v14 = objc_msgSend_pointOfView(self, v12, v13);
  v17 = objc_msgSend_view(self, v15, v16);
  v20 = objc_msgSend_world(v17, v18, v19);
  v23 = objc_msgSend_worldRef(v20, v21, v22);
  v26 = v23;
  if (v23)
  {
    sub_1AF1CEA20(v23, v24);
  }

  v27 = objc_msgSend_nodeRef(v14, v24, v25);
  v28.n128_u64[0] = v11;
  sub_1AF281C18(v27, v26, &v71, &v72, v66, v28);
  v32 = v31;
  if (v26)
  {
    sub_1AF1CEA9C(v26, v29);
  }

  if (v32)
  {
    v65 = v71;
    v33 = vsubq_f32(v72, v71);
    v34 = vmulq_f32(v33, v33);
    v34.f32[0] = sqrtf(v34.f32[2] + vaddv_f32(*v34.f32));
    v63 = v34.f32[0];
    v35 = vdivq_f32(v33, vdupq_lane_s32(*v34.f32, 0));
    v35.i32[3] = 0;
    v67 = v35;
    v36 = objc_msgSend_worldFront(self, v29, v30);
    v39 = *self->_translationOrigin;
    v40 = vmulq_f32(v39, v41);
    v41.f32[3] = -(v40.f32[2] + vaddv_f32(*v40.f32));
    v42 = vmulq_f32(v41, v67);
    v43 = vaddv_f32(vadd_f32(*v42.i8, *&vextq_s8(v42, v42, 8uLL)));
    if (v43 != 0.0 && ((v44 = v65, v44.i32[3] = 1.0, v45 = vmulq_f32(v44, v41), v46 = -vaddv_f32(vadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL))) / v43, v46 >= 0.0) ? (v47 = v46 <= v63) : (v47 = 0), v47))
    {
      v68 = vsubq_f32(v39, vmlaq_n_f32(v44, v67, v46));
      objc_msgSend_worldTransform(v14, v37, v38);
      v74 = __invert_f4(v73);
      v69 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v74.columns[2], v68, 2), v74.columns[1], *v68.f32, 1), v74.columns[0], v68.f32[0]);
      objc_msgSend_begin(VFXTransaction, v49, v50);
      objc_msgSend_setAnimationDuration_(VFXTransaction, v51, v52, 0.0);
      v55 = objc_msgSend_cameraController(self, v53, v54);
      LODWORD(v57) = v69.i32[2];
      LODWORD(v56) = v69.i32[1];
      objc_msgSend_translateInCameraSpaceByX_Y_Z_(v55, v58, v59, *v69.i64, v56, v57);
      objc_msgSend_commit(VFXTransaction, v60, v61);
    }

    else
    {
      v48 = sub_1AF0D5194(v36, v37);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AF0CE000, v48, OS_LOG_TYPE_DEFAULT, "Warning: Warning: no CFXIntersectionRay3Plane", buf, 2u);
      }
    }
  }
}

- (void)__willChangePointOfView
{
  if (!self->_recordingPointOfViewEvents)
  {
    self->_recordingPointOfViewEvents = 1;
    objc_msgSend_delegate(self, a2, v2);
    if (objc_opt_respondsToSelector())
    {
      v6 = objc_msgSend_delegate(self, v4, v5);

      MEMORY[0x1EEE66B58](v6, sel_willChangePointOfView, v7);
    }
  }
}

- (void)__didChangePointOfView
{
  if (self->_recordingPointOfViewEvents)
  {
    objc_msgSend_delegate(self, a2, v2);
    if (objc_opt_respondsToSelector())
    {
      v6 = objc_msgSend_delegate(self, v4, v5);
      objc_msgSend_didChangePointOfView(v6, v7, v8);
    }

    self->_recordingPointOfViewEvents = 0;
  }
}

- (id).cxx_construct
{
  *(self + 45) = 0;
  *(self + 46) = 0;
  *(self + 44) = self + 360;
  *(self + 376) = 0u;
  *(self + 392) = 0u;
  *(self + 408) = 0u;
  *(self + 424) = 0u;
  *(self + 440) = 0u;
  *(self + 456) = 0u;
  return self;
}

@end