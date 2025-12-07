uint64_t __vfx_script_Glitter_graph_39(uint64_t a1)
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  vfx_script_get_arguments_buffer();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_clock_delta_time();
  vfx_script_set_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_clock_time();
  *&v1 = v1;
  v2 = *&v1 * 0.1;
  sinf(*&v1 * 0.1);
  cosf(v2 + 0.3453);
  __asm
  {
    FMOV            V0.2S, #1.0
    FMOV            V3.2S, #-1.0
  }

  vfx_script_set_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_set_world_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_clock_delta_time();
  vfx_script_set_ecs_value();
  [vfx_script_get_world_renderer() qword_1000710E8];
  v11 = v9;
  [vfx_script_get_world_renderer() qword_1000710A8];
  [vfx_script_get_world_renderer() qword_1000710B0];
  return vfx_script_set_ecs_value();
}

uint64_t __vfx_script_Glitter_graph_42(uint64_t a1)
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v3 = *(arguments_buffer + 8);
  v4 = *(arguments_buffer + 16);
  LOBYTE(v8) = 0;
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  LOBYTE(v8) = 0;
  vfx_script_get_ecs_value();
  if (LOBYTE(v8) == 1)
  {
    v10 = 0.0;
    vfx_script_graph_log();
    vfx_script_set_ecs_value();
    vfx_script_string_create();
    [v4 qword_1000710D8];
    vfx_script_string_create();
    [v3 qword_1000710D8];
    v9 = 0.0;
    sub_100003E18(a1, v3, &v9);
    vfx_script_set_ecs_value();
    vfx_script_string_destroy();
    vfx_script_string_destroy();
  }

  LOBYTE(v8) = 0;
  vfx_script_get_ecs_value();
  if (LOBYTE(v8) == 1)
  {
    v10 = 0.0;
    vfx_script_graph_log();
    vfx_script_set_ecs_value();
    vfx_script_string_create();
    [v4 qword_1000710D8];
    vfx_script_string_create();
    [v3 qword_1000710D8];
    v9 = 0.0;
    sub_100003E18(a1, v3, &v9);
    vfx_script_set_ecs_value();
    vfx_script_string_destroy();
    vfx_script_string_destroy();
  }

  v10 = 0.0;
  vfx_script_get_ecs_value();
  vfx_script_clock_delta_time();
  v9 = fmaxf(v10 - v5, 0.0);
  vfx_script_set_ecs_value();
  v8 = 0.0;
  vfx_script_get_ecs_value();
  v6 = v8;
  result = vfx_script_get_ecs_value();
  if (v6 <= 0.0)
  {
    return vfx_script_get_ecs_value();
  }

  return result;
}

float __vfx_script_Glitter_graph_45(uint64_t a1)
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 16);
  v3 = *(arguments_buffer + 32);
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  *v3 = 0.0 * 0.7;
  vfx_script_get_ecs_value();
  result = 0.0;
  *v2 = 0;
  return result;
}

float __vfx_script_Glitter_graph_46(uint64_t a1)
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = arguments_buffer[4];
  v3 = arguments_buffer[5];
  v4 = arguments_buffer[6];
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  x = COERCE_UNSIGNED_INT(((0.0 * 3.1416) / 180.0) * 0.5);
  v16 = _simd_cos_f4(x);
  v5 = _simd_sin_f4(x);
  v6 = vextq_s8(v16, v16, 4uLL);
  v7 = vmulq_f32(vzip1q_s32(vrev64q_s32(v16), v16), vextq_s8(vzip1q_s32(v6, v5), v6, 8uLL));
  v8 = vzip2q_s32(vzip1q_s32(v16, v5), v5);
  v8.f32[3] = -v5.f32[0];
  v9 = vextq_s8(v5, v5, 8uLL);
  v10 = vtrn1q_s32(v5, vextq_s8(v16, v16, 8uLL));
  v5.i32[3] = v5.i32[1];
  v11 = vtrn1q_s32(v9, v16);
  v11.f32[1] = -v16.f32[0];
  *v4 = vmlaq_f32(vrev64q_s32(vmulq_f32(vmulq_f32(v5, v8), v11)), v10, v7);
  vfx_script_get_ecs_value();
  v12 = *v3;
  *(&v12 + 1) = (0.0 * 2.5) + -1.2;
  *(v3 + 2) = 0;
  *v3 = v12;
  vfx_script_texture_sample1d();
  v16.i32[0] = v13;
  vfx_script_get_ecs_value();
  result = 0.0 * v16.f32[0];
  *v2 = 0.0 * v16.f32[0];
  return result;
}

int8x8_t __vfx_script_Glitter_graph_47(uint64_t a1)
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = arguments_buffer[2];
  v3 = arguments_buffer[3];
  v4 = arguments_buffer[4];
  v5 = arguments_buffer[5];
  v6 = arguments_buffer[6];
  v7 = arguments_buffer[7];
  v21 = 0;
  vfx_script_get_ecs_value();
  v20 = 0;
  vfx_script_get_ecs_value();
  v19 = 0;
  vfx_script_get_ecs_value();
  v8 = vdup_n_s32(0);
  *v7 = v8;
  *v6 = v8;
  v18 = 0uLL;
  vfx_script_get_ecs_value();
  *v5 = 0uLL;
  __asm { FMOV            V0.4S, #2.5 }

  DWORD1(_Q0) = *(v4 + 4);
  *v4 = _Q0;
  *(v4 + 8) = 1075838976;
  *v3 = 1075838976;
  v17 = 0;
  vfx_script_get_ecs_value();
  v16[1] = 0.0;
  vfx_script_get_ecs_value();
  v16[0] = 0.0;
  vfx_script_get_ecs_value();
  v14 = vld1_dup_f32(v16);
  result = vbsl_s8(vdup_n_s32(0), vmul_n_f32(0x3F99999A3F4CCCCDLL, 0.0), v14);
  *v2 = result;
  return result;
}

uint64_t __vfx_script_Glitter_graph_50(uint64_t a1)
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  vfx_script_get_arguments_buffer();
  vfx_script_clock_delta_time();
  vfx_script_get_ecs_value();
  vfx_script_set_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  return vfx_script_set_ecs_value();
}

float __vfx_script_Glitter_graph_51(uint64_t a1)
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v46 = arguments_buffer[4];
  v47 = arguments_buffer[3];
  v45 = arguments_buffer[5];
  v43 = arguments_buffer[6];
  v2 = arguments_buffer[8];
  x = arguments_buffer[7];
  v4 = arguments_buffer[9];
  v3 = arguments_buffer[10];
  v5 = arguments_buffer[11];
  v6 = arguments_buffer[12];
  v54[0] = 0;
  vfx_script_get_ecs_value();
  v53 = 0;
  vfx_script_get_ecs_value();
  v52 = 0;
  vfx_script_get_ecs_value();
  *v6 = 0;
  v51 = 0;
  vfx_script_get_ecs_value();
  *v5 = 0;
  v50 = 0;
  vfx_script_get_ecs_value();
  v49 = 0u;
  vfx_script_get_ecs_value();
  v48 = 0u;
  vfx_script_get_ecs_value();
  *v3 = 0u;
  vfx_script_get_ecs_value();
  *v4 = 0;
  vfx_script_get_ecs_value();
  *v2 = 0;
  vfx_script_get_ecs_value();
  *x = 0;
  vfx_script_get_ecs_value();
  LOBYTE(v7) = 0;
  *v43 = v7;
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  *v8.f32 = vmul_n_f32(0, 0.0);
  v8.i32[2] = 0;
  v9.i64[0] = 0x3F0000003F000000;
  v9.i64[1] = 0x3F0000003F000000;
  v10 = vmulq_f32(v8, v9);
  v10.i32[3] = 0;
  xa = v10;
  v44 = _simd_cos_f4(v10);
  _Q0 = _simd_sin_f4(xa);
  _Q7 = v44;
  v13 = vmuls_lane_f32(v44.f32[1], v44, 2);
  v14 = vmuls_lane_f32(_Q0.f32[1], _Q0, 2);
  v15 = (_Q0.f32[0] * v13) - (v44.f32[0] * v14);
  _S4 = vmuls_lane_f32(v44.f32[0], *_Q0.f32, 1);
  __asm { FMLA            S5, S4, V7.S[2] }

  _S4 = vmuls_lane_f32(_Q7.f32[0], *_Q7.f32, 1);
  __asm { FMLA            S6, S4, V0.S[2] }

  _Q0.f32[0] = v14 * _Q0.f32[0];
  v24.i64[0] = __PAIR64__(LODWORD(_S5), LODWORD(v15));
  _Q0.f32[0] = _Q0.f32[0] + (v44.f32[0] * v13);
  v24.i64[1] = __PAIR64__(_Q0.u32[0], LODWORD(_S6));
  v25 = vmulq_f32(v24, xmmword_10004F4F0);
  v26 = vnegq_f32(v25);
  v27 = vtrn2q_s32(v25, vtrn1q_s32(v25, v26));
  v28 = vmlaq_f32(vmulq_f32(vextq_s8(v25, v26, 8uLL), 0), 0, vextq_s8(v27, v27, 8uLL));
  v29 = vrev64q_s32(v25);
  v29.i32[0] = v26.i32[1];
  v29.i32[3] = v26.i32[2];
  v30 = vaddq_f32(v29, v28);
  v31 = vnegq_f32(v30);
  v32 = vtrn2q_s32(v30, vtrn1q_s32(v30, v31));
  v33 = vrev64q_s32(v30);
  v33.i32[0] = v31.i32[1];
  v33.i32[3] = v31.i32[2];
  v34 = vaddq_f32(vmlaq_n_f32(vmulq_n_f32(v30, _Q0.f32[0]), v33, _S6), vmlaq_n_f32(vmulq_n_f32(vextq_s8(v30, v31, 8uLL), _S5), vextq_s8(v32, v32, 8uLL), v15));
  v35 = vmulq_f32(v34, v34);
  v35.f32[0] = v35.f32[2] + vaddv_f32(*v35.f32);
  v36 = vdupq_lane_s32(*v35.f32, 0);
  v36.i32[3] = 0;
  v37 = vrsqrteq_f32(v36);
  v38 = vmulq_f32(v37, vrsqrtsq_f32(v36, vmulq_f32(v37, v37)));
  v39 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v35.f32[0] != 0.0)), 0x1FuLL));
  v39.i32[3] = 0;
  *v45 = vbslq_s8(vcltzq_s32(v39), vmulq_f32(vmulq_f32(v38, vrsqrtsq_f32(v36, vmulq_f32(v38, v38))), v34), v34);
  vfx_script_get_ecs_value();
  *v46 = 0;
  vfx_script_get_ecs_value();
  result = 0.0;
  *v47 = 0;
  return result;
}

double __vfx_script_Glitter_graph_52(uint64_t a1)
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = arguments_buffer[2];
  v3 = arguments_buffer[4];
  v4 = arguments_buffer[5];
  v9 = 0;
  vfx_script_get_ecs_value();
  v8 = 0u;
  vfx_script_get_ecs_value();
  v7 = 0u;
  vfx_script_get_ecs_value();
  *v4 = 0u;
  vfx_script_get_ecs_value();
  *v3 = 0;
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  *v5.i32 = (0.0 * 0.0) * 0.1;
  result = COERCE_DOUBLE(vadd_f32(vmul_f32(0, 0x3F0000003F000000), vdup_lane_s32(v5, 0)));
  *v2 = result;
  return result;
}

float __vfx_script_Glitter_graph_53(uint64_t a1)
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  v1 = *(vfx_script_get_arguments_buffer() + 16);
  vfx_script_get_ecs_value();
  result = (fminf(fmaxf(0.0, 0.0), 1.0) * 0.95) + -1.4;
  v3 = *v1;
  *(&v3 + 1) = result;
  *(v1 + 2) = 1056964608;
  *v1 = v3;
  return result;
}

_DWORD **__vfx_script_Glitter_graph_54(uint64_t a1)
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  result = vfx_script_get_arguments_buffer();
  v2 = *result;
  *result[1] = 1075838976;
  *v2 = 1075838976;
  return result;
}

float32x2_t __vfx_script_Glitter_graph_55(uint64_t a1)
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = arguments_buffer[2];
  v3 = arguments_buffer[4];
  v4 = arguments_buffer[5];
  v5 = arguments_buffer[6];
  vfx_script_get_ecs_value();
  *v5 = 0;
  *v4 = 0;
  vfx_script_get_ecs_value();
  *v3 = 1051126137;
  vfx_script_get_ecs_value();
  vfx_script_clock_time();
  v7 = v6;
  v9 = cosf(v7 + 0.0);
  result = vmul_f32(__PAIR64__(COERCE_UNSIGNED_INT(sinf((v7 + 0.0) + 0.0)), LODWORD(v9)), vdup_n_s32(0x3BC49BA6u));
  *v2 = result;
  return result;
}

uint64_t __vfx_script_Glitter_trigger_40(uint64_t a1)
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  vfx_script_get_arguments_buffer();
  vfx_script_graph_log();
  return vfx_script_set_ecs_value();
}

uint64_t __vfx_script_Glitter_trigger_41(uint64_t a1)
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  vfx_script_get_arguments_buffer();
  vfx_script_graph_log();
  return vfx_script_set_ecs_value();
}

uint64_t __vfx_script_Glitter_trigger_43(uint64_t a1)
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  v1 = *(vfx_script_get_arguments_buffer() + 8);
  vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  vfx_script_string_create();
  [v1 qword_1000710D8];

  return vfx_script_string_destroy();
}

void __vfx_script_Glitter_particleUpdate_44(uint64_t a1)
{
  if (qword_100070F50 != -1)
  {
    sub_10004CAEC();
  }

  vfx_script_get_iteration_range();
  vfx_script_get_arguments_buffer();
}

void sub_1000038B4(id a1)
{
  qword_100070F58 = sel_registerName("setValue:forKeyPath:");
  qword_100070F60 = sel_registerName("valueForKeyPath:");
  qword_100070F68 = objc_lookUpClass("NSString");
  qword_100070F70 = sel_registerName("stringWithUTF8String:");
  qword_100070F78 = objc_lookUpClass("VFXTransaction");
  qword_100070F80 = sel_registerName("begin");
  qword_100070F88 = sel_registerName("setAnimationDurationAsFloat:");
  qword_100070F90 = sel_registerName("commit");
  qword_100070F98 = objc_lookUpClass("NSDictionary");
  qword_100070FA0 = objc_lookUpClass("NSMutableDictionary");
  qword_100070FA8 = sel_registerName("dictionary");
  qword_100070FB0 = sel_registerName("setValue:forKey:");
  qword_100070FB8 = sel_registerName("setObject:forKey:");
  qword_100070FC0 = objc_lookUpClass("NSValue");
  qword_100070FC8 = objc_lookUpClass("NSNumber");
  qword_100070FD0 = sel_registerName("numberWithBool:");
  qword_100070FD8 = sel_registerName("numberWithFloat:");
  qword_100070FE0 = sel_registerName("numberWithUnsignedInteger:");
  qword_100070FE8 = sel_registerName("firstObject");
  qword_100070FF0 = sel_registerName("count");
  qword_100070FF8 = objc_lookUpClass("VFXNode");
  qword_100071000 = sel_registerName("addAnimationAsset:forKey:");
  qword_100071008 = sel_registerName("removeAllAnimations");
  qword_100071010 = sel_registerName("removeAnimationForKey:");
  qword_100071018 = sel_registerName("script_rootNode");
  qword_100071020 = sel_registerName("clone");
  qword_100071028 = sel_registerName("parentNode");
  qword_100071030 = sel_registerName("addChildNode:");
  qword_100071038 = sel_registerName("childNodes");
  qword_100071040 = sel_registerName("deepClone");
  qword_100071048 = sel_registerName("insertChildNode:atIndex:");
  qword_100071050 = sel_registerName("removeFromParentNode");
  qword_100071058 = sel_registerName("childNodeWithName:");
  qword_100071060 = sel_registerName("convertPosition:fromNode:");
  qword_100071068 = sel_registerName("convertVector:fromNode:");
  qword_100071070 = sel_registerName("convertTransform:fromNode:");
  qword_100071078 = sel_registerName("convertPosition:toNode:");
  qword_100071080 = sel_registerName("convertVector:toNode:");
  qword_100071088 = sel_registerName("convertTransform:toNode:");
  qword_100071090 = sel_registerName("localTranslateBy:");
  qword_100071098 = sel_registerName("localRotateBy:");
  qword_1000710A0 = sel_registerName("rotateBy:aroundTarget:");
  qword_1000710A8 = sel_registerName("projectPoint:");
  qword_1000710B0 = sel_registerName("unprojectPoint:");
  qword_1000710B8 = sel_registerName("script_hitTest:options:");
  qword_1000710C0 = sel_registerName("hitTestWithSegmentFromPoint:toPoint:options:");
  qword_1000710C8 = sel_registerName("node");
  qword_1000710D0 = sel_registerName("setState:");
  qword_1000710D8 = sel_registerName("setStateNamed:");
  qword_1000710E0 = sel_registerName("_contentsScaleFactor");
  qword_1000710E8 = sel_registerName("_screenSize");
  qword_1000710F0 = sel_registerName("physicsBody");
  qword_1000710F8 = sel_registerName("script_instantiate:");
  qword_100071100 = sel_registerName("geometryIndex");
  qword_100071108 = sel_registerName("faceIndex");
  qword_100071110 = sel_registerName("localCoordinates");
  qword_100071118 = sel_registerName("worldCoordinates");
  qword_100071120 = sel_registerName("localNormal");
  qword_100071128 = sel_registerName("worldNormal");
  qword_100071130 = sel_registerName("modelTransform");
  qword_100071138 = sel_registerName("boneNode");
  qword_100071140 = sel_registerName("uv0");
  qword_100071148 = sel_registerName("presentationBoneNode");
  qword_100071150 = sel_registerName("presentationNode");
  qword_100071158 = sel_registerName("applyForce:impulse:");
  qword_100071160 = sel_registerName("applyForce:atPosition:impulse:");
  qword_100071168 = sel_registerName("applyTorque:impulse:");
  qword_100071170 = sel_registerName("presentationObject");
}

float sub_100003E18(uint64_t a1, uint64_t a2, float *a3)
{
  vfx_script_set_ecs_value();
  vfx_script_get_ecs_value();
  result = fmaxf(0.0, 10.0);
  *a3 = result;
  return result;
}

unsigned int **__vfx_script_clouds_graph_54(uint64_t a1)
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  result = vfx_script_get_arguments_buffer();
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  v5 = result[4];
  v6 = result[5];
  v7 = result[6];
  v8 = result[7];
  v9 = **result;
  v31 = xmmword_10004F500;
  v32 = 0x3FACCCCD3FE00000;
  if (v9 > 5)
  {
    *v8 = 0;
    v29 = xmmword_10004F510;
    __asm { FMOV            V0.2S, #1.0 }

    v30 = _D0;
    v15 = 0;
  }

  else
  {
    *v8 = *(&v31 + v9);
    v29 = xmmword_10004F510;
    __asm { FMOV            V0.2S, #1.0 }

    v30 = _D0;
    v15 = *(&v29 + v9);
  }

  *v7 = v15;
  v27 = xmmword_10004F520;
  v28 = 0;
  if (v9 > 5)
  {
    *v6 = 0;
    v23 = 1036831949;
    v25 = 0;
    v24 = 0;
    v17 = 0;
    v26 = 0;
  }

  else
  {
    *v6 = *(&v27 + v9);
    v23 = 1036831949;
    v25 = 0;
    v24 = 0;
    v26 = 0;
    v17 = *(&v23 + v9);
  }

  *v5 = v17;
  memset(v22, 0, sizeof(v22));
  if (v9 > 5)
  {
    v18 = 0;
    *v4 = 0;
    v19 = 1;
    v20 = 0;
    v21 = 1;
  }

  else
  {
    *v4 = *(v22 + v9);
    v19 = 1;
    v20 = 0;
    v21 = 1;
    v18 = *(&v19 + v9);
  }

  *v3 = v18 & 1;
  *v2 = v18 & 1;
  return result;
}

unsigned int **__vfx_script_clouds_graph_57(uint64_t a1)
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  result = vfx_script_get_arguments_buffer();
  v2 = result[2];
  v3 = result[3];
  v4 = **result;
  v5 = *result[1];
  v7[0] = 0x300000002;
  v7[1] = 0x200000001;
  v7[2] = 0x200000001;
  v7[3] = 0x300000002;
  v7[4] = 0x300000002;
  v7[5] = 0x200000001;
  if (v4 > 5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v7[v4];
  }

  *v3 = v6;
  *v2 = v5;
  return result;
}

unsigned int **__vfx_script_clouds_graph_58(uint64_t a1)
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  result = vfx_script_get_arguments_buffer();
  v2 = result[2];
  v3 = result[3];
  v4 = result[4];
  v5 = result[5];
  v6 = **result;
  v7 = *result[1];
  v9[0] = 0x500000003;
  v9[1] = 0x500000002;
  v9[2] = 0x200000002;
  v9[3] = 0x200000002;
  v9[4] = 0x200000001;
  v9[5] = 0x200000001;
  if (v6 > 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v9[v6];
  }

  *v5 = v8;
  *v4 = v6 == 3;
  *v3 = v6 == 4;
  *v2 = v7;
  return result;
}

unsigned int **__vfx_script_clouds_graph_63(uint64_t a1)
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  result = vfx_script_get_arguments_buffer();
  v2 = result[2];
  v3 = result[3];
  v4 = result[4];
  v5 = result[5];
  v6 = **result;
  v7 = *result[1];
  v9[0] = 0;
  v9[1] = 0x300000002;
  v9[2] = 0x100000001;
  v9[3] = 0;
  v9[4] = 0;
  v9[5] = 0x300000002;
  if (v6 > 5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v9[v6];
  }

  *v5 = v8;
  *v4 = v6 == 1;
  *v3 = v6 != 1;
  *v2 = v7;
  return result;
}

void __vfx_script_clouds_graph_64(uint64_t a1)
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v3 = *arguments_buffer;
  v2 = *(arguments_buffer + 8);
  v4 = *(arguments_buffer + 16);
  v5 = *(arguments_buffer + 24);
  v6 = *(arguments_buffer + 32);
  v7 = *(arguments_buffer + 40);
  v8 = *(arguments_buffer + 48);
  v9 = *(arguments_buffer + 56);
  v11 = *(arguments_buffer + 64);
  v10 = *(arguments_buffer + 72);
  v12 = *(arguments_buffer + 80);
  v13 = *(arguments_buffer + 88);
  v14 = *(arguments_buffer + 96);
  v15 = *(arguments_buffer + 104);
  v16 = *(arguments_buffer + 112);
  v17 = *(arguments_buffer + 120);
  v18 = *(arguments_buffer + 128);
  v19 = *(arguments_buffer + 136);
  v20 = *(arguments_buffer + 144);
  v21 = *(arguments_buffer + 152);
  v22 = *(arguments_buffer + 160);
  v23 = *(arguments_buffer + 168);
  v24 = *(arguments_buffer + 176);
  v25 = *(arguments_buffer + 184);
  v26 = *(arguments_buffer + 192);
  v27 = *v3;
  *&v97 = 0;
  *(&v97 + 1) = 0x3F94DD2FBEE7EF9ELL;
  v98 = 0x3F94DD2FBEE7EF9ELL;
  v99 = 0x3F6FDF3B3D4CCCCDLL;
  v28 = 0;
  v29 = 0;
  v100 = 0;
  v101 = 0;
  if (v27 <= 5)
  {
    v29 = *(&v97 + v27);
  }

  *v10 = v29;
  *v93 = 0;
  *&v93[8] = 0xBF55C28FBF9D9168;
  *&v93[16] = 0xBF55C28FBF9D9168;
  v94 = 0xBF55C28FC0000000;
  v95 = 0;
  v96 = 0;
  if (v27 <= 5)
  {
    v28 = *&v93[8 * v27];
  }

  *v11 = v28;
  v87 = 0;
  __asm { FMOV            V0.2S, #1.0 }

  v88 = -_D0;
  v89 = -_D0;
  v90 = 0xBF8000003FC00000;
  v91 = 0xBF8000003F333333;
  v92 = 0;
  if (v27 > 5)
  {
    *v9 = 0;
    *&v86[4] = xmmword_10004F530;
    *v86 = 0;
    *&v86[20] = 0;
    v35 = 0;
  }

  else
  {
    *v9 = *(&v87 + v27);
    *&v86[4] = xmmword_10004F530;
    *v86 = 0;
    *&v86[20] = 0;
    v35 = *&v86[4 * v27];
  }

  *v8 = v35;
  *&v85[4] = xmmword_10004F540;
  *v85 = 0;
  *&v85[20] = 0;
  if (v27 > 5)
  {
    *v7 = 0;
    *&v84[4] = xmmword_10004F550;
    *v84 = 0;
    *&v84[20] = 0;
    v36 = 0;
  }

  else
  {
    *v7 = *&v85[4 * v27];
    *&v84[4] = xmmword_10004F550;
    *v84 = 0;
    *&v84[20] = 0;
    v36 = *&v84[4 * v27];
  }

  *v6 = v36;
  v78 = 0uLL;
  v37 = 0uLL;
  v79 = xmmword_10004F560;
  v80 = 0u;
  v81 = xmmword_10004F570;
  v82 = xmmword_10004F580;
  v83 = 0u;
  v38 = 0uLL;
  if (v27 <= 5)
  {
    v38 = *(&v78 + v27);
  }

  *v5 = v38;
  v72 = 0uLL;
  v73 = xmmword_10004F590;
  v74 = 0uLL;
  v75 = xmmword_10004F5A0;
  v76 = 0uLL;
  v77 = 0uLL;
  if (v27 <= 5)
  {
    v37 = *(&v72 + v27);
  }

  *v4 = v37;
  v65 = 0.0;
  v66 = 0;
  v67 = xmmword_10004F5B0;
  v68 = xmmword_10004F5C0;
  v69 = xmmword_10004F5D0;
  v70 = xmmword_10004F5E0;
  v39 = 0uLL;
  v71 = 0u;
  if (v27 <= 5)
  {
    v39 = *(&v65 + v27);
  }

  *v2 = v39;
  *&v93[4] = xmmword_10004F5F0;
  *v93 = 0;
  *&v93[20] = 1041865114;
  v40 = 0;
  if (v27 <= 5)
  {
    v40 = *&v93[4 * v27];
  }

  *v26 = v40;
  v65 = _D0;
  v66 = 0x3F8000003F000000;
  *&v67 = _D0;
  *(&v67 + 1) = 0x3F8000003F000000;
  *&v68 = 0x3F8000003F000000;
  *(&v68 + 1) = 0x3F8000003F000000;
  if (v27 > 5)
  {
    v41 = 0;
    *v25 = 0;
    v87 = 0;
    v88 = 0.0;
    v89 = 0.0;
  }

  else
  {
    *v25 = *(&v65 + v27);
    v87 = 0;
    v88 = 0.0;
    v89 = 0.0;
    v41 = *(&v87 + v27);
  }

  *v24 = v41;
  *v86 = xmmword_10004F600;
  *&v86[16] = vdup_n_s32(0x3F333333u);
  v42 = 0;
  if (v27 <= 5)
  {
    v42 = *&v86[4 * v27];
  }

  *v23 = v42;
  v97 = 0u;
  v98 = 0x3E800000BE19999ALL;
  v99 = 0xBDCCCCCD00000000;
  v43 = 0;
  v100 = 0;
  v101 = 0xBDCCCCCD00000000;
  if (v27 <= 5)
  {
    v43 = *(&v97 + v27);
  }

  *v22 = v43;
  v78 = xmmword_10004F610;
  v79 = xmmword_10004F620;
  v80 = xmmword_10004F630;
  v81 = xmmword_10004F640;
  v82 = xmmword_10004F650;
  v83 = 0uLL;
  if (v27 > 5)
  {
    *v21 = 0;
    v21[1] = 0;
    *v85 = xmmword_10004F660;
    *&v85[16] = 0x41C0000041400000;
    v44 = 0;
  }

  else
  {
    *v21 = *(&v78 + v27);
    *v85 = xmmword_10004F660;
    *&v85[16] = 0x41C0000041400000;
    v44 = *&v85[4 * v27];
  }

  *v20 = v44;
  *v84 = xmmword_10004F670;
  *&v84[16] = 0x3F4CCCCD3DCCCCCDLL;
  if (v27 > 5)
  {
    *v19 = 0;
    v63 = xmmword_10004F680;
    v64 = 0x43020000C2B40000;
    v45 = 0;
  }

  else
  {
    *v19 = *&v84[4 * v27];
    v63 = xmmword_10004F680;
    v64 = 0x43020000C2B40000;
    v45 = *(&v63 + v27);
  }

  *v18 = v45;
  __asm { FMOV            V2.4S, #1.0 }

  v61 = _Q2;
  v62 = _D0;
  v47 = 0;
  if (v27 <= 5)
  {
    v47 = *(&v61 + v27);
  }

  *v17 = v47;
  v72 = xmmword_10004F690;
  v73 = xmmword_10004F6A0;
  v74 = xmmword_10004F6B0;
  v75 = xmmword_10004F6C0;
  v76 = xmmword_10004F6C0;
  v77 = xmmword_10004F6D0;
  if (v27 > 5)
  {
    *v16 = 0;
    v16[1] = 0;
    v58 = 0;
    v59 = _Q2;
    v48 = 0;
    v60 = 0;
  }

  else
  {
    *v16 = *(&v72 + v27);
    v58 = 0;
    v59 = _Q2;
    v60 = 0;
    v48 = *(&v58 + v27);
  }

  *v15 = v48;
  v56 = xmmword_10004F6E0;
  v57 = vdup_n_s32(0x3CA3D70Au);
  v51 = _Q2;
  if (v27 > 5)
  {
    *v14 = 0;
    v54 = xmmword_10004F6F0;
    v55 = vdup_n_s32(0x42B40000u);
    v49 = 0.0;
  }

  else
  {
    *v14 = *(&v56 + v27);
    v54 = xmmword_10004F6F0;
    v55 = vdup_n_s32(0x42B40000u);
    v49 = *(&v54 + v27) * 0.017453;
  }

  *v13 = __sincosf_stret(v49);
  v52 = v51;
  v53 = 0x3F8000003F733333;
  v50 = 0;
  if (v27 <= 5)
  {
    v50 = *(&v52 + v27);
  }

  *v12 = v50;
}

float __vfx_script_clouds_graph_65(uint64_t a1)
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 24);
  v3 = *(arguments_buffer + 32);
  v4 = *(arguments_buffer + 48);
  v5 = *(arguments_buffer + 56);
  v6 = **(arguments_buffer + 8);
  v7 = **(arguments_buffer + 16);
  v8.i32[0] = **(arguments_buffer + 40);
  *v47 = 0;
  *&v47[8] = 0x3F4CCCCDBE4CCCCDLL;
  *&v47[16] = 0x3DCCCCCD3F800000;
  v48 = 0x3EB3333300000000;
  v49 = 0x3EB33333BF800000;
  v50 = 0x3EB3333300000000;
  if (v6 > 5)
  {
    *v2 = vadd_f32(v7, 0);
    *v47 = 0;
    *&v47[4] = xmmword_10004F700;
    *&v47[20] = 1045220557;
    v9 = -0.25;
  }

  else
  {
    *v2 = vadd_f32(v7, *&v47[8 * v6]);
    *v47 = 0;
    *&v47[4] = xmmword_10004F700;
    *&v47[20] = 1045220557;
    v9 = *&v47[4 * v6] + -0.25;
  }

  *v8.i32 = *v8.i32 * 0.25;
  v10 = vdupq_lane_s32(v8, 0);
  v11 = v10;
  v11.i32[3] = 0;
  v12 = vrndmq_f32(v11);
  v13 = vsubq_f32(v10, v12);
  v13.i32[3] = 0;
  v14 = vminnmq_f32(v13, xmmword_10004F710);
  _Q4.i64[0] = 0xC0000000C0000000;
  _Q4.i64[1] = 0xC0000000C0000000;
  __asm { FMOV            V5.4S, #3.0 }

  _Q2 = vmulq_f32(vmulq_f32(v14, v14), vmlaq_f32(_Q5, _Q4, v14));
  v22 = vaddq_f32(v12, 0);
  v23 = vaddq_f32(v12, xmmword_10004F720);
  v24 = vaddq_f32(v12, xmmword_10004F730);
  _Q3 = vaddq_f32(v12, xmmword_10004F740);
  v26 = vaddq_f32(v12, xmmword_10004F750);
  *_Q4.f32 = vdup_n_s32(0x3EA2F984u);
  *_Q5.f32 = vdup_n_s32(0x3DCCCCCDu);
  v27 = vmla_f32(*_Q5.f32, *_Q4.f32, vzip1_s32(*v26.i8, *v22.i8));
  v28 = vmla_f32(*_Q5.f32, *_Q4.f32, vzip2_s32(*v26.i8, *v22.i8));
  v29 = vaddq_f32(v12, xmmword_10004F760);
  v30 = vmla_f32(*_Q5.f32, *_Q4.f32, vzip1_s32(*v29.i8, *v23.i8));
  v31 = vmla_f32(*_Q5.f32, *_Q4.f32, vzip2_s32(*v29.i8, *v23.i8));
  v32 = vaddq_f32(v12, xmmword_10004F770);
  v33 = vmla_f32(*_Q5.f32, *_Q4.f32, vzip1_s32(*v32.i8, *v24.i8));
  v34 = vmla_f32(*_Q5.f32, *_Q4.f32, vzip2_s32(*v32.i8, *v24.i8));
  __asm { FMOV            V17.4S, #1.0 }

  v36 = vaddq_f32(v12, _Q17);
  v37 = vmla_f32(*_Q5.f32, *_Q4.f32, vzip1_s32(*v36.i8, *_Q3.i8));
  v38 = vmla_f32(*_Q5.f32, *_Q4.f32, vzip2_s32(*v36.i8, *_Q3.i8));
  *v12.f32 = vdup_n_s32(0x3F7FFFFFu);
  v39 = vminnm_f32(vsub_f32(v27, vrndm_f32(v27)), *v12.f32);
  __asm { FMOV            V18.2S, #17.0 }

  v41 = vmul_f32(v39, _D18);
  v42 = vmul_f32(vminnm_f32(vsub_f32(v28, vrndm_f32(v28)), *v12.f32), _D18);
  *v26.i8 = vmla_f32(*_Q5.f32, *_Q4.f32, *&vzip2q_s32(v26, v22));
  *v22.i8 = vmul_f32(vminnm_f32(vsub_f32(*v26.i8, vrndm_f32(*v26.i8)), *v12.f32), _D18);
  *v22.i8 = vmul_f32(vmul_f32(*v22.i8, vmul_f32(v41, v42)), vadd_f32(*v22.i8, vadd_f32(v41, v42)));
  *v22.i8 = vminnm_f32(vsub_f32(*v22.i8, vrndm_f32(*v22.i8)), *v12.f32);
  *v26.i8 = vmul_f32(vminnm_f32(vsub_f32(v30, vrndm_f32(v30)), *v12.f32), _D18);
  v43 = vmul_f32(vminnm_f32(vsub_f32(v31, vrndm_f32(v31)), *v12.f32), _D18);
  *v29.i8 = vmla_f32(*_Q5.f32, *_Q4.f32, *&vzip2q_s32(v29, v23));
  *v23.i8 = vmul_f32(vminnm_f32(vsub_f32(*v29.i8, vrndm_f32(*v29.i8)), *v12.f32), _D18);
  *v23.i8 = vmul_f32(vmul_f32(*v23.i8, vmul_f32(*v26.i8, v43)), vadd_f32(*v23.i8, vadd_f32(*v26.i8, v43)));
  *v22.i8 = vmla_n_f32(*v22.i8, vsub_f32(vminnm_f32(vsub_f32(*v23.i8, vrndm_f32(*v23.i8)), *v12.f32), *v22.i8), _Q2.f32[0]);
  *v23.i8 = vmul_f32(vminnm_f32(vsub_f32(v33, vrndm_f32(v33)), *v12.f32), _D18);
  v44 = vmul_f32(vminnm_f32(vsub_f32(v34, vrndm_f32(v34)), *v12.f32), _D18);
  *v32.i8 = vmla_f32(*_Q5.f32, *_Q4.f32, *&vzip2q_s32(v32, v24));
  *v24.i8 = vmul_f32(vminnm_f32(vsub_f32(*v32.i8, vrndm_f32(*v32.i8)), *v12.f32), _D18);
  *v24.i8 = vmul_f32(vmul_f32(*v24.i8, vmul_f32(*v23.i8, v44)), vadd_f32(*v24.i8, vadd_f32(*v23.i8, v44)));
  *v24.i8 = vminnm_f32(vsub_f32(*v24.i8, vrndm_f32(*v24.i8)), *v12.f32);
  *v23.i8 = vmul_f32(vminnm_f32(vsub_f32(v37, vrndm_f32(v37)), *v12.f32), _D18);
  *v32.i8 = vmul_f32(vminnm_f32(vsub_f32(v38, vrndm_f32(v38)), *v12.f32), _D18);
  *_Q5.f32 = vmla_f32(*_Q5.f32, *_Q4.f32, *&vzip2q_s32(v36, _Q3));
  *_Q3.i8 = vmul_f32(vminnm_f32(vsub_f32(*_Q5.f32, vrndm_f32(*_Q5.f32)), *v12.f32), _D18);
  *_Q3.i8 = vmul_f32(vmul_f32(*_Q3.i8, vmul_f32(*v23.i8, *v32.i8)), vadd_f32(*_Q3.i8, vadd_f32(*v23.i8, *v32.i8)));
  *v22.i8 = vmla_lane_f32(*v22.i8, vsub_f32(vmla_n_f32(*v24.i8, vsub_f32(vminnm_f32(vsub_f32(*_Q3.i8, vrndm_f32(*_Q3.i8)), *v12.f32), *v24.i8), _Q2.f32[0]), *v22.i8), *_Q2.f32, 1);
  _Q4.f32[0] = *v22.i32 - *&v22.i32[1];
  __asm { FMLA            S3, S4, V2.S[2] }

  _Q2.f32[0] = fminf(fmaxf(*_Q3.i32, 0.0), 1.0);
  *v5 = (v9 * _Q2.f32[0]) + 0.25;
  *v4 = (_Q2.f32[0] * 0.7) + 0.5;
  vfx_script_clock_time();
  result = v45;
  *v3 = result;
  return result;
}

uint64_t __vfx_script_clouds_graph_66(uint64_t a1)
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  v1 = *(vfx_script_get_arguments_buffer() + 8);
  vfx_script_clock_delta_time();
  [v1 qword_100071398];
  vfx_script_get_ecs_value();
  vfx_script_set_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  return vfx_script_set_ecs_value();
}

void __vfx_script_clouds_graph_67(uint64_t a1)
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  [*(vfx_script_get_arguments_buffer() + 8) qword_100071398];
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
}

void __vfx_script_clouds_graph_72(uint64_t a1)
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v3 = *(arguments_buffer + 8);
  v2 = *(arguments_buffer + 16);
  v4 = *(arguments_buffer + 24);
  v5 = **(arguments_buffer + 32);
  vfx_script_clock_delta_time();
  v7 = fmaxf(*v4 - v6, 0.0);
  *v4 = v7;
  if (v7 <= 0.0 && (v5 & 1) == 0 && *v3 == 1)
  {
    vfx_script_string_create();
    [v2 qword_100071300];
    *v3 = 0;
    vfx_script_graph_log();
    vfx_script_string_destroy();
  }
}

void __vfx_script_clouds_graph_75(uint64_t a1)
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = arguments_buffer[3];
  v23 = arguments_buffer[2];
  v24 = arguments_buffer[1];
  v22 = arguments_buffer[5];
  v3 = arguments_buffer[6];
  v4 = arguments_buffer[7];
  v5 = arguments_buffer[8];
  v6 = arguments_buffer[9];
  v8 = arguments_buffer[10];
  v7 = arguments_buffer[11];
  v9 = arguments_buffer[12];
  v10 = arguments_buffer[13];
  v11 = arguments_buffer[14];
  v12 = **arguments_buffer;
  v13 = *arguments_buffer[4];
  v43 = xmmword_10004F780;
  v44 = 0x42C80000C2B40000;
  if (v12 > 5)
  {
    *v11 = 0;
    v41 = xmmword_10004F790;
    v42 = vdup_n_s32(0x42B40000u);
    v14 = 0.0;
  }

  else
  {
    *v11 = *(&v43 + v12);
    v41 = xmmword_10004F790;
    v42 = vdup_n_s32(0x42B40000u);
    v14 = *(&v41 + v12) * 0.017453;
  }

  *v10 = __sincosf_stret(v14);
  v40[0] = 0x3F00000000000000;
  v40[1] = 0x3F8000003DCCCCCDLL;
  v40[2] = 0x3F8000003DCCCCCDLL;
  v40[3] = 0x3F8000003E800000;
  v40[4] = 0x3F80000000000000;
  v40[5] = 0x3F80000000000000;
  if (v12 > 5)
  {
    *v9 = 0;
    v38 = xmmword_10004F7A0;
    v39 = 1036831949;
    v15 = 0;
  }

  else
  {
    *v9 = v40[v12];
    v38 = xmmword_10004F7A0;
    v39 = 1036831949;
    v15 = *(&v38 + v12);
  }

  *v7 = v15;
  v37[0] = 0x4000000000000000;
  v37[1] = 0x4000000000000000;
  v37[2] = 0x4000000000000000;
  v37[3] = 0x4000000000000000;
  v37[4] = 0x4000000000000000;
  v37[5] = 0x4000000000000000;
  if (v12 > 5)
  {
    *v8 = 0;
    *&v18 = 0x4000000040000000;
    *(&v18 + 1) = 0x4000000040000000;
    v35 = v18;
    v36 = 0x4000000040000000;
    v17 = 0;
  }

  else
  {
    *v8 = v37[v12];
    *&v16 = 0x4000000040000000;
    *(&v16 + 1) = 0x4000000040000000;
    v35 = v16;
    v36 = 0x4000000040000000;
    v17 = *(&v35 + v12);
  }

  *v6 = v17;
  *v5 = v12;
  v34[0] = 0x3ECCCCCD00000000;
  v34[1] = 0x3ECCCCCD00000000;
  v34[2] = 0;
  v34[3] = 0x3ECCCCCD00000000;
  v34[4] = 0;
  v34[5] = 0;
  if (v12 > 5)
  {
    *v4 = 0;
    v32 = xmmword_10004F7B0;
    v33 = vdup_n_s32(0x3D0F5C29u);
    v19 = 0;
  }

  else
  {
    *v4 = v34[v12];
    v32 = xmmword_10004F7B0;
    v33 = vdup_n_s32(0x3D0F5C29u);
    v19 = *(&v32 + v12);
  }

  *v3 = v19;
  *v22 = v13;
  v31[0] = 0xBE19999A00000000;
  v31[1] = 0xBE19999A00000000;
  v31[2] = 0;
  v31[3] = 0xBE19999A00000000;
  v31[4] = 0;
  v31[5] = 0;
  if (v12 > 5)
  {
    *v2 = 0;
    v27 = -1130113270;
    v29 = 0;
    v28 = 0;
    v20 = 0;
    v30 = 1050320830;
  }

  else
  {
    *v2 = v31[v12];
    v27 = -1130113270;
    v29 = 0;
    v28 = 0;
    v30 = 1050320830;
    v20 = *(&v27 + v12);
  }

  *v23 = v20;
  v25 = xmmword_10004F7C0;
  v26 = 0x3F0000003F59999ALL;
  v21 = 0;
  if (v12 <= 5)
  {
    v21 = *(&v25 + v12);
  }

  *v24 = v21;
}

void __vfx_script_clouds_graph_76(uint64_t a1)
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v22 = arguments_buffer[2];
  v23 = arguments_buffer[1];
  v21 = arguments_buffer[3];
  v20 = arguments_buffer[5];
  v2 = arguments_buffer[6];
  v3 = arguments_buffer[7];
  v4 = arguments_buffer[8];
  v5 = arguments_buffer[9];
  v7 = arguments_buffer[10];
  v6 = arguments_buffer[11];
  v8 = arguments_buffer[12];
  v9 = arguments_buffer[13];
  v11 = arguments_buffer[14];
  v10 = arguments_buffer[15];
  v12 = **arguments_buffer;
  v13 = *arguments_buffer[4];
  v44 = xmmword_10004F7D0;
  v45 = 0xC270000042B40000;
  if (v12 > 5)
  {
    *v10 = 0;
    v42 = xmmword_10004F790;
    v43 = vdup_n_s32(0x42B40000u);
    v14 = 0.0;
  }

  else
  {
    *v10 = *(&v44 + v12);
    v42 = xmmword_10004F790;
    v43 = vdup_n_s32(0x42B40000u);
    v14 = *(&v42 + v12) * 0.017453;
  }

  *v11 = __sincosf_stret(v14);
  v41[0] = 0x3F8000003E4CCCCDLL;
  v41[1] = 0x3F8000003E4CCCCDLL;
  v41[2] = 0x3F8000003DCCCCCDLL;
  v41[3] = 0x3F8000003E99999ALL;
  v41[4] = 0x3F66666600000000;
  v41[5] = 0x3F40000000000000;
  if (v12 > 5)
  {
    *v9 = 0;
    v39 = xmmword_10004F7E0;
    v40 = 1036831949;
    v15 = 0;
  }

  else
  {
    *v9 = v41[v12];
    v39 = xmmword_10004F7E0;
    v40 = 1036831949;
    v15 = *(&v39 + v12);
  }

  *v8 = v15;
  v38[0] = 0x4000000000000000;
  v38[1] = 0x4000000000000000;
  v38[2] = 0x4000000000000000;
  v38[3] = 0x4000000000000000;
  v38[4] = 0x4000000000000000;
  v38[5] = 0x4000000000000000;
  if (v12 > 5)
  {
    *v6 = 0;
    v36 = xmmword_10004F7F0;
    v37 = 0x4000000040000000;
    v16 = 0;
  }

  else
  {
    *v6 = v38[v12];
    v36 = xmmword_10004F7F0;
    v37 = 0x4000000040000000;
    v16 = *(&v36 + v12);
  }

  *v7 = v16;
  *v5 = v12;
  v35[0] = 0x3ECCCCCD00000000;
  v35[1] = 0x3ECCCCCD00000000;
  v35[2] = 0x3F19999A00000000;
  v35[3] = 0x3F19999A00000000;
  v35[4] = 0x3F80000000000000;
  v35[5] = 0x3F80000000000000;
  v17 = 0;
  if (v12 <= 5)
  {
    v17 = v35[v12];
  }

  *v4 = v17;
  v34[0] = 0x3D4CCCCDBD4CCCCDLL;
  v34[1] = 0x3D4CCCCDBD4CCCCDLL;
  v34[2] = 0x3C23D70ABC23D70ALL;
  v34[3] = 0x3CCCCCCDBCCCCCCDLL;
  v34[4] = 0x3C23D70ABC23D70ALL;
  v34[5] = 0x3C23D70ABC23D70ALL;
  if (v12 > 5)
  {
    v18 = 0;
    *v3 = 0;
    v33 = vdup_n_s32(0x3C23D70Au);
    *v2 = 0;
    *v20 = v13;
    v28 = 0xBE19999A00000000;
    v29 = 0xBE19999A00000000;
    v30 = 0u;
    v31 = 0u;
    v32 = xmmword_10004F7B0;
  }

  else
  {
    *v3 = v34[v12];
    v32 = xmmword_10004F7B0;
    v33 = vdup_n_s32(0x3C23D70Au);
    *v2 = *(&v32 + v12);
    *v20 = v13;
    v28 = 0xBE19999A00000000;
    v29 = 0xBE19999A00000000;
    v30 = 0u;
    v31 = 0u;
    v18 = *(&v28 + v12);
  }

  *v21 = v18;
  v26 = xmmword_10004F800;
  v27 = 0x3F19999A3E99999ALL;
  if (v12 > 5)
  {
    *v22 = 0;
    v24 = xmmword_10004F810;
    v25 = 0x3E99999A3ECCCCCDLL;
    v19 = 0;
  }

  else
  {
    *v22 = *(&v26 + v12);
    v24 = xmmword_10004F810;
    v25 = 0x3E99999A3ECCCCCDLL;
    v19 = *(&v24 + v12);
  }

  *v23 = v19;
}

void __vfx_script_clouds_graph_77(uint64_t a1)
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v31 = arguments_buffer[2];
  v32 = arguments_buffer[1];
  v30 = arguments_buffer[3];
  v2 = arguments_buffer[4];
  v3 = arguments_buffer[7];
  v28 = arguments_buffer[6];
  v29 = arguments_buffer[5];
  v4 = arguments_buffer[8];
  v5 = arguments_buffer[9];
  v7 = arguments_buffer[10];
  v6 = arguments_buffer[11];
  v8 = arguments_buffer[12];
  v9 = arguments_buffer[13];
  v10 = arguments_buffer[14];
  v11 = arguments_buffer[15];
  v12 = arguments_buffer[16];
  v13 = **arguments_buffer;
  v54 = xmmword_10004F820;
  v55 = vdup_n_s32(0xC2B40000);
  v14 = 0.0;
  v15 = 0;
  v16 = *v2;
  if (v13 <= 5)
  {
    v15 = *(&v54 + v13);
  }

  *v12 = v15;
  v52 = xmmword_10004F790;
  v53 = 1119092736;
  if (v13 <= 4)
  {
    v14 = *(&v52 + v13) * 0.017453;
  }

  *v11 = __sincosf_stret(v14);
  v51[0] = 0x3F8000003E4CCCCDLL;
  v51[1] = 0x3F8000003E4CCCCDLL;
  v51[2] = 0x3F80000000000000;
  v51[3] = 0x3F8000003E99999ALL;
  v51[4] = 0x3F66666600000000;
  v51[5] = 0x3F4CCCCD3E4CCCCDLL;
  if (v13 > 5)
  {
    *v10 = 0;
    v49 = xmmword_10004F7A0;
    v50 = 1036831949;
    v17 = 0;
  }

  else
  {
    *v10 = v51[v13];
    v49 = xmmword_10004F7A0;
    v50 = 1036831949;
    v17 = *(&v49 + v13);
  }

  *v9 = v17;
  v48[0] = 0x4000000000000000;
  v48[1] = 0x4000000000000000;
  v48[2] = 0x4000000000000000;
  v48[3] = 0x4000000000000000;
  v48[4] = 0x4080000000000000;
  v48[5] = 0x4000000000000000;
  if (v13 > 5)
  {
    *v8 = 0;
    v46 = xmmword_10004F7F0;
    v47 = 0x4000000040000000;
    v18 = 0;
  }

  else
  {
    *v8 = v48[v13];
    v46 = xmmword_10004F7F0;
    v47 = 0x4000000040000000;
    v18 = *(&v46 + v13);
  }

  *v6 = v18;
  *v7 = v13;
  __asm { FMOV            V1.4S, #1.0 }

  v45[0] = _Q1;
  v45[1] = _Q1;
  v45[2] = _Q1;
  v45[3] = _Q1;
  v45[4] = _Q1;
  v45[5] = xmmword_10004F830;
  v24 = 0uLL;
  if (v13 <= 5)
  {
    v24 = v45[v13];
  }

  *v5 = v24;
  v44[0] = 0x3ECCCCCD00000000;
  v44[1] = 0x3ECCCCCD00000000;
  v44[2] = 0x3F19999A00000000;
  v44[3] = 0x3F19999A00000000;
  v44[4] = 0x3F80000000000000;
  v44[5] = 0x3F00000000000000;
  v25 = 0;
  if (v13 <= 5)
  {
    v25 = v44[v13];
  }

  *v4 = v25;
  v43[0] = vdup_n_s32(0x3CCCCCCDu);
  v43[1] = v43[0];
  v43[2] = vdup_n_s32(0x3C23D70Au);
  v43[3] = 0x3CCCCCCDBCCCCCCDLL;
  v43[4] = 0x3C23D70ABC23D70ALL;
  v43[5] = 0x3C23D70ABC23D70ALL;
  if (v13 > 5)
  {
    v26 = 0;
    *v3 = 0;
    v42 = 0x3D0F5C293DCCCCCDLL;
    *v28 = 0;
    *v29 = v16;
    v37 = 0xBE19999A00000000;
    v38 = 0xBE19999A00000000;
    v39 = 0u;
    v40 = 0u;
    v41 = xmmword_10004F7B0;
  }

  else
  {
    *v3 = v43[v13];
    v41 = xmmword_10004F7B0;
    v42 = 0x3D0F5C293DCCCCCDLL;
    *v28 = *(&v41 + v13);
    *v29 = v16;
    v37 = 0xBE19999A00000000;
    v38 = 0xBE19999A00000000;
    v39 = 0u;
    v40 = 0u;
    v26 = *(&v37 + v13);
  }

  *v30 = v26;
  v35 = xmmword_10004F840;
  v36 = 0xBDCCCCCDBECCCCCDLL;
  if (v13 > 5)
  {
    *v31 = 0;
    v33 = xmmword_10004F810;
    v34 = 0x3F3AE1483E99999ALL;
    v27 = 0;
  }

  else
  {
    *v31 = *(&v35 + v13);
    v33 = xmmword_10004F810;
    v34 = 0x3F3AE1483E99999ALL;
    v27 = *(&v33 + v13);
  }

  *v32 = v27;
}

void __vfx_script_clouds_graph_78(uint64_t a1)
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = arguments_buffer[3];
  v23 = arguments_buffer[2];
  v24 = arguments_buffer[1];
  v3 = arguments_buffer[5];
  v4 = arguments_buffer[6];
  v5 = arguments_buffer[7];
  v6 = arguments_buffer[8];
  v7 = arguments_buffer[9];
  v9 = arguments_buffer[10];
  v8 = arguments_buffer[11];
  v11 = arguments_buffer[12];
  v10 = arguments_buffer[13];
  v12 = **arguments_buffer;
  v13 = *arguments_buffer[4];
  v37[0] = xmmword_10004F7D0;
  if (v12 > 3)
  {
    v14 = 0;
    v15 = 0.0;
  }

  else
  {
    v14 = *(v37 + v12);
    v36 = xmmword_10004F790;
    v15 = *(&v37[-1] + v12) * 0.017453;
  }

  *v10 = v14;
  *v11 = __sincosf_stret(v15);
  v35[0] = 0x3F8000003E4CCCCDLL;
  v35[1] = 0x3F8000003E4CCCCDLL;
  v35[2] = 0x3F8000003DCCCCCDLL;
  v35[3] = 0x3F80000000000000;
  if (v12 > 3)
  {
    v17 = 0;
    v16 = 0;
  }

  else
  {
    v16 = v35[v12];
    v34 = xmmword_10004F7F0;
    v17 = *(&v35[-2] + v12);
  }

  *v8 = v16;
  *v9 = v17;
  *v7 = v12;
  v33[0] = 0x3ECCCCCD00000000;
  v33[1] = 0x3ECCCCCD00000000;
  v33[2] = 0x3F19999A00000000;
  v33[3] = 0x3F19999A00000000;
  if (v12 > 3)
  {
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v18 = v33[v12];
    v32[0] = 0x3D4CCCCDBD4CCCCDLL;
    v32[1] = 0x3D4CCCCDBD4CCCCDLL;
    v32[2] = 0x3CCCCCCDBCCCCCCDLL;
    v32[3] = 0x3CCCCCCDBCCCCCCDLL;
    v19 = v32[v12];
  }

  *v6 = v18;
  *v5 = v19;
  v31 = xmmword_10004F7B0;
  if (v12 > 3)
  {
    *v4 = 0;
    *v3 = v13;
    v27 = 0xBE19999A00000000;
    v28 = 0xBE19999A00000000;
    v29 = 0;
    v30 = 0;
    v21 = 0;
    v20 = 0;
  }

  else
  {
    *v4 = *(&v32[-2] + v12);
    *v3 = v13;
    v27 = 0xBE19999A00000000;
    v28 = 0xBE19999A00000000;
    v29 = 0;
    v30 = 0;
    v20 = *(&v27 + v12);
    v26 = xmmword_10004F850;
    v21 = *(&v26 + v12);
  }

  *v2 = v20;
  *v23 = v21;
  v25 = xmmword_10004F810;
  v22 = 0;
  if (v12 <= 3)
  {
    v22 = *(&v25 + v12);
  }

  *v24 = v22;
}

void __vfx_script_clouds_graph_79(uint64_t a1)
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v30 = arguments_buffer[2];
  v31 = arguments_buffer[1];
  v29 = arguments_buffer[3];
  v2 = arguments_buffer[4];
  v28 = arguments_buffer[5];
  v3 = arguments_buffer[6];
  v4 = arguments_buffer[7];
  v5 = arguments_buffer[8];
  v6 = arguments_buffer[9];
  v8 = arguments_buffer[10];
  v7 = arguments_buffer[11];
  v9 = arguments_buffer[12];
  v10 = arguments_buffer[13];
  v12 = arguments_buffer[14];
  v11 = arguments_buffer[15];
  v13 = **arguments_buffer;
  v51 = xmmword_10004F820;
  v52 = vdup_n_s32(0xC2B40000);
  v14 = 0.0;
  v15 = 0;
  v16 = *v2;
  if (v13 <= 5)
  {
    v15 = *(&v51 + v13);
  }

  *v11 = v15;
  v49 = xmmword_10004F790;
  v50 = 1119092736;
  if (v13 <= 4)
  {
    v14 = *(&v49 + v13) * 0.017453;
  }

  *v12 = __sincosf_stret(v14);
  v48[0] = 0x3F8000003E4CCCCDLL;
  v48[1] = 0x3F8000003E4CCCCDLL;
  v48[2] = 0x3F80000000000000;
  v48[3] = 0x3F8000003E99999ALL;
  v48[4] = 0x3F6666663E99999ALL;
  v48[5] = 0x3F4CCCCD3E4CCCCDLL;
  v17 = 0;
  if (v13 <= 5)
  {
    v17 = v48[v13];
  }

  *v10 = v17;
  v47[0] = 0x4000000000000000;
  v47[1] = 0x4000000000000000;
  v47[2] = 0x4000000000000000;
  v47[3] = 0x4000000000000000;
  v47[4] = 0x4080000000000000;
  v47[5] = 0x4000000000000000;
  if (v13 > 5)
  {
    *v9 = 0;
    v45 = xmmword_10004F7F0;
    v46 = 0x4000000040000000;
    v18 = 0;
  }

  else
  {
    *v9 = v47[v13];
    v45 = xmmword_10004F7F0;
    v46 = 0x4000000040000000;
    v18 = *(&v45 + v13);
  }

  *v7 = v18;
  *v8 = v13;
  __asm { FMOV            V1.4S, #1.0 }

  v44[0] = _Q1;
  v44[1] = _Q1;
  v44[2] = _Q1;
  v44[3] = _Q1;
  v44[4] = xmmword_10004F860;
  v44[5] = _Q1;
  v24 = 0uLL;
  if (v13 <= 5)
  {
    v24 = v44[v13];
  }

  *v6 = v24;
  v43[0] = 0x3ECCCCCD00000000;
  v43[1] = 0x3ECCCCCD00000000;
  v43[2] = 0x3F19999A00000000;
  v43[3] = 0x3F19999A00000000;
  v43[4] = 0x3F80000000000000;
  v43[5] = 0x3F00000000000000;
  v25 = 0;
  if (v13 <= 5)
  {
    v25 = v43[v13];
  }

  *v5 = v25;
  v42[0] = vdup_n_s32(0x3CCCCCCDu);
  v42[1] = v42[0];
  v42[2] = vdup_n_s32(0x3C23D70Au);
  v42[3] = 0x3CCCCCCDBCCCCCCDLL;
  v42[4] = 0x3C23D70ABC23D70ALL;
  v42[5] = 0x3C23D70ABC23D70ALL;
  if (v13 > 5)
  {
    v26 = 0;
    *v4 = 0;
    v41 = 0x3D0F5C293DCCCCCDLL;
    *v3 = 0;
    *v28 = v16;
    v36 = 0xBE19999A00000000;
    v37 = 0xBE19999A00000000;
    v38 = 0u;
    v39 = 0u;
    v40 = xmmword_10004F7B0;
  }

  else
  {
    *v4 = v42[v13];
    v40 = xmmword_10004F7B0;
    v41 = 0x3D0F5C293DCCCCCDLL;
    *v3 = *(&v40 + v13);
    *v28 = v16;
    v36 = 0xBE19999A00000000;
    v37 = 0xBE19999A00000000;
    v38 = 0u;
    v39 = 0u;
    v26 = *(&v36 + v13);
  }

  *v29 = v26;
  v34 = xmmword_10004F840;
  v35 = 0xBDCCCCCDBECCCCCDLL;
  if (v13 > 5)
  {
    *v30 = 0;
    v32 = xmmword_10004F810;
    v33 = 0x3F3AE1483E99999ALL;
    v27 = 0;
  }

  else
  {
    *v30 = *(&v34 + v13);
    v32 = xmmword_10004F810;
    v33 = 0x3F3AE1483E99999ALL;
    v27 = *(&v32 + v13);
  }

  *v31 = v27;
}

void __vfx_script_clouds_graph_80(uint64_t a1)
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v30 = arguments_buffer[2];
  v31 = arguments_buffer[1];
  v29 = arguments_buffer[3];
  v2 = arguments_buffer[4];
  v28 = arguments_buffer[5];
  v3 = arguments_buffer[6];
  v4 = arguments_buffer[7];
  v5 = arguments_buffer[8];
  v6 = arguments_buffer[9];
  v8 = arguments_buffer[10];
  v7 = arguments_buffer[11];
  v9 = arguments_buffer[12];
  v10 = arguments_buffer[13];
  v12 = arguments_buffer[14];
  v11 = arguments_buffer[15];
  v13 = **arguments_buffer;
  v51 = xmmword_10004F820;
  v52 = vdup_n_s32(0xC2B40000);
  v14 = 0.0;
  v15 = 0;
  v16 = *v2;
  if (v13 <= 5)
  {
    v15 = *(&v51 + v13);
  }

  *v11 = v15;
  v49 = xmmword_10004F790;
  v50 = 1119092736;
  if (v13 <= 4)
  {
    v14 = *(&v49 + v13) * 0.017453;
  }

  *v12 = __sincosf_stret(v14);
  v48[0] = 0x3F8000003E4CCCCDLL;
  v48[1] = 0x3F8000003E4CCCCDLL;
  v48[2] = 0x3F80000000000000;
  v48[3] = 0x3F8000003E99999ALL;
  v48[4] = 0x3F66666600000000;
  v48[5] = 0x3F4CCCCD3E4CCCCDLL;
  v17 = 0;
  if (v13 <= 5)
  {
    v17 = v48[v13];
  }

  *v10 = v17;
  v47[0] = 0x4000000000000000;
  v47[1] = 0x4000000000000000;
  v47[2] = 0x4000000000000000;
  v47[3] = 0x4000000000000000;
  v47[4] = 0x4080000000000000;
  v47[5] = 0x4000000000000000;
  if (v13 > 5)
  {
    *v9 = 0;
    v45 = xmmword_10004F7F0;
    v46 = 0x4000000040000000;
    v18 = 0;
  }

  else
  {
    *v9 = v47[v13];
    v45 = xmmword_10004F7F0;
    v46 = 0x4000000040000000;
    v18 = *(&v45 + v13);
  }

  *v7 = v18;
  *v8 = v13;
  __asm { FMOV            V1.4S, #1.0 }

  v44[0] = _Q1;
  v44[1] = _Q1;
  v44[2] = _Q1;
  v44[3] = _Q1;
  v44[4] = _Q1;
  v44[5] = xmmword_10004F830;
  v24 = 0uLL;
  if (v13 <= 5)
  {
    v24 = v44[v13];
  }

  *v6 = v24;
  v43[0] = 0x3ECCCCCD00000000;
  v43[1] = 0x3ECCCCCD00000000;
  v43[2] = 0x3F19999A00000000;
  v43[3] = 0x3F19999A00000000;
  v43[4] = 0x3F80000000000000;
  v43[5] = 0x3F00000000000000;
  v25 = 0;
  if (v13 <= 5)
  {
    v25 = v43[v13];
  }

  *v5 = v25;
  v42[0] = vdup_n_s32(0x3CCCCCCDu);
  v42[1] = v42[0];
  v42[2] = vdup_n_s32(0x3C23D70Au);
  v42[3] = 0x3CCCCCCDBCCCCCCDLL;
  v42[4] = 0x3C23D70ABC23D70ALL;
  v42[5] = 0x3C23D70ABC23D70ALL;
  if (v13 > 5)
  {
    v26 = 0;
    *v4 = 0;
    v41 = 0x3D0F5C293DCCCCCDLL;
    *v3 = 0;
    *v28 = v16;
    v36 = 0xBE19999A00000000;
    v37 = 0xBE19999A00000000;
    v38 = 0u;
    v39 = 0u;
    v40 = xmmword_10004F7B0;
  }

  else
  {
    *v4 = v42[v13];
    v40 = xmmword_10004F7B0;
    v41 = 0x3D0F5C293DCCCCCDLL;
    *v3 = *(&v40 + v13);
    *v28 = v16;
    v36 = 0xBE19999A00000000;
    v37 = 0xBE19999A00000000;
    v38 = 0u;
    v39 = 0u;
    v26 = *(&v36 + v13);
  }

  *v29 = v26;
  v34 = xmmword_10004F840;
  v35 = 0xBDCCCCCDBECCCCCDLL;
  if (v13 > 5)
  {
    *v30 = 0;
    v32 = xmmword_10004F810;
    v33 = 0x3F3AE1483E99999ALL;
    v27 = 0;
  }

  else
  {
    *v30 = *(&v34 + v13);
    v32 = xmmword_10004F810;
    v33 = 0x3F3AE1483E99999ALL;
    v27 = *(&v32 + v13);
  }

  *v31 = v27;
}

uint64_t __vfx_script_clouds_trigger_68(uint64_t a1)
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  v1 = *(vfx_script_get_arguments_buffer() + 8);
  vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  vfx_script_string_create();
  [v1 qword_100071300];

  return vfx_script_string_destroy();
}

uint64_t __vfx_script_clouds_trigger_69(uint64_t a1)
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 16);
  v3 = *(arguments_buffer + 24);
  v4 = *(arguments_buffer + 32);
  v5 = *(arguments_buffer + 48);
  v6 = **(arguments_buffer + 8);
  result = vfx_script_graph_log();
  if (v6 <= 5)
  {
    vfx_script_string_create();
    [v5 qword_100071300];
    *v4 = 1;
    *v3 = fmaxf(*v3, 5.0);
    vfx_script_string_create();
    [v2 qword_100071300];
    vfx_script_tick();
    vfx_script_string_destroy();
    return vfx_script_string_destroy();
  }

  return result;
}

uint64_t __vfx_script_clouds_trigger_70(uint64_t a1)
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v3 = *(arguments_buffer + 8);
  v2 = *(arguments_buffer + 16);
  **(arguments_buffer + 24) = 1;
  *v2 = fmaxf(*v2, 5.0);
  vfx_script_string_create();
  [v3 qword_100071300];
  vfx_script_graph_log();
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_clouds_trigger_71(uint64_t a1)
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  result = vfx_script_get_arguments_buffer();
  v2 = *(result + 16);
  v3 = *(result + 24);
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = **(result + 8);
  if (v6 <= 2)
  {
    if (v6 > 2)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v6 == 3 || v6 == 4 || v6 == 5)
  {
LABEL_9:
    vfx_script_string_create();
    [v5 qword_100071300];
    vfx_script_clock_time();
    vfx_script_graph_log();
    *v4 = 1;
    *v3 = fmaxf(*v3, 5.0);
    vfx_script_string_create();
    [v2 qword_100071300];
    vfx_script_string_destroy();
    return vfx_script_string_destroy();
  }

  return result;
}

uint64_t __vfx_script_clouds_trigger_73(uint64_t a1)
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = arguments_buffer[1];
  v3 = arguments_buffer[2];
  v5 = arguments_buffer[3];
  v4 = arguments_buffer[4];
  vfx_script_string_create();
  [v4 qword_100071300];
  vfx_script_clock_time();
  vfx_script_graph_log();
  *v5 = 1;
  *v3 = fmaxf(*v3, 5.0);
  vfx_script_string_create();
  [v2 qword_100071300];
  vfx_script_string_destroy();
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_clouds_trigger_74(uint64_t a1)
{
  if (qword_100071178 != -1)
  {
    sub_10004CB00();
  }

  v1 = *(vfx_script_get_arguments_buffer() + 8);
  vfx_script_string_create();
  [v1 qword_100071300];

  return vfx_script_string_destroy();
}

void sub_100006AE4(id a1)
{
  qword_100071180 = sel_registerName("setValue:forKeyPath:");
  qword_100071188 = sel_registerName("valueForKeyPath:");
  qword_100071190 = objc_lookUpClass("NSString");
  qword_100071198 = sel_registerName("stringWithUTF8String:");
  qword_1000711A0 = objc_lookUpClass("VFXTransaction");
  qword_1000711A8 = sel_registerName("begin");
  qword_1000711B0 = sel_registerName("setAnimationDurationAsFloat:");
  qword_1000711B8 = sel_registerName("commit");
  qword_1000711C0 = objc_lookUpClass("NSDictionary");
  qword_1000711C8 = objc_lookUpClass("NSMutableDictionary");
  qword_1000711D0 = sel_registerName("dictionary");
  qword_1000711D8 = sel_registerName("setValue:forKey:");
  qword_1000711E0 = sel_registerName("setObject:forKey:");
  qword_1000711E8 = objc_lookUpClass("NSValue");
  qword_1000711F0 = objc_lookUpClass("NSNumber");
  qword_1000711F8 = sel_registerName("numberWithBool:");
  qword_100071200 = sel_registerName("numberWithFloat:");
  qword_100071208 = sel_registerName("numberWithUnsignedInteger:");
  qword_100071210 = sel_registerName("firstObject");
  qword_100071218 = sel_registerName("count");
  qword_100071220 = objc_lookUpClass("VFXNode");
  qword_100071228 = sel_registerName("addAnimationAsset:forKey:");
  qword_100071230 = sel_registerName("removeAllAnimations");
  qword_100071238 = sel_registerName("removeAnimationForKey:");
  qword_100071240 = sel_registerName("script_rootNode");
  qword_100071248 = sel_registerName("clone");
  qword_100071250 = sel_registerName("parentNode");
  qword_100071258 = sel_registerName("addChildNode:");
  qword_100071260 = sel_registerName("childNodes");
  qword_100071268 = sel_registerName("deepClone");
  qword_100071270 = sel_registerName("insertChildNode:atIndex:");
  qword_100071278 = sel_registerName("removeFromParentNode");
  qword_100071280 = sel_registerName("childNodeWithName:");
  qword_100071288 = sel_registerName("convertPosition:fromNode:");
  qword_100071290 = sel_registerName("convertVector:fromNode:");
  qword_100071298 = sel_registerName("convertTransform:fromNode:");
  qword_1000712A0 = sel_registerName("convertPosition:toNode:");
  qword_1000712A8 = sel_registerName("convertVector:toNode:");
  qword_1000712B0 = sel_registerName("convertTransform:toNode:");
  qword_1000712B8 = sel_registerName("localTranslateBy:");
  qword_1000712C0 = sel_registerName("localRotateBy:");
  qword_1000712C8 = sel_registerName("rotateBy:aroundTarget:");
  qword_1000712D0 = sel_registerName("projectPoint:");
  qword_1000712D8 = sel_registerName("unprojectPoint:");
  qword_1000712E0 = sel_registerName("script_hitTest:options:");
  qword_1000712E8 = sel_registerName("hitTestWithSegmentFromPoint:toPoint:options:");
  qword_1000712F0 = sel_registerName("node");
  qword_1000712F8 = sel_registerName("setState:");
  qword_100071300 = sel_registerName("setStateNamed:");
  qword_100071308 = sel_registerName("_contentsScaleFactor");
  qword_100071310 = sel_registerName("_screenSize");
  qword_100071318 = sel_registerName("physicsBody");
  qword_100071320 = sel_registerName("script_instantiate:");
  qword_100071328 = sel_registerName("geometryIndex");
  qword_100071330 = sel_registerName("faceIndex");
  qword_100071338 = sel_registerName("localCoordinates");
  qword_100071340 = sel_registerName("worldCoordinates");
  qword_100071348 = sel_registerName("localNormal");
  qword_100071350 = sel_registerName("worldNormal");
  qword_100071358 = sel_registerName("modelTransform");
  qword_100071360 = sel_registerName("boneNode");
  qword_100071368 = sel_registerName("uv0");
  qword_100071370 = sel_registerName("presentationBoneNode");
  qword_100071378 = sel_registerName("presentationNode");
  qword_100071380 = sel_registerName("applyForce:impulse:");
  qword_100071388 = sel_registerName("applyForce:atPosition:impulse:");
  qword_100071390 = sel_registerName("applyTorque:impulse:");
  qword_100071398 = sel_registerName("presentationObject");
}

float __vfx_script_Aurora_graph_20(uint64_t a1)
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *arguments_buffer;
  v3 = *(arguments_buffer + 8);
  v5 = *(arguments_buffer + 16);
  v4 = *(arguments_buffer + 24);
  v6 = *(arguments_buffer + 32);
  v7 = *(arguments_buffer + 40);
  v8 = *(arguments_buffer + 48);
  v9 = *(arguments_buffer + 56);
  v10 = *(arguments_buffer + 64);
  v11 = *(arguments_buffer + 72);
  v12 = *(arguments_buffer + 80);
  v13 = *v2;
  v14 = *v5;
  v15 = *v6;
  v16 = *v9;
  v17.f32[0] = *v5 + -0.5;
  v17.f32[1] = *v5;
  __asm { FMOV            V5.2S, #1.0 }

  v23 = vminnm_f32(vmaxnm_f32(vadd_f32(v17, v17), 0), _D5);
  __asm { FMOV            V7.2S, #3.0 }

  v25 = vmul_f32(vmul_f32(v23, v23), vmla_f32(_D7, 0xC0000000C0000000, v23));
  v26 = vmla_f32(0x3C23D70A3E19999ALL, 0x3E0F5C293EB33333, v25);
  v27 = 0.0;
  if (*v5 >= 0.5)
  {
    v27 = 1.0;
  }

  v28 = *v3;
  *v12 = v26.f32[1] + ((v26.f32[0] - v26.f32[1]) * v27);
  *v11 = v14;
  *v10 = v16;
  *v8 = v13 + v28;
  *v7 = v15;
  v29 = vmla_f32(0x401841893FE00000, 0xBF210624BFE00000, v25);
  result = v29.f32[1] + ((v29.f32[0] - v29.f32[1]) * v27);
  *v4 = result;
  return result;
}

float __vfx_script_Aurora_graph_21(uint64_t a1)
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 8);
  v3 = *(arguments_buffer + 16);
  v4 = *(arguments_buffer + 24);
  v5 = **arguments_buffer;
  v6 = 1.0;
  if (v5 < 0.5)
  {
    v6 = 0.0;
  }

  v7.i32[1] = **arguments_buffer;
  v7.f32[0] = v5 + -0.5;
  v8 = vmaxnm_f32(vadd_f32(v7, v7), 0);
  __asm { FMOV            V3.2S, #1.0 }

  v14 = vminnm_f32(v8, _D3);
  __asm { FMOV            V5.2S, #3.0 }

  _D2 = vmul_f32(vmul_f32(v14, v14), vmla_f32(_D5, 0xC0000000C0000000, v14));
  _Q4 = vmlaq_lane_f32(xmmword_10004FA80, xmmword_10004FA70, _D2, 1);
  **(arguments_buffer + 32) = vmlaq_n_f32(_Q4, vsubq_f32(vmlaq_n_f32(xmmword_10004FAA0, xmmword_10004FA90, _D2.f32[0]), _Q4), v6);
  *_Q4.f32 = vmla_f32(0x3FB333333F99999ALL, 0xBE4CCCC8BDCCCCD0, _D2);
  *v4 = _Q4.f32[1] + ((_Q4.f32[0] - _Q4.f32[1]) * v6);
  _D3.i32[0] = 1036831936;
  __asm { FMLA            S4, S3, V2.S[1] }

  *v3 = _Q4.f32[0] + ((((_D2.f32[0] * 0.0) + 1.3) - _Q4.f32[0]) * v6);
  _D3.i32[0] = 0;
  __asm { FMLA            S3, S3, V2.S[1] }

  result = _D3.f32[0] + ((((_D2.f32[0] * 0.187) + 0.0) - _D3.f32[0]) * v6);
  *v2 = result;
  return result;
}

float __vfx_script_Aurora_graph_24(uint64_t a1)
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v5 = *(arguments_buffer + 56);
  v6 = *(arguments_buffer + 64);
  v7 = *(arguments_buffer + 72);
  v8 = *(arguments_buffer + 80);
  v10 = *(arguments_buffer + 88);
  v9 = *(arguments_buffer + 96);
  v11 = *(arguments_buffer + 112);
  v12 = *(arguments_buffer + 120);
  v13 = *(arguments_buffer + 128);
  v14 = **(arguments_buffer + 48);
  v15 = **(arguments_buffer + 104);
  if (**(arguments_buffer + 40) == 1)
  {
    v75 = *(arguments_buffer + 16);
    v76 = *(arguments_buffer + 120);
    v16 = **(arguments_buffer + 8);
    v17 = *(arguments_buffer + 32);
    v18 = **(arguments_buffer + 24);
    vfx_script_clock_time();
    *&v19 = v19;
    v20 = fmaxf(*&v19 - v16, 0.0);
    *&v19 = fabsf((v20 / 2.625) + -0.5);
    v21 = powf(*&v19 + *&v19, 1.25);
    v22 = expf((v21 * v21) * -8.0) * 0.5;
    vfx_script_clock_delta_time();
    v12 = v76;
    *v17 = *v17 + (v23 * v22);
    v24 = (1.0 - 1.0 / (((v20 / 3.5) * (v20 / 3.5)) * 4.0 + 1.0)) * 1.25;
    v25 = 1.0 - fminf(fmaxf(v24, 0.0), 1.0);
    if (v18 >= 100.0)
    {
      v24 = v25;
    }

    *v75 = v24;
  }

  v26 = fminf(fmaxf(v14 + v14, 0.0), 1.0);
  *v2.i32 = (v26 * v26) * ((v26 * -2.0) + 3.0);
  v27 = vdupq_lane_s32(v2, 0).u64[0];
  *v3.i32 = fminf(fmaxf((v14 + -0.5) + (v14 + -0.5), 0.0), 1.0);
  *v3.i32 = (*v3.i32 * *v3.i32) * ((*v3.i32 * -2.0) + 3.0);
  v28 = vdupq_lane_s32(v3, 0).u64[0];
  v29 = vmlaq_n_f32(xmmword_10004FAC0, xmmword_10004FAB0, *v2.i32);
  v30 = vmlaq_n_f32(xmmword_10004FAE0, xmmword_10004FAD0, *v3.i32);
  if (v14 < 0.5)
  {
    *v4.i32 = 0.0;
  }

  else
  {
    *v4.i32 = 1.0;
  }

  v31 = vdupq_lane_s32(v4, 0).u64[0];
  *v9 = vmlaq_n_f32(v29, vsubq_f32(v30, v29), *v4.i32);
  v32 = vmlaq_n_f32(xmmword_10004FB00, xmmword_10004FAF0, *v2.i32);
  *v10 = vmlaq_n_f32(v32, vsubq_f32(vmlaq_n_f32(xmmword_10004FB20, xmmword_10004FB10, *v3.i32), v32), *v4.i32);
  v33 = vmlaq_n_f32(xmmword_10004FB40, xmmword_10004FB30, *v2.i32);
  *v8 = vmlaq_n_f32(v33, vsubq_f32(vmlaq_n_f32(xmmword_10004FB60, xmmword_10004FB50, *v3.i32), v33), *v4.i32);
  v34 = vmla_f32(0xBF43D70A3F800000, 0, v27);
  *v7 = vmla_f32(v34, v31, vsub_f32(vmla_f32(0xBF43D70A3F800000, 0x3F43D70ABF800000, v28), v34));
  v35 = vmla_f32(0x3FA000003F12B021, 0, v27);
  *v6 = vmla_f32(v35, v31, vsub_f32(vmla_f32(0x3FA000003F12B021, 0x3E0CCCD03D244A60, v28), v35));
  v36 = vmla_f32(0x3CA3D70A3F256042, 0x3DF9DB24BF92B021, v27);
  v37 = vsub_f32(vmla_f32(0x3E116873BF000000, 0xBE1168733F000000, v28), v36);
  *v5 = vmla_f32(v36, v31, v37);
  v37.f32[0] = *v11 * 0.5;
  v38 = vdupq_lane_s32(v37, 0);
  v39 = v38;
  v39.i32[3] = 0;
  v40 = vrndmq_f32(v39);
  v41 = vsubq_f32(v38, v40);
  v41.i32[3] = 0;
  v42 = vminnmq_f32(v41, xmmword_10004F710);
  _Q5.i64[0] = 0xC0000000C0000000;
  _Q5.i64[1] = 0xC0000000C0000000;
  __asm { FMOV            V6.4S, #3.0 }

  _Q3 = vmulq_f32(vmulq_f32(v42, v42), vmlaq_f32(_Q6, _Q5, v42));
  v50 = vaddq_f32(v40, 0);
  v51 = vaddq_f32(v40, xmmword_10004F720);
  v52 = vaddq_f32(v40, xmmword_10004F730);
  _Q4 = vaddq_f32(v40, xmmword_10004F740);
  v54 = vaddq_f32(v40, xmmword_10004F750);
  *_Q5.f32 = vdup_n_s32(0x3EA2F984u);
  *_Q6.f32 = vdup_n_s32(0x3DCCCCCDu);
  v55 = vmla_f32(*_Q6.f32, *_Q5.f32, vzip1_s32(*v54.i8, *v50.i8));
  v56 = vmla_f32(*_Q6.f32, *_Q5.f32, vzip2_s32(*v54.i8, *v50.i8));
  v57 = vaddq_f32(v40, xmmword_10004F760);
  v58 = vmla_f32(*_Q6.f32, *_Q5.f32, vzip1_s32(*v57.i8, *v51.i8));
  v59 = vmla_f32(*_Q6.f32, *_Q5.f32, vzip2_s32(*v57.i8, *v51.i8));
  v60 = vaddq_f32(v40, xmmword_10004F770);
  v61 = vmla_f32(*_Q6.f32, *_Q5.f32, vzip1_s32(*v60.i8, *v52.i8));
  v62 = vmla_f32(*_Q6.f32, *_Q5.f32, vzip2_s32(*v60.i8, *v52.i8));
  __asm { FMOV            V18.4S, #1.0 }

  v64 = vaddq_f32(v40, _Q18);
  v65 = vmla_f32(*_Q6.f32, *_Q5.f32, vzip1_s32(*v64.i8, *_Q4.i8));
  v66 = vmla_f32(*_Q6.f32, *_Q5.f32, vzip2_s32(*v64.i8, *_Q4.i8));
  *v40.f32 = vdup_n_s32(0x3F7FFFFFu);
  v67 = vminnm_f32(vsub_f32(v55, vrndm_f32(v55)), *v40.f32);
  __asm { FMOV            V19.2S, #17.0 }

  v69 = vmul_f32(v67, _D19);
  v70 = vmul_f32(vminnm_f32(vsub_f32(v56, vrndm_f32(v56)), *v40.f32), _D19);
  *v54.i8 = vmla_f32(*_Q6.f32, *_Q5.f32, *&vzip2q_s32(v54, v50));
  *v50.i8 = vmul_f32(vminnm_f32(vsub_f32(*v54.i8, vrndm_f32(*v54.i8)), *v40.f32), _D19);
  *v50.i8 = vmul_f32(vmul_f32(*v50.i8, vmul_f32(v69, v70)), vadd_f32(*v50.i8, vadd_f32(v69, v70)));
  *v50.i8 = vminnm_f32(vsub_f32(*v50.i8, vrndm_f32(*v50.i8)), *v40.f32);
  *v54.i8 = vmul_f32(vminnm_f32(vsub_f32(v58, vrndm_f32(v58)), *v40.f32), _D19);
  v71 = vmul_f32(vminnm_f32(vsub_f32(v59, vrndm_f32(v59)), *v40.f32), _D19);
  *v57.i8 = vmla_f32(*_Q6.f32, *_Q5.f32, *&vzip2q_s32(v57, v51));
  *v51.i8 = vmul_f32(vminnm_f32(vsub_f32(*v57.i8, vrndm_f32(*v57.i8)), *v40.f32), _D19);
  *v51.i8 = vmul_f32(vmul_f32(*v51.i8, vmul_f32(*v54.i8, v71)), vadd_f32(*v51.i8, vadd_f32(*v54.i8, v71)));
  *v50.i8 = vmla_n_f32(*v50.i8, vsub_f32(vminnm_f32(vsub_f32(*v51.i8, vrndm_f32(*v51.i8)), *v40.f32), *v50.i8), _Q3.f32[0]);
  *v51.i8 = vmul_f32(vminnm_f32(vsub_f32(v61, vrndm_f32(v61)), *v40.f32), _D19);
  v72 = vmul_f32(vminnm_f32(vsub_f32(v62, vrndm_f32(v62)), *v40.f32), _D19);
  *v60.i8 = vmla_f32(*_Q6.f32, *_Q5.f32, *&vzip2q_s32(v60, v52));
  *v52.i8 = vmul_f32(vminnm_f32(vsub_f32(*v60.i8, vrndm_f32(*v60.i8)), *v40.f32), _D19);
  *v52.i8 = vmul_f32(vmul_f32(*v52.i8, vmul_f32(*v51.i8, v72)), vadd_f32(*v52.i8, vadd_f32(*v51.i8, v72)));
  *v52.i8 = vminnm_f32(vsub_f32(*v52.i8, vrndm_f32(*v52.i8)), *v40.f32);
  *v51.i8 = vmul_f32(vminnm_f32(vsub_f32(v65, vrndm_f32(v65)), *v40.f32), _D19);
  *v60.i8 = vmul_f32(vminnm_f32(vsub_f32(v66, vrndm_f32(v66)), *v40.f32), _D19);
  *_Q6.f32 = vmla_f32(*_Q6.f32, *_Q5.f32, *&vzip2q_s32(v64, _Q4));
  *_Q4.i8 = vmul_f32(vminnm_f32(vsub_f32(*_Q6.f32, vrndm_f32(*_Q6.f32)), *v40.f32), _D19);
  *_Q4.i8 = vmul_f32(vmul_f32(*_Q4.i8, vmul_f32(*v51.i8, *v60.i8)), vadd_f32(*_Q4.i8, vadd_f32(*v51.i8, *v60.i8)));
  *v50.i8 = vmla_lane_f32(*v50.i8, vsub_f32(vmla_n_f32(*v52.i8, vsub_f32(vminnm_f32(vsub_f32(*_Q4.i8, vrndm_f32(*_Q4.i8)), *v40.f32), *v52.i8), _Q3.f32[0]), *v50.i8), *_Q3.f32, 1);
  _Q5.f32[0] = *v50.i32 - *&v50.i32[1];
  __asm { FMLA            S4, S5, V3.S[2] }

  v73 = fminf(fmaxf((*_Q4.i32 + 1.0) * 0.5, 0.0), 1.0);
  *v13 = (v73 * 0.2) + 0.15;
  result = (v73 * 0.5) + 0.25;
  *v12 = result;
  *v11 = v15;
  return result;
}

uint64_t __vfx_script_Aurora_graph_25(uint64_t a1)
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  v1 = *(vfx_script_get_arguments_buffer() + 8);
  vfx_script_clock_delta_time();
  [v1 qword_1000715C0];
  vfx_script_get_ecs_value();
  vfx_script_set_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  return vfx_script_set_ecs_value();
}

void __vfx_script_Aurora_graph_26(uint64_t a1)
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  [*(vfx_script_get_arguments_buffer() + 8) qword_1000715C0];
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
}

void __vfx_script_Aurora_graph_29(uint64_t a1)
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v3 = *(arguments_buffer + 8);
  v2 = *(arguments_buffer + 16);
  v4 = *(arguments_buffer + 24);
  v5 = **(arguments_buffer + 32);
  vfx_script_clock_delta_time();
  v7 = fmaxf(*v4 - v6, 0.0);
  *v4 = v7;
  if (v7 <= 0.0 && (v5 & 1) == 0 && *v3 == 1)
  {
    vfx_script_string_create();
    [v2 qword_100071528];
    *v3 = 0;
    vfx_script_graph_log();
    vfx_script_string_destroy();
  }
}

_DWORD **__vfx_script_Aurora_trigger_22(uint64_t a1)
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  result = vfx_script_get_arguments_buffer();
  **result = 1;
  return result;
}

_DWORD **__vfx_script_Aurora_trigger_23(uint64_t a1)
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  result = vfx_script_get_arguments_buffer();
  **result = 1;
  return result;
}

uint64_t __vfx_script_Aurora_trigger_27(uint64_t a1)
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v3 = *(arguments_buffer + 8);
  v2 = *(arguments_buffer + 16);
  **(arguments_buffer + 24) = 1;
  *v2 = fmaxf(*v2, 5.0);
  vfx_script_string_create();
  [v3 qword_100071528];
  vfx_script_graph_log();
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Aurora_trigger_28(uint64_t a1)
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = arguments_buffer[1];
  v3 = arguments_buffer[2];
  v5 = arguments_buffer[3];
  v4 = arguments_buffer[4];
  vfx_script_string_create();
  [v4 qword_100071528];
  vfx_script_clock_time();
  vfx_script_graph_log();
  *v5 = 1;
  *v3 = fmaxf(*v3, 5.0);
  vfx_script_string_create();
  [v2 qword_100071528];
  vfx_script_string_destroy();
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Aurora_trigger_30(uint64_t a1)
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = arguments_buffer[1];
  v3 = arguments_buffer[2];
  v4 = arguments_buffer[3];
  v5 = arguments_buffer[5];
  *arguments_buffer[7] = *arguments_buffer[6];
  vfx_script_clock_time();
  *&v6 = v6;
  *v5 = LODWORD(v6);
  vfx_script_graph_log();
  *v4 = 1;
  *v3 = fmaxf(*v3, 5.0);
  vfx_script_string_create();
  [v2 qword_100071528];
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Aurora_trigger_31(uint64_t a1)
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = arguments_buffer[1];
  v3 = arguments_buffer[2];
  v5 = arguments_buffer[3];
  v4 = arguments_buffer[4];
  vfx_script_string_create();
  [v4 qword_100071528];
  vfx_script_clock_time();
  vfx_script_graph_log();
  *v5 = 1;
  *v3 = fmaxf(*v3, 5.0);
  vfx_script_string_create();
  [v2 qword_100071528];
  vfx_script_string_destroy();
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Aurora_trigger_32(uint64_t a1)
{
  if (qword_1000713A0 != -1)
  {
    sub_10004CB14();
  }

  v1 = *(vfx_script_get_arguments_buffer() + 8);
  vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  vfx_script_string_create();
  [v1 qword_100071528];

  return vfx_script_string_destroy();
}

void sub_100008204(id a1)
{
  qword_1000713A8 = sel_registerName("setValue:forKeyPath:");
  qword_1000713B0 = sel_registerName("valueForKeyPath:");
  qword_1000713B8 = objc_lookUpClass("NSString");
  qword_1000713C0 = sel_registerName("stringWithUTF8String:");
  qword_1000713C8 = objc_lookUpClass("VFXTransaction");
  qword_1000713D0 = sel_registerName("begin");
  qword_1000713D8 = sel_registerName("setAnimationDurationAsFloat:");
  qword_1000713E0 = sel_registerName("commit");
  qword_1000713E8 = objc_lookUpClass("NSDictionary");
  qword_1000713F0 = objc_lookUpClass("NSMutableDictionary");
  qword_1000713F8 = sel_registerName("dictionary");
  qword_100071400 = sel_registerName("setValue:forKey:");
  qword_100071408 = sel_registerName("setObject:forKey:");
  qword_100071410 = objc_lookUpClass("NSValue");
  qword_100071418 = objc_lookUpClass("NSNumber");
  qword_100071420 = sel_registerName("numberWithBool:");
  qword_100071428 = sel_registerName("numberWithFloat:");
  qword_100071430 = sel_registerName("numberWithUnsignedInteger:");
  qword_100071438 = sel_registerName("firstObject");
  qword_100071440 = sel_registerName("count");
  qword_100071448 = objc_lookUpClass("VFXNode");
  qword_100071450 = sel_registerName("addAnimationAsset:forKey:");
  qword_100071458 = sel_registerName("removeAllAnimations");
  qword_100071460 = sel_registerName("removeAnimationForKey:");
  qword_100071468 = sel_registerName("script_rootNode");
  qword_100071470 = sel_registerName("clone");
  qword_100071478 = sel_registerName("parentNode");
  qword_100071480 = sel_registerName("addChildNode:");
  qword_100071488 = sel_registerName("childNodes");
  qword_100071490 = sel_registerName("deepClone");
  qword_100071498 = sel_registerName("insertChildNode:atIndex:");
  qword_1000714A0 = sel_registerName("removeFromParentNode");
  qword_1000714A8 = sel_registerName("childNodeWithName:");
  qword_1000714B0 = sel_registerName("convertPosition:fromNode:");
  qword_1000714B8 = sel_registerName("convertVector:fromNode:");
  qword_1000714C0 = sel_registerName("convertTransform:fromNode:");
  qword_1000714C8 = sel_registerName("convertPosition:toNode:");
  qword_1000714D0 = sel_registerName("convertVector:toNode:");
  qword_1000714D8 = sel_registerName("convertTransform:toNode:");
  qword_1000714E0 = sel_registerName("localTranslateBy:");
  qword_1000714E8 = sel_registerName("localRotateBy:");
  qword_1000714F0 = sel_registerName("rotateBy:aroundTarget:");
  qword_1000714F8 = sel_registerName("projectPoint:");
  qword_100071500 = sel_registerName("unprojectPoint:");
  qword_100071508 = sel_registerName("script_hitTest:options:");
  qword_100071510 = sel_registerName("hitTestWithSegmentFromPoint:toPoint:options:");
  qword_100071518 = sel_registerName("node");
  qword_100071520 = sel_registerName("setState:");
  qword_100071528 = sel_registerName("setStateNamed:");
  qword_100071530 = sel_registerName("_contentsScaleFactor");
  qword_100071538 = sel_registerName("_screenSize");
  qword_100071540 = sel_registerName("physicsBody");
  qword_100071548 = sel_registerName("script_instantiate:");
  qword_100071550 = sel_registerName("geometryIndex");
  qword_100071558 = sel_registerName("faceIndex");
  qword_100071560 = sel_registerName("localCoordinates");
  qword_100071568 = sel_registerName("worldCoordinates");
  qword_100071570 = sel_registerName("localNormal");
  qword_100071578 = sel_registerName("worldNormal");
  qword_100071580 = sel_registerName("modelTransform");
  qword_100071588 = sel_registerName("boneNode");
  qword_100071590 = sel_registerName("uv0");
  qword_100071598 = sel_registerName("presentationBoneNode");
  qword_1000715A0 = sel_registerName("presentationNode");
  qword_1000715A8 = sel_registerName("applyForce:impulse:");
  qword_1000715B0 = sel_registerName("applyForce:atPosition:impulse:");
  qword_1000715B8 = sel_registerName("applyTorque:impulse:");
  qword_1000715C0 = sel_registerName("presentationObject");
}

id convert(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 color];
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v3;
}

float __vfx_script_Ocean_graph_48(uint64_t a1)
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 8);
  v3 = *(arguments_buffer + 16);
  v4 = **arguments_buffer;
  **(arguments_buffer + 24) = vmlaq_n_f32(xmmword_10004FBA0, xmmword_10004FB90, v4);
  *v3 = vmlaq_n_f32(xmmword_10004FBC0, xmmword_10004FBB0, v4);
  result = (v4 * 40.0) + 100.0;
  *v2 = result;
  return result;
}

float __vfx_script_Ocean_graph_49(uint64_t a1)
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 16);
  v3 = **(arguments_buffer + 8);
  **(arguments_buffer + 24) = **arguments_buffer;
  result = v3 + 1.0;
  *v2 = v3 + 1.0;
  return result;
}

float __vfx_script_Ocean_graph_53(uint64_t a1)
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  result = **arguments_buffer;
  *arguments_buffer[1] = result;
  return result;
}

int8x16_t __vfx_script_Ocean_graph_54(uint64_t a1)
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 8);
  v3 = **arguments_buffer;
  **(arguments_buffer + 16) = (v3 * -2000.0) + 2500.0;
  v4 = 1.0;
  v5 = (1.0 - v3) * 0.48812;
  v6 = 1.0;
  if (v5 != 0.0)
  {
    v6 = sinf((1.0 - v3) * 0.48812) / v5;
  }

  if ((v3 * 0.48812) != 0.0)
  {
    v4 = sinf(v3 * 0.48812) / (v3 * 0.48812);
  }

  v7 = vrecpe_f32(1064694885);
  v8 = vmul_f32(v7, vrecps_f32(1064694885, v7));
  v9 = vmul_f32(v8, vrecps_f32(1064694885, v8)).f32[0];
  v10 = vmlaq_n_f32(vmulq_n_f32(xmmword_10004FBD0, v3 * (v4 * v9)), xmmword_10004FBE0, (1.0 - v3) * (v6 * v9));
  v11 = vmulq_f32(v10, v10);
  *v11.i8 = vadd_f32(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
  v12 = vdupq_lane_s32(vadd_f32(*v11.i8, vdup_lane_s32(*v11.i8, 1)), 0);
  v13 = vrsqrteq_f32(v12);
  v14 = vmulq_f32(v13, vrsqrtsq_f32(v12, vmulq_f32(v13, v13)));
  result = vbslq_s8(vceqzq_f32(v12), v10, vmulq_f32(vmulq_f32(v14, vrsqrtsq_f32(v12, vmulq_f32(v14, v14))), v10));
  *v2 = result;
  return result;
}

float __vfx_script_Ocean_graph_55(uint64_t a1)
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  result = **arguments_buffer;
  **(arguments_buffer + 8) = vmlaq_n_f32(xmmword_10004FC00, xmmword_10004FBF0, result);
  return result;
}

float __vfx_script_Ocean_graph_56(uint64_t a1)
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 8);
  v3 = **arguments_buffer;
  **(arguments_buffer + 24) = (**(arguments_buffer + 16) * -0.1) + 0.15;
  result = v3 * 0.1;
  *v2 = result;
  return result;
}

double __vfx_script_Ocean_graph_57(uint64_t a1)
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 16);
  v3 = *(arguments_buffer + 24);
  v4 = *(arguments_buffer + 32);
  v5 = **(arguments_buffer + 8);
  **(arguments_buffer + 40) = **arguments_buffer * 0.5;
  *v4 = (v5 * -0.048) + 1.2;
  result = 0.00304074818;
  *v3 = xmmword_10004FC10;
  *v2 = v5;
  return result;
}

uint64_t __vfx_script_Ocean_graph_58(uint64_t a1)
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  v1 = *(vfx_script_get_arguments_buffer() + 8);
  vfx_script_clock_delta_time();
  [v1 qword_1000717E8];
  vfx_script_get_ecs_value();
  vfx_script_set_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_set_ecs_value();
  vfx_script_get_ecs_value();
  vfx_script_get_ecs_value();
  return vfx_script_set_ecs_value();
}

uint64_t __vfx_script_Ocean_graph_59(uint64_t a1)
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  result = vfx_script_get_arguments_buffer();
  v2 = *(result + 8);
  if (**(result + 56) & 1) != 0 || (((**(result + 48) | **(result + 40)) | **(result + 32)) & 1) != 0 || (**(result + 24) & 1) != 0 || (**(result + 16))
  {
    vfx_script_tick();
    vfx_script_string_create();
    [v2 qword_100071750];

    return vfx_script_string_destroy();
  }

  return result;
}

void __vfx_script_Ocean_graph_64(uint64_t a1)
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v3 = *(arguments_buffer + 8);
  v2 = *(arguments_buffer + 16);
  v4 = *(arguments_buffer + 24);
  v5 = **(arguments_buffer + 32);
  vfx_script_clock_delta_time();
  v7 = fmaxf(*v4 - v6, 0.0);
  *v4 = v7;
  if (v7 <= 0.0 && (v5 & 1) == 0 && *v3 == 1)
  {
    vfx_script_string_create();
    [v2 qword_100071750];
    *v3 = 0;
    vfx_script_graph_log();
    vfx_script_string_destroy();
  }
}

int8x8_t __vfx_script_Ocean_graph_68(uint64_t a1)
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 48);
  v3 = *(arguments_buffer + 56);
  if (**(arguments_buffer + 40) == 1)
  {
    v4 = *(arguments_buffer + 32);
    v5 = **(arguments_buffer + 24);
    v6 = *(arguments_buffer + 16);
    v7 = **(arguments_buffer + 8);
    vfx_script_clock_time();
    *&v8 = v8;
    *&v8 = fmaxf(*&v8 - v5, 0.0);
    *&v8 = (1.0 - 1.0 / (((*&v8 / 1.8) * (*&v8 / 1.8)) * 4.0 + 1.0)) * 1.25;
    *v4 = (*&v8 * 2.5) + 0.75;
    vfx_script_clock_time();
    *&v9 = v9;
    *&v9 = fminf(fmaxf(*&v9 - v7, 0.0) * 0.5, 1.0);
    *v6 = (sqrtf(1.0 - ((*&v9 + -1.0) * (*&v9 + -1.0))) * 2.5) + 0.75;
  }

  __asm { FMOV            V0.2S, #-10.0 }

  *v3 = -_D0;
  [vfx_script_get_world_renderer() qword_100071760];
  __asm { FMOV            V1.2S, #1.0 }

  result = vbic_s8(vdiv_f32(_D1, v16), vceqz_f32(v16));
  *v2 = result;
  return result;
}

float __vfx_script_Ocean_graph_70(uint64_t a1)
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 16);
  v3 = *(arguments_buffer + 24);
  v4 = *(arguments_buffer + 32);
  v5 = *(arguments_buffer + 40);
  v6 = *(arguments_buffer + 48);
  v7 = *(arguments_buffer + 56);
  v8 = *(arguments_buffer + 64);
  v9 = *(arguments_buffer + 72);
  v10 = *(arguments_buffer + 80);
  v16 = **(arguments_buffer + 8);
  **(arguments_buffer + 88) = (v16 * 0.31) + 1.1;
  [vfx_script_get_world_renderer() qword_100071760];
  v13 = v11 / v12;
  if (v12 == 0.0)
  {
    v13 = 0.0;
  }

  if (v13 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 1.0 / v13;
  }

  *v10 = (fminf(v14, 1.0) * 63.0) + 35.0;
  *v9 = (v16 * -0.008) + 0.108;
  *v8 = vmlaq_n_f32(xmmword_10004FC30, xmmword_10004FC20, v16);
  *v7 = vmlaq_n_f32(xmmword_10004FC50, xmmword_10004FC40, v16);
  *v6 = (v16 * -0.064) + 1.2;
  *v5 = (v16 * -1.5) + 5.0;
  *v4 = (v16 * -0.267) + 0.0;
  *v3 = (v16 * -0.075) + 0.175;
  result = (v16 * 0.5) + 0.5;
  *v2 = result;
  return result;
}

uint64_t __vfx_script_Ocean_trigger_60(uint64_t a1)
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = arguments_buffer[1];
  v3 = arguments_buffer[2];
  v4 = vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  vfx_script_get_call_parameter();
  v5 = arguments_buffer[7];
  *&v6 = *v4;
  __asm { FMOV            V1.2S, #10.0 }

  *&v12 = *v4;
  *(&v12 + 1) = _D1;
  *arguments_buffer[8] = v12;
  *(&v6 + 1) = 0x41A0000042480000;
  *v5 = v6;
  [vfx_script_get_world_renderer() qword_100071760];
  *&v13 = 0;
  *(&v13 + 1) = __PAIR64__(COERCE_UNSIGNED_INT(vmuls_lane_f32(0.35, v14, 1)), v14.u32[0]);
  *v3 = v13;
  vfx_script_string_create();
  [v2 qword_100071750];

  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Ocean_trigger_61(uint64_t a1)
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = arguments_buffer[1];
  v3 = arguments_buffer[2];
  v4 = arguments_buffer[3];
  v5 = arguments_buffer[5];
  v6 = arguments_buffer[6];
  v7 = arguments_buffer[7];
  vfx_script_string_create();
  [v7 qword_100071750];
  vfx_script_clock_time();
  *&v8 = v8;
  *v6 = LODWORD(v8);
  vfx_script_string_create();
  [v5 qword_100071750];
  vfx_script_string_create();
  [v5 qword_100071750];
  *v4 = 1;
  *v3 = fmaxf(*v3, 5.0);
  vfx_script_string_create();
  [v2 qword_100071750];
  vfx_script_string_destroy();
  vfx_script_string_destroy();
  vfx_script_string_destroy();

  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Ocean_trigger_62(uint64_t a1)
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v3 = *(arguments_buffer + 8);
  v2 = *(arguments_buffer + 16);
  **(arguments_buffer + 24) = 1;
  *v2 = fmaxf(*v2, 5.0);
  vfx_script_string_create();
  [v3 qword_100071750];
  vfx_script_graph_log();
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Ocean_trigger_63(uint64_t a1)
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = arguments_buffer[1];
  v3 = arguments_buffer[2];
  v4 = arguments_buffer[3];
  v5 = arguments_buffer[6];
  v6 = *arguments_buffer[5];
  __asm { FMOV            V1.4S, #1.0 }

  *arguments_buffer[7] = _Q1;
  *v5 = v6;
  vfx_script_graph_log();
  *v4 = 1;
  *v3 = fmaxf(*v3, 5.0);
  vfx_script_string_create();
  [v2 qword_100071750];
  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Ocean_trigger_65(uint64_t a1)
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = arguments_buffer[1];
  v3 = arguments_buffer[2];
  v4 = arguments_buffer[3];
  v5 = arguments_buffer[5];
  v6 = arguments_buffer[6];
  v7 = arguments_buffer[7];
  vfx_script_string_create();
  [v7 qword_100071750];
  vfx_script_clock_time();
  *&v8 = v8;
  *v6 = LODWORD(v8);
  vfx_script_string_create();
  [v5 qword_100071750];
  vfx_script_string_create();
  [v5 qword_100071750];
  *v4 = 1;
  *v3 = fmaxf(*v3, 5.0);
  vfx_script_string_create();
  [v2 qword_100071750];
  vfx_script_string_destroy();
  vfx_script_string_destroy();
  vfx_script_string_destroy();

  return vfx_script_string_destroy();
}

uint64_t __vfx_script_Ocean_trigger_66(uint64_t a1)
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = arguments_buffer[1];
  v3 = arguments_buffer[2];
  v4 = arguments_buffer[3];
  v5 = arguments_buffer[6];
  v6 = *arguments_buffer[5];
  __asm { FMOV            V1.4S, #1.0 }

  *arguments_buffer[7] = _Q1;
  *v5 = v6;
  vfx_script_graph_log();
  *v4 = 1;
  *v3 = fmaxf(*v3, 5.0);
  vfx_script_string_create();
  [v2 qword_100071750];
  return vfx_script_string_destroy();
}

_DWORD **__vfx_script_Ocean_trigger_67(uint64_t a1)
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  result = vfx_script_get_arguments_buffer();
  **result = 1;
  return result;
}

_DWORD **__vfx_script_Ocean_trigger_69(uint64_t a1)
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  result = vfx_script_get_arguments_buffer();
  **result = 1;
  return result;
}

void *__vfx_script_Ocean_particleInit_50(uint64_t a1)
{
  if (qword_1000715C8 != -1)
  {
    sub_10004CB28();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

void sub_100009DFC(id a1)
{
  qword_1000715D0 = sel_registerName("setValue:forKeyPath:");
  qword_1000715D8 = sel_registerName("valueForKeyPath:");
  qword_1000715E0 = objc_lookUpClass("NSString");
  qword_1000715E8 = sel_registerName("stringWithUTF8String:");
  qword_1000715F0 = objc_lookUpClass("VFXTransaction");
  qword_1000715F8 = sel_registerName("begin");
  qword_100071600 = sel_registerName("setAnimationDurationAsFloat:");
  qword_100071608 = sel_registerName("commit");
  qword_100071610 = objc_lookUpClass("NSDictionary");
  qword_100071618 = objc_lookUpClass("NSMutableDictionary");
  qword_100071620 = sel_registerName("dictionary");
  qword_100071628 = sel_registerName("setValue:forKey:");
  qword_100071630 = sel_registerName("setObject:forKey:");
  qword_100071638 = objc_lookUpClass("NSValue");
  qword_100071640 = objc_lookUpClass("NSNumber");
  qword_100071648 = sel_registerName("numberWithBool:");
  qword_100071650 = sel_registerName("numberWithFloat:");
  qword_100071658 = sel_registerName("numberWithUnsignedInteger:");
  qword_100071660 = sel_registerName("firstObject");
  qword_100071668 = sel_registerName("count");
  qword_100071670 = objc_lookUpClass("VFXNode");
  qword_100071678 = sel_registerName("addAnimationAsset:forKey:");
  qword_100071680 = sel_registerName("removeAllAnimations");
  qword_100071688 = sel_registerName("removeAnimationForKey:");
  qword_100071690 = sel_registerName("script_rootNode");
  qword_100071698 = sel_registerName("clone");
  qword_1000716A0 = sel_registerName("parentNode");
  qword_1000716A8 = sel_registerName("addChildNode:");
  qword_1000716B0 = sel_registerName("childNodes");
  qword_1000716B8 = sel_registerName("deepClone");
  qword_1000716C0 = sel_registerName("insertChildNode:atIndex:");
  qword_1000716C8 = sel_registerName("removeFromParentNode");
  qword_1000716D0 = sel_registerName("childNodeWithName:");
  qword_1000716D8 = sel_registerName("convertPosition:fromNode:");
  qword_1000716E0 = sel_registerName("convertVector:fromNode:");
  qword_1000716E8 = sel_registerName("convertTransform:fromNode:");
  qword_1000716F0 = sel_registerName("convertPosition:toNode:");
  qword_1000716F8 = sel_registerName("convertVector:toNode:");
  qword_100071700 = sel_registerName("convertTransform:toNode:");
  qword_100071708 = sel_registerName("localTranslateBy:");
  qword_100071710 = sel_registerName("localRotateBy:");
  qword_100071718 = sel_registerName("rotateBy:aroundTarget:");
  qword_100071720 = sel_registerName("projectPoint:");
  qword_100071728 = sel_registerName("unprojectPoint:");
  qword_100071730 = sel_registerName("script_hitTest:options:");
  qword_100071738 = sel_registerName("hitTestWithSegmentFromPoint:toPoint:options:");
  qword_100071740 = sel_registerName("node");
  qword_100071748 = sel_registerName("setState:");
  qword_100071750 = sel_registerName("setStateNamed:");
  qword_100071758 = sel_registerName("_contentsScaleFactor");
  qword_100071760 = sel_registerName("_screenSize");
  qword_100071768 = sel_registerName("physicsBody");
  qword_100071770 = sel_registerName("script_instantiate:");
  qword_100071778 = sel_registerName("geometryIndex");
  qword_100071780 = sel_registerName("faceIndex");
  qword_100071788 = sel_registerName("localCoordinates");
  qword_100071790 = sel_registerName("worldCoordinates");
  qword_100071798 = sel_registerName("localNormal");
  qword_1000717A0 = sel_registerName("worldNormal");
  qword_1000717A8 = sel_registerName("modelTransform");
  qword_1000717B0 = sel_registerName("boneNode");
  qword_1000717B8 = sel_registerName("uv0");
  qword_1000717C0 = sel_registerName("presentationBoneNode");
  qword_1000717C8 = sel_registerName("presentationNode");
  qword_1000717D0 = sel_registerName("applyForce:impulse:");
  qword_1000717D8 = sel_registerName("applyForce:atPosition:impulse:");
  qword_1000717E0 = sel_registerName("applyTorque:impulse:");
  qword_1000717E8 = sel_registerName("presentationObject");
}

uint64_t sub_10000A360(uint64_t a1)
{
  v2 = v1;
  sub_10004D5EC();
  if (!*(a1 + 16))
  {
    goto LABEL_11;
  }

  v4 = sub_1000330C8(v11);
  if ((v5 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_10000C7F0(*(a1 + 56) + 32 * v4, v12);
  sub_10000CFD0(v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_10004D5EC();
  if (!*(a1 + 16))
  {
    goto LABEL_11;
  }

  v6 = sub_1000330C8(v11);
  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_10000C7F0(*(a1 + 56) + 32 * v6, v12);
  sub_10000CFD0(v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:

    goto LABEL_12;
  }

  sub_10004D5EC();
  if (!*(a1 + 16) || (v8 = sub_1000330C8(v11), (v9 & 1) == 0))
  {
LABEL_11:

    sub_10000CFD0(v11);
    goto LABEL_12;
  }

  sub_10000C7F0(*(a1 + 56) + 32 * v8, v12);
  sub_10000CFD0(v11);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    type metadata accessor for KeyboardDataUpdate();
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v2 + 16) = 105;
  strcpy((v2 + 20), "duracurve");
  *(v2 + 30) = 0;
  return v2;
}

void sub_10000A584(void *a1)
{
  v2 = [a1 parameters];
  if (v2)
  {
    v3 = v2;
    isa = sub_10004D28C().super.super.isa;
    v5 = sub_10004D05C();
    [v3 setObject:isa forKeyedSubscript:v5];
    swift_unknownObjectRelease();
  }

  v6 = [a1 parameters];
  if (v6)
  {
    v7 = v6;
    v8 = sub_10004D2DC().super.super.isa;
    v9 = sub_10004D05C();
    [v7 setObject:v8 forKeyedSubscript:v9];
    swift_unknownObjectRelease();
  }

  v10 = [a1 parameters];
  if (v10)
  {
    v11 = v10;
    v12 = sub_10004D32C().super.super.isa;
    v13 = sub_10004D05C();
    [v11 setObject:v12 forKeyedSubscript:v13];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10000A778(uint64_t a1)
{
  v2 = v1;
  sub_10004D5EC();
  if (*(a1 + 16) && (v4 = sub_1000330C8(v15), (v5 & 1) != 0))
  {
    sub_10000C7F0(*(a1 + 56) + 32 * v4, v16);
    sub_10000CFD0(v15);
    sub_10000D024(0, &qword_10006E448, NSValue_ptr);
    if (swift_dynamicCast())
    {
      [0xD000000000000016 CGRectValue];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v2[4] = v7;
      v2[5] = v9;
      v2[6] = v11;
      v2[7] = v13;
      return sub_10000A360(a1);
    }
  }

  else
  {

    sub_10000CFD0(v15);
  }

  type metadata accessor for KeyboardFrameDidChangeDataUpdate();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_10000A908(uint64_t a1)
{
  v2 = v1;
  sub_10004D5EC();
  if (*(a1 + 16))
  {
    v4 = sub_1000330C8(v25);
    if (v5)
    {
      sub_10000C7F0(*(a1 + 56) + 32 * v4, v26);
      sub_10000CFD0(v25);
      sub_10000D024(0, &qword_10006E448, NSValue_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_10:

        goto LABEL_9;
      }

      [0x6D6172466D6F7266 CGRectValue];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      sub_10004D5EC();
      if (*(a1 + 16))
      {
        v14 = sub_1000330C8(v25);
        if (v15)
        {
          sub_10000C7F0(*(a1 + 56) + 32 * v14, v26);
          sub_10000CFD0(v25);
          if (swift_dynamicCast())
          {
            [0x656D6172466F74 CGRectValue];
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v23 = v22;

            *(v2 + 32) = v7;
            *(v2 + 40) = v9;
            *(v2 + 48) = v11;
            *(v2 + 56) = v13;
            *(v2 + 64) = 0;
            *(v2 + 72) = v17;
            *(v2 + 80) = v19;
            *(v2 + 88) = v21;
            *(v2 + 96) = v23;
            *(v2 + 104) = 0;
            return sub_10000A360(a1);
          }

          goto LABEL_10;
        }
      }
    }
  }

  sub_10000CFD0(v25);
LABEL_9:
  type metadata accessor for KeyboardVisibilityDataUpdate();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_10000AB30(void *a1)
{
  sub_10000A584(a1);
  v3 = [a1 parameters];
  if (v3)
  {
    v4 = v3;
    if (*(v1 + 64))
    {
      isa = 0;
    }

    else
    {
      isa = sub_10004D4FC().super.isa;
    }

    v6 = sub_10004D05C();
    [v4 setObject:isa forKeyedSubscript:v6];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if ((*(v1 + 64) & 1) != 0 || (*(v1 + 104) & 1) != 0 || (v15.origin.x = 0.0, v15.origin.y = 0.0, v15.size.width = 0.0, v15.size.height = 0.0, !CGRectEqualToRect(*(v1 + 72), v15)))
  {
    v10 = [a1 parameters];
    if (!v10)
    {
      return;
    }

    v11 = v10;
    if (*(v1 + 104))
    {
      v12 = 0;
    }

    else
    {
      v12 = sub_10004D4FC().super.isa;
    }

    v13 = sub_10004D05C();
    [v11 setObject:v12 forKeyedSubscript:?];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = [a1 parameters];
    if (!v7)
    {
      return;
    }

    v8 = v7;
    v9 = sub_10004D4FC().super.isa;
    v13 = sub_10004D05C();
    [v8 setObject:v9 forKeyedSubscript:?];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10000ADC0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000ADE0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 sub_10000AE80(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000AE8C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000AEAC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_10000AEEC(uint64_t a1)
{
  v2 = sub_10004CF1C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004CF6C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D024(0, &unk_10006E3C0, OS_dispatch_queue_ptr);
  v10 = sub_10004D3DC();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_10000CCE0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002FBD0;
  aBlock[3] = &unk_100065B68;
  v13 = _Block_copy(aBlock);

  sub_10004CF3C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000D194(&qword_1000708A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
  sub_10000CD00();
  sub_10004D57C();
  sub_10004D3EC();
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

char *sub_10000B1DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    type metadata accessor for TranscriptBackgroundEventHandlerFactory();
    v5 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_logger;
    v6 = *&v4[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 48];
    v8 = *&v4[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
    v7 = *&v4[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 16];
    v33[2] = *&v4[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v33[3] = v6;
    v33[0] = v8;
    v33[1] = v7;
    v10 = *&v4[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 80];
    v9 = *&v4[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 96];
    v11 = *&v4[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 64];
    *(v34 + 14) = *&v4[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 110];
    v33[5] = v10;
    v34[0] = v9;
    v33[4] = v11;
    v12 = v4;
    sub_10000CDAC(v33, v27);
    sub_100014340(&v4[v5], v4, a2, v33, &v28);
    sub_10000CE08(v33);

    if (!v29)
    {

      return sub_10000CE5C(&v28);
    }

    sub_10000CEC4(&v28, v30);
    v13 = *&v12[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder];
    if (*(v13 + 24) == 1)
    {
      v14 = v31;
      v15 = v32;
      result = sub_10000CF8C(v30, v31);
      if (!*&v12[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor])
      {
        __break(1u);
        return result;
      }

      v16 = *(v15 + 8);

      v16(v17, v14, v15);
    }

    else
    {
      v18 = *(v13 + 16);

      os_unfair_lock_lock(v18);
      sub_10000CEDC(v30, v27);
      swift_beginAccess();
      v19 = *(v13 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v13 + 32) = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_100048000(0, v19[2] + 1, 1, v19);
        *(v13 + 32) = v19;
      }

      v21 = v19[2];
      v22 = v19[3];
      v23 = v21 + 1;
      if (v21 >= v22 >> 1)
      {
        v24 = v19;
        v25 = v19[2];
        v26 = sub_100048000((v22 > 1), v21 + 1, 1, v24);
        v21 = v25;
        v19 = v26;
      }

      v19[2] = v23;
      sub_10000CEC4(v27, &v19[5 * v21 + 4]);
      *(v13 + 32) = v19;
      swift_endAccess();
      os_unfair_lock_unlock(v18);
    }

    return sub_10000CF40(v30);
  }

  return result;
}

void sub_10000B44C(char a1, void (*a2)(id))
{
  v43 = 0;
  v3 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor;
  v4 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);
  if (!v4)
  {
    __break(1u);
    goto LABEL_59;
  }

  v7 = *(v4 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);

  os_unfair_lock_lock(v7);
  v8 = *(v4 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
  sub_10000BA84(v8, v2, &v43, a1);

  os_unfair_lock_unlock(v7);

  if (v43 == 1)
  {
    if (a1 <= 2u)
    {
      v24 = 0x416B636162706154;
      v25 = 0xEC00000064656464;
      if (a1 != 1)
      {
        v24 = 0x526B636162706154;
        v25 = 0xEE006465766F6D65;
      }

      if (a1)
      {
        v13 = v24;
      }

      else
      {
        v13 = 0x7265746E45646944;
      }

      if (a1)
      {
        v14 = v25;
      }

      else
      {
        v14 = 0xEC00000074616843;
      }
    }

    else
    {
      v9 = 0x8000000100053110;
      v10 = 0x6C6C6F7263537349;
      if (a1 == 5)
      {
        v10 = 0xD000000000000010;
      }

      else
      {
        v9 = 0xEB00000000676E69;
      }

      v11 = 0x8000000100053150;
      v12 = 0xD000000000000016;
      if (a1 != 3)
      {
        v12 = 0xD000000000000010;
        v11 = 0x8000000100053130;
      }

      if (a1 <= 4u)
      {
        v13 = v12;
      }

      else
      {
        v13 = v10;
      }

      if (a1 <= 4u)
      {
        v14 = v11;
      }

      else
      {
        v14 = v9;
      }
    }

    v26 = v2;
    sub_100028560(v13, v14);
    v28 = v27;

    if (v28)
    {
      v29 = objc_opt_self();
      v30 = [v29 begin];
      if (a2)
      {
        a2(v30);
      }

      v31 = *(v26 + v3);
      if (v31)
      {
        v32 = *(v31 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);

        os_unfair_lock_lock(v32);
        v33 = *(v31 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
        v34 = [v33 rootNode];
        v35 = sub_10004D05C();
        v36 = [v34 childNodeWithName:v35 recursively:1];

        if (v36)
        {
          v40 = sub_10004D05C();

          [v36 setStateNamed:v40];
        }

        os_unfair_lock_unlock(v32);

        [v29 commit];
        return;
      }

LABEL_59:
      __break(1u);
    }
  }

  else
  {
    oslog = sub_10004CEDC();
    v15 = sub_10004D36C();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v42 = v17;
      *v16 = 136315138;
      if (a1 <= 2u)
      {
        v37 = 0x416B636162706154;
        v38 = 0xEC00000064656464;
        if (a1 != 1)
        {
          v37 = 0x526B636162706154;
          v38 = 0xEE006465766F6D65;
        }

        if (a1)
        {
          v22 = v37;
        }

        else
        {
          v22 = 0x7265746E45646944;
        }

        if (a1)
        {
          v23 = v38;
        }

        else
        {
          v23 = 0xEC00000074616843;
        }
      }

      else
      {
        v18 = 0x8000000100053110;
        v19 = 0x6C6C6F7263537349;
        if (a1 == 5)
        {
          v19 = 0xD000000000000010;
        }

        else
        {
          v18 = 0xEB00000000676E69;
        }

        v20 = 0x8000000100053150;
        v21 = 0xD000000000000016;
        if (a1 != 3)
        {
          v21 = 0xD000000000000010;
          v20 = 0x8000000100053130;
        }

        if (a1 <= 4u)
        {
          v22 = v21;
        }

        else
        {
          v22 = v19;
        }

        if (a1 <= 4u)
        {
          v23 = v20;
        }

        else
        {
          v23 = v18;
        }
      }

      v39 = sub_10000C618(v22, v23, &v42);

      *(v16 + 4) = v39;
      _os_log_impl(&_mh_execute_header, oslog, v15, "State %s does not exist for this effect, ignoring.", v16, 0xCu);
      sub_10000CF40(v17);
    }

    else
    {
    }
  }
}

void sub_10000BA84(void *a1, uint64_t a2, char *a3, char a4)
{
  LOBYTE(v4) = a4;
  v6 = [a1 rootNode];
  v7 = sub_10004D05C();
  v8 = [v6 childNodeWithName:v7 recursively:1];

  if (v8)
  {
    v9 = [v8 states];
    if (v9)
    {
      v10 = v9;
      sub_10000CC1C(&qword_10006E3B8, &unk_10004FF70);
      v11 = sub_10004D23C();

      v33 = v8;
      v34 = a3;
      if (v11 >> 62)
      {
        goto LABEL_52;
      }

      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        while (1)
        {
          v13 = 0;
          v14 = v4;
          while ((v11 & 0xC000000000000001) != 0)
          {
            v4 = sub_10004D62C();
            v15 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
LABEL_42:
              __break(1u);
              goto LABEL_43;
            }

LABEL_11:
            v16 = [v4 name];
            if (v16)
            {
              v17 = v16;
              v18 = sub_10004D08C();
              v20 = v19;
            }

            else
            {
              v18 = 0;
              v20 = 0;
            }

            v21 = 0x6C6C6F7263537349;
            if (v14 == 5)
            {
              v21 = 0xD000000000000010;
            }

            v23 = 0x8000000100053130;
            v22 = 0x8000000100053110;
            if (v14 != 5)
            {
              v22 = 0xEB00000000676E69;
            }

            v24 = 0xD000000000000016;
            if (v14 == 3)
            {
              v23 = 0x8000000100053150;
            }

            else
            {
              v24 = 0xD000000000000010;
            }

            if (v14 <= 4)
            {
              v21 = v24;
              v22 = v23;
            }

            v25 = 0x416B636162706154;
            if (v14 != 1)
            {
              v25 = 0x526B636162706154;
            }

            v26 = 0xEC00000064656464;
            if (v14 != 1)
            {
              v26 = 0xEE006465766F6D65;
            }

            if (!v14)
            {
              v25 = 0x7265746E45646944;
              v26 = 0xEC00000074616843;
            }

            if (v14 <= 2)
            {
              v27 = v25;
            }

            else
            {
              v27 = v21;
            }

            if (v14 <= 2)
            {
              v28 = v26;
            }

            else
            {
              v28 = v22;
            }

            if (v20)
            {
              if (v18 == v27 && v20 == v28)
              {

                swift_unknownObjectRelease();
                goto LABEL_50;
              }

              v29 = sub_10004D74C();

              swift_unknownObjectRelease();
              if (v29)
              {

LABEL_50:
                v32 = 1;
                goto LABEL_54;
              }
            }

            else
            {

              swift_unknownObjectRelease();
            }

            ++v13;
            if (v15 == v12)
            {
              goto LABEL_53;
            }
          }

          if (v13 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          __break(1u);
LABEL_52:
          v12 = sub_10004D67C();
          if (!v12)
          {
            goto LABEL_53;
          }
        }

        v4 = *(v11 + 8 * v13 + 32);
        swift_unknownObjectRetain();
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_42;
        }

        goto LABEL_11;
      }

LABEL_53:

      v32 = 0;
LABEL_54:
      a3 = v34;
    }

    else
    {

      v32 = 0;
    }

    *a3 = v32;
  }

  else
  {
LABEL_43:
    oslog = sub_10004CEDC();
    v30 = sub_10004D36C();
    if (os_log_type_enabled(oslog, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v30, "No states node", v31, 2u);
    }
  }
}

Swift::Int sub_10000BF7C(uint64_t a1, uint64_t a2)
{
  sub_10004D7BC();
  swift_getWitnessTable();
  sub_10004CE5C();
  return sub_10004D7DC();
}

void *sub_10000C01C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000C038(uint64_t a1, id *a2)
{
  result = sub_10004D06C();
  *a2 = 0;
  return result;
}

uint64_t sub_10000C0B0(uint64_t a1, id *a2)
{
  v3 = sub_10004D07C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000C130@<X0>(uint64_t *a1@<X8>)
{
  sub_10004D08C();
  v2 = sub_10004D05C();

  *a1 = v2;
  return result;
}

uint64_t sub_10000C174(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_10004CE4C();
}

uint64_t sub_10000C1E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004D08C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000C210(uint64_t a1)
{
  v2 = sub_10000D194(&qword_10006E4E0, type metadata accessor for VFXWorldLoaderOption, &unk_1000504C0);
  v3 = sub_10000D194(&qword_10006E4E8, type metadata accessor for VFXWorldLoaderOption, &unk_100050368);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000C2CC(uint64_t a1)
{
  v2 = sub_10000D194(&qword_10006E4F0, type metadata accessor for PRRenderingTransitionType, &unk_10005026C);
  v3 = sub_10000D194(&qword_10006E4F8, type metadata accessor for PRRenderingTransitionType, &unk_10005020C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000C388@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10004D05C();

  *a2 = v3;
  return result;
}

uint64_t sub_10000C3D0(uint64_t a1)
{
  v2 = sub_10000D194(&qword_10006E500, type metadata accessor for CIImageRepresentationOption, &unk_100050504);
  v3 = sub_10000D194(&qword_10006E508, type metadata accessor for CIImageRepresentationOption, &unk_1000500EC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000C48C()
{
  sub_10004D08C();
  v0 = sub_10004D1EC();

  return v0;
}

uint64_t sub_10000C4C8(uint64_t a1)
{
  sub_10004D08C();
  sub_10004D14C();
}

Swift::Int sub_10000C51C()
{
  sub_10004D08C();
  sub_10004D7BC();
  sub_10004D14C();
  v0 = sub_10004D7DC();

  return v0;
}

uint64_t sub_10000C590(void *a1, uint64_t *a2)
{
  v2 = sub_10004D08C();
  v4 = v3;
  if (v2 == sub_10004D08C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_10004D74C();
  }

  return v7 & 1;
}

unint64_t sub_10000C618(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000C6E4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000C7F0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000CF40(v11);
  return v7;
}

unint64_t sub_10000C6E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000C84C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10004D64C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_10000C7F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_10000C84C(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000C898(a1, a2);
  sub_10000C9C8(&off_1000656D0);
  return v3;
}

char *sub_10000C898(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000CAB4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10004D64C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10004D18C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000CAB4(v10, 0);
        result = sub_10004D5FC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000C9C8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10000CB28(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000CAB4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000CC1C(&qword_10006E350, &unk_10004FF60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000CB28(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000CC1C(&qword_10006E350, &unk_10004FF60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10000CC1C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000CC68()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CCA0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CCE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000CD00()
{
  result = qword_1000708B0;
  if (!qword_1000708B0)
  {
    sub_10000CD64(&unk_10006E3D0, &qword_100050620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000708B0);
  }

  return result;
}

uint64_t sub_10000CD64(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000CE5C(uint64_t a1)
{
  v2 = sub_10000CC1C(&qword_10006E3E0, &unk_10004FF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000CEC4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000CEDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000CF40(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *sub_10000CF8C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000D024(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 sub_10000D0D0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000D0DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000D0FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_10000D194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10000D4D4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_10000D550(size_t a1, size_t a2, size_t a3)
{
  v4 = v3;
  v8 = v3[2];
  if (v8)
  {
    v9 = v8;
    if (IOSurfaceGetWidth(v9) != a1)
    {
      Height = IOSurfaceGetHeight(v9);

      if (Height == a2)
      {
        goto LABEL_6;
      }

      v11 = v4[2];
      v4[2] = 0;

      v4[3] = 0;
      swift_unknownObjectRelease();
      v9 = v4[4];
      v4[4] = 0;
    }

LABEL_6:
    v12 = v4[2];
    if (v12)
    {
      goto LABEL_11;
    }
  }

  v13 = sub_10004CEDC();
  v14 = sub_10004D39C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134218240;
    *(v15 + 4) = a1;
    *(v15 + 12) = 2048;
    *(v15 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v13, v14, "create surface %ldx%ld", v15, 0x16u);
  }

  sub_10000CC1C(&qword_10006E9D0, &qword_100050630);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000505A0;
  *(inited + 32) = kIOSurfaceWidth;
  *(inited + 40) = a1;
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = kIOSurfaceHeight;
  *(inited + 80) = a2;
  *(inited + 104) = &type metadata for Int;
  *(inited + 112) = kIOSurfaceBytesPerElement;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Int;
  *(inited + 152) = kIOSurfaceBytesPerRow;
  *(inited + 160) = a3;
  *(inited + 184) = &type metadata for Int;
  *(inited + 192) = kIOSurfaceAllocSize;
  if ((a3 * a2) >> 64 != (a3 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_24;
  }

  *(inited + 200) = a3 * a2;
  *(inited + 224) = &type metadata for Int;
  *(inited + 232) = kIOSurfacePixelFormat;
  *(inited + 264) = &type metadata for UInt32;
  *(inited + 240) = 1278226488;
  v17 = inited;
  v18 = kIOSurfaceWidth;
  v19 = kIOSurfaceHeight;
  v20 = kIOSurfaceBytesPerElement;
  v21 = kIOSurfaceBytesPerRow;
  v22 = kIOSurfaceAllocSize;
  v23 = kIOSurfacePixelFormat;
  sub_100039EE0(v17);
  swift_setDeallocating();
  sub_10000CC1C(&qword_10006E9D8, &unk_100050638);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_10000F164(&qword_10006E4C0, type metadata accessor for CFString, &unk_10005047C);
  isa = sub_10004D00C().super.isa;

  v25 = IOSurfaceCreate(isa);

  v26 = v4[2];
  v4[2] = v25;

  v12 = v4[2];
  if (!v12)
  {
    return;
  }

LABEL_11:
  if (v4[3])
  {
    v27 = v12;
    if (!v4[4])
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v28 = objc_allocWithZone(MTLTextureDescriptor);
  v29 = v12;
  v30 = [v28 init];
  [v30 setPixelFormat:10];
  [v30 setWidth:a3];
  [v30 setHeight:a2];
  v31 = MTLCreateSystemDefaultDevice();
  if (!v31)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v32 = [v31 newTextureWithDescriptor:v30 iosurface:v29 plane:0];

  swift_unknownObjectRelease();
  v4[3] = v32;
  swift_unknownObjectRelease();
  if (!v4[4])
  {
LABEL_16:
    DeviceGray = CGColorSpaceCreateDeviceGray();
    BaseAddress = IOSurfaceGetBaseAddress(v12);
    v35 = sub_10000F1AC(BaseAddress, a1, a2, a3, DeviceGray);
    v36 = v4[4];
    v4[4] = v35;
    v37 = v35;

    if (v37)
    {
      CGContextScaleCTM(v37, 1.0, -1.0);
    }

    v38 = v4[4];
    if (v38)
    {
      v39 = -a2;
      v40 = v38;
      CGContextTranslateCTM(v40, 0.0, v39);
    }

    v12 = DeviceGray;
  }

LABEL_21:
}

uint64_t sub_10000D9C4(CGContext *a1, uint64_t a2, void *a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v17 = sub_10004CE0C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGContextBeginPath(a1);
  CGAffineTransformMakeScale(&v39, a2 / a4, 1.0);
  v40.origin.x = a6;
  v40.origin.y = a7;
  v40.size.width = a8;
  v40.size.height = a9;
  v41 = CGRectApplyAffineTransform(v40, &v39);
  if (a3 == 2)
  {
    v31 = CGPathCreateWithRoundedRect(v41, 15.0, 15.0, 0);
    CGContextAddPath(a1, v31);

    v30 = 0x3F80101010101010;
  }

  else if (a3 == 1)
  {
    x = v41.origin.x;
    y = v41.origin.y;
    width = v41.size.width;
    height = v41.size.height;
    v26 = CGRectGetWidth(v41);
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    v27 = CGRectGetHeight(v42);
    if (v27 < v26)
    {
      v26 = v27;
    }

    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v28 = x - (v26 - CGRectGetWidth(v43)) * 0.5;
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    v45.origin.y = y - (v26 - CGRectGetHeight(v44)) * 0.5;
    v45.origin.x = v28;
    v45.size.width = v26;
    v45.size.height = v26;
    v29 = CGPathCreateWithEllipseInRect(v45, 0);
    CGContextAddPath(a1, v29);

    v30 = 0x3F88181818181818;
  }

  else
  {
    if (a3)
    {
      v32 = v41.origin.y;
      v33 = v41.origin.x;
      v34 = a3;
      CGContextSaveGState(a1);
      CGContextTranslateCTM(a1, v33, v32);
      CGContextAddPath(a1, v34);
      CGContextRestoreGState(a1);
      sub_10000F06C(a3);
    }

    else
    {
      v21 = CGPathCreateWithRoundedRect(v41, 15.0, 15.0, 0);
      CGContextAddPath(a1, v21);
    }

    v30 = 0x3F70101010101010;
  }

  v35 = *&v30;
  CGContextClosePath(a1);
  v36 = [objc_allocWithZone(UIColor) initWithWhite:v35 alpha:1.0];
  v37 = [v36 CGColor];

  CGContextSetFillColorWithColor(a1, v37);
  (*(v18 + 104))(v20, enum case for CGPathFillRule.winding(_:), v17);
  sub_10004D35C();
  return (*(v18 + 8))(v20, v17);
}

void (*sub_10000DCFC(void (*result)(CGContext *, uint64_t), double a2, double a3))(CGContext *, uint64_t)
{
  if (a2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_18;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v4 = ceilf(vcvts_n_f32_s64(a2, 4uLL)) * 16.0;
  if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v4 <= -9.2234e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 >= 9.2234e18)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = a3;
  v7 = v4;
  sub_10000D550(v4, a3, v4);
  v8 = *(v3 + 32);
  if (!v8 || !*(v3 + 16))
  {
    return 0;
  }

  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 blackColor];
  v12 = [v11 CGColor];

  CGContextSetFillColorWithColor(v10, v12);
  sub_10000CC1C(&qword_10006E9C8, &qword_100050628);
  v13._rawValue = swift_allocObject();
  *(v13._rawValue + 1) = xmmword_1000505B0;
  *(v13._rawValue + 4) = 0;
  *(v13._rawValue + 5) = 0;
  *(v13._rawValue + 6) = v7;
  *(v13._rawValue + 7) = v6;
  sub_10004D34C(v13);

  if (v5)
  {
    v5(v10, v7);
  }

  CGContextFlush(v10);

  return swift_unknownObjectRetain();
}

uint64_t sub_10000DF20()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtensionP33_42E2A78A8128FB2B9E40E7284CB2B7BC12MaskProvider_logger;
  v2 = sub_10004CEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10000DFFC(uint64_t a1)
{
  result = sub_10004CEFC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000E09C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_timer) = 0;
  v5 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_logger;
  v6 = sub_10004CEFC();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_asset) = a2;
  type metadata accessor for MaskProvider(0);
  v8 = swift_allocObject();
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = 0;
  (*(v7 + 32))(v8 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtensionP33_42E2A78A8128FB2B9E40E7284CB2B7BC12MaskProvider_logger, a1, v6);
  *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_provider) = v8;
  return v2;
}

uint64_t sub_10000E198(double a1, double a2, double a3)
{
  v6 = sub_10004CF1C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004CF6C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004CEDC();
  v15 = sub_10004D36C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v14, v15, "Starting timer to clear mask after %fs", v16, 0xCu);
  }

  sub_10000D024(0, &unk_10006E3C0, OS_dispatch_queue_ptr);
  v17 = sub_10004D3DC();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a1;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  aBlock[4] = sub_10000F110;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002FBD0;
  aBlock[3] = &unk_100065E20;
  v20 = _Block_copy(aBlock);

  sub_10004CF3C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000F164(&qword_1000708A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
  sub_10000CD00();
  sub_10004D57C();
  sub_10004D3EC();
  _Block_release(v20);

  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

void sub_10000E520(uint64_t a1, double a2, double a3, double a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = a3;
    *(v11 + 32) = a4;
    v15[4] = sub_10000F158;
    v15[5] = v11;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_10001BB08;
    v15[3] = &unk_100065E70;
    v12 = _Block_copy(v15);

    v13 = [v9 scheduledTimerWithTimeInterval:0 repeats:v12 block:a2];
    _Block_release(v12);
    v14 = *(v8 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_timer);
    *(v8 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_timer) = v13;
  }
}

void sub_10000E6C0(void *a1, uint64_t a2, double a3, double a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_timer;
    v10 = *(Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_timer);
    if (v10 && (sub_10000D024(0, &qword_10006E9C0, NSTimer_ptr), v11 = v10, v12 = a1, v13 = sub_10004D50C(), v11, v12, (v13 & 1) != 0))
    {
      v14 = sub_10004CEDC();
      v15 = sub_10004D37C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Timer fired to clear mask", v16, 2u);
      }

      v17 = *(v8 + v9);
      *(v8 + v9) = 0;

      sub_10000ED8C(v18, a3, a4);
    }

    else
    {
      v19 = sub_10004CEDC();
      v20 = sub_10004D36C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Not the right taimer bailing out", v21, 2u);
      }
    }
  }
}

uint64_t sub_10000E8AC()
{
  v0 = sub_10004CF1C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004CF6C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D024(0, &unk_10006E3C0, OS_dispatch_queue_ptr);
  v8 = sub_10004D3DC();
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10000F0B8;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002FBD0;
  aBlock[3] = &unk_100065DD0;
  v10 = _Block_copy(aBlock);

  sub_10004CF3C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000F164(&qword_1000708A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
  sub_10000CD00();
  sub_10004D57C();
  sub_10004D3EC();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_10000EB74(uint64_t a1)
{
  v1 = sub_10004CEFC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v2 + 16))(v4, Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_logger, v1);

    v6 = sub_10004CEDC();
    v7 = sub_10004D37C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Invalidating timer to clear mask", v8, 2u);
    }

    (*(v2 + 8))(v4, v1);
  }

  swift_beginAccess();
  v9 = swift_weakLoadStrong();
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_timer);

    [v10 invalidate];
  }

  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_timer);
    *(v11 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_timer) = 0;
  }
}

id sub_10000ED8C(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v7 = sub_10004CEDC();
  v8 = sub_10004D37C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Clearing mask", v9, 2u);
  }

  v10 = *(v4 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_asset);
  v11 = *(v4 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_provider);
  sub_10000DCFC(0, a2, a3);
  swift_unknownObjectRelease();
  v12 = *(v11 + 24);

  return [v10 setTexture:v12];
}

uint64_t sub_10000EE8C()
{
  v1 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_logger;
  v2 = sub_10004CEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10000EF80(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000EFB8(uint64_t a1)
{
  result = sub_10004CEFC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10000F06C(id a1)
{
  if (a1 - 1 >= 2)
  {
  }
}

uint64_t sub_10000F080()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F0C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000F0D8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000F120()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F164(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10000F1D0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    [a1 setDeviceMotionEventsRequested:1];
    [a1 setSupportedMotionEffectsMode:2];
    v4 = "setPreferredDeviceMotionUpdateInterval:";
    v5 = 0.0333;
    v6 = a1;
  }

  else
  {
    [a1 setDeviceMotionEventsRequested:0];
    v4 = "setSupportedMotionEffectsMode:";
    v6 = a1;
  }

  return [v6 v4];
}

uint64_t sub_10000F270(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000CC1C(&unk_10006EA90, &qword_1000506D8);
    v2 = sub_10004D6AC();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000C7F0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100010F88(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100010F88(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100010F88(v31, v32);
    result = sub_10004D5CC(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100010F88(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10000F6C8(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a2;
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_10000F7A0;

  return sub_1000107D4(v7);
}

uint64_t sub_10000F7A0(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    v8 = sub_10004CC5C();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_100010EBC();
    isa = sub_10004D22C().super.isa;

    v10 = isa;
    v9 = 0;
    v8 = isa;
  }

  v12 = *(v4 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id sub_10000F97C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTranscriptBackgroundPosterDelegate(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DynamicTranscriptBackgroundPosterDelegate(uint64_t a1)
{
  result = qword_10006EA70;
  if (!qword_10006EA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000FA74(uint64_t a1)
{
  result = sub_10004CEFC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000FB04()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000FB54()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000FC14;

  return sub_10000F6C8(v2, v3, v5, v4);
}

uint64_t sub_10000FC14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000FD08(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100010FA0;

  return v6();
}

uint64_t sub_10000FDF0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100010FA0;

  return sub_10000FD08(v2, v3, v4);
}

uint64_t sub_10000FEB0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10000FC14;

  return v7();
}

uint64_t sub_10000FF9C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000FFDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100010FA0;

  return sub_10000FEB0(a1, v4, v5, v6);
}

uint64_t sub_1000100A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000CC1C(&qword_10006EA80, &qword_100050680);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100010364(a3, v23 - v10);
  v12 = sub_10004D2BC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000103D4(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_10004D2AC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_10004D29C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_10004D11C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1000103D4(a3);

    return v21;
  }

LABEL_8:
  sub_1000103D4(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100010364(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CC1C(&qword_10006EA80, &qword_100050680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000103D4(uint64_t a1)
{
  v2 = sub_10000CC1C(&qword_10006EA80, &qword_100050680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001043C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100010534;

  return v6(a1);
}

uint64_t sub_100010534()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001062C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010664(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100010FA0;

  return sub_10001043C(a1, v4);
}

uint64_t sub_10001071C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000FC14;

  return sub_10001043C(a1, v4);
}

uint64_t sub_1000107D4(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;

  return _swift_task_switch(sub_100010864, 0, 0);
}

uint64_t sub_100010864()
{
  v54 = v0;
  v1 = [*(v0 + 112) context];
  if (v1)
  {
    v2 = v1;
    v49 = sub_10004D01C();
  }

  else
  {
    v49 = 0;
  }

  v3 = sub_100041324();
  v44 = *(v3 + 16);
  if (v44)
  {
    v4 = 0;
    v42 = PRPosterRoleBackdrop;
    v5 = (v3 + 56);
    v43 = v3;
    while (1)
    {
      if (v4 >= *(v3 + 16))
      {
        __break(1u);
      }

      v7 = *(v5 - 3);
      v6 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      if (v9 <= 1)
      {
        break;
      }

      if (v9 == 2)
      {
        v11 = 0x61726F727561;
        goto LABEL_13;
      }

      v52 = 0x5F72657474696C67;
      v53 = 0xE800000000000000;
      v12 = v8;
LABEL_16:

      v56._countAndFlagsBits = v7;
      v56._object = v6;
      sub_10004D16C(v56);
      v14 = v52;
      v13 = v53;
      v51 = v8;
      v50 = v9;
      v47 = sub_10003EB10(v7, v6, v8, v9);
      v16 = v15;
      v17 = sub_10004D05C();
      v18 = [objc_opt_self() mutableDescriptorWithIdentifier:v17 role:v42];

      if (v49)
      {
        v45 = v6;
        v46 = v7;
        *(v0 + 40) = &type metadata for Int;
        *(v0 + 16) = v4;
        sub_100010F88((v0 + 16), (v0 + 48));

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v49;
        sub_100034764((v0 + 48), 0x6564724F74726F73, 0xE900000000000072, isUniquelyReferenced_nonNull_native);
        v20 = v52;
        *(v0 + 40) = &type metadata for String;
        *(v0 + 16) = 0xD000000000000012;
        *(v0 + 24) = 0x8000000100053440;
        sub_100010F88((v0 + 16), (v0 + 48));
        v21 = swift_isUniquelyReferenced_nonNull_native();
        v52 = v20;
        sub_100034764((v0 + 48), 0xD000000000000010, 0x8000000100053420, v21);
        v22 = v52;
        *(v0 + 40) = &type metadata for String;
        *(v0 + 16) = v14;
        *(v0 + 24) = v13;
        sub_100010F88((v0 + 16), (v0 + 48));
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v52 = v22;
        sub_100034764((v0 + 48), 0x696669746E656469, 0xEA00000000007265, v23);
        v24 = v52;
        *(v0 + 40) = &type metadata for String;
        *(v0 + 16) = v47;
        *(v0 + 24) = v16;
        sub_100010F88((v0 + 16), (v0 + 48));
        v25 = swift_isUniquelyReferenced_nonNull_native();
        v52 = v24;
        sub_100034764((v0 + 48), 0xD000000000000012, 0x8000000100053460, v25);
        sub_10000F270(v52);

        isa = sub_10004D00C().super.isa;

        *(v0 + 16) = 0;
        v27 = [v18 storeUserInfo:isa error:v0 + 16];

        v28 = *(v0 + 16);
        if ((v27 & 1) == 0)
        {
          v48 = v18;
          v31 = v28;
          sub_10004CC6C();

          swift_willThrow();
          swift_errorRetain();
          v32 = sub_10004CEDC();
          v33 = sub_10004D38C();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v52 = v35;
            *v34 = 136315138;
            swift_getErrorValue();
            v36 = sub_10004D76C();
            v38 = sub_10000C618(v36, v37, &v52);

            *(v34 + 4) = v38;
            _os_log_impl(&_mh_execute_header, v32, v33, "error while storing user info : %s", v34, 0xCu);
            sub_10000CF40(v35);
          }

          else
          {
          }

          v6 = v45;
          v7 = v46;
          v30 = v50;
          v18 = v48;
          goto LABEL_25;
        }

        v29 = v28;
      }

      else
      {
      }

      v30 = v50;
LABEL_25:
      v39 = v18;
      sub_10004D21C();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10004D25C();
      }

      ++v4;
      sub_10004D27C();
      sub_100010F08(v7, v6, v51, v30);

      v5 += 32;
      v3 = v43;
      if (v44 == v4)
      {
        goto LABEL_28;
      }
    }

    if (*v5)
    {
      v11 = 0x7364756F6C63;
LABEL_13:
      v52 = v11 & 0xFFFFFFFFFFFFLL | 0x5F000000000000;
      v10 = 0xE700000000000000;
    }

    else
    {
      v52 = 0x5F6E6165636FLL;
      v10 = 0xE600000000000000;
    }

    v53 = v10;
    goto LABEL_16;
  }

LABEL_28:

  v40 = *(v0 + 8);

  return v40(&_swiftEmptyArrayStorage);
}

unint64_t sub_100010EBC()
{
  result = qword_10006EA88;
  if (!qword_10006EA88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006EA88);
  }

  return result;
}

void sub_100010F08(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4 >= 2u)
    {
      return;
    }

    goto LABEL_9;
  }

  if (a4 == 2)
  {
LABEL_9:

    return;
  }

  if (a4 == 3)
  {
  }
}

_OWORD *sub_100010F88(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100010FA4()
{
  sub_10000CF40((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_100010FE4(uint64_t a1, double a2)
{
  if (a2 == 0.0)
  {
    if (*(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_pkDeviceOrientation) != a1)
    {
      *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_pkDeviceOrientation) = a1;
      v4 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
      swift_beginAccess();
      v5 = *(v2 + v4);
      v6 = 1 << *(v5 + 32);
      v7 = -1;
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      v8 = v7 & *(v5 + 64);
      v9 = (v6 + 63) >> 6;

      v10 = 0;
      while (v8)
      {
LABEL_11:
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = *(*(v5 + 56) + ((v10 << 9) | (8 * v12)));
        v14 = *&v13[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_deviceOrientation];
        *&v13[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_deviceOrientation] = a1;
        if (v14 != a1)
        {
          v15 = v13;
          sub_10001E314();
        }
      }

      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v9)
        {

          return;
        }

        v8 = *(v5 + 64 + 8 * v11);
        ++v10;
        if (v8)
        {
          v10 = v11;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    *(v18 + 24) = a1;
    v20[4] = sub_100011DAC;
    v20[5] = v18;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_10002FBD0;
    v20[3] = &unk_100065F88;
    v19 = _Block_copy(v20);

    [v17 animateWithDuration:v19 animations:a2];
    _Block_release(v19);
  }
}

void sub_1000111F0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_pkDeviceOrientation) != a2)
  {
    *(a1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_pkDeviceOrientation) = a2;
    v3 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
    swift_beginAccess();
    v5 = *(a1 + v3);
    v6 = 1 << *(v5 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v5 + 64);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    while (v8)
    {
LABEL_10:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = *(*(v5 + 56) + ((v10 << 9) | (8 * v12)));
      v14 = *&v13[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_deviceOrientation];
      *&v13[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_deviceOrientation] = a2;
      if (v14 != a2)
      {
        v15 = v13;
        sub_10001E314();
      }
    }

    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        return;
      }

      v8 = *(v5 + 64 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100011328(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_10000CF8C(a3, a3[3]);
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v11 = *(v7 + 24);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      sub_100035FE8(a1, v8, v9, v10, v11, 0, Strong, 1.0);
      if (!sub_100035D90(v8, v9, v10, v11, v6))
      {
        sub_100011418(1.0);
      }
    }
  }

  return result;
}

void sub_100011418(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_effectViewByEffect;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16))
  {

    v6 = sub_10003310C(0xD000000000000011, 0x80000001000535A0);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);

      if (qword_10006E0A8 != -1)
      {
        swift_once();
      }

      if ([qword_1000730A8 posterKitEditor])
      {
      }

      else
      {
        [*(v8 + 16) setAlpha:1.0];

        v9 = sub_10004CEDC();
        v10 = sub_10004D39C();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v31[0] = v12;
          *v11 = 134218242;
          *(v11 + 4) = 0x3FF0000000000000;
          *(v11 + 12) = 2080;
          swift_beginAccess();
          v13 = sub_10000CF8C((v8 + 24), *(v8 + 48));
          v14 = sub_10003EA74(*v13, v13[2], *(v13 + 24));
          v16 = sub_10000C618(v14, v15, v31);

          *(v11 + 14) = v16;
          _os_log_impl(&_mh_execute_header, v9, v10, "current view alpha %f %s", v11, 0x16u);
          sub_10000CF40(v12);
        }
      }
    }

    else
    {
    }
  }

  v17 = *(v2 + v4);
  if (*(v17 + 16))
  {

    v18 = sub_10003310C(0xD000000000000010, 0x80000001000535C0);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 8 * v18);

      if (qword_10006E0A8 != -1)
      {
        swift_once();
      }

      if ([qword_1000730A8 posterKitEditor])
      {
      }

      else
      {
        [*(v20 + 16) setAlpha:a1];
        v21 = [*(v20 + 16) superview];
        if (v21)
        {
          v22 = v21;
          [v21 bringSubviewToFront:*(v20 + 16)];
        }

        v23 = sub_10004CEDC();
        v24 = sub_10004D39C();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v32 = v26;
          *v25 = 134218242;
          *(v25 + 4) = a1;
          *(v25 + 12) = 2080;
          swift_beginAccess();
          v27 = sub_10000CF8C((v20 + 24), *(v20 + 48));
          v28 = sub_10003EA74(*v27, v27[2], *(v27 + 24));
          v30 = sub_10000C618(v28, v29, &v32);

          *(v25 + 14) = v30;
          _os_log_impl(&_mh_execute_header, v23, v24, "target view alpha %f %s", v25, 0x16u);
          sub_10000CF40(v26);
        }
      }
    }

    else
    {
    }
  }
}

id sub_100011884(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10004CEDC();
  v4 = sub_10004D39C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10000C618(0xD000000000000018, 0x8000000100053580, v26);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000CF40(v6);
  }

  v7 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_effectViewByEffect;
  swift_beginAccess();
  v8 = *(v2 + v7);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_11:
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      result = [*(*(*(v8 + 56) + ((v15 << 9) | (8 * v16))) + 16) removeFromSuperview];
      if (!v11)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 64 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_11;
    }
  }

  *(v2 + v7) = &_swiftEmptyDictionarySingleton;

  v17 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
  swift_beginAccess();
  v18 = *(v2 + v17);
  v19 = 1 << *(v18 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v18 + 64);
  v22 = (v19 + 63) >> 6;

  for (i = 0; v21; result = [*(*(v18 + 56) + ((v24 << 9) | (8 * v25))) removeFromSuperview])
  {
    v24 = i;
LABEL_21:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
  }

  while (1)
  {
    v24 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v24 >= v22)
    {

      *(v2 + v17) = &_swiftEmptyDictionarySingleton;
    }

    v21 = *(v18 + 64 + 8 * v24);
    ++i;
    if (v21)
    {
      i = v24;
      goto LABEL_21;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100011B4C()
{
  v1 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_logger;
  v2 = sub_10004CEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100011DCC(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_delegate);
  sub_10000CF40((v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_factory));

  sub_10000CF40((v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ViewsManager(uint64_t a1)
{
  result = qword_10006EAD0;
  if (!qword_10006EAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100011C8C(uint64_t a1)
{
  result = sub_10004CEFC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100011D74()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100011DB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100011DF4()
{
  if (qword_10006E0B8 != -1)
  {
    swift_once();
  }

  v1 = qword_100073150;
  v2 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration + 16];
  v7[0] = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration];
  v7[1] = v2;
  v8[0] = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration + 32];
  *(v8 + 13) = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration + 45];
  v3 = v0;
  sub_1000131F8(v7, v6);
  sub_100012B38(v3, v7, v1);
  sub_100013254(v7);

  v5.receiver = v3;
  v5.super_class = type metadata accessor for SnapshotReader(0);
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t type metadata accessor for SnapshotReader(uint64_t a1)
{
  result = qword_10006ED90;
  if (!qword_10006ED90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000120D0(char a1)
{
  v2 = v1;
  if (qword_10006E0B8 != -1)
  {
    swift_once();
  }

  v4 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration + 16);
  v40[0] = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration);
  v40[1] = v4;
  v41[0] = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration + 32);
  *(v41 + 13) = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration + 45);
  sub_100044D30(v40, &v30);
  v5 = v31;
  if (v31)
  {
    v6 = v30;
    v34[0] = v30;
    v34[1] = v31;
    v35 = v32;
    v36[0] = v33[0];
    *(v36 + 13) = *(v33 + 13);
    v26 = v32;
    v27[0] = v33[0];
    *(v27 + 13) = *(v33 + 13);
    v7 = sub_100042698();
    v9 = v8;
    v10 = (v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_currentSnapshotConfiguration);
    v11 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_currentSnapshotConfiguration + 16);
    v28[0] = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_currentSnapshotConfiguration);
    v28[1] = v11;
    v29[0] = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_currentSnapshotConfiguration + 32);
    *(v29 + 13) = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_currentSnapshotConfiguration + 45);
    if (*(&v28[0] + 1))
    {
      v12 = v7;
      v13 = v10[1];
      v37 = *v10;
      v38 = v13;
      v39[0] = v10[2];
      v14 = v39[0];
      *(v39 + 13) = *(v10 + 45);
      v23 = v37;
      v24 = v13;
      v25[0] = v14;
      *(v25 + 13) = *(v39 + 13);
      sub_1000131F8(&v23, v22);
      v15 = sub_100042698();
      v17 = v16;
      sub_1000132E0(v28);
      if (v12 == v15 && v9 == v17)
      {

LABEL_10:
        sub_1000132E0(&v30);
        return;
      }

      v18 = sub_10004D74C();

      if (v18)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v19 = v10[1];
    v23 = *v10;
    v24 = v19;
    v25[0] = v10[2];
    *(v25 + 13) = *(v10 + 45);
    *v10 = v6;
    *(v10 + 1) = v5;
    v20 = v27[0];
    v10[1] = v26;
    v10[2] = v20;
    *(v10 + 45) = *(v27 + 13);
    sub_1000131F8(v34, v22);
    sub_1000132E0(&v23);
    v21 = sub_100012324();
    sub_1000132E0(&v30);
    if (v21)
    {
      (*(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_updateBlock))(v21, a1 & 1);
    }
  }
}

id sub_100012324()
{
  v1 = v0;
  v2 = sub_10004CD3C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006E0C0 != -1)
  {
    swift_once();
  }

  sub_1000132A8(v2, qword_100073158);
  v19[0] = sub_100042A30();
  v19[1] = v6;
  v20._countAndFlagsBits = 0x636965682ELL;
  v20._object = 0xE500000000000000;
  sub_10004D16C(v20);
  sub_10004CCEC();

  v7 = sub_10004CC8C();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  v10 = objc_allocWithZone(UIImage);
  v11 = sub_10004D05C();
  v12 = [v10 initWithContentsOfFile:v11];

  if (v12)
  {
  }

  else
  {
    v13 = v1;

    v14 = sub_10004CEDC();
    v15 = sub_10004D38C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v19[0] = swift_slowAlloc();
      *v16 = 136315394;
      *(v16 + 4) = sub_10000C618(*&v13[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_tagID], *&v13[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_tagID + 8], v19);
      *(v16 + 12) = 2080;
      v17 = sub_10000C618(v7, v9, v19);

      *(v16 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v14, v15, "#%s snapshotReader: loading failed at path %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }

  return v12;
}

uint64_t sub_100012634(uint64_t a1)
{
  result = sub_10004CEFC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000126F8(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_10004D67C();
LABEL_9:
  result = sub_10004D63C();
  *v2 = result;
  return result;
}

uint64_t sub_100012798(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v6 = *v3;
  v7 = sub_100012A1C(a1, a2, *v3);
  if (v4)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_10004D67C();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_10004D67C())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = sub_10004D62C();
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v19 = v12;
    v13 = a1(&v19);

    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v14 = sub_10004D62C();
    v15 = sub_10004D62C();
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v14 = *(v6 + 32 + 8 * v2);
    v15 = *(v6 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_100024C3C(v6);
    v17 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v15;

  if ((v6 & 0x8000000000000000) == 0 && !v17)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_100024C3C(v6);
  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v18 + 16))
    {
      goto LABEL_44;
    }

    *(v18 + 8 * v10 + 32) = v14;

    *v3 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_10004D67C();
}

unint64_t sub_100012A1C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_10004D67C();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = sub_10004D62C();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

void sub_100012B38(uint64_t a1, float *a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  os_unfair_lock_lock(v6);
  v7 = swift_beginAccess();
  v8 = *(a3 + 24);
  if (*(v8 + 16))
  {

    v9 = sub_100033238(a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
    }

    else
    {
      v11 = &_swiftEmptyArrayStorage;
    }
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v19 = v11;
  __chkstk_darwin(v7);
  v17[2] = a1;
  v17[3] = &off_100065FB0;
  v12 = sub_100012798(sub_100013348, v17);
  if (v19 >> 62)
  {
    v16 = v12;
    v13 = sub_10004D67C();
    v12 = v16;
    if (v13 >= v16)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13 >= v12)
    {
LABEL_9:
      sub_100012EB4(v12, v13);
      v14 = v19;
      swift_beginAccess();
      sub_1000131F8(a2, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18[0] = *(a3 + 24);
      *(a3 + 24) = 0x8000000000000000;
      sub_1000348B4(v14, a2, isUniquelyReferenced_nonNull_native);
      sub_100013254(a2);
      *(a3 + 24) = v18[0];
      swift_endAccess();
      os_unfair_lock_unlock(v6);
      return;
    }
  }

  __break(1u);
}

void sub_100012D08(uint64_t a1, float *a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  os_unfair_lock_lock(v5);
  swift_beginAccess();
  v6 = *(a3 + 24);
  if (*(v6 + 16))
  {

    v7 = sub_100033238(a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
    }

    else
    {
      v9 = &_swiftEmptyArrayStorage;
    }
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v14 = v9;
  type metadata accessor for SnapshotManager.WeakObserver();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 24) = &off_100065FB0;
  swift_unknownObjectWeakAssign();
  sub_10004D21C();
  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10004D25C();
  }

  sub_10004D27C();
  v11 = v14;
  swift_beginAccess();
  sub_1000131F8(a2, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *(a3 + 24);
  *(a3 + 24) = 0x8000000000000000;
  sub_1000348B4(v11, a2, isUniquelyReferenced_nonNull_native);
  sub_100013254(a2);
  *(a3 + 24) = v13[0];
  swift_endAccess();
  os_unfair_lock_unlock(v5);
}

uint64_t sub_100012EB4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_10004D67C();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_10004D67C();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_1000126F8(result, 1);

  return sub_100024E28(v5, v3, 0);
}

char *sub_100012F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = &v5[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_currentSnapshotConfiguration];
  *v10 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  *(v10 + 45) = 0u;
  v11 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_logger;
  v12 = sub_10004CEFC();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v5[v11], a2, v12);
  v5[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_isSnapshotMode] = *(a1 + 96);
  sub_1000427C8(v26);
  v14 = &v5[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration];
  v15 = v26[1];
  *v14 = v26[0];
  v14[1] = v15;
  v14[2] = v27[0];
  *(v14 + 45) = *(v27 + 13);
  v16 = *(a1 + 32);
  *&v5[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_tagID] = v16;
  v28 = v16;
  v17 = &v5[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_updateBlock];
  *v17 = a3;
  v17[1] = a4;
  sub_10001319C(&v28, v29);
  v25.receiver = v5;
  v25.super_class = type metadata accessor for SnapshotReader(0);

  v18 = objc_msgSendSuper2(&v25, "init");
  sub_1000120D0(1);
  if (qword_10006E0B8 != -1)
  {
    swift_once();
  }

  v19 = qword_100073150;
  v21 = *&v18[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration + 16];
  v20 = *&v18[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration + 32];
  v22 = *&v18[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration];
  *&v30[13] = *&v18[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension14SnapshotReader_viewConfiguration + 45];
  v29[1] = v21;
  *v30 = v20;
  v29[0] = v22;
  sub_1000131F8(v29, &v24);
  sub_100012D08(v18, v29, v19);
  sub_100013254(v29);

  (*(v13 + 8))(a2, v12);
  return v18;
}

uint64_t sub_1000132A8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000132E0(uint64_t a1)
{
  v2 = sub_10000CC1C(&qword_10006EDA0, &unk_100050800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100013368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t getEnumTagSinglePayload for BackgroundEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BackgroundEventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100013520()
{
  result = qword_10006EDA8;
  if (!qword_10006EDA8)
  {
    sub_10000CD64(&qword_10006EDB0, qword_100050828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006EDA8);
  }

  return result;
}

uint64_t sub_100013590(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064656464;
  v3 = 0x416B636162706174;
  v4 = a1;
  v5 = 0xEB00000000676E69;
  if (a1 == 5)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x6C6C6F7263537369;
  }

  if (a1 == 5)
  {
    v5 = 0x8000000100052FD0;
  }

  v7 = 0x8000000100052F90;
  if (a1 != 3)
  {
    v7 = 0x8000000100052FB0;
  }

  if (a1 > 4u)
  {
    v7 = v5;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  v8 = 0x526B636162706174;
  v9 = 0xEE006465766F6D65;
  if (a1 != 1)
  {
    v8 = 0xD000000000000016;
    v9 = 0x8000000100052F70;
  }

  if (!a1)
  {
    v8 = 0x416B636162706174;
    v9 = 0xEC00000064656464;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEE006465766F6D65;
        if (v10 != 0x526B636162706174)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0x8000000100052F70;
        if (v10 != 0xD000000000000016)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x8000000100052FD0;
        if (v10 != 0xD000000000000011)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0xEB00000000676E69;
        if (v10 != 0x6C6C6F7263537369)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }

    if (a2 == 3)
    {
      v2 = 0x8000000100052F90;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v2 = 0x8000000100052FB0;
    v3 = 0xD000000000000010;
  }

  if (v10 != v3)
  {
LABEL_40:
    v12 = sub_10004D74C();
    goto LABEL_41;
  }

LABEL_37:
  if (v11 != v2)
  {
    goto LABEL_40;
  }

  v12 = 1;
LABEL_41:

  return v12 & 1;
}

uint64_t sub_1000137B8(uint64_t a1)
{
  sub_10004D14C();
}

Swift::Int sub_100013904(uint64_t a1, unsigned __int8 a2)
{
  sub_10004D7BC();
  sub_10004D14C();

  return sub_10004D7DC();
}

unint64_t sub_100013A5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100013DFC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100013A8C(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v7 = 0xEC00000064656464;
    v8 = 0xEE006465766F6D65;
    v9 = 0x526B636162706174;
    if (v2 != 1)
    {
      v9 = 0xD000000000000016;
      v8 = 0x8000000100052F70;
    }

    v10 = v2 == 0;
    if (*v1)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0x416B636162706174;
    }

    if (!v10)
    {
      v7 = v8;
    }

    *a1 = v11;
    a1[1] = v7;
  }

  else
  {
    v3 = 0x8000000100052FD0;
    v4 = 0xD000000000000011;
    if (v2 != 5)
    {
      v4 = 0x6C6C6F7263537369;
      v3 = 0xEB00000000676E69;
    }

    v5 = 0x8000000100052F90;
    if (v2 != 3)
    {
      v5 = 0x8000000100052FB0;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v6;
    a1[1] = v3;
  }
}

unint64_t sub_100013BB8()
{
  result = qword_10006EDB8;
  if (!qword_10006EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006EDB8);
  }

  return result;
}

uint64_t sub_100013C0C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  while (1)
  {
    v3 = *(&off_1000656F8 + v2 + 32);
    v4 = sub_10004D10C();
    v6 = v5;

    if (v4 == sub_10004D10C() && v6 == v7)
    {
      break;
    }

    v8 = sub_10004D74C();

    if (v8)
    {
      return v3;
    }

    if (++v2 == 7)
    {
      return 7;
    }
  }

  return v3;
}

unint64_t sub_100013DFC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100065830;
  v6._object = a2;
  v4 = sub_10004D6CC(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100013E48()
{

  v1 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension26TranscriptBackgroundEffect_logger;
  v2 = sub_10004CEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AuroraEffect(uint64_t a1)
{
  result = qword_10006EDE8;
  if (!qword_10006EDE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100013F84(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, double a6)
{
  v7 = a5;
  v11 = [a1 rootNode];
  v12 = sub_10004D05C();
  v13 = [v11 childNodeWithName:v12];

  if (!v13)
  {
    return;
  }

  if (__OFSUB__(sub_10003F3A8(a2, a3, a4, v7), 1))
  {
    __break(1u);
  }

  else if (qword_10006E0A8 == -1)
  {
    goto LABEL_4;
  }

  swift_once();
LABEL_4:
  if (([qword_1000730A8 posterKitEditor] & 1) == 0)
  {
    v14 = *(v6 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
    v15 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
    swift_beginAccess();
    sub_10000CEDC(v14 + v15, v29);
    sub_10000CC1C(&qword_100070A40, &unk_100050920);
    if (swift_dynamicCast())
    {
      v16 = sub_10003F3A8(v25, v26, v27, v28);
      sub_100010F08(v25, v26, v27, v28);
      if (__OFSUB__(v16, 1))
      {
        __break(1u);
      }

      else if (!__OFSUB__(sub_10003F3A8(a2, a3, a4, v7), 1))
      {
        goto LABEL_8;
      }

      __break(1u);
    }

    sub_10004D66C();
    __break(1u);
    return;
  }

LABEL_8:
  v17 = [v13 parameters];
  if (v17)
  {
    v18 = v17;
    isa = sub_10004D2DC().super.super.isa;
    v20 = sub_10004D05C();
    [v18 setObject:isa forKeyedSubscript:v20];
    swift_unknownObjectRelease();
  }

  v21 = [v13 parameters];
  if (v21)
  {
    v22 = v21;
    if (*(v6 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_editor) || (sub_10003F3A8(a2, a3, a4, v7) - 1) > 2)
    {
      v23.super.super.isa = 0;
    }

    else
    {
      v23.super.super.isa = sub_10004D32C().super.super.isa;
    }

    v24 = sub_10004D05C();
    [v22 setObject:v23.super.super.isa forKeyedSubscript:v24];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

void sub_100014340(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X8>)
{
  v134 = a4;
  v137 = sub_10004CEFC();
  v136 = *(v137 - 8);
  v9 = __chkstk_darwin(v137);
  *&v131 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  *&v135 = &v130 - v12;
  v13 = __chkstk_darwin(v11);
  *&v133 = &v130 - v14;
  __chkstk_darwin(v13);
  *&v132 = &v130 - v15;

  v16 = sub_10004CEDC();
  v17 = sub_10004D39C();

  if (!os_log_type_enabled(v16, v17))
  {
    v20 = a3;

    if (a2)
    {
      goto LABEL_3;
    }

LABEL_10:
    v35 = sub_10004CEDC();
    v36 = sub_10004D38C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "synthesizeEvent: Unable to find backing view", v37, 2u);
    }

    goto LABEL_19;
  }

  v18 = swift_slowAlloc();
  *&v130 = a1;
  v19 = v18;
  v138[0] = swift_slowAlloc();
  *v19 = 136315394;
  *(v19 + 4) = sub_10000C618(0xD00000000000003BLL, 0x8000000100053A40, v138);
  *(v19 + 12) = 2080;
  v20 = a3;
  v21 = sub_10004D02C();
  v23 = sub_10000C618(v21, v22, v138);

  *(v19 + 14) = v23;
  _os_log_impl(&_mh_execute_header, v16, v17, "%s %s", v19, 0x16u);
  swift_arrayDestroy();

  a1 = v130;

  if (!a2)
  {
    goto LABEL_10;
  }

LABEL_3:
  v142 = 1701869940;
  v143 = 0xE400000000000000;
  v24 = a2;
  sub_10004D5EC();
  if (!*(v20 + 16) || (v25 = v20, v26 = sub_1000330C8(v138), (v27 & 1) == 0))
  {
    sub_10000CFD0(v138);
LABEL_14:
    v31 = sub_10004CEDC();
    v32 = sub_10004D38C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "synthesizeEvent: No event type name received";
      goto LABEL_16;
    }

LABEL_17:

LABEL_18:
LABEL_19:
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return;
  }

  sub_10000C7F0(*(v20 + 56) + 32 * v26, v141);
  sub_10000CFD0(v138);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v28 = v142;
  v29 = v143;
  v30 = sub_100013C0C(v142, v143);
  if (v30 == 7)
  {

    v31 = sub_10004CEDC();
    v32 = sub_10004D38C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "synthesizeEvent: Unable to parse event type";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v31, v32, v34, v33, 2u);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  LODWORD(v38) = v30;

  v39 = sub_10004CEDC();
  v40 = sub_10004D39C();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    LODWORD(v130) = v38;
    v38 = a1;
    v42 = v41;
    v138[0] = swift_slowAlloc();
    *v42 = 136315394;
    v43 = sub_10000C618(v28, v29, v138);

    *(v42 + 4) = v43;
    *(v42 + 12) = 2080;
    v44 = sub_10004D02C();
    v46 = sub_10000C618(v44, v45, v138);

    *(v42 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v39, v40, "synthesizeEvent: Event Received: %s, %s", v42, 0x16u);
    swift_arrayDestroy();

    a1 = v38;
    LOBYTE(v38) = v130;
  }

  else
  {
  }

  if (v38 == 1)
  {

    goto LABEL_32;
  }

  v47 = sub_10004D74C();

  if (v47)
  {
LABEL_32:

    v57 = sub_10004CEDC();
    v58 = sub_10004D37C();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v138[0] = v60;
      *v59 = 136315138;
      v61 = sub_10004D02C();
      v63 = sub_10000C618(v61, v62, v138);

      *(v59 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v57, v58, "synthesizeEvent: Ignoring event: %s", v59, 0xCu);
      sub_10000CF40(v60);
    }

    goto LABEL_18;
  }

  if (v38 <= 1u)
  {
    v64 = a1;
    v65 = v25;
    if (!v38)
    {
      (*(v136 + 16))(v132, v64, v137);
      v66 = type metadata accessor for TranscriptBackgroundTapbackEventHandler(0);
      v67 = v24;
      v68 = swift_allocObject();
      *(v68 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_tapbackAdded) = 1;
      v139 = 0x656D617266;
      v140 = 0xE500000000000000;

      v69 = v67;
      sub_10000CDAC(v134, v138);
      sub_10004D5EC();
      if (*(v65 + 16) && (v70 = sub_1000330C8(v141), (v71 & 1) != 0))
      {
        sub_10000C7F0(*(v65 + 56) + 32 * v70, &v142);
        sub_10000CFD0(v141);
        sub_10000D024(0, &qword_10006E448, NSValue_ptr);
        if (swift_dynamicCast())
        {
          v72 = v138[0];
          [v138[0] CGRectValue];
          v131 = v73;
          v133 = v74;
          v130 = v75;
          v135 = v76;

          *&v79 = v130;
          *&v78 = v131;
          v77 = 0;
          *(&v78 + 1) = v133;
          *(&v79 + 1) = v135;
LABEL_62:
          v108 = v68 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_frame;
          *v108 = v78;
          *(v108 + 16) = v79;
          *(v108 + 32) = v77;
          v142 = 0x6F6C6C6142736168;
          v143 = 0xEF65706168536E6FLL;
          sub_10004D5EC();
          if (*(v65 + 16) && (v109 = sub_1000330C8(v138), (v110 & 1) != 0))
          {
            sub_10000C7F0(*(v65 + 56) + 32 * v109, v141);
            sub_10000CFD0(v138);
            sub_10000D024(0, &qword_10006F3B0, NSNumber_ptr);
            if (swift_dynamicCast())
            {
              v111 = v142;
              v112 = [v142 BOOLValue];

LABEL_74:
              *(v68 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_hasBalloonShape) = v112;
              v118 = v132;
              *(v68 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_bubblePath) = sub_100017794(v65);
              v119 = (v68 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration);
              v120 = v134;
              v121 = v134[5];
              v119[4] = v134[4];
              v119[5] = v121;
              v119[6] = v120[6];
              *(v119 + 110) = *(v120 + 110);
              v122 = v120[1];
              *v119 = *v120;
              v119[1] = v122;
              v123 = v120[3];
              v119[2] = v120[2];
              v119[3] = v123;
              (*(v136 + 32))(v68 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger, v118, v137);
              *(v68 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata) = v65;
              *(v68 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) = v69;
              *(a5 + 24) = v66;
              *(a5 + 32) = &off_100066080;

              *a5 = v68;
              return;
            }
          }

          else
          {
            sub_10000CFD0(v138);
          }

          v112 = 2;
          goto LABEL_74;
        }
      }

      else
      {
        sub_10000CFD0(v141);
      }

      v78 = 0uLL;
      v77 = 1;
      v79 = 0uLL;
      goto LABEL_62;
    }

    v48 = a5;
    (*(v136 + 16))(v133, v64, v137);
    v90 = type metadata accessor for TranscriptBackgroundTapbackEventHandler(0);
    v51 = swift_allocObject();
    *(v51 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_tapbackAdded) = 0;
    v139 = 0x656D617266;
    v140 = 0xE500000000000000;

    v52 = v24;
    sub_10000CDAC(v134, v138);
    sub_10004D5EC();
    if (*(v65 + 16) && (v91 = sub_1000330C8(v141), (v92 & 1) != 0))
    {
      sub_10000C7F0(*(v65 + 56) + 32 * v91, &v142);
      sub_10000CFD0(v141);
      sub_10000D024(0, &qword_10006E448, NSValue_ptr);
      if (swift_dynamicCast())
      {
        v93 = v138[0];
        [v138[0] CGRectValue];
        v131 = v94;
        v132 = v95;
        v130 = v96;
        v135 = v97;

        *&v100 = v130;
        *&v99 = v131;
        v98 = 0;
        *(&v99 + 1) = v132;
        *(&v100 + 1) = v135;
LABEL_68:
        v113 = v51 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_frame;
        *v113 = v99;
        *(v113 + 16) = v100;
        *(v113 + 32) = v98;
        v142 = 0x6F6C6C6142736168;
        v143 = 0xEF65706168536E6FLL;
        sub_10004D5EC();
        if (*(v65 + 16) && (v114 = sub_1000330C8(v138), (v115 & 1) != 0))
        {
          sub_10000C7F0(*(v65 + 56) + 32 * v114, v141);
          sub_10000CFD0(v138);
          sub_10000D024(0, &qword_10006F3B0, NSNumber_ptr);
          if (swift_dynamicCast())
          {
            v116 = v142;
            v117 = [v142 BOOLValue];

LABEL_77:
            *(v51 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_hasBalloonShape) = v117;
            v124 = v133;
            *(v51 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_bubblePath) = sub_100017794(v65);
            v125 = (v51 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration);
            v126 = v134;
            v127 = v134[5];
            v125[4] = v134[4];
            v125[5] = v127;
            v125[6] = v126[6];
            *(v125 + 110) = *(v126 + 110);
            v128 = v126[1];
            *v125 = *v126;
            v125[1] = v128;
            v129 = v126[3];
            v125[2] = v126[2];
            v125[3] = v129;
            (*(v136 + 32))(v51 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger, v124, v137);
            *(v51 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata) = v65;
            *(v51 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) = v52;
            v48[3] = v90;
            v48[4] = &off_100066080;
            goto LABEL_78;
          }
        }

        else
        {
          sub_10000CFD0(v138);
        }

        v117 = 2;
        goto LABEL_77;
      }
    }

    else
    {
      sub_10000CFD0(v141);
    }

    v99 = 0uLL;
    v98 = 1;
    v100 = 0uLL;
    goto LABEL_68;
  }

  if (v38 - 2 >= 3)
  {
    if (v38 == 5)
    {
      v142 = 0x657669746361;
      v143 = 0xE600000000000000;
      sub_10004D5EC();
      if (*(v25 + 16))
      {
        v80 = sub_1000330C8(v138);
        if (v81)
        {
          sub_10000C7F0(*(v25 + 56) + 32 * v80, v141);
          sub_10000CFD0(v138);
          if (swift_dynamicCast())
          {
            v82 = v142;
            v83 = v136;
            v84 = v131;
            v85 = a1;
            v86 = v137;
            (*(v136 + 16))(v131, v85, v137);
            updated = type metadata accessor for TranscriptBackgroundUpdateActiveStateEventHandler(0);
            v88 = swift_allocObject();
            *(v88 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension49TranscriptBackgroundUpdateActiveStateEventHandler_active) = v82;
            (*(v83 + 32))(v88 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger, v84, v86);
            *(v88 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata) = v25;
            *(v88 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) = v24;
            v89 = &off_100066060;
LABEL_56:
            *(a5 + 24) = updated;
            *(a5 + 32) = v89;
            *a5 = v88;

            return;
          }

          goto LABEL_58;
        }
      }
    }

    else
    {
      v142 = 0x6C6C6F7263537369;
      v143 = 0xEB00000000676E69;
      sub_10004D5EC();
      if (*(v25 + 16))
      {
        v101 = sub_1000330C8(v138);
        if (v102)
        {
          sub_10000C7F0(*(v25 + 56) + 32 * v101, v141);
          sub_10000CFD0(v138);
          if (swift_dynamicCast())
          {
            v103 = v142;
            v104 = v136;
            v105 = v131;
            v106 = a1;
            v107 = v137;
            (*(v136 + 16))(v131, v106, v137);
            updated = type metadata accessor for TranscriptBackgroundIsScrollingEventHandler(0);
            v88 = swift_allocObject();
            *(v88 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43TranscriptBackgroundIsScrollingEventHandler_isScrolling) = v103;
            (*(v104 + 32))(v88 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger, v105, v107);
            *(v88 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata) = v25;
            *(v88 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) = v24;
            v89 = &off_100066050;
            goto LABEL_56;
          }

LABEL_58:
          v31 = sub_10004CEDC();
          v32 = sub_10004D38C();
          if (!os_log_type_enabled(v31, v32))
          {
            goto LABEL_17;
          }

          v33 = swift_slowAlloc();
          *v33 = 0;
          v34 = "Expected active state";
          goto LABEL_16;
        }
      }
    }

    sub_10000CFD0(v138);
    goto LABEL_58;
  }

  v48 = a5;
  (*(v136 + 16))(v135, a1, v137);
  v49 = v24;
  v50 = type metadata accessor for TranscriptBackgroundKeyboardEventHandler(0);
  v51 = swift_allocObject();
  *(v51 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType) = v38;
  v142 = 0xD000000000000012;
  v143 = 0x8000000100053950;
  v52 = v49;
  sub_10004D5EC();
  if (!*(v25 + 16) || (v53 = sub_1000330C8(v138), (v54 & 1) == 0))
  {
    sub_10000CFD0(v138);
    goto LABEL_36;
  }

  sub_10000C7F0(*(v25 + 56) + 32 * v53, v141);
  sub_10000CFD0(v138);
  sub_10000D024(0, &qword_10006F3B0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v56 = 0;
    goto LABEL_37;
  }

  v55 = v142;
  v56 = [v142 BOOLValue];

LABEL_37:
  *(v51 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_fromTapbackContext) = v56;
  (*(v136 + 32))(v51 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger, v135, v137);
  *(v51 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_metadata) = v25;
  *(v51 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) = v52;
  v48[3] = v50;
  v48[4] = &off_100066070;

LABEL_78:

  *v48 = v51;
}

uint64_t sub_1000156C8(uint64_t a1)
{
  result = sub_10004CEFC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1000157A8(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_frame);
  if (*(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_frame + 32))
  {
    oslog = sub_10004CEDC();
    v3 = sub_10004D38C();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Unable to determine frame of message bubble";
LABEL_7:
      _os_log_impl(&_mh_execute_header, oslog, v3, v5, v4, 2u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v6 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_hasBalloonShape);
  if (v6 == 2)
  {
    oslog = sub_10004CEDC();
    v3 = sub_10004D38C();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Unable to determine look of message";
      goto LABEL_7;
    }

LABEL_8:

    return;
  }

  v7 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_tapbackAdded);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  v10 = *v2;
  *(v9 + 40) = v2[1];
  *(v9 + 24) = v10;
  *(v9 + 56) = v6 & 1;
  *(v9 + 64) = a1;

  if (v7)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  sub_10000B44C(v11, sub_100017F6C);
}

void sub_1000159A8(uint64_t a1, char a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v14 = *(*(a1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_effect);
  if (v14)
  {
    v15 = *(*v14 + 144);

    v15(0);
  }

  sub_100015CDC(a2 & 1, *(a1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_bubblePath), a4, a5, a6, a7);
  v16 = *(a3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);
  os_unfair_lock_lock(v16);
  v17 = *(a3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
  sub_100015AD8(v17, a1, a4, a5, a6, a7);

  os_unfair_lock_unlock(v16);
}

void sub_100015AD8(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v6 = [a1 rootNode];
  v7 = sub_10004D05C();
  v14 = [v6 childNodeWithName:v7 recursively:1];

  if (v14)
  {
    v8 = [v14 parameters];
    if (v8)
    {
      v9 = v8;
      isa = sub_10004D4FC().super.isa;
      v11 = sub_10004D05C();

      [v9 setObject:isa forKeyedSubscript:v11];
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v14 = sub_10004CEDC();
    v12 = sub_10004D38C();
    if (os_log_type_enabled(v14, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v14, v12, "Unable to find parameter node", v13, 2u);
    }
  }
}

double sub_100015CDC(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v8 = *(v6 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView);
  v9 = *&v8[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_maskManager];
  if (v9)
  {
    v11 = a1;

    v16 = sub_10004CEDC();
    v17 = sub_10004D37C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v33 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_10000C618(*(v7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 32), *(v7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 40), &v33);
      _os_log_impl(&_mh_execute_header, v16, v17, "#%s provideMaskIfNeeded", v18, 0xCu);
      sub_10000CF40(v19);
    }

    [v8 bounds];
    v21 = v20;
    v23 = v22;
    sub_10000E8AC();
    v24 = *(v9 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_asset);
    if (v11)
    {
      v25 = swift_allocObject();
      *(v25 + 16) = v21;
      *(v25 + 24) = v23;
      *(v25 + 32) = a3;
      *(v25 + 40) = a4;
      *(v25 + 48) = a5;
      *(v25 + 56) = a6;
      *(v25 + 64) = a2;
      v26 = a2;
    }

    else
    {
      v31 = swift_allocObject();
      *(v31 + 16) = v21;
      *(v31 + 24) = v23;
      *(v31 + 32) = a3;
      *(v31 + 40) = a4;
      *(v31 + 48) = a5;
      *(v31 + 56) = a6;
      *(v31 + 64) = 1;
    }

    v27 = sub_10000DCFC(sub_100017F9C, v21, v23);

    [v24 setTexture:v27];
    swift_unknownObjectRelease();
    sub_10000E198(0.2, v21, v23);
  }

  else
  {
    oslog = sub_10004CEDC();
    v28 = sub_10004D38C();
    if (os_log_type_enabled(oslog, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v28, "Unable to find mask manager", v29, 2u);
    }
  }

  return result;
}

uint64_t sub_100016048()
{
  v1 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 80);
  v5[4] = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 64);
  v5[5] = v1;
  v6[0] = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 96);
  *(v6 + 14) = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 110);
  v2 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 16);
  v5[0] = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration);
  v5[1] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 48);
  v5[2] = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 32);
  v5[3] = v3;
  return sub_10000CE08(v5);
}

uint64_t sub_1000160B0()
{
  v1 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger;
  v2 = sub_10004CEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_bubblePath);

  v4 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 80);
  v8[4] = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 64);
  v8[5] = v4;
  v9[0] = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 96);
  *(v9 + 14) = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 110);
  v5 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 16);
  v8[0] = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration);
  v8[1] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 48);
  v8[2] = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension39TranscriptBackgroundTapbackEventHandler_configuration + 32);
  v8[3] = v6;
  sub_10000CE08(v8);

  return swift_deallocClassInstance();
}

void sub_10001627C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType);
  switch(v5)
  {
    case 4:
      v12 = "keyboardWillShow";
      break;
    case 3:
      v12 = "keyboardFrameDidChange";
      break;
    case 2:
      type metadata accessor for KeyboardFrameDidChangeDataUpdate();
      swift_allocObject();

      v7 = sub_10000A778(v6);
      if (v7)
      {
        v8 = v7;
        v9 = swift_allocObject();
        v9[2] = v1;
        v9[3] = v8;
        v9[4] = a1;
        v9[5] = v4;

        v10 = sub_100017DC8;
        v11 = 3;
LABEL_32:
        sub_10000B44C(v11, v10);

        return;
      }

      goto LABEL_36;
    default:
      return;
  }

  if ((v12 | 0x8000000000000000) == 0x8000000100052F90)
  {
  }

  else
  {
    v13 = sub_10004D74C();

    if ((v13 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v14 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView);
  v15 = *(v14 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_effect);
  if (v15)
  {
    v16 = *(*v15 + 144);

    v16(0);
  }

  *(v14 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_keyboardIsUp) = 1;
LABEL_14:
  if (v5 == 4)
  {
    v17 = 0x8000000100052FB0;
  }

  else
  {
    v17 = 0x8000000100052F90;
  }

  if (0x8000000100052FB0 == v17)
  {
  }

  else
  {
    v18 = sub_10004D74C();

    if ((v18 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  *(*(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_keyboardIsUp) = 0;
LABEL_21:

  v19 = sub_10004CEDC();
  v20 = sub_10004D39C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67109120;
    *(v21 + 4) = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_fromTapbackContext);

    _os_log_impl(&_mh_execute_header, v19, v20, "from tapback? %{BOOL}d", v21, 8u);
  }

  else
  {
  }

  if (*(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_fromTapbackContext) != 1)
  {
    type metadata accessor for KeyboardVisibilityDataUpdate();
    swift_allocObject();

    v26 = sub_10000A908(v25);
    if (v26)
    {
      v27 = v26;
      v28 = swift_allocObject();
      v28[2] = v2;
      v28[3] = a1;
      v28[4] = v27;
      v28[5] = v4;

      if (v5 == 4)
      {
        v11 = 5;
      }

      else
      {
        v11 = 4;
      }

      v10 = sub_100017D74;
      goto LABEL_32;
    }

LABEL_36:
    oslog = sub_10004CEDC();
    v22 = sub_10004D38C();
    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Missing data for keyboard update";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  oslog = sub_10004CEDC();
  v22 = sub_10004D39C();
  if (os_log_type_enabled(oslog, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Ignoring keyboard will show since it was from a tapback context menu";
LABEL_38:
    _os_log_impl(&_mh_execute_header, oslog, v22, v24, v23, 2u);
  }

LABEL_39:
}

void sub_100016794(uint64_t a1, double *a2, uint64_t a3)
{
  sub_100017334(a1, a2[4], a2[5], a2[6], a2[7]);
  v4 = *(a3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);
  os_unfair_lock_lock(v4);
  v5 = *(a3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
  v6 = [v5 rootNode];
  v7 = sub_10004D05C();
  v8 = [v6 childNodeWithName:v7 recursively:1];

  if (v8)
  {
    sub_10000A584(v8);
    v9 = [v8 parameters];
    if (v9)
    {
      v10 = v9;
      isa = sub_10004D4FC().super.isa;
      v12 = sub_10004D05C();
      [v10 setObject:isa forKeyedSubscript:v12];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v8 = v5;
  }

  os_unfair_lock_unlock(v4);
}

void sub_100016940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v7 = sub_10004CF1C();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10004CF6C();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004CF0C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_10004CF8C();
  v15 = __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v44 - v19;
  v21 = *(a1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType);
  v56 = v18;
  v49 = v22;
  if (v21 <= 2 || v21 > 4)
  {
    goto LABEL_7;
  }

  v23 = "keyboardFrameDidChange";
  if (v21 != 3)
  {
    v23 = "keyboardWillShow";
  }

  if (0x8000000100052F90 == (v23 | 0x8000000000000000))
  {
  }

  else
  {
LABEL_7:
    v24 = sub_10004D74C();

    if ((v24 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  type metadata accessor for KeyboardVisibilityDataUpdate();
  swift_allocObject();

  v26 = sub_10000A908(v25);
  if (v26)
  {
    v27 = v26;
    if (*(v26 + 104))
    {

      goto LABEL_15;
    }

    v28 = *(v26 + 20) * 1000.0;
    if (COERCE_INT(fabs(v28)) > 2139095039)
    {
      __break(1u);
    }

    else if (v28 > -9.2234e18)
    {
      v47 = a3;
      if (v28 < 9.2234e18)
      {
        v29 = *(v26 + 72);
        v44 = *(v26 + 88);
        v45 = v29;
        v30 = v28;
        sub_10000D024(0, &unk_10006E3C0, OS_dispatch_queue_ptr);
        v46 = sub_10004D3DC();
        sub_10004CF7C();
        *v13 = v30;
        (*(v11 + 104))(v13, enum case for DispatchTimeInterval.milliseconds(_:), v10);
        sub_10004CF9C();
        (*(v11 + 8))(v13, v10);
        v49 = *(v49 + 8);
        (v49)(v17, v56);
        v31 = swift_allocObject();
        swift_weakInit();
        v32 = swift_allocObject();
        *(v32 + 16) = v31;
        v33 = v45;
        *(v32 + 40) = v44;
        *(v32 + 24) = v33;
        *(v32 + 56) = v27;
        *(v32 + 64) = a2;
        *(v32 + 72) = v48;
        aBlock[4] = sub_100017E10;
        aBlock[5] = v32;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10002FBD0;
        aBlock[3] = &unk_100066158;
        v34 = _Block_copy(aBlock);

        v35 = v50;
        sub_10004CF3C();
        aBlock[0] = &_swiftEmptyArrayStorage;
        sub_100017E40();
        sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
        sub_10000CD00();
        v36 = v52;
        v37 = v55;
        sub_10004D57C();
        v38 = v46;
        sub_10004D3BC();
        _Block_release(v34);

        (*(v54 + 8))(v36, v37);
        (*(v51 + 8))(v35, v53);
        (v49)(v20, v56);
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  v39 = *(a2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);
  os_unfair_lock_lock(v39);
  v40 = *(a2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
  v41 = [v40 rootNode];
  v42 = sub_10004D05C();
  v43 = [v41 childNodeWithName:v42 recursively:1];

  if (v43)
  {
    sub_10000AB30(v43);
  }

  os_unfair_lock_unlock(v39);
}

void sub_10001708C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView);

    v17 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = a5;
    *(v18 + 32) = a6;
    *(v18 + 40) = a7;
    *(v18 + 48) = a8;
    *(v18 + 56) = a2;
    *(v18 + 64) = a3;
    *(v18 + 72) = a4;

    sub_10000B44C(3, sub_100017EE0);
  }
}

void sub_1000171E8(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_100017334(Strong, a2, a3, a4, a5);
  }

  v13 = *(a7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);
  os_unfair_lock_lock(v13);
  v14 = *(a7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
  v15 = [v14 rootNode];
  v16 = sub_10004D05C();
  v17 = [v15 childNodeWithName:v16 recursively:1];

  if (v17)
  {
    sub_10000AB30(v17);
  }

  os_unfair_lock_unlock(v13);
}

void sub_100017334(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView);
  v7 = *&v6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_maskManager];
  if (v7)
  {

    [v6 frame];
    v13 = v12;
    v15 = v14;
    sub_10000E8AC();
    v16 = *(v7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11MaskManager_asset);
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    *(v17 + 24) = v15;
    *(v17 + 32) = a2;
    *(v17 + 40) = a3;
    *(v17 + 48) = a4;
    *(v17 + 56) = a5;
    *(v17 + 64) = 2;
    v18 = sub_10000DCFC(sub_100017D6C, v13, v15);

    [v16 setTexture:v18];
    swift_unknownObjectRelease();
    sub_10000E198(0.2, v13, v15);
  }

  else
  {
    oslog = sub_10004CEDC();
    v19 = sub_10004D38C();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v19, "Unable to retrieve mask manager", v20, 2u);
    }
  }
}

uint64_t sub_10001761C()
{
  v1 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_logger;
  v2 = sub_10004CEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_100017794(uint64_t a1)
{
  sub_10004D5EC();
  if (!*(a1 + 16) || (v2 = sub_1000330C8(v17), (v3 & 1) == 0))
  {
    sub_10000CFD0(v17);
LABEL_6:
    v4 = sub_10004CEDC();
    v9 = sub_10004D38C();
    if (os_log_type_enabled(v4, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v9, "Unable to find bubble path from metadata, returning default path", v10, 2u);
    }

    goto LABEL_8;
  }

  sub_10000C7F0(*(a1 + 56) + 32 * v2, v18);
  sub_10000CFD0(v17);
  sub_10000D024(0, &qword_10006F3B8, NSData_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = 0x6150656C62627562;
  sub_10000D024(0, &qword_10006F3C0, NSKeyedUnarchiver_ptr);
  sub_10000D024(0, &qword_10006F3C8, UIBezierPath_ptr);
  v5 = sub_10004CD5C();
  v7 = v6;
  v8 = sub_10004D3AC();
  sub_100017C6C(v5, v7);
  v12 = sub_10004CEDC();
  v13 = sub_10004D39C();
  if (os_log_type_enabled(v12, v13))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Found bubble path, returning corresponding cgPath", v15, 2u);
  }

  if (v8)
  {
    v16 = [v8 CGPath];

    return v16;
  }

LABEL_8:

  return 0;
}

void sub_100017AF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension49TranscriptBackgroundUpdateActiveStateEventHandler_active);
  v2 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView;
  if ((v1 & 1) == 0)
  {
    v3 = *(*(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView) + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_effect);
    if (v3)
    {
      v4 = *(*v3 + 144);

      v4(1);

      v2 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension36TranscriptBackgroundEventHandlerBase_backingView;
    }
  }

  v5 = *(*(v0 + v2) + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager);
  if (v5)
  {
    *(v5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension16LifecycleManager_hostAllowsRunning) = v1;
    if (v1)
    {
      v6 = 0x657669746361;
    }

    else
    {
      v6 = 0x6576697463616E69;
    }

    if (v1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    v8._countAndFlagsBits = v6;
    v8._object = v7;
    sub_10004D16C(v8);

    sub_100020A98(0x2074736F48, 0xE500000000000000);
  }

  if (v1)
  {
    sub_10000B44C(0, 0);
  }
}

double sub_100017C6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_100017CC0(uint64_t a1)
{
  v2 = sub_10000CC1C(&qword_1000703F0, &qword_100050B90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100017D28()
{
  v1 = *(v0 + 64);
  if ((v1 - 1) >= 2)
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100017D80()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100017DD4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100017E28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100017E40()
{
  result = qword_1000708A0;
  if (!qword_1000708A0)
  {
    sub_10004CF1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000708A0);
  }

  return result;
}

uint64_t sub_100017E98()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100017F2C()
{

  return _swift_deallocObject(v0, 72, 7);
}

void sub_100017FA0(void *a1, uint64_t a2, __n128 a3, __n128 a4, double a5)
{
  v31 = a3;
  v32 = a4;
  v6 = sub_10004CEFC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 rootNode];
  v11 = sub_10004D05C();
  v33 = [v10 childNodeWithName:v11 recursively:1];

  if (v33)
  {
    v12 = objc_opt_self();
    [v12 begin];
    v13 = [v33 parameters];
    if (v13)
    {
      v14 = v13;
      v15 = [objc_opt_self() valueWithVFXFloat3:v31.n128_f64[0]];
      v16 = sub_10004D05C();
      [v14 setObject:v15 forKeyedSubscript:v16];
      swift_unknownObjectRelease();
    }

    v17 = [v33 parameters];
    if (v17)
    {
      v18 = v17;
      v19 = [objc_opt_self() valueWithVFXFloat4:v32.n128_f64[0]];
      v20 = sub_10004D05C();
      [v18 setObject:v19 forKeyedSubscript:v20];
      swift_unknownObjectRelease();
    }

    v21 = [v33 parameters];
    if (v21)
    {
      v22 = v21;
      isa = sub_10004D2DC().super.super.isa;
      v24 = sub_10004D05C();
      [v22 setObject:isa forKeyedSubscript:v24];
      swift_unknownObjectRelease();
    }

    [v12 commit];
    v25 = v33;
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v27 = Strong;
      (*(v7 + 16))(v9, Strong + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_logger, v6);

      v28 = sub_10004CEDC();
      v29 = sub_10004D36C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Could not find parametersNode", v30, 2u);
      }

      (*(v7 + 8))(v9, v6);
    }
  }
}

id sub_100018394@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 deviceMotionRotation];
  v4 = sub_10004D40C();
  sub_1000184BC(v18, v4, &v16);
  v11 = v16;
  v5 = *v17;
  [a1 deviceMotionRotation];
  v13 = v16.f64[0];
  [a1 deviceMotionRotation];
  v14 = __PAIR128__(*&v16.f64[1], *&v13);
  [a1 deviceMotionRotation];
  v10 = v17[0];
  [a1 deviceMotionRotation];
  v15 = vcvt_hight_f32_f64(vcvt_f32_f64(v14), __PAIR128__(v17[1], v10));
  *&v6 = vcvt_f32_f64(v11);
  *&v7 = v5;
  *(&v6 + 1) = v7;
  v12 = v6;
  result = [a1 deviceMotionUpdateInterval];
  *a2 = v12;
  *(a2 + 16) = v15;
  *(a2 + 32) = v9;
  *(a2 + 40) = 0;
  return result;
}

void sub_1000184BC(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  _Q1 = *a1;
  if (a2 == 2)
  {
    v6 = *a1;
    _Q1.i64[0] = *(a1 + 16);
  }

  else if (a2 == 1)
  {
    v6 = vextq_s8(_Q1, *(a1 + 16), 8uLL);
  }

  else
  {
    v6 = 0uLL;
    _Q1.i64[0] = 0;
  }

  v7 = *(a1 + 24);
  v25 = v6;
  _D9 = v6.f64[1];
  _V4.D[1] = v7;
  __asm { FMLA            D0, D1, V4.D[1] }

  v26 = *_Q1.i64;
  *&v15 = atan2(_D0 + _D0, (vmulq_f64(v6, v6).f64[0] + *_Q1.i64 * *_Q1.i64) * -2.0 + 1.0);
  v24 = v15;
  v16 = v7 * v25.f64[0] - _D9 * v26 + v7 * v25.f64[0] - _D9 * v26;
  if (v16 > 1.0)
  {
    v16 = 1.0;
  }

  if (v16 < -1.0)
  {
    v16 = -1.0;
  }

  v23 = asin(v16);
  _V2.D[1] = v25.f64[1];
  _V4.D[1] = v7;
  __asm { FMLA            D0, D9, V4.D[1] }

  *&_D0 = _D0 + _D0;
  __asm { FMLA            D1, D9, V2.D[1] }

  *&_D1 = _D1 * -2.0 + 1.0;
  *&v21 = atan2f(*&_D0, *&_D1);
  if (a2 == 2)
  {
    *v22.i64 = v23;
    v22.i64[1] = v21;
    v21 = v24;
  }

  else if (a2 == 1)
  {
    v22.i64[0] = v24;
    *&v22.i64[1] = v23;
  }

  else
  {
    v22 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v21 = 0x7FF8000000000000;
  }

  *a3 = v22;
  *(a3 + 16) = v21;
  *(a3 + 32) = a2;
}