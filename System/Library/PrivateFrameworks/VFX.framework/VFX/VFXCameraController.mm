@interface VFXCameraController
- (BOOL)_isLocationValid:(CGPoint)valid inViewport:(CGSize)viewport;
- (BOOL)useOrbitInteractionMode;
- (VFXCameraController)init;
- (__n128)_targetRelativeToPointOfViewParent;
- (double)_convertRotationFromWorldToPointOfView:(void *)view;
- (double)_mapToSphere:(float64_t)sphere inViewport:(double)viewport;
- (double)_orientationForMode;
- (double)_orthographicViewSpaceTranslationForZoomAtScreenPoint:(float)point scaleDelta:(float64_t)delta viewport:(float64_t)viewport;
- (double)lookAtWith:(float32x4_t)with target:;
- (double)unrolledWorldOrientation:(float *)orientation;
- (float)maximumHorizontalAngle;
- (float)minimumHorizontalAngle;
- (void)_capOrientationAnglesToMaximum;
- (void)_directionForScreenPoint:(double)point viewport:(float64_t)viewport;
- (void)_endDraggingWithVelocity:(CGPoint)velocity;
- (void)_resetOrientationState;
- (void)_rotateByX:(float)x Y:(float)y;
- (void)_setInertiaRunning:(BOOL)running;
- (void)_translateInCameraSpaceByX:(float)x Y:(float)y Z:(float)z;
- (void)_updateArcballOrientation;
- (void)_updateInertiaAtTime:(double)time;
- (void)_updateRotation;
- (void)beginInteraction:(CGPoint)interaction withViewport:(CGSize)viewport;
- (void)clearRoll;
- (void)continueInteraction:(CGPoint)interaction withViewport:(CGSize)viewport sensitivity:(float)sensitivity;
- (void)dealloc;
- (void)dollyBy:(float)by onScreenPoint:(CGPoint)point viewport:(CGSize)viewport;
- (void)dollyToTarget:(float)target;
- (void)frameNodes:(id)nodes;
- (void)rollAroundTarget:(float)target;
- (void)rollBy:(float)by aroundScreenPoint:(CGPoint)point viewport:(CGSize)viewport;
- (void)rollCameraSpaceBy:(float)by withPoint:(CGPoint)point viewport:(CGSize)viewport;
- (void)rotateByX:(float)x Y:(float)y;
- (void)setInertiaEnabled:(BOOL)enabled;
- (void)setInteractionMode:(int64_t)mode;
- (void)setMaximumHorizontalAngle:(float)angle;
- (void)setMaximumVerticalAngle:(float)angle;
- (void)setMinimumHorizontalAngle:(float)angle;
- (void)setMinimumVerticalAngle:(float)angle;
- (void)setPointOfView:(id)view updateUpTransform:(BOOL)transform;
- (void)setSimdUp:(VFXCameraController *)self;
- (void)translateInCameraSpaceByX:(float)x Y:(float)y Z:(float)z;
- (void)translateInScreenSpaceTo:(CGPoint)to viewport:(CGSize)viewport;
@end

@implementation VFXCameraController

- (VFXCameraController)init
{
  v3.receiver = self;
  v3.super_class = VFXCameraController;
  result = [(VFXCameraController *)&v3 init];
  if (result)
  {
    *&result->_inertia.friction = 0x3F8000003D4CCCCDLL;
    result->_inertia.translationSensitivity = 1.0;
    *result->_up = xmmword_1AFE20160;
    BYTE2(result->_delegate) = 0;
    result[1].super.isa = 1;
  }

  return result;
}

- (void)dealloc
{
  objc_msgSend__setInertiaRunning_(self, v3, 0);
  v4.receiver = self;
  v4.super_class = VFXCameraController;
  [(VFXCameraController *)&v4 dealloc];
}

- (void)setPointOfView:(id)view updateUpTransform:(BOOL)transform
{
  if (self->_interactionMode != view)
  {
    objc_msgSend__setInertiaRunning_(self, a2, 0, transform);

    self->_interactionMode = view;
  }
}

- (void)setInteractionMode:(int64_t)mode
{
  if (self[1].super.isa != mode)
  {
    objc_msgSend__setInertiaRunning_(self, a2, 0);
    self[1].super.isa = mode;
  }
}

- (void)setInertiaEnabled:(BOOL)enabled
{
  self->_inertia.inertiaEnabled = enabled;
  if (objc_msgSend_isInertiaRunning(self, a2, enabled) && !enabled)
  {

    objc_msgSend__setInertiaRunning_(self, v5, 0);
  }
}

- (void)setSimdUp:(VFXCameraController *)self
{
  v6 = v2;
  objc_msgSend__setInertiaRunning_(self, a2, 0);
  v4 = vmulq_f32(v6, v6);
  *&v5 = v4.f32[2] + vaddv_f32(*v4.f32);
  *v4.f32 = vrsqrte_f32(v5);
  *v4.f32 = vmul_f32(*v4.f32, vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32)));
  *self->_up = vmulq_n_f32(v6, vmul_f32(*v4.f32, vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32))).f32[0]);
}

- (float)minimumHorizontalAngle
{
  v2 = *&self->_minimumAngles[7];
  LODWORD(result) = v2;
  return result;
}

- (float)maximumHorizontalAngle
{
  v2 = *&self->_maximumAngles[7];
  LODWORD(result) = v2;
  return result;
}

- (void)setMinimumVerticalAngle:(float)angle
{
  v3 = angle / 180.0 * 3.14159265;
  if (v3 > 1.57079633)
  {
    v3 = 1.57079633;
  }

  v4 = fmax(v3, -1.57079633);
  *&self->_maximumAngles[3] = v4;
}

- (void)setMinimumHorizontalAngle:(float)angle
{
  v3 = angle / 180.0 * 3.14159265;
  if (v3 > 3.14159265)
  {
    v3 = 3.14159265;
  }

  v4 = fmax(v3, -3.14159265);
  *&self->_minimumAngles[7] = v4;
}

- (void)setMaximumVerticalAngle:(float)angle
{
  v3 = angle / 180.0 * 3.14159265;
  if (v3 > 1.57079633)
  {
    v3 = 1.57079633;
  }

  v4 = fmax(v3, -1.57079633);
  *(&self->_automaticTarget + 1) = v4;
}

- (void)setMaximumHorizontalAngle:(float)angle
{
  v3 = angle / 180.0 * 3.14159265;
  if (v3 > 3.14159265)
  {
    v3 = 3.14159265;
  }

  v4 = fmax(v3, -3.14159265);
  *&self->_maximumAngles[7] = v4;
}

- (void)translateInCameraSpaceByX:(float)x Y:(float)y Z:(float)z
{
  objc_msgSend__setInertiaRunning_(self, a2, 0);
  *&v11 = x;
  *&v12 = y;
  *&v13 = z;

  objc_msgSend__translateInCameraSpaceByX_Y_Z_(self, v9, v10, v11, v12, v13);
}

- (void)translateInScreenSpaceTo:(CGPoint)to viewport:(CGSize)viewport
{
  objc_msgSend__setInertiaRunning_(self, a2, 0);
  __asm { FMOV            V1.2D, #-0.5 }

  v12 = objc_msgSend_pointOfView(self, v10, v11);

  MEMORY[0x1EEE66B58](v12, sel_localTranslateBy_, v13);
}

- (void)rotateByX:(float)x Y:(float)y
{
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_cameraRotationWillStartForController_(self->_pointOfView, v7, self);
  }

  objc_msgSend__setInertiaRunning_(self, v7, 0);
  if ((self->_delegate & 1) == 0)
  {
    objc_msgSend__resetOrientationState(self, v8, v9);
  }

  v10 = x / 180.0 * 3.14159265;
  *&v10 = v10;
  v11 = y / 180.0 * 3.14159265;
  *&v11 = v11;
  objc_msgSend__rotateByX_Y_(self, v8, v9, v10, v11);
  if (objc_opt_respondsToSelector())
  {
    pointOfView = self->_pointOfView;

    MEMORY[0x1EEE66B58](pointOfView, sel_cameraRotationDidEndForController_, self);
  }
}

- (void)rollCameraSpaceBy:(float)by withPoint:(CGPoint)point viewport:(CGSize)viewport
{
  height = viewport.height;
  width = viewport.width;
  y = point.y;
  x = point.x;
  objc_msgSend__setInertiaRunning_(self, a2, 0);
  objc_msgSend__directionForScreenPoint_viewport_(self, v11, v12, x, y, width, height);
  v13 = by / 180.0 * 3.14159265;
  __sincosf_stret(v13 * 0.5);
  v16 = objc_msgSend_pointOfView(self, v14, v15);

  MEMORY[0x1EEE66B58](v16, sel_localRotateBy_, v17);
}

- (void)rollAroundTarget:(float)target
{
  objc_msgSend__setInertiaRunning_(self, a2, 0);
  objc_msgSend_simdTarget(self, v5, v6);
  v9 = objc_msgSend_pointOfView(self, v7, v8);
  objc_msgSend_worldTransform(v9, v10, v11);
  __invert_f4(v18);
  v12 = target / 180.0 * 3.14159265;
  __sincosf_stret(v12 * 0.5);
  v15 = objc_msgSend_pointOfView(self, v13, v14);

  MEMORY[0x1EEE66B58](v15, sel_localRotateBy_, v16);
}

- (void)dollyToTarget:(float)target
{
  objc_msgSend__setInertiaRunning_(self, a2, 0);
  v6 = objc_msgSend_pointOfView(self, v4, v5);
  objc_msgSend_transform(v6, v7, v8);
  __invert_f4(v25);
  v11 = objc_msgSend_pointOfView(self, v9, v10);
  objc_msgSend_worldPosition(v11, v12, v13);
  v16 = objc_msgSend_pointOfView(self, v14, v15);
  objc_msgSend_localFront(VFXNode, v17, v18);
  objc_msgSend_convertVector_toNode_(v16, v19, 0);
  v22 = objc_msgSend_pointOfView(self, v20, v21);

  MEMORY[0x1EEE66B58](v22, sel_localTranslateBy_, v23);
}

- (BOOL)useOrbitInteractionMode
{
  if (objc_msgSend_interactionMode(self, a2, v2) == 4 || objc_msgSend_interactionMode(self, v4, v5) == 3)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v8 = objc_msgSend_interactionMode(self, v6, v7);
    if (v8 != 1)
    {
      LOBYTE(v8) = objc_msgSend_interactionMode(self, v9, v10) == 2;
    }
  }

  return v8;
}

- (double)unrolledWorldOrientation:(float *)orientation
{
  v5 = objc_msgSend_pointOfView(self, a2, orientation);
  objc_msgSend_worldOrientation(v5, v6, v7);
  v124 = v8;
  v11 = objc_msgSend_pointOfView(self, v9, v10);
  objc_msgSend_worldFront(v11, v12, v13);
  v126 = v14;
  objc_msgSend_simdUp(self, v15, v16);
  v20 = vmulq_f32(v126, v19);
  if (fabsf(fabsf(fminf(fmaxf(v20.f32[2] + vaddv_f32(*v20.f32), -1.0), 1.0)) + -1.0) >= 0.01)
  {
    objc_msgSend_simdTarget(self, v17, v18);
    v127 = v25;
    v28 = objc_msgSend_pointOfView(self, v26, v27);
    objc_msgSend_worldPosition(v28, v29, v30);
    v114 = vsubq_f32(v127, v31);
    if (objc_msgSend_useOrbitInteractionMode(self, v32, v33))
    {
      v36 = v114;
      v37 = vcgeq_f32(vdupq_n_s32(0x3C23D70Au), vabdq_f32(0, v114));
      v37.i32[3] = v37.i32[2];
      v38 = v124;
      if ((vminvq_u32(v37) & 0x80000000) != 0)
      {
        v41 = 0;
      }

      else
      {
        v39 = vmulq_f32(v114, v114);
        *&v40 = v39.f32[2] + vaddv_f32(*v39.f32);
        *v39.f32 = vrsqrte_f32(v40);
        *v39.f32 = vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32)));
        v36 = vmulq_n_f32(v114, vmul_f32(*v39.f32, vrsqrts_f32(v40, vmul_f32(*v39.f32, *v39.f32))).f32[0]);
        v41 = 1;
      }
    }

    else
    {
      v41 = 0;
      v38 = v124;
      v36 = v114;
    }

    v42 = 0;
    v113 = vdupq_lane_s32(*v36.i8, 0);
    v115 = *v36.i8;
    v112 = vdupq_laneq_s32(v36, 2);
    v43 = 0.0;
    do
    {
      v125 = v38;
      v128 = vmulq_f32(v38, xmmword_1AFE21390);
      objc_msgSend_simdUp(self, v34, v35, *&v112, *&v113);
      v46 = v128;
      v48 = v47;
      v49 = vmulq_f32(v128, xmmword_1AFE21390);
      v50 = vnegq_f32(v49);
      v51 = vtrn2q_s32(v49, vtrn1q_s32(v49, v50));
      v52 = vextq_s8(v51, v51, 8uLL);
      v53 = vextq_s8(v49, v50, 8uLL);
      v54 = vrev64q_s32(v49);
      v54.i32[0] = v50.i32[1];
      v54.i32[3] = v50.i32[2];
      if (v41)
      {
        v55 = vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v53, v115, 1), v52, v113), v54, v112);
        v56 = vnegq_f32(v55);
        v57 = vtrn2q_s32(v55, vtrn1q_s32(v55, v56));
        v58 = vrev64q_s32(v55);
        v58.i32[0] = v56.i32[1];
        v58.i32[3] = v56.i32[2];
        v59 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v55, v128, 3), v58, vdupq_laneq_s32(v128, 2)), vmlaq_f32(vmulq_lane_f32(vextq_s8(v55, v56, 8uLL), *v128.f32, 1), vextq_s8(v57, v57, 8uLL), vdupq_lane_s32(*v128.f32, 0)));
      }

      else
      {
        v118 = v52;
        v120 = v48;
        v116 = v53;
        v117 = v54;
        objc_msgSend_localFront(VFXNode, v44, v45);
        v53 = v116;
        v54 = v117;
        v52 = v118;
        v48 = v120;
        v46 = v128;
      }

      v123 = v59;
      v60 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v53, *v48.f32, 1), v52, v48.f32[0]), v54, v48, 2);
      v61 = vnegq_f32(v60);
      v62 = vtrn2q_s32(v60, vtrn1q_s32(v60, v61));
      v63 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v60, v61, 8uLL), *v46.f32, 1), vextq_s8(v62, v62, 8uLL), v46.f32[0]);
      v64 = vrev64q_s32(v60);
      v64.i32[0] = v61.i32[1];
      v64.i32[3] = v61.i32[2];
      v119 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v60, v46, 3), v64, v46, 2), v63);
      objc_msgSend_localUp(VFXNode, v44, v45);
      v121 = v65;
      objc_msgSend_localFront(VFXNode, v66, v67);
      v69 = vmulq_f32(v119, v68);
      v70.f32[0] = v69.f32[2] + vaddv_f32(*v69.f32);
      v71 = vmlsq_lane_f32(v119, v68, v70, 0);
      v72 = v68;
      v73 = vmulq_f32(v71, v71);
      v73.f32[0] = v73.f32[2] + vaddv_f32(*v73.f32);
      v74 = vdupq_lane_s32(*v73.f32, 0);
      v74.i32[3] = 0;
      v75 = vrsqrteq_f32(v74);
      v76 = vmulq_f32(v75, vrsqrtsq_f32(v74, vmulq_f32(v75, v75)));
      v77 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v73.f32[0] != 0.0)), 0x1FuLL));
      v77.i32[3] = 0;
      v78 = vbslq_s8(vcltzq_s32(v77), vmulq_f32(vmulq_f32(v76, vrsqrtsq_f32(v74, vmulq_f32(v76, v76))), v71), v71);
      v129 = v72;
      v79 = vmulq_f32(v121, v72);
      v79.f32[0] = v79.f32[2] + vaddv_f32(*v79.f32);
      v80 = vmlsq_lane_f32(v121, v72, *v79.f32, 0);
      v81 = vmulq_f32(v80, v80);
      v82 = v80;
      v81.f32[0] = v81.f32[2] + vaddv_f32(*v81.f32);
      v83 = vdupq_lane_s32(*v81.f32, 0);
      v83.i32[3] = 0;
      v84 = vrsqrteq_f32(v83);
      v85 = vmulq_f32(v84, vrsqrtsq_f32(v83, vmulq_f32(v84, v84)));
      v86 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v81.f32[0] != 0.0)), 0x1FuLL));
      v86.i32[3] = 0;
      v87 = vbslq_s8(vcltzq_s32(v86), vmulq_f32(v82, vmulq_f32(v85, vrsqrtsq_f32(v83, vmulq_f32(v85, v85)))), v82);
      v88 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v87, v87), v87, 0xCuLL), vnegq_f32(v78)), v87, vextq_s8(vuzp1q_s32(v78, v78), v78, 0xCuLL));
      v122 = vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL);
      v89 = vmulq_f32(v87, v78);
      v90 = acosf(fminf(fmaxf(v89.f32[2] + vaddv_f32(*v89.f32), -1.0), 1.0));
      v91 = vmulq_f32(v129, v122);
      if ((v91.f32[2] + vaddv_f32(*v91.f32)) <= 0.0)
      {
        v92 = -v90;
      }

      else
      {
        v92 = v90;
      }

      v93 = vmulq_f32(v123, v123);
      v93.f32[0] = v93.f32[2] + vaddv_f32(*v93.f32);
      v94 = vdupq_lane_s32(*v93.f32, 0);
      v94.i32[3] = 0;
      v95 = vrsqrteq_f32(v94);
      v96 = vmulq_f32(v95, vrsqrtsq_f32(v94, vmulq_f32(v95, v95)));
      v97 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v93.f32[0] != 0.0)), 0x1FuLL));
      v97.i32[3] = 0;
      v130 = vbslq_s8(vcltzq_s32(v97), vmulq_f32(v123, vmulq_f32(v96, vrsqrtsq_f32(v94, vmulq_f32(v96, v96)))), v123);
      v99 = __sincosf_stret(v92 * -0.5);
      _S1 = v99.__cosval;
      _Q0 = vmulq_n_f32(v130, v99.__sinval);
      _Q6 = v125;
      v102 = vmlaq_laneq_f32(vmulq_n_f32(v125, v99.__cosval), _Q0, v125, 3);
      v103 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL), vnegq_f32(v125)), _Q0, vextq_s8(vuzp1q_s32(_Q6, _Q6), v125, 0xCuLL));
      __asm { FMLA            S0, S1, V6.S[3] }

      v38 = vaddq_f32(v102, vextq_s8(vuzp1q_s32(v103, v103), v103, 0xCuLL));
      v38.i32[3] = _Q0.i32[0];
      v43 = v43 + v92;
      if (fabsf(v90) <= 0.001)
      {
        break;
      }
    }

    while (v42++ < 0x63);
    if (orientation)
    {
      *orientation = v43;
    }

    v108 = vmulq_f32(v38, v38);
    *v108.i8 = vadd_f32(*v108.i8, *&vextq_s8(v108, v108, 8uLL));
    v109 = vdupq_lane_s32(vadd_f32(*v108.i8, vdup_lane_s32(*v108.i8, 1)), 0);
    v110 = vrsqrteq_f32(v109);
    v111 = vmulq_f32(v110, vrsqrtsq_f32(v109, vmulq_f32(v110, v110)));
    *&result = vbslq_s8(vceqzq_f32(v109), v38, vmulq_f32(v38, vmulq_f32(v111, vrsqrtsq_f32(v109, vmulq_f32(v111, v111))))).u64[0];
  }

  else
  {
    if (orientation)
    {
      *orientation = 0.0;
    }

    v21 = objc_msgSend_pointOfView(self, v17, v18);

    objc_msgSend_worldOrientation(v21, v22, v23);
  }

  return result;
}

- (void)clearRoll
{
  objc_msgSend__setInertiaRunning_(self, a2, 0);
  objc_msgSend_unrolledWorldOrientation_(self, v3, 0);
  v10 = v4;
  v7 = objc_msgSend_pointOfView(self, v5, v6);

  objc_msgSend_setWorldOrientation_(v7, v8, v9, v10);
}

- (void)frameNodes:(id)nodes
{
  v96[1] = *MEMORY[0x1E69E9840];
  objc_msgSend__setInertiaRunning_(self, a2, 0);
  v7 = objc_msgSend_pointOfView(self, v5, v6);
  if (objc_msgSend_camera(v7, v8, v9))
  {
    v12 = objc_msgSend_pointOfView(self, v10, v11);
    v15 = objc_msgSend_world(v12, v13, v14);
    if (v15)
    {
      v17 = v15;
      VFXNodeGetBoundingSphere(nodes, 0x1010101, v16);
      v21 = v20.f32[3];
      if (v20.f32[3] != 0.0)
      {
        v95 = v20;
        v22 = objc_msgSend_pointOfView(self, v18, v19);
        v25 = objc_msgSend_camera(v22, v23, v24);
        if (objc_msgSend_usesOrthographicProjection(v25, v26, v27))
        {
          v96[0] = objc_msgSend_rootNode(v17, v28, v29);
          v31 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v30, v96, 1);
          VFXNodeGetBoundingSphere(v31, 0x10000, v32);
          v34 = vsubq_f32(v95, v33);
          v35 = vmulq_f32(v34, v34);
          v36 = v33.f32[3] + sqrtf(v35.f32[2] + vaddv_f32(*v35.f32));
          v39 = objc_msgSend_pointOfView(self, v37, v38);
          v42 = objc_msgSend_camera(v39, v40, v41);
          objc_msgSend_zNear(v42, v43, v44);
          *&v46 = v45 + v36;
          v92 = v46;
          v49 = objc_msgSend_pointOfView(self, v47, v48);
          v52 = objc_msgSend_camera(v49, v50, v51);
          *&v53 = v21 * 1.33;
          objc_msgSend_setOrthographicScale_(v52, v54, v55, v53);
        }

        else
        {
          v58 = objc_msgSend_pointOfView(self, v28, v29);
          v61 = objc_msgSend_camera(v58, v59, v60);
          objc_msgSend_fieldOfView(v61, v62, v63);
          v65 = (v64 * 0.5) / 180.0 * 3.14159265;
          v66 = v21 / sinf(v65);
          v69 = objc_msgSend_pointOfView(self, v67, v68);
          v72 = objc_msgSend_camera(v69, v70, v71);
          objc_msgSend_zNear(v72, v73, v74);
          *&v76 = v75 + v66;
          v92 = v76;
        }

        v77 = objc_msgSend_pointOfView(self, v56, v57, v92);
        objc_msgSend_worldFront(v77, v78, v79);
        v81 = vmulq_f32(v80, v80);
        *&v82 = v81.f32[2] + vaddv_f32(*v81.f32);
        *v81.f32 = vrsqrte_f32(v82);
        *v81.f32 = vmul_f32(*v81.f32, vrsqrts_f32(v82, vmul_f32(*v81.f32, *v81.f32)));
        *&v94 = vmlsq_lane_f32(v95, vmulq_n_f32(v80, vmul_f32(*v81.f32, vrsqrts_f32(v82, vmul_f32(*v81.f32, *v81.f32))).f32[0]), v93, 0).u64[0];
        v85 = objc_msgSend_pointOfView(self, v83, v84);
        objc_msgSend_setPosition_(v85, v86, v87, v94);
        if (objc_msgSend_automaticTarget(self, v88, v89))
        {
          objc_msgSend_setSimdTarget_(self, v90, v91, *v95.i64);
        }
      }
    }
  }
}

- (double)lookAtWith:(float32x4_t)with target:
{
  objc_msgSend_simdUp(self, v3, v4);
  v5 = vsubq_f32(with, a2);
  v6 = vmulq_f32(v5, v5);
  *&v7 = v6.f32[2] + vaddv_f32(*v6.f32);
  v8 = vrsqrte_f32(v7);
  v9 = vmul_f32(v8, vrsqrts_f32(v7, vmul_f32(v8, v8)));
  v10 = vmulq_n_f32(vnegq_f32(v5), vmul_f32(v9, vrsqrts_f32(v7, vmul_f32(v9, v9))).f32[0]);
  v12 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), vnegq_f32(v11)), v10, vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));
  v13 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
  v14 = vmulq_f32(v12, v12);
  *&v15 = v14.f32[1] + (v14.f32[2] + v14.f32[0]);
  *v14.f32 = vrsqrte_f32(v15);
  *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
  *&result = vmulq_n_f32(v13, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]).u64[0];
  return result;
}

- (void)beginInteraction:(CGPoint)interaction withViewport:(CGSize)viewport
{
  height = viewport.height;
  y = interaction.y;
  width = viewport.width;
  x = interaction.x;
  objc_msgSend__setInertiaRunning_(self, a2, 0);
  v5.f64[0] = width;
  v5.f64[1] = height;
  v42 = v5;
  LOBYTE(self->_delegate) = 1;
  if (objc_msgSend_automaticTarget(self, v6, v7))
  {
    v10 = objc_msgSend_pointOfView(self, v8, v9);
    v13 = objc_msgSend_worldRef(v10, v11, v12);
    if (!v13)
    {
      return;
    }

    v15 = v13;
    v16.f64[0] = x;
    v41 = vcvt_hight_f32_f64(0, v42);
    v16.f64[1] = y;
    v17 = vcvt_f32_f64(v16);
    sub_1AF1CEA20(v13, v14);
    v20 = objc_msgSend_pointOfView(self, v18, v19);
    v23 = objc_msgSend_nodeRef(v20, v21, v22);
    v25 = sub_1AF286C78(v15, v23, 0, *&v17, v41, v24);
    sub_1AF1CEA9C(v15, v26);
    if (v25)
    {
      v27 = objc_msgSend_hitTestResultsFromHitTestResultRef_(VFXHitTestResult, v8, v25);
      CFRelease(v25);
      if (objc_msgSend_count(v27, v28, v29))
      {
        v30 = objc_msgSend_objectAtIndex_(v27, v8, 0);
        objc_msgSend_worldCoordinates(v30, v31, v32);
        objc_msgSend_setTarget_(self, v33, v34);
      }
    }
  }

  else
  {
    v35.f64[0] = x;
    v35.f64[1] = y;
    v17 = vcvt_f32_f64(v35);
  }

  *self->_anon_70 = v17;
  *&self->_anon_70[16] = v17;
  objc_msgSend__resetOrientationState(self, v8, v9, *&v41);
  if (objc_msgSend_interactionMode(self, v36, v37) == 3 || objc_msgSend_interactionMode(self, v38, v39) == 4)
  {
    *self->_anon_90 = vmla_f32(vneg_f32(*self->_anon_70), 0x3F0000003F000000, vcvt_f32_f64(v42));
    objc_msgSend__mapToSphere_inViewport_(self, v38, v39, x, y, width, height);
    *&self->_anon_90[16] = v40;
  }
}

- (void)continueInteraction:(CGPoint)interaction withViewport:(CGSize)viewport sensitivity:(float)sensitivity
{
  height = viewport.height;
  width = viewport.width;
  y = interaction.y;
  *&self->_anon_70[8] = vcvt_f32_f64(interaction);
  if (viewport.width >= viewport.height)
  {
    v10 = viewport.width;
  }

  else
  {
    v10 = viewport.height;
  }

  v11 = 360.0 / v10 * sensitivity;
  self->_inertia.rotationSensitivity = v11;
  self->_inertia.translationSensitivity = sensitivity;
  if (!objc_msgSend_interactionMode(self, a2, v5, interaction, *&interaction.y) || objc_msgSend_interactionMode(self, v12, v13) == 1 || objc_msgSend_interactionMode(self, v12, v13) == 2)
  {
    v14 = *&self->_anon_70[8];
    v15 = COERCE_DOUBLE(vmul_n_f32(vsub_f32(*self->_anon_70, *&v14), self->_inertia.rotationSensitivity));
    LODWORD(v14) = HIDWORD(v15);
    objc_msgSend_rotateByX_Y_(self, v12, v13, v15, v14);
    *self->_anon_70 = *&self->_anon_70[8];
  }

  else if (objc_msgSend_interactionMode(self, v12, v13) == 3 || objc_msgSend_interactionMode(self, v16, v17) == 4)
  {
    objc_msgSend__mapToSphere_inViewport_(self, v16, v17, v30, v31, width, height);
    *&self->_anon_90[32] = v18;
    objc_msgSend__updateArcballOrientation(self, v19, v20);
  }

  else if (objc_msgSend_interactionMode(self, v16, v17) == 5)
  {
    v23 = vsub_f32(*&self->_anon_70[8], *&self->_anon_70[16]);
    v24 = COERCE_DOUBLE(vmul_n_f32(v23, self->_inertia.translationSensitivity));
    v23.f32[0] = -*&v24;
    LODWORD(v24) = HIDWORD(v24);
    objc_msgSend__translateInCameraSpaceByX_Y_Z_(self, v21, v22, *&v23, v24, 0.0);
  }

  else if (objc_msgSend_interactionMode(self, v21, v22) == 6)
  {
    v28 = COERCE_DOUBLE(vmul_n_f32(vsub_f32(*&self->_anon_70[8], *&self->_anon_70[16]), self->_inertia.translationSensitivity));
    *&v27 = -*(&v28 + 1);
    objc_msgSend__translateInCameraSpaceByX_Y_Z_(self, v25, v26, v28, 0.0, v27);
  }

  *&self->_anon_70[16] = *&self->_anon_70[8];
}

- (void)rollBy:(float)by aroundScreenPoint:(CGPoint)point viewport:(CGSize)viewport
{
  height = viewport.height;
  width = viewport.width;
  y = point.y;
  x = point.x;
  objc_msgSend__setInertiaRunning_(self, a2, 0);
  objc_msgSend__directionForScreenPoint_viewport_(self, v11, v12, x, y, width, height);
  v14 = vmulq_f32(v13, v13);
  v14.f32[0] = v14.f32[2] + vaddv_f32(*v14.f32);
  v15 = vdupq_lane_s32(*v14.f32, 0);
  v16 = by / 180.0 * 3.14159265;
  v15.i32[3] = 0;
  v17 = vrsqrteq_f32(v15);
  v18 = vmulq_f32(v17, vrsqrtsq_f32(v15, vmulq_f32(v17, v17)));
  v19 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v14.f32[0] != 0.0)), 0x1FuLL));
  v19.i32[3] = 0;
  v39 = vbslq_s8(vcltzq_s32(v19), vmulq_f32(v13, vmulq_f32(v18, vrsqrtsq_f32(v15, vmulq_f32(v18, v18)))), v13);
  v20 = __sincosf_stret(v16 * 0.5);
  v40 = vmulq_n_f32(v39, v20.__sinval);
  v23 = objc_msgSend_pointOfView(self, v21, v22);
  objc_msgSend_orientation(v23, v24, v25);
  _S5 = v20.__cosval;
  v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL), vnegq_f32(_Q0)), v40, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
  __asm { FMLA            S1, S5, V0.S[3] }

  *&v41 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(_Q0, v20.__cosval), v40, _Q0, 3), vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL)).u64[0];
  v36 = objc_msgSend_pointOfView(self, v34, v35);

  objc_msgSend_setOrientation_(v36, v37, v38, v41);
}

- (void)dollyBy:(float)by onScreenPoint:(CGPoint)point viewport:(CGSize)viewport
{
  height = viewport.height;
  width = viewport.width;
  y = point.y;
  x = point.x;
  objc_msgSend__setInertiaRunning_(self, a2, 0);
  objc_msgSend__directionForScreenPoint_viewport_(self, v10, v11, x, y, width, height);
  v14 = objc_msgSend_pointOfView(self, v12, v13);

  MEMORY[0x1EEE66B58](v14, sel_localTranslateBy_, v15);
}

- (void)_resetOrientationState
{
  v4 = objc_msgSend_pointOfView(self, a2, v2);
  objc_msgSend_worldTransform(v4, v5, v6);
  *&self->_anon_10[16] = v9;
  *&self->_anon_10[32] = v10;
  *&self->_anon_10[48] = v11;
  *&self->_anon_10[64] = v12;
  v13 = vmulq_f32(v9, v9);
  v14 = vmulq_f32(v10, v10);
  v15 = vmulq_f32(v11, v11);
  v16 = vzip2q_s32(v13, v15);
  v17 = vzip1q_s32(vzip1q_s32(v13, v15), v14);
  v18 = vtrn2q_s32(v13, v14);
  v18.i32[2] = v15.i32[1];
  v19 = vaddq_f32(vzip1q_s32(v16, vdupq_laneq_s32(v14, 2)), vaddq_f32(v17, v18));
  v18.i64[0] = 0x80000000800000;
  v18.i64[1] = 0x80000000800000;
  v20 = vcgeq_f32(v18, v19);
  v19.i32[3] = 0;
  v21 = vrsqrteq_f32(v19);
  v22 = vmulq_f32(v21, vrsqrtsq_f32(v19, vmulq_f32(v21, v21)));
  v23 = v20;
  v23.i32[3] = 0;
  v24 = vbslq_s8(vcltzq_s32(v23), v19, vmulq_f32(v22, vrsqrtsq_f32(v19, vmulq_f32(v22, v22))));
  v25 = vmulq_n_f32(v9, v24.f32[0]);
  v26 = vmulq_lane_f32(v10, *v24.f32, 1);
  v27 = vmulq_laneq_f32(v11, v24, 2);
  v28 = vuzp1q_s32(v27, v27);
  v29 = vuzp1q_s32(v26, v26);
  v30 = v25;
  if (v20.i32[0])
  {
    v31 = vmlaq_f32(vmulq_f32(vextq_s8(v28, v27, 0xCuLL), vnegq_f32(v26)), v27, vextq_s8(v29, v26, 0xCuLL));
    v30 = vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL);
  }

  v32 = vuzp1q_s32(v25, v25);
  v33 = v26;
  if (v20.i32[1])
  {
    v34 = vmlaq_f32(vmulq_f32(vextq_s8(v32, v25, 0xCuLL), vnegq_f32(v27)), v25, vextq_s8(v28, v27, 0xCuLL));
    v33 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
  }

  if (v20.i32[2])
  {
    v35 = vmlaq_f32(vmulq_f32(vextq_s8(v29, v26, 0xCuLL), vnegq_f32(v25)), v26, vextq_s8(v32, v25, 0xCuLL));
    v27 = vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL);
  }

  v36 = (*v30.i32 + *&v33.i32[1]) + v27.f32[2];
  if (v36 <= 0.0)
  {
    if (*v30.i32 < *&v33.i32[1] || *v30.i32 < v27.f32[2])
    {
      if (*&v33.i32[1] <= v27.f32[2])
      {
        v96 = vzip2q_s32(v30, v33).u64[0];
        v97 = __PAIR64__(v30.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v27.f32[2] + 1.0) - *v30.i32) - *&v33.i32[1])));
        v98 = vdup_lane_s32(*v33.i8, 0);
        v99 = vsub_f32(*v30.i8, v98);
        v98.i32[0] = v97.i32[0];
        v98.i32[0] = vmul_f32(v97, v98).u32[0];
        v98.i32[1] = v99.i32[1];
        *v38.f32 = vadd_f32(v96, *v27.f32);
        *&v38.u32[2] = v98;
        v39 = 0.5 / v97.f32[0];
        goto LABEL_9;
      }

      v43 = sqrtf(((*&v33.i32[1] + 1.0) - *v30.i32) - v27.f32[2]);
      v47.f32[0] = *&v30.i32[1] + *v33.i32;
      v42 = vzip2q_s32(v30, v33).u64[0];
      v47.f32[1] = v43 * v43;
      *&v47.u32[2] = vext_s8(vadd_f32(*v27.f32, v42), vsub_f32(*v27.f32, v42), 4uLL);
    }

    else
    {
      v43 = sqrtf(((*v30.i32 + 1.0) - *&v33.i32[1]) - v27.f32[2]);
      v47.f32[0] = v43 * v43;
      v44 = *&v30.i32[1] + *v33.i32;
      v45 = vzip2q_s32(v30, v33).u64[0];
      LODWORD(v46) = vadd_f32(v45, *v27.f32).u32[0];
      HIDWORD(v46) = vsub_f32(v45, *&v27).i32[1];
      v47.f32[1] = v44;
      v47.i64[1] = v46;
    }

    v40 = vmulq_n_f32(v47, 0.5 / v43);
    goto LABEL_18;
  }

  v37 = sqrtf(v36 + 1.0);
  *v38.f32 = vsub_f32(*&vzip2q_s32(v33, vuzp1q_s32(v33, v27)), *&vtrn2q_s32(v27, vzip2q_s32(v27, v30)));
  v38.f32[2] = *&v30.i32[1] - *v33.i32;
  v38.f32[3] = v37 * v37;
  v39 = 0.5 / v37;
LABEL_9:
  v40 = vmulq_n_f32(v38, v39);
LABEL_18:
  *&self->_anon_10[80] = v40;
  *self->_anon_10 = 0;
  v48 = vmvn_s8(vceqz_f32(*&self->_minimumAngles[7]));
  if ((vpmax_u32(v48, v48).u32[0] & 0x80000000) != 0 || (v49.i64[0] = 0, v50 = vmvn_s8(vceqz_f32(*&self->_maximumAngles[7])), (vpmax_u32(v50, v50).u32[0] & 0x80000000) != 0))
  {
    v51 = objc_msgSend_interactionMode(self, v7, v8);
    v54 = objc_msgSend_pointOfView(self, v52, v53);
    if (v51)
    {
      objc_msgSend_worldPosition(v54, v55, v56);
      v103 = v57;
      objc_msgSend_simdTarget(self, v58, v59);
      v63 = vsubq_f32(v103, v62);
    }

    else
    {
      objc_msgSend_worldFront(v54, v55, v56);
      v63 = vnegq_f32(v64);
    }

    v104 = v63;
    objc_msgSend_simdUp(self, v60, v61);
    v66 = vmulq_f32(v104, v65);
    v66.f32[0] = v66.f32[2] + vaddv_f32(*v66.f32);
    v100 = vmlsq_lane_f32(v104, v65, *v66.f32, 0);
    v102 = atan2f(v100.f32[0], v100.f32[2]);
    v69 = objc_msgSend_pointOfView(self, v67, v68);
    objc_msgSend_worldRight(v69, v70, v71);
    v73 = vmulq_f32(v72, v100);
    v74.f32[0] = v73.f32[2] + vaddv_f32(*v73.f32);
    v75 = vmlsq_lane_f32(v100, v72, v74, 0);
    v76 = v72;
    v101 = v72;
    v77 = vmulq_f32(v75, v75);
    v77.f32[0] = v77.f32[2] + vaddv_f32(*v77.f32);
    v78 = vdupq_lane_s32(*v77.f32, 0);
    v78.i32[3] = 0;
    v79 = vrsqrteq_f32(v78);
    v80 = vmulq_f32(v79, vrsqrtsq_f32(v78, vmulq_f32(v79, v79)));
    v81 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v77.f32[0] != 0.0)), 0x1FuLL));
    v81.i32[3] = 0;
    v82 = vbslq_s8(vcltzq_s32(v81), vmulq_f32(vmulq_f32(v80, vrsqrtsq_f32(v78, vmulq_f32(v80, v80))), v75), v75);
    v83 = vmulq_f32(v104, v76);
    v83.f32[0] = v83.f32[2] + vaddv_f32(*v83.f32);
    v84 = vmlsq_lane_f32(v104, v76, *v83.f32, 0);
    v85 = vmulq_f32(v84, v84);
    v86 = v84;
    v85.f32[0] = v85.f32[2] + vaddv_f32(*v85.f32);
    v87 = vdupq_lane_s32(*v85.f32, 0);
    v87.i32[3] = 0;
    v88 = vrsqrteq_f32(v87);
    v89 = vmulq_f32(v88, vrsqrtsq_f32(v87, vmulq_f32(v88, v88)));
    v90 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v85.f32[0] != 0.0)), 0x1FuLL));
    v90.i32[3] = 0;
    v91 = vbslq_s8(vcltzq_s32(v90), vmulq_f32(v86, vmulq_f32(v89, vrsqrtsq_f32(v87, vmulq_f32(v89, v89)))), v86);
    v92 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v91, v91), v91, 0xCuLL), vnegq_f32(v82)), v91, vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL));
    v105 = vextq_s8(vuzp1q_s32(v92, v92), v92, 0xCuLL);
    v93 = vmulq_f32(v91, v82);
    v94 = acosf(fminf(fmaxf(v93.f32[2] + vaddv_f32(*v93.f32), -1.0), 1.0));
    v49 = vmulq_f32(v101, v105);
    v95 = vaddv_f32(*v49.f32);
    v49.f32[0] = v102;
    if ((v49.f32[2] + v95) <= 0.0)
    {
      v94 = -v94;
    }

    v49.f32[1] = v94;
  }

  *&self->_anon_10[8] = v49.i64[0];
}

- (void)_directionForScreenPoint:(double)point viewport:(float64_t)viewport
{
  v7 = objc_msgSend_pointOfView(self, a6, a7);
  result = objc_msgSend_nodeRef(v7, v8, v9);
  if (result)
  {
    v12 = result;
    result = sub_1AF1C3FAC(result, v11);
    if (result)
    {
      v14 = result;
      v15 = sub_1AF1C3FAC(v12, v13);
      sub_1AF1CEA20(v15, v16);
      memset(v32, 0, sizeof(v32));
      if (sub_1AF27F12C(v12, v32))
      {
        if ((v32[0] & 2) != 0)
        {
          sub_1AF27F230(v32, v12, 0, v14);
        }

        v18.f64[0] = viewport;
        v18.f64[1] = a5;
        v31 = vcvt_hight_f32_f64(0, v18);
        v33 = *sub_1AF15E62C(v32, &v31);
        __invert_f4(v33);
        __asm { FMOV            V1.4S, #-1.0 }

        v25 = sub_1AF1C3FAC(v12, v24);
        return sub_1AF1CEA9C(v25, v26);
      }

      else
      {
        v27 = sub_1AF1C3FAC(v12, v17);
        return sub_1AF1CEA9C(v27, v28);
      }
    }
  }

  return result;
}

- (void)_updateInertiaAtTime:(double)time
{
  if (self->_inertia.inertiaRunning)
  {
    v5 = (time - self->_inertia.lastSimulationTime) * 60.0;
    v6 = fmaxf(v5, 1.0);
    self->_inertia.lastSimulationTime = time;
    if (v6 >= 1)
    {
      friction = self->_inertia.friction;
      do
      {
        if (friction != 0.0)
        {
          if (v5 <= 1.0)
          {
            v8 = v5;
          }

          else
          {
            v8 = 1.0;
          }

          *self->_anon_e0 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*self->_anon_e0), 1.0 - (fmaxf(v8, 0.0) * friction)));
        }

        v5 = v5 + -1.0;
        --v6;
      }

      while (v6);
    }

    if ((objc_msgSend_drivenByDefaultNavigationCameraController(self, a2, v3) & 1) == 0)
    {
      objc_msgSend_begin(VFXTransaction, v9, v10);
      objc_msgSend_setAnimationDuration_(VFXTransaction, v11, v12, 0.0);
    }

    v13 = *self->_anon_e0;
    v14 = vmulq_f64(vcvtq_f64_f32(*&v13), vdupq_n_s64(0x3F847AE147AE147BuLL));
    *v14.f32 = vcvt_f32_f64(v14);
    v14.i32[2] = 0;
    v15 = vaddq_f32(*&self->_anon_90[32], vaddq_f32(*&self->_anon_90[16], v14));
    v16 = vmulq_f32(v15, v15);
    *&v17 = v16.f32[2] + vaddv_f32(*v16.f32);
    *v16.f32 = vrsqrte_f32(v17);
    *v16.f32 = vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32)));
    v18 = COERCE_DOUBLE(vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32))));
    *&self->_anon_90[32] = vmulq_n_f32(v15, *&v18);
    isa = self[1].super.isa;
    if (isa <= 2)
    {
      if (isa < 3)
      {
        v21 = vmul_n_f32(*&v13, self->_inertia.rotationSensitivity);
        v22 = -v21.f32[0] / 180.0 * 3.14159265;
        *&v22 = v22;
        v23 = v21.f32[1] / 180.0 * 3.14159265;
        *&v23 = v23;
        objc_msgSend__rotateByX_Y_(self, v9, v10, v22, v23);
      }
    }

    else if ((isa - 3) < 2)
    {
      objc_msgSend__updateArcballOrientation(self, v9, v10);
    }

    else if (isa == 5)
    {
      v24 = COERCE_DOUBLE(vmul_n_f32(*&v13, self->_inertia.translationSensitivity));
      *&v13 = -*&v24;
      *&v24 = -*(&v24 + 1);
      objc_msgSend__translateInCameraSpaceByX_Y_Z_(self, v9, v10, v13, v24, 0.0);
    }

    else if (isa == 6)
    {
      v20 = COERCE_DOUBLE(vmul_n_f32(*&v13, self->_inertia.translationSensitivity));
      LODWORD(v18) = HIDWORD(v20);
      objc_msgSend__translateInCameraSpaceByX_Y_Z_(self, v9, v10, v20, 0.0, v18);
    }

    if ((objc_msgSend_drivenByDefaultNavigationCameraController(self, v9, v10) & 1) == 0)
    {
      objc_msgSend_commit(VFXTransaction, v25, v26);
    }

    if (vaddv_f32(vmul_f32(*self->_anon_e0, *self->_anon_e0)) < 0.1)
    {

      objc_msgSend__setInertiaRunning_(self, v25, 0);
    }
  }
}

- (__n128)_targetRelativeToPointOfViewParent
{
  v4 = objc_msgSend_pointOfView(self, a2, a3);
  if (objc_msgSend_parentNode(v4, v5, v6))
  {
    v9 = objc_msgSend_pointOfView(self, v7, v8);
    v12 = objc_msgSend_parentNode(v9, v10, v11);
    v14 = self[16];

    objc_msgSend_convertPosition_fromNode_(v12, v13, 0, v14.n128_f64[0]);
  }

  else
  {
    return self[16];
  }

  return result;
}

- (void)_translateInCameraSpaceByX:(float)x Y:(float)y Z:(float)z
{
  v6 = objc_msgSend_pointOfView(self, a2, v5);

  MEMORY[0x1EEE66B58](v6, sel_localTranslateBy_, v7);
}

- (void)_rotateByX:(float)x Y:(float)y
{
  v5 = vceqz_f32(*&x);
  if ((vpmin_u32(v5, v5).u32[0] & 0x80000000) == 0)
  {
    v6 = vadd_f32(*&x, *self->_anon_10);
    *&v7 = *v6.i32 + -6.28318531;
    v8 = vbsl_s8(vcgtd_f64(*v6.i32, 6.28318531), __PAIR64__(v6.u32[1], v7), v6);
    *&v9 = *v8.i32 + 6.28318531;
    v10 = vbsl_s8(vcgtd_f64(-6.28318531, *v8.i32), __PAIR64__(v8.u32[1], v9), v8);
    *&v11 = *&v10.i32[1] + -6.28318531;
    v12 = vbsl_s8(vcgtd_f64(*&v10.i32[1], 6.28318531), __PAIR64__(v11, v10.u32[0]), v10);
    *&v13 = *&v12.i32[1] + 6.28318531;
    *self->_anon_10 = vbsl_s8(vcgtd_f64(-6.28318531, *&v12.i32[1]), __PAIR64__(v13, v12.u32[0]), v12);
    (MEMORY[0x1EEE66B58])(self, sel__updateRotation);
  }
}

- (double)_orientationForMode
{
  if (objc_msgSend_interactionMode(self, v1, v2))
  {
    if (objc_msgSend_interactionMode(self, v4, v5) == 1)
    {
      objc_msgSend_simdUp(self, v6, v7);
    }

    else
    {
      if (objc_msgSend_interactionMode(self, v6, v7) != 2)
      {
        v48 = xmmword_1AFE201A0;
        goto LABEL_9;
      }

      v25 = objc_msgSend_pointOfView(self, v23, v24);
      objc_msgSend_worldUp(v25, v26, v27);
    }

    v28 = vmulq_f32(v8, v8);
    v28.f32[0] = v28.f32[2] + vaddv_f32(*v28.f32);
    v29 = vdupq_lane_s32(*v28.f32, 0);
    v29.i32[3] = 0;
    v30 = vrsqrteq_f32(v29);
    v31 = vmulq_f32(v30, vrsqrtsq_f32(v29, vmulq_f32(v30, v30)));
    v32 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v28.f32[0] != 0.0)), 0x1FuLL));
    v32.i32[3] = 0;
    v57 = vbslq_s8(vcltzq_s32(v32), vmulq_f32(v8, vmulq_f32(v31, vrsqrtsq_f32(v29, vmulq_f32(v31, v31)))), v8);
    v33 = __sincosf_stret(self[4] * 0.5);
    cosval = v33.__cosval;
    v56 = vmulq_n_f32(v57, v33.__sinval);
    v36 = objc_msgSend_pointOfView(self, v34, v35);
    objc_msgSend_worldRight(v36, v37, v38);
  }

  else
  {
    v9 = objc_msgSend_pointOfView(self, v4, v5);
    objc_msgSend_simdUp(self, v10, v11);
    objc_msgSend_convertVector_fromNode_(v9, v12, 0);
    v14 = vmulq_f32(v13, v13);
    v14.f32[0] = v14.f32[2] + vaddv_f32(*v14.f32);
    v15 = vdupq_lane_s32(*v14.f32, 0);
    v15.i32[3] = 0;
    v16 = vrsqrteq_f32(v15);
    v17 = vmulq_f32(v16, vrsqrtsq_f32(v15, vmulq_f32(v16, v16)));
    v18 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v14.f32[0] != 0.0)), 0x1FuLL));
    v18.i32[3] = 0;
    v55 = vbslq_s8(vcltzq_s32(v18), vmulq_f32(v13, vmulq_f32(v17, vrsqrtsq_f32(v15, vmulq_f32(v17, v17)))), v13);
    v19 = __sincosf_stret(self[4] * 0.5);
    cosval = v19.__cosval;
    v56 = vmulq_n_f32(v55, v19.__sinval);
    objc_msgSend_localRight(VFXNode, v20, v21);
  }

  v39 = vmulq_f32(v22, v22);
  v39.f32[0] = v39.f32[2] + vaddv_f32(*v39.f32);
  v40 = vdupq_lane_s32(*v39.f32, 0);
  v40.i32[3] = 0;
  v41 = vrsqrteq_f32(v40);
  v42 = vmulq_f32(v41, vrsqrtsq_f32(v40, vmulq_f32(v41, v41)));
  v43 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v39.f32[0] != 0.0)), 0x1FuLL));
  v43.i32[3] = 0;
  v54 = vbslq_s8(vcltzq_s32(v43), vmulq_f32(v22, vmulq_f32(v42, vrsqrtsq_f32(v40, vmulq_f32(v42, v42)))), v22);
  v44 = __sincosf_stret(self[5] * 0.5);
  v45 = vmulq_n_f32(v54, v44.__sinval);
  v46 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL), vnegq_f32(v56)), v45, vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL));
  v48 = vaddq_f32(vmlaq_n_f32(vmulq_n_f32(v56, v44.__cosval), v45, cosval), vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL));
  v47 = vmulq_f32(v56, v45);
  v48.f32[3] = -((v47.f32[2] + vaddv_f32(*v47.f32)) - (cosval * v44.__cosval));
LABEL_9:
  v49 = vmulq_f32(v48, v48);
  *v49.i8 = vadd_f32(*v49.i8, *&vextq_s8(v49, v49, 8uLL));
  v50 = vdupq_lane_s32(vadd_f32(*v49.i8, vdup_lane_s32(*v49.i8, 1)), 0);
  v51 = vrsqrteq_f32(v50);
  v52 = vmulq_f32(v51, vrsqrtsq_f32(v50, vmulq_f32(v51, v51)));
  *&result = vbslq_s8(vceqzq_f32(v50), v48, vmulq_f32(v48, vmulq_f32(v52, vrsqrtsq_f32(v50, vmulq_f32(v52, v52))))).u64[0];
  return result;
}

- (void)_capOrientationAnglesToMaximum
{
  isa = self[1].super.isa;
  if (isa > 1)
  {
    return;
  }

  v3 = *self->_anon_10;
  v4 = vadd_f32(*&self->_anon_10[8], v3);
  v5.i32[0] = v4.i32[0];
  v5.i32[1] = vneg_f32(v4).i32[1];
  v6 = vbsl_s8(vceqd_s64(isa, 0), v4, v5);
  v7 = *&self->_maximumAngles[7];
  if (v7.f32[0] != 0.0 || COERCE_FLOAT(*&self->_minimumAngles[7]) != 0.0)
  {
    if ((vcgt_f32(v6, v7).u8[0] & 1) != 0 && v3.f32[0] > 0.0)
    {
      v8 = fmaxf(vadd_f32(v3, vsub_f32(v7, v6)).f32[0], 0.0);
LABEL_11:
      v3.f32[0] = v8;
      *self->_anon_10 = v3;
      goto LABEL_12;
    }

    v9 = *&self->_minimumAngles[7];
    if ((vcgt_f32(v9, v6).u8[0] & 1) != 0 && v3.f32[0] < 0.0)
    {
      v8 = vadd_f32(v3, vsub_f32(v9, v6)).f32[0];
      if (v8 > 0.0)
      {
        v8 = 0.0;
      }

      goto LABEL_11;
    }
  }

LABEL_12:
  if (v7.f32[1] != 0.0 || *&self->_maximumAngles[3] != 0.0)
  {
    if (isa)
    {
      if (v6.f32[1] > v7.f32[1])
      {
        v10 = v3.f32[1];
        if (v3.f32[1] < 0.0)
        {
          v11 = v6.f32[1] - v7.f32[1];
          goto LABEL_28;
        }
      }

      v12 = *&self->_maximumAngles[3];
      if (v6.f32[1] < v12)
      {
        v13 = v3.f32[1];
        if (v3.f32[1] > 0.0)
        {
          v14 = v6.f32[1] - v12;
LABEL_24:
          v15 = fmaxf(v14 + v13, 0.0);
LABEL_30:
          v3.f32[1] = v15;
          *self->_anon_10 = v3;
        }
      }
    }

    else
    {
      if (v6.f32[1] > v7.f32[1])
      {
        v13 = v3.f32[1];
        if (v3.f32[1] > 0.0)
        {
          v14 = v7.f32[1] - v6.f32[1];
          goto LABEL_24;
        }
      }

      v16 = *&self->_maximumAngles[3];
      if (v6.f32[1] < v16)
      {
        v10 = v3.f32[1];
        if (v3.f32[1] < 0.0)
        {
          v11 = v16 - v6.f32[1];
LABEL_28:
          v15 = v11 + v10;
          if (v15 > 0.0)
          {
            v15 = 0.0;
          }

          goto LABEL_30;
        }
      }
    }
  }
}

- (void)_updateRotation
{
  if (self[1].super.isa <= 2)
  {
    objc_msgSend__capOrientationAnglesToMaximum(self, a2, v2);
    if (objc_msgSend_useOrbitInteractionMode(self, v4, v5))
    {
      v34 = *&self->_anon_10[64];
      v32 = *&self->_anon_10[32];
      v33 = *&self->_anon_10[48];
      v31 = *&self->_anon_10[16];
      v8 = objc_msgSend_pointOfView(self, v6, v7);
      objc_msgSend_setWorldTransform_(v8, v9, v10, *&v31, *&v32, *&v33, *&v34);
      v13 = objc_msgSend_pointOfView(self, v11, v12);
      objc_msgSend__orientationForMode(self, v14, v15);
      v35 = v16;
      objc_msgSend_simdTarget(self, v17, v18);

      objc_msgSend_rotateBy_aroundTarget_(v13, v19, v20, v35, v21);
    }

    else
    {
      v36 = *&self->_anon_10[80];
      v22 = objc_msgSend_pointOfView(self, v6, v7);
      objc_msgSend_setWorldOrientation_(v22, v23, v24, *&v36);
      v27 = objc_msgSend_pointOfView(self, v25, v26);
      objc_msgSend__orientationForMode(self, v28, v29);

      MEMORY[0x1EEE66B58](v27, sel_localRotateBy_, v30);
    }
  }
}

- (double)_convertRotationFromWorldToPointOfView:(void *)view
{
  v5 = objc_msgSend_pointOfView(view, v2, v3);
  objc_msgSend_worldOrientation(v5, v6, v7);
  v30 = v8;
  v11 = objc_msgSend_pointOfView(view, v9, v10);
  objc_msgSend_worldOrientation(v11, v12, v13);
  v15 = vmulq_f32(v14, xmmword_1AFE21390);
  _S1 = v15.i32[3];
  _Q7 = a2;
  _Q6 = v30;
  v19 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), vnegq_f32(a2)), v15, vextq_s8(vuzp1q_s32(_Q7, _Q7), a2, 0xCuLL));
  v20 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a2, v15, 3), v15, a2, 3), vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL));
  __asm { FMLA            S3, S1, V7.S[3] }

  v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), vnegq_f32(v30)), v20, vextq_s8(vuzp1q_s32(_Q6, _Q6), v30, 0xCuLL));
  *&result = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v30, _S3), v20, v30, 3), vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL)).u64[0];
  __asm { FMLA            S1, S3, V6.S[3] }

  return result;
}

- (void)_updateArcballOrientation
{
  if (self[1].super.isa >= 2)
  {
    v4 = *&self->_anon_90[16];
    v3 = *&self->_anon_90[32];
    v5 = vcgeq_f32(vdupq_n_s32(0x3727C5ACu), vabdq_f32(v4, v3));
    v5.i32[3] = v5.i32[2];
    if ((vminvq_u32(v5) & 0x80000000) == 0)
    {
      v6 = vmulq_f32(v4, v3);
      v7 = v6.f32[2] + vaddv_f32(*v6.f32);
      if (fabsf(v7) < 1.0)
      {
        v30 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL), vnegq_f32(v4)), v3, vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL));
        v31 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
        v8 = acosf(v7);
        v9 = vmulq_f32(v30, v30);
        v9.f32[0] = v9.f32[1] + (v9.f32[2] + v9.f32[0]);
        v10 = vdupq_lane_s32(*v9.f32, 0);
        v10.i32[3] = 0;
        v11 = vrsqrteq_f32(v10);
        v12 = vmulq_f32(v11, vrsqrtsq_f32(v10, vmulq_f32(v11, v11)));
        v13 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v9.f32[0] != 0.0)), 0x1FuLL));
        v13.i32[3] = 0;
        v32 = vbslq_s8(vcltzq_s32(v13), vmulq_f32(v31, vmulq_f32(v12, vrsqrtsq_f32(v10, vmulq_f32(v12, v12)))), v31);
        LODWORD(v14) = *&__sincosf_stret((v8 * -2.0) * 0.5);
        objc_msgSend__convertRotationFromWorldToPointOfView_(self, v15, v16, *vmulq_n_f32(v32, v14).i64);
        v33 = v17;
        v20 = objc_msgSend_pointOfView(self, v18, v19);
        v21 = vmulq_f32(v33, v33);
        *v21.i8 = vadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
        v22 = vdupq_lane_s32(vadd_f32(*v21.i8, vdup_lane_s32(*v21.i8, 1)), 0);
        v23 = vrsqrteq_f32(v22);
        v24 = vmulq_f32(v23, vrsqrtsq_f32(v22, vmulq_f32(v23, v23)));
        v33.i64[0] = vbslq_s8(vceqzq_f32(v22), v33, vmulq_f32(v33, vmulq_f32(v24, vrsqrtsq_f32(v22, vmulq_f32(v24, v24))))).u64[0];
        objc_msgSend_simdTarget(self, v25, v26);
        objc_msgSend_rotateBy_aroundTarget_(v20, v27, v28, *v33.i64, v29);
        v3 = *&self->_anon_90[32];
      }

      *&self->_anon_90[16] = v3;
    }
  }
}

- (BOOL)_isLocationValid:(CGPoint)valid inViewport:(CGSize)viewport
{
  v4 = valid.x <= viewport.width;
  if (valid.y > viewport.height)
  {
    v4 = 0;
  }

  if (valid.y < 0.0)
  {
    v4 = 0;
  }

  return valid.x >= 0.0 && v4;
}

- (double)_mapToSphere:(float64_t)sphere inViewport:(double)viewport
{
  a2.f64[1] = sphere;
  if (*&self[40] == 3)
  {
    a2 = vaddq_f64(a2, vcvtq_f64_f32(self[18]));
  }

  if (viewport >= a5)
  {
    viewportCopy = viewport;
  }

  else
  {
    viewportCopy = a5;
  }

  *&viewportCopy = viewportCopy;
  v6 = vsubq_f64(a2, vdupq_lane_s64(COERCE__INT64((*&viewportCopy * 0.5)), 0));
  *v6.f32 = vdiv_f32(vcvt_f32_f64(v6), vdup_lane_s32(*&viewportCopy, 0));
  v7 = COERCE_FLOAT(vmul_f32(*&v6, *&v6).i32[1]) + (v6.f32[0] * v6.f32[0]);
  v8 = v7 < 0.125;
  v9 = 0.125 / sqrtf(v7);
  v10 = sqrtf(0.25 - v7);
  if (!v8)
  {
    v10 = v9;
  }

  v6.f32[2] = v10;
  v11 = vmulq_f32(v6, v6);
  *&v12 = v11.f32[2] + vaddv_f32(*v11.f32);
  *v11.f32 = vrsqrte_f32(v12);
  *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32)));
  v6.i64[0] = vmulq_n_f32(v6, vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32))).f32[0]).u64[0];
  return *v6.i64;
}

- (void)_endDraggingWithVelocity:(CGPoint)velocity
{
  if (self->_inertia.inertiaEnabled)
  {
    y = velocity.y;
    v6 = vcvt_f32_f64(velocity);
    v7 = vcge_f32(vabs_f32(v6), vdup_n_s32(0x3DCCCCCDu));
    if ((vpmax_u32(v7, v7).u32[0] & 0x80000000) != 0)
    {
      v16 = v3;
      v9 = vdiv_f32(v6, vdup_n_s32(0x42700000u));
      *self->_anon_e0 = v9;
      if (self->_inertia.friction == 0.0)
      {
        v10 = vdup_lane_s32(vcgt_f32(v9, 0), 0);
        v11 = -20.0;
        if (v9.f32[0] >= -20.0)
        {
          v12 = v9.f32[0];
        }

        else
        {
          v12 = -20.0;
        }

        v9.i32[0] = fminf(v9.f32[0], 20.0);
        v13 = vbsl_s8(v10, v9, __PAIR64__(v9.u32[1], LODWORD(v12)));
        v14 = fminf(*&v13.i32[1], 20.0);
        if (*&v13.i32[1] >= -20.0)
        {
          v11 = *&v13.i32[1];
        }

        if (*&v13.i32[1] <= 0.0)
        {
          v15 = v11;
        }

        else
        {
          v15 = v14;
        }

        *&v13.i32[1] = v15;
        *self->_anon_e0 = v13;
      }

      else
      {
        v15 = v9.f32[1];
      }

      *&self->_anon_e0[4] = -v15;
      objc_msgSend__setInertiaRunning_(self, a2, 1, v4, v16);
      self->_inertia.lastSimulationTime = CACurrentMediaTime();
    }
  }
}

- (void)_setInertiaRunning:(BOOL)running
{
  if (self->_inertia.inertiaRunning != running)
  {
    v15[7] = v3;
    v15[8] = v4;
    if (running)
    {
      objc_msgSend_delegate(self, a2, running);
      if (objc_opt_respondsToSelector())
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = sub_1AF2A9D48;
        v15[3] = &unk_1E7A7A770;
        v15[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], v15);
      }

      if ((objc_msgSend_drivenByDefaultNavigationCameraController(self, v7, v8) & 1) == 0)
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = sub_1AF2A9D84;
        v14[3] = &unk_1E7A7E5A0;
        v14[4] = self;
        *&self->_anon_e0[8] = objc_msgSend_scheduledTimerWithTimeInterval_repeats_block_(MEMORY[0x1E695DFF0], v9, 1, v14, 0.0166666667);
      }

      self->_inertia.inertiaRunning = running;
    }

    else
    {
      if ((objc_msgSend_drivenByDefaultNavigationCameraController(self, a2, running) & 1) == 0)
      {
        v12 = *&self->_anon_e0[8];
        if (v12)
        {
          objc_msgSend_invalidate(v12, v10, v11);
        }

        *&self->_anon_e0[8] = 0;
      }

      self->_inertia.inertiaRunning = running;
      objc_msgSend_delegate(self, v10, v11);
      if (objc_opt_respondsToSelector())
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1AF2A9DBC;
        block[3] = &unk_1E7A7A770;
        block[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }
  }
}

- (double)_orthographicViewSpaceTranslationForZoomAtScreenPoint:(float)point scaleDelta:(float64_t)delta viewport:(float64_t)viewport
{
  v8 = objc_msgSend_pointOfView(self, a6, a7);
  v11 = objc_msgSend_nodeRef(v8, v9, v10);
  v13 = 0.0;
  if (v11)
  {
    v14 = v11;
    v15 = sub_1AF1C3FAC(v11, v12);
    if (v15)
    {
      v17 = v15;
      v18 = sub_1AF1C3FAC(v14, v16);
      sub_1AF1CEA20(v18, v19);
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v48 = 0u;
      memset(v47, 0, sizeof(v47));
      if (sub_1AF27F12C(v14, v47))
      {
        if ((v47[0] & 4) != 0)
        {
          v33 = sub_1AF1C3FAC(v14, v20);
          v35 = sub_1AF1CEA9C(v33, v34);
          v37 = sub_1AF0D5194(v35, v36);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDF4DC8(v37);
          }
        }

        else
        {
          if ((v47[0] & 2) != 0)
          {
            sub_1AF27F230(v47, v14, 0, v17);
          }

          v21 = sub_1AF1C3FAC(v14, v20);
          sub_1AF1CEA9C(v21, v22);
          v23.f64[0] = delta;
          v23.f64[1] = viewport;
          v46 = vcvt_hight_f32_f64(0, v23);
          v57 = *sub_1AF15E62C(v47, &v46);
          v58 = __invert_f4(v57);
          v39 = v58.columns[0];
          v40 = v58.columns[1];
          v41 = v58.columns[2];
          v42 = *v58.columns[3].f32;
          *(&v48 + 2) = *(&v48 + 2) + point;
          v59 = *sub_1AF15E62C(v47, &v46);
          v60 = __invert_f4(v59);
          v24 = (*&a2 + *&a2) / delta + -1.0;
          v25 = (*(&a2 + 1) + *(&a2 + 1)) / viewport + -1.0;
          __asm { FMOV            V7.4S, #-1.0 }

          return COERCE_DOUBLE(vsub_f32(vadd_f32(v42, *&vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v39, v24), v40, v25), _Q7, v41)), vadd_f32(*v60.columns[3].f32, *&vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v60.columns[0], v24), v60.columns[1], v25), _Q7, v60.columns[2]))));
        }
      }

      else
      {
        v31 = sub_1AF1C3FAC(v14, v20);
        sub_1AF1CEA9C(v31, v32);
      }
    }
  }

  return v13;
}

@end