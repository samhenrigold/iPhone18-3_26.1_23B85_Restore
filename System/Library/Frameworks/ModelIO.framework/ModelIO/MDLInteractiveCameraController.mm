@interface MDLInteractiveCameraController
- (MDLInteractiveCameraController)init;
- (__n128)framingBounds;
- (uint64_t)setFramingBounds:(__n128)bounds;
- (void)frameObject;
- (void)update:(float)update;
@end

@implementation MDLInteractiveCameraController

- (MDLInteractiveCameraController)init
{
  v12.receiver = self;
  v12.super_class = MDLInteractiveCameraController;
  v2 = [(MDLInteractiveCameraController *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    camera = v2->_camera;
    v2->_camera = v3;

    *v2->_lookAt = 0u;
    *v2->_dragPoint = 0u;
    __asm { FMOV            V1.2S, #1.0 }

    *v2->_viewSize = _D1;
    __asm { FMOV            V1.4S, #-1.0 }

    *v2->_anon_40 = _Q1;
    *&v2->_anon_40[16] = 0u;
    v2->_zoom = 1.0;
  }

  return v2;
}

- (uint64_t)setFramingBounds:(__n128)bounds
{
  self[5] = a7[1];
  v8 = *a7;
  self[4] = *a7;
  return MEMORY[0x2821F9670](self, sel_frameObject, a7, a8, v8, bounds, a4, a5);
}

- (__n128)framingBounds
{
  result = *(self + 80);
  *a2 = *(self + 64);
  *(a2 + 16) = result;
  return result;
}

- (void)frameObject
{
  camera = self->_camera;
  var4 = camera->super._camera[2].var4;
  v10 = *self->_anon_40;
  v11 = *&self->_anon_40[16];
  v12 = vcgtq_f32(v11, v10);
  v13 = vceqz_s32(*v12.i8);
  v14 = v13.i8[0] | (v12.i32[2] == 0) | v13.i8[4];
  if (v13.i8[0] & 1 | (v12.i32[2] == 0) | v13.i8[4] & 1)
  {
    v15 = -1;
  }

  else
  {
    v15 = 0;
  }

  v16 = vdupq_n_s32(v15);
  __asm { FMOV            V3.4S, #-5.0 }

  v22 = vbslq_s8(v16, v11, _Q3);
  __asm { FMOV            V3.4S, #5.0 }

  v32 = vbslq_s8(v16, v10, _Q3);
  objc_msgSend_frameBoundingBox_setNearAndFar_(camera, a2, 1, v2, v32, v22, v16, _Q3, v3, v4, v5, v6, *&v32, *&v22);
  v29.n128_u32[0] = -1027080192;
  if (v14)
  {
    v27.n128_u64[0] = 0x3F0000003F000000;
    v27.n128_u64[1] = 0x3F0000003F000000;
    v30 = vmulq_f32(vsubq_f32(v33, v34), v27);
    v26 = vmulq_f32(v30, v30);
    v26.n128_f32[0] = sqrtf(vaddv_f32(v26.n128_u64[0]) + v26.n128_f32[2]);
    v27.n128_u32[0] = 0x800000;
    if (v26.n128_f32[0] > 1.1755e-38)
    {
      v31 = var4 * 0.0174532925;
      v29.n128_f32[0] = (v26.n128_f32[0] * 1.05) / sinf(v31 * 0.5);
    }
  }

  v26.n128_u32[0] = LODWORD(self->_zoom);
  self->_targetDistance = v26.n128_f32[0] * v29.n128_f32[0];
  v29.n128_u64[0] = 0;

  MEMORY[0x2821F9670](self, sel_update_, v24, v25, v29, v26, v27, v28);
}

- (void)update:(float)update
{
  v31 = *&update;
  camera = self->_camera->super._camera;
  camera[3].columns[3].i32[0] = vdiv_f32(*self->_viewSize, vdup_lane_s32(*self->_viewSize, 1)).u32[0];
  sub_239F15C58(camera);
  mode = self->_mode;
  if (mode == 2)
  {
    v28 = self->_camera->super._camera;
    v33 = *&v28[2].var7;
    objc_msgSend_translation(v28->var10, v5, v6, v7, v33, v12, v13, v14, v8, v9, v10, v11);
    v24 = self->_camera->super._camera;
    targetDistance = self->_targetDistance;
    v23.i32[0] = LODWORD(self->_pitch);
    yaw = self->_yaw;
    v27 = v33;
  }

  else
  {
    if (mode != 1)
    {
      if (!mode)
      {
        v16.n128_u32[0] = 0;
        v16.n128_u32[3] = 0;
        *(v16.n128_u64 + 4) = LODWORD(self->_targetElevation);
        targetElevation = self->_targetElevation;
        v30 = v16;
        *&dword_27DF912AC = *&dword_27DF912AC + (v31.n128_f32[0] * 10.0);
        v17 = self->_targetDistance;
        v16.n128_f32[0] = *&dword_27DF912AC * -0.1;
        v18 = __sincosf_stret(v16.n128_f32[0]);
        v19.n128_f32[0] = v18.__sinval * v17;
        v19.n128_f32[1] = targetElevation;
        v19.n128_f32[2] = v18.__cosval * v17;
        sub_239F15E78(self->_camera->super._camera, v19);
        v20 = self->_camera->super._camera;

        sub_239F74B20(v20, v30);
      }

      return;
    }

    v21 = v31;
    v12.n128_u64[0] = vmul_n_f32(0xC040000040A00000, v31.n128_f32[0]);
    *self->_dragVector = vmul_f32(v12.n128_u64[0], vsub_f32(*self->_dragPoint, *self->_clickPoint));
    v22 = self->_camera->super._camera;
    v32 = *&v22[2].var7;
    objc_msgSend_translation(v22->var10, v5, v6, v7, v32, v12, v21, v14, v8, v9, v10, v11);
    v23 = vadd_f32(*&self->_pitch, vrev64_s32(*self->_dragVector));
    *&self->_pitch = v23;
    v24 = self->_camera->super._camera;
    targetDistance = self->_targetDistance;
    yaw = v23.f32[1];
    v27 = v32;
  }

  sub_239F15FA8(v24, v27, targetDistance, v23.f32[0], yaw);
}

@end