@interface MDLCamera
- (MDLCamera)init;
- (MDLTexture)bokehKernelWithSize:(vector_int2)size;
- (float)circleOfConfusionForDistance:(float)distance;
- (id)copyWithZone:(_NSZone *)zone;
- (matrix_float4x4)projectionMatrix;
- (vector_float3)exposure;
- (vector_float3)flash;
- (vector_float3)rayTo:(vector_int2)pixel forViewPort:(vector_int2)size;
- (void)dealloc;
- (void)frameBoundingBox:(MDLAxisAlignedBoundingBox *)boundingBox setNearAndFar:(BOOL)setNearAndFar;
- (void)lookAt:(vector_float3)focusPosition from:(vector_float3)cameraPosition;
- (void)setAperture:(float)aperture;
- (void)setAspect:(float)aspect;
- (void)setFarVisibilityDistance:(float)farVisibilityDistance;
- (void)setFieldOfView:(float)fieldOfView;
- (void)setFocalLength:(float)focalLength;
- (void)setFov:(float)fov;
- (void)setNearVisibilityDistance:(float)nearVisibilityDistance;
- (void)setSensorAspect:(float)sensorAspect;
- (void)setSensorVerticalAperture:(float)sensorVerticalAperture;
- (void)setZFar:(float)far;
- (void)setZNear:(float)near;
@end

@implementation MDLCamera

- (MDLCamera)init
{
  v15.receiver = self;
  v15.super_class = MDLCamera;
  v2 = [(MDLObject *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(MDLTransform);
    objc_msgSend_setTransform_(v2, v4, v3, v5, v10, v11, v12, v13, v6, v7, v8, v9);

    operator new();
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v16 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  v28 = objc_msgSend_init(v16, v17, v18, v19, v24, v25, v26, v27, v20, v21, v22, v23);
  v40 = objc_msgSend_transform(self, v29, v30, v31, v36, v37, v38, v39, v32, v33, v34, v35);
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  LODWORD(v41) = objc_msgSend_isSubclassOfClass_(v41, v43, v42, v44, v49, v50, v51, v52, v45, v46, v47, v48);

  if (v41)
  {
    v64 = objc_msgSend_transform(self, v53, v54, v55, v60, v61, v62, v63, v56, v57, v58, v59);
    v75 = objc_msgSend_copyWithZone_(v64, v65, zone, v66, v71, v72, v73, v74, v67, v68, v69, v70);
    objc_msgSend_setTransform_(v28, v76, v75, v77, v82, v83, v84, v85, v78, v79, v80, v81);
  }

  v60.n128_u32[0] = LODWORD(self->_worldToMetersConversionScale);
  *(v28 + 64) = v60.n128_u32[0];
  focalDistanceAnimation = self->_focalDistanceAnimation;
  if (focalDistanceAnimation)
  {
    v87 = objc_msgSend_copyWithZone_(focalDistanceAnimation, v53, zone, v55, v60, v61, v62, v63, v56, v57, v58, v59);
    v88 = *(v28 + 72);
    *(v28 + 72) = v87;
  }

  fStopAnimation = self->_fStopAnimation;
  if (fStopAnimation)
  {
    v90 = objc_msgSend_copyWithZone_(fStopAnimation, v53, zone, v55, v60, v61, v62, v63, v56, v57, v58, v59);
    v91 = *(v28 + 80);
    *(v28 + 80) = v90;
  }

  focalLengthAnimation = self->_focalLengthAnimation;
  if (focalLengthAnimation)
  {
    v93 = objc_msgSend_copyWithZone_(focalLengthAnimation, v53, zone, v55, v60, v61, v62, v63, v56, v57, v58, v59);
    v94 = *(v28 + 88);
    *(v28 + 88) = v93;
  }

  apertureAnimation = self->_apertureAnimation;
  if (apertureAnimation)
  {
    v96 = objc_msgSend_copyWithZone_(apertureAnimation, v53, zone, v55, v60, v61, v62, v63, v56, v57, v58, v59);
    v97 = *(v28 + 96);
    *(v28 + 96) = v96;
  }

  apertureAspectAnimation = self->_apertureAspectAnimation;
  if (apertureAspectAnimation)
  {
    v99 = objc_msgSend_copyWithZone_(apertureAspectAnimation, v53, zone, v55, v60, v61, v62, v63, v56, v57, v58, v59);
    v100 = *(v28 + 104);
    *(v28 + 104) = v99;
  }

  operator new();
}

- (void)dealloc
{
  camera = self->_camera;
  if (camera)
  {
    (*(camera->var0 + 1))(camera, a2);
  }

  v4.receiver = self;
  v4.super_class = MDLCamera;
  [(MDLCamera *)&v4 dealloc];
}

- (matrix_float4x4)projectionMatrix
{
  v2 = sub_239F1622C(self->_camera, 0.0);
  result.columns[3].i64[1] = v9;
  result.columns[3].i64[0] = v8;
  result.columns[2].i64[1] = v7;
  result.columns[2].i64[0] = v6;
  result.columns[1].i64[1] = v5;
  result.columns[1].i64[0] = v4;
  result.columns[0].i64[1] = v3;
  *result.columns[0].i64 = v2;
  return result;
}

- (vector_float3)rayTo:(vector_int2)pixel forViewPort:(vector_int2)size
{
  sub_239F1633C(self->_camera, COERCE_DOUBLE(vcvt_f32_s32(pixel)), COERCE_DOUBLE(vcvt_f32_s32(size)));
  result.i64[1] = v5;
  result.i64[0] = v4;
  return result;
}

- (void)setFocalLength:(float)focalLength
{
  camera = self->_camera;
  camera[3].columns[0].f32[2] = focalLength;
  camera[3].columns[2].f32[3] = atanf(camera[3].columns[2].f32[2] / (focalLength + focalLength)) * 114.59;

  sub_239F15C58(camera);
}

- (void)setAperture:(float)aperture
{
  camera = self->_camera;
  camera[3].columns[2].f32[2] = aperture;
  camera[3].columns[2].f32[3] = atanf(aperture / (camera[3].columns[0].f32[2] + camera[3].columns[0].f32[2])) * 114.59;

  sub_239F15C58(camera);
}

- (void)setSensorVerticalAperture:(float)sensorVerticalAperture
{
  camera = self->_camera;
  camera[3].columns[2].f32[2] = sensorVerticalAperture;
  camera[3].columns[2].f32[3] = atanf(sensorVerticalAperture / (camera[3].columns[0].f32[2] + camera[3].columns[0].f32[2])) * 114.59;

  sub_239F15C58(camera);
}

- (void)setFov:(float)fov
{
  camera = self->_camera;
  camera[3].columns[2].f32[3] = fov;
  camera[3].columns[2].f32[0] = 0.5 / tanf(fov * 0.017453);
  v5 = camera[3].columns[2].f32[2];
  v6 = tanf(fov * 0.0087266);
  camera[3].columns[0].f32[2] = v5 / (v6 + v6);

  sub_239F15C58(camera);
}

- (void)setFieldOfView:(float)fieldOfView
{
  camera = self->_camera;
  camera[3].columns[2].f32[3] = fieldOfView;
  camera[3].columns[2].f32[0] = 0.5 / tanf(fieldOfView * 0.017453);
  v5 = camera[3].columns[2].f32[2];
  v6 = tanf(fieldOfView * 0.0087266);
  camera[3].columns[0].f32[2] = v5 / (v6 + v6);

  sub_239F15C58(camera);
}

- (void)setAspect:(float)aspect
{
  camera = self->_camera;
  camera[3].columns[3].f32[0] = aspect;
  sub_239F15C58(camera);
}

- (void)setSensorAspect:(float)sensorAspect
{
  camera = self->_camera;
  camera[3].columns[3].f32[0] = sensorAspect;
  sub_239F15C58(camera);
}

- (float)circleOfConfusionForDistance:(float)distance
{
  result = (self->_camera[1].var19 * self->_camera[2].var3) / (distance - self->_camera[1].var19);
  if (result >= self->_maximumCircleOfConfusion)
  {
    return self->_maximumCircleOfConfusion;
  }

  return result;
}

- (void)setZNear:(float)near
{
  camera = self->_camera;
  camera[4].columns[1].f32[0] = near;
  sub_239F15C58(camera);
}

- (void)setZFar:(float)far
{
  camera = self->_camera;
  camera[4].columns[1].f32[1] = far;
  sub_239F15C58(camera);
}

- (void)setNearVisibilityDistance:(float)nearVisibilityDistance
{
  camera = self->_camera;
  camera[4].columns[1].f32[0] = nearVisibilityDistance;
  sub_239F15C58(camera);
}

- (void)setFarVisibilityDistance:(float)farVisibilityDistance
{
  camera = self->_camera;
  camera[4].columns[1].f32[1] = farVisibilityDistance;
  sub_239F15C58(camera);
}

- (MDLTexture)bokehKernelWithSize:(vector_int2)size
{
  v4 = size.i32[0];
  v59 = *size.i8;
  v5 = size.i32[1];
  v60 = 4 * size.i32[1] * size.i32[0];
  v61 = malloc_type_malloc(v60, 0x100004052888210uLL);
  v17 = objc_msgSend_apertureBladeCount(self, v6, v7, v8, v13, v14, v15, v16, v9, v10, v11, v12);
  v27 = v17;
  v28 = v4 / 2;
  v62 = v5 / -2;
  if (v17 - 3 > 0xD)
  {
    if (v5 >= 1)
    {
      v46 = 0;
      v47 = v61;
      do
      {
        if (v4 >= 1)
        {
          v48 = v4 / -2;
          v49 = v4;
          do
          {
            if ((v46 + v62) * (v46 + v62) + v48 * v48 < (v28 * v28))
            {
              v50 = -1;
            }

            else
            {
              v50 = -16777216;
            }

            *v47++ = v50;
            ++v48;
            --v49;
          }

          while (v49);
        }

        ++v46;
      }

      while (v46 != v5);
    }
  }

  else
  {
    v29 = v17;
    v30 = 3.14159265 / v17;
    v23.n128_f32[0] = cosf(v30);
    if (v5 >= 1)
    {
      v31 = 0;
      v24.n128_f32[0] = v28;
      v32 = (v23.n128_f32[0] * v28) * (v23.n128_f32[0] * v28);
      v23.n128_f64[0] = 6.28318531 / v29;
      v33 = 6.28318531 / v29;
      v34 = vdup_lane_s32(v24.n128_u64[0], 0);
      v35 = v61;
      do
      {
        if (v4 >= 1)
        {
          v36 = 0;
          v23.n128_f32[0] = (v31 + v62);
          do
          {
            v37 = v36 - v28;
            if ((v31 + v62) * (v31 + v62) + v37 * v37 < v32)
            {
LABEL_12:
              v45 = -1;
            }

            else
            {
              v38 = 0;
              v24.n128_f32[0] = v37;
              v24.n128_f32[1] = (v31 + v62);
              v63 = v24;
              while (1)
              {
                v39 = v38 * v33;
                v40 = v39 + v33;
                v41 = __sincosf_stret(v39);
                v42 = vmul_n_f32(__PAIR64__(LODWORD(v41.__sinval), LODWORD(v41.__cosval)), v28);
                v43 = __sincosf_stret(v40);
                v44.i64[1] = v63.n128_i64[1];
                v23.n128_u64[0] = vmul_f32(vmla_f32(vneg_f32(v42), v34, __PAIR64__(LODWORD(v43.__sinval), LODWORD(v43.__cosval))), vrev64_s32(vsub_f32(v63.n128_u64[0], v42)));
                *v44.i8 = vdup_lane_s32(v23.n128_u64[0], 1);
                v23.n128_u64[0] = vsub_f32(v23.n128_u64[0], *v44.i8);
                v44.i32[0] = 1.0;
                v25.n128_u64[0] = 0x8000000080000000;
                v25.n128_u64[1] = 0x8000000080000000;
                v24 = vbslq_s8(v25, v44, v23);
                if (v23.n128_f32[0] == 0.0)
                {
                  v24.n128_f32[0] = v23.n128_f32[0];
                }

                v23.n128_f32[0] = v24.n128_f32[0];
                if (v24.n128_f32[0] < 0)
                {
                  break;
                }

                if (v27 == ++v38)
                {
                  goto LABEL_12;
                }
              }

              v45 = -16777216;
            }

            *v35++ = v45;
            ++v36;
          }

          while (v36 != v4);
        }

        ++v31;
      }

      while (v31 != v5);
    }
  }

  v51 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v18, v61, v60, v23, v24, v25, v26, v19, v20, v21, v22);
  v52 = [MDLTexture alloc];
  isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v52, v53, v51, 1, v59, v54, v55, v56, @"bokeh", v4, 4, 1, 0);
  free(v61);

  return isCube;
}

- (vector_float3)exposure
{
  result.i64[1] = a2;
  result.i64[0] = self;
  return result;
}

- (void)frameBoundingBox:(MDLAxisAlignedBoundingBox *)boundingBox setNearAndFar:(BOOL)setNearAndFar
{
  v11 = boundingBox;
  camera = self->_camera;
  v14 = vcgtq_f32(v9, v8);
  v15 = vceqz_s32(*v14.i8);
  v16 = v15.i8[0] | (v14.i32[2] == 0) | v15.i8[4];
  if (v15.i8[0] & 1 | (v14.i32[2] == 0) | v15.i8[4] & 1)
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

  v18 = vdupq_n_s32(v17);
  __asm { FMOV            V3.4S, #5.0 }

  v24 = vbslq_s8(v18, v8, _Q3);
  __asm { FMOV            V0.4S, #-5.0 }

  v26 = vbslq_s8(v18, v9, _Q0);
  v27.i64[0] = 0x3F0000003F000000;
  v27.i64[1] = 0x3F0000003F000000;
  LODWORD(v10) = -915135488;
  v50 = v24;
  v51 = v26;
  if (v16)
  {
    v28 = vmulq_f32(vsubq_f32(v24, v26), v27);
    v29 = vmulq_f32(v28, v28);
    v30 = sqrtf(vaddv_f32(*v29.f32) + v29.f32[2]);
    v9.n128_u32[0] = 0x800000;
    if (v30 > 1.1755e-38)
    {
      v31 = camera[2].var4 * 0.0174532925;
      v32 = v30 * 1.05;
      v33 = sinf(v31 * 0.5);
      v27.i64[0] = 0x3F0000003F000000;
      v27.i64[1] = 0x3F0000003F000000;
      v24 = v50;
      v26 = v51;
      *&v10 = v32 / v33;
    }
  }

  v52 = vmulq_f32(vaddq_f32(v26, v24), v27);
  objc_msgSend_translation(camera->var10, a2, boundingBox, setNearAndFar, v52, v9, v26, v24, v4, v5, v6, v7, v10);
  v35 = vsubq_f32(v34, v52);
  v36 = vmulq_f32(v35, v35);
  *&v37 = vaddv_f32(*v36.f32) + v36.f32[2];
  *v36.f32 = vrsqrte_f32(v37);
  *v36.f32 = vmul_f32(vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32)), *v36.f32);
  *v36.f32 = vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32)));
  v49 = vmulq_n_f32(v35, vmulq_f32(v36, v48).f32[0]);
  sub_239F15E78(self->_camera, v49);
  sub_239F74B20(self->_camera, v52);
  *v54.columns[0].i64 = sub_239F161E0(self->_camera, 0.0);
  v55 = __invert_f4(v54);
  if (v11)
  {
    v38 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmlaq_n_f32(v55.columns[3], v55.columns[0], v50.f32[0]), v55.columns[1], *v50.f32, 1), v55.columns[2], v50, 2), v49);
    v39 = vmulq_f32(v38, v38);
    v40 = sqrtf(vaddv_f32(*v39.f32) + v39.f32[2]);
    v41 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmlaq_n_f32(v55.columns[3], v55.columns[0], v51.f32[0]), v55.columns[1], *v51.f32, 1), v55.columns[2], v51, 2), v49);
    v42 = vmulq_f32(v41, v41);
    v43 = sqrtf(vaddv_f32(*v42.f32) + v42.f32[2]);
    v44 = fmaxf(v43, -3.4028e38);
    if (v40 > v44)
    {
      v44 = v40;
    }

    v45 = fminf(v43, 0.1);
    if (v40 < v45)
    {
      v45 = v40;
    }

    v46 = v45 * 0.70711;
    v47 = self->_camera;
    if (v44 > 1000.0)
    {
      v46 = 0.70711;
    }

    v47[4].columns[1].f32[0] = v46;
    v47[4].columns[1].f32[1] = v44 * 4.0;

    sub_239F15C58(v47);
  }
}

- (void)lookAt:(vector_float3)focusPosition from:(vector_float3)cameraPosition
{
  v8 = v4;
  sub_239F15E78(self->_camera, v5);
  camera = self->_camera;

  sub_239F74B20(camera, v8);
}

- (vector_float3)flash
{
  result.i64[1] = a2;
  result.i64[0] = self;
  return result;
}

@end