@interface TSCH3DLineProjector
- (BOOL)projectPoint:(void *)point returningPoint:(void *)returningPoint;
- (id).cxx_construct;
@end

@implementation TSCH3DLineProjector

- (BOOL)projectPoint:(void *)point returningPoint:(void *)returningPoint
{
  v30 = 0;
  v29 = 0;
  v32 = 0;
  v33 = 0;
  v35 = xmmword_2764D5F60;
  v28 = 1056964608;
  v31 = 1056964608;
  v34 = 1056964608;
  v9 = objc_msgSend_combined(self, a2, 0.0000305175853, v4, v5);
  sub_2761558A0(&v28, v9, &v36);
  var0 = self->_line._position.var0.var0;
  v11 = self->_line._position.var1.var0;
  v12 = self->_line._position.var2.var0;
  *v13.i32 = v42 + (((v11 * v38) + (v36.f32[3] * var0)) + (v40 * v12));
  v14 = var0 + self->_line._direction.var0.var0;
  v15 = v11 + self->_line._direction.var1.var0;
  v16 = v12 + self->_line._direction.var2.var0;
  *v17.i32 = v42 + (((v38 * v15) + (v36.f32[3] * v14)) + (v40 * v16));
  v18 = vdiv_f32(vadd_f32(v41, vmla_n_f32(vmla_n_f32(vmul_n_f32(v37, v11), *v36.f32, var0), v39, v12)), vdup_lane_s32(v13, 0));
  v19 = vdiv_f32(vadd_f32(v41, vmla_n_f32(vmla_n_f32(vmul_n_f32(v37, v15), *v36.f32, v14), v39, v16)), vdup_lane_s32(v17, 0));
  v20 = COERCE_DOUBLE(vceq_f32(v18, v19));
  if ((LODWORD(v20) & HIDWORD(v20) & 1) == 0)
  {
    v21 = vsub_f32(v19, v18);
    v22 = 1.0 / sqrtf(COERCE_FLOAT(vmul_f32(v21, v21).i32[1]) + (v21.f32[0] * v21.f32[0]));
    v23 = vmul_n_f32(v21, v22);
    *&v20 = (vmuls_lane_f32(*(point + 1) - v18.f32[1], v23, 1) + ((*point - v18.f32[0]) * v23.f32[0])) + ((v22 * 0.0) * 0.0);
    v19 = vmul_n_f32(v23, *&v20);
    v18 = vadd_f32(v18, v19);
  }

  v27 = v18;
  objc_msgSend_objectSpaceLineFromPoint_(self, *&v18, *&v19, v20);
  v25 = 0;
  v26 = 0;
  return sub_276155D3C(&self->_line._position.var0.var0, &v28, returningPoint, &v25);
}

- (id).cxx_construct
{
  *(self + 26) = 0;
  *(self + 27) = 0;
  *(self + 25) = 0;
  return self;
}

@end