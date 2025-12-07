void AXMCEnableControlCenterModule()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 BOOLForKey:@"AXMotionCuesNewCCModuleEnabled"];

  if ((v1 & 1) == 0)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v2 = qword_4D740;
    v17 = qword_4D740;
    if (!qword_4D740)
    {
      v9 = _NSConcreteStackBlock;
      v10 = 3221225472;
      v11 = sub_2344;
      v12 = &unk_45208;
      v13 = &v14;
      sub_2344(&v9);
      v2 = v15[3];
    }

    v3 = v2;
    _Block_object_dispose(&v14, 8);
    v4 = [[v2 alloc] initWithIntent:2 moduleIdentifier:@"com.apple.accessibility.controlcenter.motioncues" containerBundleIdentifier:@"com.apple.AccessibilityUIServer" size:0];
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v5 = qword_4D750;
    v17 = qword_4D750;
    if (!qword_4D750)
    {
      v9 = _NSConcreteStackBlock;
      v10 = 3221225472;
      v11 = sub_250C;
      v12 = &unk_45208;
      v13 = &v14;
      sub_250C(&v9);
      v5 = v15[3];
    }

    v6 = v5;
    _Block_object_dispose(&v14, 8);
    v7 = [v5 sharedInstance];
    [v7 handleIconElementRequest:v4 completionHandler:&stru_451E0];

    v8 = +[NSUserDefaults standardUserDefaults];
    [v8 setBool:1 forKey:@"AXMotionCuesNewCCModuleEnabled"];
  }
}

void sub_2264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2280(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = AXLogMotionCues();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = v4;
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Added Motion Cues: %@ success: %d", &v6, 0x12u);
  }
}

void sub_2344(uint64_t a1)
{
  sub_239C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CCSIconElementRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_4D740 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_32404();
    sub_239C();
  }
}

void sub_239C()
{
  v1[0] = 0;
  if (!qword_4D748)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_2498;
    v1[4] = &unk_45240;
    v1[5] = v1;
    v2 = off_45228;
    v3 = 0;
    qword_4D748 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_4D748)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_2498(uint64_t a1)
{
  result = _sl_dlopen();
  qword_4D748 = result;
  return result;
}

Class sub_250C(uint64_t a1)
{
  sub_239C();
  result = objc_getClass("CCSControlCenterService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_4D750 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_3242C();
    return [(AXMCNoAnimationElementLayer *)v3 defaultActionForKey:v4, v5];
  }

  return result;
}

float Main_VMCParticles_graph_D14BD358_5A4C_44CD_857B_DA21F753D187(const void *a1, unsigned int a2, float a3, float a4, float a5, float a6, float *a7)
{
  vfx_script_clock_delta_time();
  v10 = v9 + v9;
  v11 = vmul_n_f32(__PAIR64__(LODWORD(a6), LODWORD(a4)), a5);
  if (sqrtf(vaddv_f32(vmul_f32(v11, v11))) < 0.1)
  {
    v10 = -v10;
  }

  result = fminf(fmaxf(v10 + a3, 0.0), 1.0);
  *a7 = result;
  return result;
}

float __vfx_script_VMCParticles_graph_D14BD358_5A4C_44CD_857B_DA21F753D187(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 48);
  v3 = **(arguments_buffer + 16);
  v4.i32[0] = **(arguments_buffer + 24);
  v4.i32[1] = **(arguments_buffer + 40);
  v9 = v4;
  v10 = **(arguments_buffer + 32);
  vfx_script_clock_delta_time();
  v6 = v5 + v5;
  v7 = vmul_n_f32(v9, v10);
  if (sqrtf(vaddv_f32(vmul_f32(v7, v7))) < 0.1)
  {
    v6 = -v6;
  }

  result = fminf(fmaxf(v3 + v6, 0.0), 1.0);
  *v2 = result;
  return result;
}

float Init_VMCParticles_graph_6B70C51E_4F3C_471B_B2A6_82E6EAEB4C2E(uint64_t a1, int a2, float *a3, float *a4, float a5, float32x2_t a6)
{
  v10 = vfx_script_clock_simulation_index();
  v11 = 277803737 * (((747796405 * (v10 + a2) + 213991105) >> (((747796405 * (v10 + a2) + 213991105) >> 28) + 4)) ^ (747796405 * (v10 + a2) + 213991105));
  v12 = (fminf(fmaxf(a5, 0.0), 1.0) * 1.77) + 0.23;
  v13 = v12 * (((COERCE_FLOAT((v11 >> 31) ^ (v11 >> 9) | 0x3F800000) + -1.0) * 0.3) + 0.7);
  v14 = vfx_script_clock_simulation_index();
  v15 = 277803737 * (((747796405 * (v14 + a2) + 961787510) >> (((747796405 * (v14 + a2) + 961787510) >> 28) + 4)) ^ (747796405 * (v14 + a2) + 961787510));
  v16 = v12 * (((COERCE_FLOAT((v15 >> 31) ^ (v15 >> 9) | 0x3F800000) + -1.0) * 0.45) + 0.85);
  *a3 = fminf(v13, v16);
  a3[1] = fmaxf(v13, v16);
  result = vmuls_lane_f32(0.8, a6, 1);
  *a4 = result;
  a4[1] = result;
  return result;
}

float __vfx_script_VMCParticles_graph_6B70C51E_4F3C_471B_B2A6_82E6EAEB4C2E(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 32);
  v3 = *(arguments_buffer + 40);
  v4 = **(arguments_buffer + 8);
  v5 = **(arguments_buffer + 16);
  v14 = **(arguments_buffer + 24);
  v6 = vfx_script_clock_simulation_index();
  v7 = 277803737 * (((747796405 * (v6 + v4) + 213991105) >> (((747796405 * (v6 + v4) + 213991105) >> 28) + 4)) ^ (747796405 * (v6 + v4) + 213991105));
  v8 = (fminf(fmaxf(v5, 0.0), 1.0) * 1.77) + 0.23;
  v9 = v8 * (((COERCE_FLOAT((v7 >> 31) ^ (v7 >> 9) | 0x3F800000) + -1.0) * 0.3) + 0.7);
  v10 = vfx_script_clock_simulation_index();
  v11 = 277803737 * (((747796405 * (v10 + v4) + 961787510) >> (((747796405 * (v10 + v4) + 961787510) >> 28) + 4)) ^ (747796405 * (v10 + v4) + 961787510));
  v12 = v8 * (((COERCE_FLOAT((v11 >> 31) ^ (v11 >> 9) | 0x3F800000) + -1.0) * 0.45) + 0.85);
  *v2 = fminf(v9, v12);
  v2[1] = fmaxf(v9, v12);
  result = vmuls_lane_f32(0.8, v14, 1);
  *v3 = result;
  v3[1] = result;
  return result;
}

int8x16_t Update_VMCParticles_graph_9B0E811A_707E_4030_A430_3744E9E60E1E(float32x2_t a1, float a2, float32_t a3, uint64_t a4, uint64_t a5, int8x16_t *a6)
{
  a1.f32[1] = a3;
  *result.i8 = vmul_f32(vmul_n_f32(a1, a2), vdup_n_s32(0x3FE66666u));
  result.i64[1] = vextq_s8(*a6, *a6, 8uLL).u64[0];
  *a6 = result;
  return result;
}

int8x16_t __vfx_script_VMCParticles_graph_9B0E811A_707E_4030_A430_3744E9E60E1E(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 40);
  v3.i32[0] = **(arguments_buffer + 16);
  v3.i32[1] = **(arguments_buffer + 32);
  *result.i8 = vmul_f32(vmul_n_f32(v3, **(arguments_buffer + 24)), vdup_n_s32(0x3FE66666u));
  result.i64[1] = vextq_s8(*v2, *v2, 8uLL).u64[0];
  *v2 = result;
  return result;
}

float Main_VMCParticles_graph_F7B532B2_9AE7_45C6_A40D_B36AEB9766A9(const void *a1, unsigned int a2, float a3, float a4, float a5, float a6, float *a7)
{
  vfx_script_clock_delta_time();
  v10 = v9 + v9;
  v11 = vmul_n_f32(__PAIR64__(LODWORD(a6), LODWORD(a4)), a5);
  if (sqrtf(vaddv_f32(vmul_f32(v11, v11))) < 0.1)
  {
    v10 = -v10;
  }

  result = fminf(fmaxf(v10 + a3, 0.0), 1.0);
  *a7 = result;
  return result;
}

float __vfx_script_VMCParticles_graph_F7B532B2_9AE7_45C6_A40D_B36AEB9766A9(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 48);
  v3 = **(arguments_buffer + 16);
  v4.i32[0] = **(arguments_buffer + 24);
  v4.i32[1] = **(arguments_buffer + 40);
  v9 = v4;
  v10 = **(arguments_buffer + 32);
  vfx_script_clock_delta_time();
  v6 = v5 + v5;
  v7 = vmul_n_f32(v9, v10);
  if (sqrtf(vaddv_f32(vmul_f32(v7, v7))) < 0.1)
  {
    v6 = -v6;
  }

  result = fminf(fmaxf(v3 + v6, 0.0), 1.0);
  *v2 = result;
  return result;
}

float Init_VMCParticles_graph_4A198295_DC75_4F06_8959_F93900DED002(uint64_t a1, int a2, float *a3, float *a4, float a5, float32x2_t a6)
{
  v10 = vfx_script_clock_simulation_index();
  v11 = 277803737 * (((747796405 * (v10 + a2) + 213991105) >> (((747796405 * (v10 + a2) + 213991105) >> 28) + 4)) ^ (747796405 * (v10 + a2) + 213991105));
  v12 = (fminf(fmaxf(a5, 0.0), 1.0) * 1.7) + 0.3;
  v13 = v12 * (((COERCE_FLOAT((v11 >> 31) ^ (v11 >> 9) | 0x3F800000) + -1.0) * 0.3) + 0.7);
  v14 = vfx_script_clock_simulation_index();
  v15 = 277803737 * (((747796405 * (v14 + a2) + 961787510) >> (((747796405 * (v14 + a2) + 961787510) >> 28) + 4)) ^ (747796405 * (v14 + a2) + 961787510));
  v16 = v12 * (((COERCE_FLOAT((v15 >> 31) ^ (v15 >> 9) | 0x3F800000) + -1.0) * 0.37) + 0.82);
  *a3 = fminf(v13, v16);
  a3[1] = fmaxf(v13, v16);
  result = vmuls_lane_f32(0.8, a6, 1);
  *a4 = result;
  a4[1] = result;
  return result;
}

float __vfx_script_VMCParticles_graph_4A198295_DC75_4F06_8959_F93900DED002(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 32);
  v3 = *(arguments_buffer + 40);
  v4 = **(arguments_buffer + 8);
  v5 = **(arguments_buffer + 16);
  v14 = **(arguments_buffer + 24);
  v6 = vfx_script_clock_simulation_index();
  v7 = 277803737 * (((747796405 * (v6 + v4) + 213991105) >> (((747796405 * (v6 + v4) + 213991105) >> 28) + 4)) ^ (747796405 * (v6 + v4) + 213991105));
  v8 = (fminf(fmaxf(v5, 0.0), 1.0) * 1.7) + 0.3;
  v9 = v8 * (((COERCE_FLOAT((v7 >> 31) ^ (v7 >> 9) | 0x3F800000) + -1.0) * 0.3) + 0.7);
  v10 = vfx_script_clock_simulation_index();
  v11 = 277803737 * (((747796405 * (v10 + v4) + 961787510) >> (((747796405 * (v10 + v4) + 961787510) >> 28) + 4)) ^ (747796405 * (v10 + v4) + 961787510));
  v12 = v8 * (((COERCE_FLOAT((v11 >> 31) ^ (v11 >> 9) | 0x3F800000) + -1.0) * 0.37) + 0.82);
  *v2 = fminf(v9, v12);
  v2[1] = fmaxf(v9, v12);
  result = vmuls_lane_f32(0.8, v14, 1);
  *v3 = result;
  v3[1] = result;
  return result;
}

int8x16_t Update_VMCParticles_graph_DFB13BBA_34C8_42E8_A347_EB31A3FB78CA(float32x2_t a1, float a2, float32_t a3, uint64_t a4, uint64_t a5, int8x16_t *a6)
{
  a1.f32[1] = a3;
  v6 = vmul_n_f32(a1, a2);
  __asm { FMOV            V1.2S, #2.5 }

  *result.i8 = vmul_f32(v6, _D1);
  result.i64[1] = vextq_s8(*a6, *a6, 8uLL).u64[0];
  *a6 = result;
  return result;
}

int8x16_t __vfx_script_VMCParticles_graph_DFB13BBA_34C8_42E8_A347_EB31A3FB78CA(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 40);
  v3.i32[0] = **(arguments_buffer + 16);
  v3.i32[1] = **(arguments_buffer + 32);
  __asm { FMOV            V1.2S, #2.5 }

  *result.i8 = vmul_f32(vmul_n_f32(v3, **(arguments_buffer + 24)), _D1);
  result.i64[1] = vextq_s8(*v2, *v2, 8uLL).u64[0];
  *v2 = result;
  return result;
}

float Main_VMCParticles_graph_C4548059_82A6_4CBF_B4FB_D76B9D211F48(const void *a1, unsigned int a2, float a3, float a4, float a5, float a6, float *a7)
{
  vfx_script_clock_delta_time();
  v10 = v9 + v9;
  v11 = vmul_n_f32(__PAIR64__(LODWORD(a6), LODWORD(a4)), a5);
  if (sqrtf(vaddv_f32(vmul_f32(v11, v11))) < 0.1)
  {
    v10 = -v10;
  }

  result = fminf(fmaxf(v10 + a3, 0.0), 1.0);
  *a7 = result;
  return result;
}

float __vfx_script_VMCParticles_graph_C4548059_82A6_4CBF_B4FB_D76B9D211F48(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 48);
  v3 = **(arguments_buffer + 16);
  v4.i32[0] = **(arguments_buffer + 24);
  v4.i32[1] = **(arguments_buffer + 40);
  v9 = v4;
  v10 = **(arguments_buffer + 32);
  vfx_script_clock_delta_time();
  v6 = v5 + v5;
  v7 = vmul_n_f32(v9, v10);
  if (sqrtf(vaddv_f32(vmul_f32(v7, v7))) < 0.1)
  {
    v6 = -v6;
  }

  result = fminf(fmaxf(v3 + v6, 0.0), 1.0);
  *v2 = result;
  return result;
}

float Init_VMCParticles_graph_265BA9EA_595A_4894_96D9_87E6E83DFEA0(uint64_t a1, int a2, float *a3, float *a4, float a5, float32x2_t a6)
{
  v10 = vfx_script_clock_simulation_index();
  v11 = 277803737 * (((747796405 * (v10 + a2) + 213991105) >> (((747796405 * (v10 + a2) + 213991105) >> 28) + 4)) ^ (747796405 * (v10 + a2) + 213991105));
  v12 = (fminf(fmaxf(a5, 0.0), 1.0) * 1.66) + 0.44;
  v13 = v12 * (((COERCE_FLOAT((v11 >> 31) ^ (v11 >> 9) | 0x3F800000) + -1.0) * 0.3) + 0.7);
  v14 = vfx_script_clock_simulation_index();
  v15 = 277803737 * (((747796405 * (v14 + a2) + 961787510) >> (((747796405 * (v14 + a2) + 961787510) >> 28) + 4)) ^ (747796405 * (v14 + a2) + 961787510));
  v16 = v12 * (((COERCE_FLOAT((v15 >> 31) ^ (v15 >> 9) | 0x3F800000) + -1.0) * 0.45) + 0.85);
  *a3 = fminf(v13, v16);
  a3[1] = fmaxf(v13, v16);
  result = vmuls_lane_f32(0.8, a6, 1);
  *a4 = result;
  a4[1] = result;
  return result;
}

float __vfx_script_VMCParticles_graph_265BA9EA_595A_4894_96D9_87E6E83DFEA0(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 32);
  v3 = *(arguments_buffer + 40);
  v4 = **(arguments_buffer + 8);
  v5 = **(arguments_buffer + 16);
  v14 = **(arguments_buffer + 24);
  v6 = vfx_script_clock_simulation_index();
  v7 = 277803737 * (((747796405 * (v6 + v4) + 213991105) >> (((747796405 * (v6 + v4) + 213991105) >> 28) + 4)) ^ (747796405 * (v6 + v4) + 213991105));
  v8 = (fminf(fmaxf(v5, 0.0), 1.0) * 1.66) + 0.44;
  v9 = v8 * (((COERCE_FLOAT((v7 >> 31) ^ (v7 >> 9) | 0x3F800000) + -1.0) * 0.3) + 0.7);
  v10 = vfx_script_clock_simulation_index();
  v11 = 277803737 * (((747796405 * (v10 + v4) + 961787510) >> (((747796405 * (v10 + v4) + 961787510) >> 28) + 4)) ^ (747796405 * (v10 + v4) + 961787510));
  v12 = v8 * (((COERCE_FLOAT((v11 >> 31) ^ (v11 >> 9) | 0x3F800000) + -1.0) * 0.45) + 0.85);
  *v2 = fminf(v9, v12);
  v2[1] = fmaxf(v9, v12);
  result = vmuls_lane_f32(0.8, v14, 1);
  *v3 = result;
  v3[1] = result;
  return result;
}

int8x16_t Update_VMCParticles_graph_C784AF34_9A29_43E6_9CDB_82AD4547CB32(float32x2_t a1, float a2, float32_t a3, uint64_t a4, uint64_t a5, int8x16_t *a6)
{
  a1.f32[1] = a3;
  v6 = vmul_n_f32(a1, a2);
  __asm { FMOV            V1.2S, #3.0 }

  *result.i8 = vmul_f32(v6, _D1);
  result.i64[1] = vextq_s8(*a6, *a6, 8uLL).u64[0];
  *a6 = result;
  return result;
}

int8x16_t __vfx_script_VMCParticles_graph_C784AF34_9A29_43E6_9CDB_82AD4547CB32(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 40);
  v3.i32[0] = **(arguments_buffer + 16);
  v3.i32[1] = **(arguments_buffer + 32);
  __asm { FMOV            V1.2S, #3.0 }

  *result.i8 = vmul_f32(vmul_n_f32(v3, **(arguments_buffer + 24)), _D1);
  result.i64[1] = vextq_s8(*v2, *v2, 8uLL).u64[0];
  *v2 = result;
  return result;
}

float Main_VMCParticles_graph_0DD834A1_B7FF_4320_AD59_A0B54CB50D44(const void *a1, unsigned int a2, float a3, float a4, float a5, float a6, float *a7)
{
  vfx_script_clock_delta_time();
  v10 = v9 + v9;
  v11 = vmul_n_f32(__PAIR64__(LODWORD(a6), LODWORD(a4)), a5);
  if (sqrtf(vaddv_f32(vmul_f32(v11, v11))) < 0.1)
  {
    v10 = -v10;
  }

  result = fminf(fmaxf(v10 + a3, 0.0), 1.0);
  *a7 = result;
  return result;
}

float __vfx_script_VMCParticles_graph_0DD834A1_B7FF_4320_AD59_A0B54CB50D44(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 48);
  v3 = **(arguments_buffer + 16);
  v4.i32[0] = **(arguments_buffer + 24);
  v4.i32[1] = **(arguments_buffer + 40);
  v9 = v4;
  v10 = **(arguments_buffer + 32);
  vfx_script_clock_delta_time();
  v6 = v5 + v5;
  v7 = vmul_n_f32(v9, v10);
  if (sqrtf(vaddv_f32(vmul_f32(v7, v7))) < 0.1)
  {
    v6 = -v6;
  }

  result = fminf(fmaxf(v3 + v6, 0.0), 1.0);
  *v2 = result;
  return result;
}

float Init_VMCParticles_graph_E4543F5A_7B7D_4E0E_830E_24C1190836B4(uint64_t a1, int a2, float *a3, float *a4, float a5, float32x2_t a6)
{
  v10 = vfx_script_clock_simulation_index();
  v11 = 277803737 * (((747796405 * (v10 + a2) + 213991105) >> (((747796405 * (v10 + a2) + 213991105) >> 28) + 4)) ^ (747796405 * (v10 + a2) + 213991105));
  v12 = (fminf(fmaxf(a5, 0.0), 1.0) * 2.18) + 0.22;
  v13 = v12 * (((COERCE_FLOAT((v11 >> 31) ^ (v11 >> 9) | 0x3F800000) + -1.0) * 0.3) + 0.7);
  v14 = vfx_script_clock_simulation_index();
  v15 = 277803737 * (((747796405 * (v14 + a2) + 961787510) >> (((747796405 * (v14 + a2) + 961787510) >> 28) + 4)) ^ (747796405 * (v14 + a2) + 961787510));
  v16 = v12 * (((COERCE_FLOAT((v15 >> 31) ^ (v15 >> 9) | 0x3F800000) + -1.0) * 0.37) + 0.93);
  *a3 = fminf(v13, v16);
  a3[1] = fmaxf(v13, v16);
  result = vmuls_lane_f32(0.8, a6, 1);
  *a4 = result;
  a4[1] = result;
  return result;
}

float __vfx_script_VMCParticles_graph_E4543F5A_7B7D_4E0E_830E_24C1190836B4(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 32);
  v3 = *(arguments_buffer + 40);
  v4 = **(arguments_buffer + 8);
  v5 = **(arguments_buffer + 16);
  v14 = **(arguments_buffer + 24);
  v6 = vfx_script_clock_simulation_index();
  v7 = 277803737 * (((747796405 * (v6 + v4) + 213991105) >> (((747796405 * (v6 + v4) + 213991105) >> 28) + 4)) ^ (747796405 * (v6 + v4) + 213991105));
  v8 = (fminf(fmaxf(v5, 0.0), 1.0) * 2.18) + 0.22;
  v9 = v8 * (((COERCE_FLOAT((v7 >> 31) ^ (v7 >> 9) | 0x3F800000) + -1.0) * 0.3) + 0.7);
  v10 = vfx_script_clock_simulation_index();
  v11 = 277803737 * (((747796405 * (v10 + v4) + 961787510) >> (((747796405 * (v10 + v4) + 961787510) >> 28) + 4)) ^ (747796405 * (v10 + v4) + 961787510));
  v12 = v8 * (((COERCE_FLOAT((v11 >> 31) ^ (v11 >> 9) | 0x3F800000) + -1.0) * 0.37) + 0.93);
  *v2 = fminf(v9, v12);
  v2[1] = fmaxf(v9, v12);
  result = vmuls_lane_f32(0.8, v14, 1);
  *v3 = result;
  v3[1] = result;
  return result;
}

int8x16_t Update_VMCParticles_graph_905058BC_E3B2_4481_9416_B3A2CA68D452(float32x2_t a1, float a2, float32_t a3, uint64_t a4, uint64_t a5, int8x16_t *a6)
{
  a1.f32[1] = a3;
  v6 = vmul_n_f32(a1, a2);
  __asm { FMOV            V1.2S, #4.0 }

  *result.i8 = vmul_f32(v6, _D1);
  result.i64[1] = vextq_s8(*a6, *a6, 8uLL).u64[0];
  *a6 = result;
  return result;
}

int8x16_t __vfx_script_VMCParticles_graph_905058BC_E3B2_4481_9416_B3A2CA68D452(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 40);
  v3.i32[0] = **(arguments_buffer + 16);
  v3.i32[1] = **(arguments_buffer + 32);
  __asm { FMOV            V1.2S, #4.0 }

  *result.i8 = vmul_f32(vmul_n_f32(v3, **(arguments_buffer + 24)), _D1);
  result.i64[1] = vextq_s8(*v2, *v2, 8uLL).u64[0];
  *v2 = result;
  return result;
}

float Main_VMCParticles_graph_BDE95487_4162_40D7_890D_AF0D10F1E2E6(const void *a1, unsigned int a2, float a3, float a4, float a5, float a6, float *a7)
{
  vfx_script_clock_delta_time();
  v10 = v9 + v9;
  v11 = vmul_n_f32(__PAIR64__(LODWORD(a6), LODWORD(a4)), a5);
  if (sqrtf(vaddv_f32(vmul_f32(v11, v11))) < 0.1)
  {
    v10 = -v10;
  }

  result = fminf(fmaxf(v10 + a3, 0.0), 1.0);
  *a7 = result;
  return result;
}

float __vfx_script_VMCParticles_graph_BDE95487_4162_40D7_890D_AF0D10F1E2E6(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 48);
  v3 = **(arguments_buffer + 16);
  v4.i32[0] = **(arguments_buffer + 24);
  v4.i32[1] = **(arguments_buffer + 40);
  v9 = v4;
  v10 = **(arguments_buffer + 32);
  vfx_script_clock_delta_time();
  v6 = v5 + v5;
  v7 = vmul_n_f32(v9, v10);
  if (sqrtf(vaddv_f32(vmul_f32(v7, v7))) < 0.1)
  {
    v6 = -v6;
  }

  result = fminf(fmaxf(v3 + v6, 0.0), 1.0);
  *v2 = result;
  return result;
}

float Init_VMCParticles_graph_143CF007_90B2_44ED_9E8A_7E11720AE771(uint64_t a1, int a2, float *a3, float *a4, float a5, float32x2_t a6)
{
  v10 = vfx_script_clock_simulation_index();
  v11 = 277803737 * (((747796405 * (v10 + a2) + 213991105) >> (((747796405 * (v10 + a2) + 213991105) >> 28) + 4)) ^ (747796405 * (v10 + a2) + 213991105));
  v12 = (fminf(fmaxf(a5, 0.0), 1.0) * 1.48) + 0.35;
  v13 = v12 * (((COERCE_FLOAT((v11 >> 31) ^ (v11 >> 9) | 0x3F800000) + -1.0) * 0.3) + 0.7);
  v14 = vfx_script_clock_simulation_index();
  v15 = 277803737 * (((747796405 * (v14 + a2) + 961787510) >> (((747796405 * (v14 + a2) + 961787510) >> 28) + 4)) ^ (747796405 * (v14 + a2) + 961787510));
  v16 = v12 * (((COERCE_FLOAT((v15 >> 31) ^ (v15 >> 9) | 0x3F800000) + -1.0) * 0.25) + 1.0);
  *a3 = fminf(v13, v16);
  a3[1] = fmaxf(v13, v16);
  result = vmuls_lane_f32(0.8, a6, 1);
  *a4 = result;
  a4[1] = result;
  return result;
}

float __vfx_script_VMCParticles_graph_143CF007_90B2_44ED_9E8A_7E11720AE771(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 32);
  v3 = *(arguments_buffer + 40);
  v4 = **(arguments_buffer + 8);
  v5 = **(arguments_buffer + 16);
  v14 = **(arguments_buffer + 24);
  v6 = vfx_script_clock_simulation_index();
  v7 = 277803737 * (((747796405 * (v6 + v4) + 213991105) >> (((747796405 * (v6 + v4) + 213991105) >> 28) + 4)) ^ (747796405 * (v6 + v4) + 213991105));
  v8 = (fminf(fmaxf(v5, 0.0), 1.0) * 1.48) + 0.35;
  v9 = v8 * (((COERCE_FLOAT((v7 >> 31) ^ (v7 >> 9) | 0x3F800000) + -1.0) * 0.3) + 0.7);
  v10 = vfx_script_clock_simulation_index();
  v11 = 277803737 * (((747796405 * (v10 + v4) + 961787510) >> (((747796405 * (v10 + v4) + 961787510) >> 28) + 4)) ^ (747796405 * (v10 + v4) + 961787510));
  v12 = v8 * (((COERCE_FLOAT((v11 >> 31) ^ (v11 >> 9) | 0x3F800000) + -1.0) * 0.25) + 1.0);
  *v2 = fminf(v9, v12);
  v2[1] = fmaxf(v9, v12);
  result = vmuls_lane_f32(0.8, v14, 1);
  *v3 = result;
  v3[1] = result;
  return result;
}

int8x16_t Update_VMCParticles_graph_15C613AA_44A8_49BE_A8F4_1D6E7B43C6F0(float32x2_t a1, float a2, float32_t a3, uint64_t a4, uint64_t a5, int8x16_t *a6)
{
  a1.f32[1] = a3;
  v6 = vmul_n_f32(a1, a2);
  __asm { FMOV            V1.2S, #3.0 }

  *result.i8 = vmul_f32(v6, _D1);
  result.i64[1] = vextq_s8(*a6, *a6, 8uLL).u64[0];
  *a6 = result;
  return result;
}

int8x16_t __vfx_script_VMCParticles_graph_15C613AA_44A8_49BE_A8F4_1D6E7B43C6F0(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 40);
  v3.i32[0] = **(arguments_buffer + 16);
  v3.i32[1] = **(arguments_buffer + 32);
  __asm { FMOV            V1.2S, #3.0 }

  *result.i8 = vmul_f32(vmul_n_f32(v3, **(arguments_buffer + 24)), _D1);
  result.i64[1] = vextq_s8(*v2, *v2, 8uLL).u64[0];
  *v2 = result;
  return result;
}

float Main_VMCParticles_graph_AED1689A_93E2_4771_A668_9D7F27D85AC2(const void *a1, unsigned int a2, float a3, float a4, float a5, float a6, float *a7)
{
  vfx_script_clock_delta_time();
  v10 = v9 + v9;
  v11 = vmul_n_f32(__PAIR64__(LODWORD(a6), LODWORD(a4)), a5);
  if (sqrtf(vaddv_f32(vmul_f32(v11, v11))) < 0.1)
  {
    v10 = -v10;
  }

  result = fminf(fmaxf(v10 + a3, 0.0), 1.0);
  *a7 = result;
  return result;
}

float __vfx_script_VMCParticles_graph_AED1689A_93E2_4771_A668_9D7F27D85AC2(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 48);
  v3 = **(arguments_buffer + 16);
  v4.i32[0] = **(arguments_buffer + 24);
  v4.i32[1] = **(arguments_buffer + 40);
  v9 = v4;
  v10 = **(arguments_buffer + 32);
  vfx_script_clock_delta_time();
  v6 = v5 + v5;
  v7 = vmul_n_f32(v9, v10);
  if (sqrtf(vaddv_f32(vmul_f32(v7, v7))) < 0.1)
  {
    v6 = -v6;
  }

  result = fminf(fmaxf(v3 + v6, 0.0), 1.0);
  *v2 = result;
  return result;
}

float Init_VMCParticles_graph_0DE37D62_6CBD_454C_8547_CBAD53AD40A6(uint64_t a1, int a2, float *a3, float *a4, float a5, float32x2_t a6)
{
  v10 = vfx_script_clock_simulation_index();
  v11 = 277803737 * (((747796405 * (v10 + a2) + 213991105) >> (((747796405 * (v10 + a2) + 213991105) >> 28) + 4)) ^ (747796405 * (v10 + a2) + 213991105));
  v12 = (fminf(fmaxf(a5, 0.0), 1.0) * 1.9) + 0.1;
  v13 = v12 * (((COERCE_FLOAT((v11 >> 31) ^ (v11 >> 9) | 0x3F800000) + -1.0) * 0.3) + 0.7);
  v14 = vfx_script_clock_simulation_index();
  v15 = 277803737 * (((747796405 * (v14 + a2) + 961787510) >> (((747796405 * (v14 + a2) + 961787510) >> 28) + 4)) ^ (747796405 * (v14 + a2) + 961787510));
  v16 = v12 * (((COERCE_FLOAT((v15 >> 31) ^ (v15 >> 9) | 0x3F800000) + -1.0) * 0.3) + 1.0);
  *a3 = fminf(v13, v16);
  a3[1] = fmaxf(v13, v16);
  result = vmuls_lane_f32(0.8, a6, 1);
  *a4 = result;
  a4[1] = result;
  return result;
}

float __vfx_script_VMCParticles_graph_0DE37D62_6CBD_454C_8547_CBAD53AD40A6(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 32);
  v3 = *(arguments_buffer + 40);
  v4 = **(arguments_buffer + 8);
  v5 = **(arguments_buffer + 16);
  v14 = **(arguments_buffer + 24);
  v6 = vfx_script_clock_simulation_index();
  v7 = 277803737 * (((747796405 * (v6 + v4) + 213991105) >> (((747796405 * (v6 + v4) + 213991105) >> 28) + 4)) ^ (747796405 * (v6 + v4) + 213991105));
  v8 = (fminf(fmaxf(v5, 0.0), 1.0) * 1.9) + 0.1;
  v9 = v8 * (((COERCE_FLOAT((v7 >> 31) ^ (v7 >> 9) | 0x3F800000) + -1.0) * 0.3) + 0.7);
  v10 = vfx_script_clock_simulation_index();
  v11 = 277803737 * (((747796405 * (v10 + v4) + 961787510) >> (((747796405 * (v10 + v4) + 961787510) >> 28) + 4)) ^ (747796405 * (v10 + v4) + 961787510));
  v12 = v8 * (((COERCE_FLOAT((v11 >> 31) ^ (v11 >> 9) | 0x3F800000) + -1.0) * 0.3) + 1.0);
  *v2 = fminf(v9, v12);
  v2[1] = fmaxf(v9, v12);
  result = vmuls_lane_f32(0.8, v14, 1);
  *v3 = result;
  v3[1] = result;
  return result;
}

int8x16_t Update_VMCParticles_graph_962C2A87_F280_411E_AB1F_4A82DC559BDC(float32x2_t a1, float a2, float32_t a3, uint64_t a4, uint64_t a5, int8x16_t *a6)
{
  a1.f32[1] = a3;
  v6 = vmul_n_f32(a1, a2);
  __asm { FMOV            V1.2S, #3.0 }

  *result.i8 = vmul_f32(v6, _D1);
  result.i64[1] = vextq_s8(*a6, *a6, 8uLL).u64[0];
  *a6 = result;
  return result;
}

int8x16_t __vfx_script_VMCParticles_graph_962C2A87_F280_411E_AB1F_4A82DC559BDC(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 40);
  v3.i32[0] = **(arguments_buffer + 16);
  v3.i32[1] = **(arguments_buffer + 32);
  __asm { FMOV            V1.2S, #3.0 }

  *result.i8 = vmul_f32(vmul_n_f32(v3, **(arguments_buffer + 24)), _D1);
  result.i64[1] = vextq_s8(*v2, *v2, 8uLL).u64[0];
  *v2 = result;
  return result;
}

float Main_VMCParticles_graph_A606D101_3A67_4F6A_BBCE_E1CCDBF026A7(const void *a1, unsigned int a2, float a3, float a4, float a5, float a6, float *a7)
{
  vfx_script_clock_delta_time();
  v10 = v9 + v9;
  v11 = vmul_n_f32(__PAIR64__(LODWORD(a6), LODWORD(a4)), a5);
  if (sqrtf(vaddv_f32(vmul_f32(v11, v11))) < 0.1)
  {
    v10 = -v10;
  }

  result = fminf(fmaxf(v10 + a3, 0.0), 1.0);
  *a7 = result;
  return result;
}

float __vfx_script_VMCParticles_graph_A606D101_3A67_4F6A_BBCE_E1CCDBF026A7(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 48);
  v3 = **(arguments_buffer + 16);
  v4.i32[0] = **(arguments_buffer + 24);
  v4.i32[1] = **(arguments_buffer + 40);
  v9 = v4;
  v10 = **(arguments_buffer + 32);
  vfx_script_clock_delta_time();
  v6 = v5 + v5;
  v7 = vmul_n_f32(v9, v10);
  if (sqrtf(vaddv_f32(vmul_f32(v7, v7))) < 0.1)
  {
    v6 = -v6;
  }

  result = fminf(fmaxf(v3 + v6, 0.0), 1.0);
  *v2 = result;
  return result;
}

float Init_VMCParticles_graph_6A5C2C69_FF27_45DE_8C56_E39F2A6EF0ED(uint64_t a1, int a2, float *a3, float *a4, float a5, float32x2_t a6)
{
  v10 = vfx_script_clock_simulation_index();
  v11 = 277803737 * (((747796405 * (v10 + a2) + 213991105) >> (((747796405 * (v10 + a2) + 213991105) >> 28) + 4)) ^ (747796405 * (v10 + a2) + 213991105));
  v12 = (fminf(fmaxf(a5, 0.0), 1.0) * 1.6) + 0.2;
  v13 = v12 * (((COERCE_FLOAT((v11 >> 31) ^ (v11 >> 9) | 0x3F800000) + -1.0) * 0.3) + 0.7);
  v14 = vfx_script_clock_simulation_index();
  v15 = 277803737 * (((747796405 * (v14 + a2) + 961787510) >> (((747796405 * (v14 + a2) + 961787510) >> 28) + 4)) ^ (747796405 * (v14 + a2) + 961787510));
  v16 = v12 * (((COERCE_FLOAT((v15 >> 31) ^ (v15 >> 9) | 0x3F800000) + -1.0) * 0.39) + 0.91);
  *a3 = fminf(v13, v16);
  a3[1] = fmaxf(v13, v16);
  result = vmuls_lane_f32(0.8, a6, 1);
  *a4 = result;
  a4[1] = result;
  return result;
}

float __vfx_script_VMCParticles_graph_6A5C2C69_FF27_45DE_8C56_E39F2A6EF0ED(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 32);
  v3 = *(arguments_buffer + 40);
  v4 = **(arguments_buffer + 8);
  v5 = **(arguments_buffer + 16);
  v14 = **(arguments_buffer + 24);
  v6 = vfx_script_clock_simulation_index();
  v7 = 277803737 * (((747796405 * (v6 + v4) + 213991105) >> (((747796405 * (v6 + v4) + 213991105) >> 28) + 4)) ^ (747796405 * (v6 + v4) + 213991105));
  v8 = (fminf(fmaxf(v5, 0.0), 1.0) * 1.6) + 0.2;
  v9 = v8 * (((COERCE_FLOAT((v7 >> 31) ^ (v7 >> 9) | 0x3F800000) + -1.0) * 0.3) + 0.7);
  v10 = vfx_script_clock_simulation_index();
  v11 = 277803737 * (((747796405 * (v10 + v4) + 961787510) >> (((747796405 * (v10 + v4) + 961787510) >> 28) + 4)) ^ (747796405 * (v10 + v4) + 961787510));
  v12 = v8 * (((COERCE_FLOAT((v11 >> 31) ^ (v11 >> 9) | 0x3F800000) + -1.0) * 0.39) + 0.91);
  *v2 = fminf(v9, v12);
  v2[1] = fmaxf(v9, v12);
  result = vmuls_lane_f32(0.8, v14, 1);
  *v3 = result;
  v3[1] = result;
  return result;
}

int8x16_t Update_VMCParticles_graph_0D9070B4_9633_45B6_A068_FA8EC86D2E3E(float32x2_t a1, float a2, float32_t a3, uint64_t a4, uint64_t a5, int8x16_t *a6)
{
  a1.f32[1] = a3;
  v6 = vmul_n_f32(a1, a2);
  *result.i8 = vadd_f32(v6, v6);
  result.i64[1] = vextq_s8(*a6, *a6, 8uLL).u64[0];
  *a6 = result;
  return result;
}

int8x16_t __vfx_script_VMCParticles_graph_0D9070B4_9633_45B6_A068_FA8EC86D2E3E(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 40);
  v3.i32[0] = **(arguments_buffer + 16);
  v3.i32[1] = **(arguments_buffer + 32);
  v4 = vmul_n_f32(v3, **(arguments_buffer + 24));
  *result.i8 = vadd_f32(v4, v4);
  result.i64[1] = vextq_s8(*v2, *v2, 8uLL).u64[0];
  *v2 = result;
  return result;
}

float Main_VMCParticles_graph_87CB4056_DBF2_4E45_8E11_C1DB36E997CF(const void *a1, unsigned int a2, float a3, float a4, float a5, float a6, float *a7)
{
  vfx_script_clock_delta_time();
  v10 = v9 + v9;
  v11 = vmul_n_f32(__PAIR64__(LODWORD(a6), LODWORD(a4)), a5);
  if (sqrtf(vaddv_f32(vmul_f32(v11, v11))) < 0.1)
  {
    v10 = -v10;
  }

  result = fminf(fmaxf(v10 + a3, 0.0), 1.0);
  *a7 = result;
  return result;
}

float __vfx_script_VMCParticles_graph_87CB4056_DBF2_4E45_8E11_C1DB36E997CF(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 48);
  v3 = **(arguments_buffer + 16);
  v4.i32[0] = **(arguments_buffer + 24);
  v4.i32[1] = **(arguments_buffer + 40);
  v9 = v4;
  v10 = **(arguments_buffer + 32);
  vfx_script_clock_delta_time();
  v6 = v5 + v5;
  v7 = vmul_n_f32(v9, v10);
  if (sqrtf(vaddv_f32(vmul_f32(v7, v7))) < 0.1)
  {
    v6 = -v6;
  }

  result = fminf(fmaxf(v3 + v6, 0.0), 1.0);
  *v2 = result;
  return result;
}

float Init_VMCParticles_graph_6BD8D3FB_BDA2_4EAE_A164_3E2C6FE38879(uint64_t a1, int a2, float *a3, float *a4, float a5, float32x2_t a6)
{
  v10 = vfx_script_clock_simulation_index();
  v11 = 277803737 * (((747796405 * (v10 + a2) + 213991105) >> (((747796405 * (v10 + a2) + 213991105) >> 28) + 4)) ^ (747796405 * (v10 + a2) + 213991105));
  v12 = (fminf(fmaxf(a5, 0.0), 1.0) * 1.97) + 0.28;
  v13 = v12 * (((COERCE_FLOAT((v11 >> 31) ^ (v11 >> 9) | 0x3F800000) + -1.0) * 0.3) + 0.7);
  v14 = vfx_script_clock_simulation_index();
  v15 = 277803737 * (((747796405 * (v14 + a2) + 961787510) >> (((747796405 * (v14 + a2) + 961787510) >> 28) + 4)) ^ (747796405 * (v14 + a2) + 961787510));
  v16 = v12 * (((COERCE_FLOAT((v15 >> 31) ^ (v15 >> 9) | 0x3F800000) + -1.0) * 0.3) + 1.0);
  *a3 = fminf(v13, v16);
  a3[1] = fmaxf(v13, v16);
  result = vmuls_lane_f32(0.8, a6, 1);
  *a4 = result;
  a4[1] = result;
  return result;
}

float __vfx_script_VMCParticles_graph_6BD8D3FB_BDA2_4EAE_A164_3E2C6FE38879(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 32);
  v3 = *(arguments_buffer + 40);
  v4 = **(arguments_buffer + 8);
  v5 = **(arguments_buffer + 16);
  v14 = **(arguments_buffer + 24);
  v6 = vfx_script_clock_simulation_index();
  v7 = 277803737 * (((747796405 * (v6 + v4) + 213991105) >> (((747796405 * (v6 + v4) + 213991105) >> 28) + 4)) ^ (747796405 * (v6 + v4) + 213991105));
  v8 = (fminf(fmaxf(v5, 0.0), 1.0) * 1.97) + 0.28;
  v9 = v8 * (((COERCE_FLOAT((v7 >> 31) ^ (v7 >> 9) | 0x3F800000) + -1.0) * 0.3) + 0.7);
  v10 = vfx_script_clock_simulation_index();
  v11 = 277803737 * (((747796405 * (v10 + v4) + 961787510) >> (((747796405 * (v10 + v4) + 961787510) >> 28) + 4)) ^ (747796405 * (v10 + v4) + 961787510));
  v12 = v8 * (((COERCE_FLOAT((v11 >> 31) ^ (v11 >> 9) | 0x3F800000) + -1.0) * 0.3) + 1.0);
  *v2 = fminf(v9, v12);
  v2[1] = fmaxf(v9, v12);
  result = vmuls_lane_f32(0.8, v14, 1);
  *v3 = result;
  v3[1] = result;
  return result;
}

int8x16_t Update_VMCParticles_graph_2F965AD9_ED60_4939_A876_1BA013B20A6E(float32x2_t a1, float a2, float32_t a3, uint64_t a4, uint64_t a5, int8x16_t *a6)
{
  a1.f32[1] = a3;
  v6 = vmul_n_f32(a1, a2);
  *result.i8 = vadd_f32(v6, v6);
  result.i64[1] = vextq_s8(*a6, *a6, 8uLL).u64[0];
  *a6 = result;
  return result;
}

int8x16_t __vfx_script_VMCParticles_graph_2F965AD9_ED60_4939_A876_1BA013B20A6E(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 40);
  v3.i32[0] = **(arguments_buffer + 16);
  v3.i32[1] = **(arguments_buffer + 32);
  v4 = vmul_n_f32(v3, **(arguments_buffer + 24));
  *result.i8 = vadd_f32(v4, v4);
  result.i64[1] = vextq_s8(*v2, *v2, 8uLL).u64[0];
  *v2 = result;
  return result;
}

float Main_VMCParticles_graph_3AA0CB8E_13CA_4A6E_8A3A_9355FA090FD9(const void *a1, unsigned int a2, float a3, float a4, float a5, float a6, float *a7)
{
  vfx_script_clock_delta_time();
  v10 = v9 + v9;
  v11 = vmul_n_f32(__PAIR64__(LODWORD(a6), LODWORD(a4)), a5);
  if (sqrtf(vaddv_f32(vmul_f32(v11, v11))) < 0.1)
  {
    v10 = -v10;
  }

  result = fminf(fmaxf(v10 + a3, 0.0), 1.0);
  *a7 = result;
  return result;
}

float __vfx_script_VMCParticles_graph_3AA0CB8E_13CA_4A6E_8A3A_9355FA090FD9(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 48);
  v3 = **(arguments_buffer + 16);
  v4.i32[0] = **(arguments_buffer + 24);
  v4.i32[1] = **(arguments_buffer + 40);
  v9 = v4;
  v10 = **(arguments_buffer + 32);
  vfx_script_clock_delta_time();
  v6 = v5 + v5;
  v7 = vmul_n_f32(v9, v10);
  if (sqrtf(vaddv_f32(vmul_f32(v7, v7))) < 0.1)
  {
    v6 = -v6;
  }

  result = fminf(fmaxf(v3 + v6, 0.0), 1.0);
  *v2 = result;
  return result;
}

float Init_VMCParticles_graph_F08170A0_6CA4_4089_947B_8AC90FFB2AFF(uint64_t a1, int a2, float *a3, float *a4, float a5, float32x2_t a6)
{
  v10 = vfx_script_clock_simulation_index();
  v11 = 277803737 * (((747796405 * (v10 + a2) + 213991105) >> (((747796405 * (v10 + a2) + 213991105) >> 28) + 4)) ^ (747796405 * (v10 + a2) + 213991105));
  v12 = (fminf(fmaxf(a5, 0.0), 1.0) * 1.7) + 0.3;
  v13 = v12 * (((COERCE_FLOAT((v11 >> 31) ^ (v11 >> 9) | 0x3F800000) + -1.0) * 0.3) + 0.7);
  v14 = vfx_script_clock_simulation_index();
  v15 = 277803737 * (((747796405 * (v14 + a2) + 961787510) >> (((747796405 * (v14 + a2) + 961787510) >> 28) + 4)) ^ (747796405 * (v14 + a2) + 961787510));
  v16 = v12 * (((COERCE_FLOAT((v15 >> 31) ^ (v15 >> 9) | 0x3F800000) + -1.0) * 0.3) + 1.0);
  *a3 = fminf(v13, v16);
  a3[1] = fmaxf(v13, v16);
  result = vmuls_lane_f32(0.8, a6, 1);
  *a4 = result;
  a4[1] = result;
  return result;
}

float __vfx_script_VMCParticles_graph_F08170A0_6CA4_4089_947B_8AC90FFB2AFF(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 32);
  v3 = *(arguments_buffer + 40);
  v4 = **(arguments_buffer + 8);
  v5 = **(arguments_buffer + 16);
  v14 = **(arguments_buffer + 24);
  v6 = vfx_script_clock_simulation_index();
  v7 = 277803737 * (((747796405 * (v6 + v4) + 213991105) >> (((747796405 * (v6 + v4) + 213991105) >> 28) + 4)) ^ (747796405 * (v6 + v4) + 213991105));
  v8 = (fminf(fmaxf(v5, 0.0), 1.0) * 1.7) + 0.3;
  v9 = v8 * (((COERCE_FLOAT((v7 >> 31) ^ (v7 >> 9) | 0x3F800000) + -1.0) * 0.3) + 0.7);
  v10 = vfx_script_clock_simulation_index();
  v11 = 277803737 * (((747796405 * (v10 + v4) + 961787510) >> (((747796405 * (v10 + v4) + 961787510) >> 28) + 4)) ^ (747796405 * (v10 + v4) + 961787510));
  v12 = v8 * (((COERCE_FLOAT((v11 >> 31) ^ (v11 >> 9) | 0x3F800000) + -1.0) * 0.3) + 1.0);
  *v2 = fminf(v9, v12);
  v2[1] = fmaxf(v9, v12);
  result = vmuls_lane_f32(0.8, v14, 1);
  *v3 = result;
  v3[1] = result;
  return result;
}

int8x16_t Update_VMCParticles_graph_1E8CC8F4_2702_4600_8BE2_0AC10FBC943E(float32x2_t a1, float a2, float32_t a3, uint64_t a4, uint64_t a5, int8x16_t *a6)
{
  a1.f32[1] = a3;
  v6 = vmul_n_f32(a1, a2);
  *result.i8 = vadd_f32(v6, v6);
  result.i64[1] = vextq_s8(*a6, *a6, 8uLL).u64[0];
  *a6 = result;
  return result;
}

int8x16_t __vfx_script_VMCParticles_graph_1E8CC8F4_2702_4600_8BE2_0AC10FBC943E(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 40);
  v3.i32[0] = **(arguments_buffer + 16);
  v3.i32[1] = **(arguments_buffer + 32);
  v4 = vmul_n_f32(v3, **(arguments_buffer + 24));
  *result.i8 = vadd_f32(v4, v4);
  result.i64[1] = vextq_s8(*v2, *v2, 8uLL).u64[0];
  *v2 = result;
  return result;
}

float Main_VMCParticles_graph_C6AD08EB_45D1_4116_BF8F_F5B2CE3EC20E(const void *a1, unsigned int a2, float a3, float a4, float a5, float a6, float *a7)
{
  vfx_script_clock_delta_time();
  v10 = v9 + v9;
  v11 = vmul_n_f32(__PAIR64__(LODWORD(a6), LODWORD(a4)), a5);
  if (sqrtf(vaddv_f32(vmul_f32(v11, v11))) < 0.1)
  {
    v10 = -v10;
  }

  result = fminf(fmaxf(v10 + a3, 0.0), 1.0);
  *a7 = result;
  return result;
}

float __vfx_script_VMCParticles_graph_C6AD08EB_45D1_4116_BF8F_F5B2CE3EC20E(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 48);
  v3 = **(arguments_buffer + 16);
  v4.i32[0] = **(arguments_buffer + 24);
  v4.i32[1] = **(arguments_buffer + 40);
  v9 = v4;
  v10 = **(arguments_buffer + 32);
  vfx_script_clock_delta_time();
  v6 = v5 + v5;
  v7 = vmul_n_f32(v9, v10);
  if (sqrtf(vaddv_f32(vmul_f32(v7, v7))) < 0.1)
  {
    v6 = -v6;
  }

  result = fminf(fmaxf(v3 + v6, 0.0), 1.0);
  *v2 = result;
  return result;
}

float Init_VMCParticles_graph_4E9B1593_B2CF_41C7_ABC7_92F7B866A635(uint64_t a1, int a2, float *a3, float *a4, float a5, float32x2_t a6)
{
  v10 = vfx_script_clock_simulation_index();
  v11 = 277803737 * (((747796405 * (v10 + a2) + 213991105) >> (((747796405 * (v10 + a2) + 213991105) >> 28) + 4)) ^ (747796405 * (v10 + a2) + 213991105));
  v12 = (fminf(fmaxf(a5, 0.0), 1.0) * 1.47) + 0.31;
  v13 = v12 * (((COERCE_FLOAT((v11 >> 31) ^ (v11 >> 9) | 0x3F800000) + -1.0) * 0.3) + 0.7);
  v14 = vfx_script_clock_simulation_index();
  v15 = 277803737 * (((747796405 * (v14 + a2) + 961787510) >> (((747796405 * (v14 + a2) + 961787510) >> 28) + 4)) ^ (747796405 * (v14 + a2) + 961787510));
  v16 = v12 * (((COERCE_FLOAT((v15 >> 31) ^ (v15 >> 9) | 0x3F800000) + -1.0) * 0.51) + 0.79);
  *a3 = fminf(v13, v16);
  a3[1] = fmaxf(v13, v16);
  result = vmuls_lane_f32(0.8, a6, 1);
  *a4 = result;
  a4[1] = result;
  return result;
}

float __vfx_script_VMCParticles_graph_4E9B1593_B2CF_41C7_ABC7_92F7B866A635(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 32);
  v3 = *(arguments_buffer + 40);
  v4 = **(arguments_buffer + 8);
  v5 = **(arguments_buffer + 16);
  v14 = **(arguments_buffer + 24);
  v6 = vfx_script_clock_simulation_index();
  v7 = 277803737 * (((747796405 * (v6 + v4) + 213991105) >> (((747796405 * (v6 + v4) + 213991105) >> 28) + 4)) ^ (747796405 * (v6 + v4) + 213991105));
  v8 = (fminf(fmaxf(v5, 0.0), 1.0) * 1.47) + 0.31;
  v9 = v8 * (((COERCE_FLOAT((v7 >> 31) ^ (v7 >> 9) | 0x3F800000) + -1.0) * 0.3) + 0.7);
  v10 = vfx_script_clock_simulation_index();
  v11 = 277803737 * (((747796405 * (v10 + v4) + 961787510) >> (((747796405 * (v10 + v4) + 961787510) >> 28) + 4)) ^ (747796405 * (v10 + v4) + 961787510));
  v12 = v8 * (((COERCE_FLOAT((v11 >> 31) ^ (v11 >> 9) | 0x3F800000) + -1.0) * 0.51) + 0.79);
  *v2 = fminf(v9, v12);
  v2[1] = fmaxf(v9, v12);
  result = vmuls_lane_f32(0.8, v14, 1);
  *v3 = result;
  v3[1] = result;
  return result;
}

int8x16_t Update_VMCParticles_graph_D3E45F22_6BB8_4359_90F7_D89D0F774429(float32x2_t a1, float a2, float32_t a3, uint64_t a4, uint64_t a5, int8x16_t *a6)
{
  a1.f32[1] = a3;
  v6 = vmul_n_f32(a1, a2);
  __asm { FMOV            V1.2S, #3.0 }

  *result.i8 = vmul_f32(v6, _D1);
  result.i64[1] = vextq_s8(*a6, *a6, 8uLL).u64[0];
  *a6 = result;
  return result;
}

int8x16_t __vfx_script_VMCParticles_graph_D3E45F22_6BB8_4359_90F7_D89D0F774429(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 40);
  v3.i32[0] = **(arguments_buffer + 16);
  v3.i32[1] = **(arguments_buffer + 32);
  __asm { FMOV            V1.2S, #3.0 }

  *result.i8 = vmul_f32(vmul_n_f32(v3, **(arguments_buffer + 24)), _D1);
  result.i64[1] = vextq_s8(*v2, *v2, 8uLL).u64[0];
  *v2 = result;
  return result;
}

float Main_VMCParticles_graph_5D958868_DF35_4085_8654_603C9A86965A(uint64_t a1, uint64_t a2, int a3, int a4, __int128 *a5)
{
  v5 = *a5;
  v6 = -0.33;
  if (a3)
  {
    v6 = -1.0;
  }

  v7 = 1.0;
  if (a4)
  {
    v7 = 0.0;
  }

  v8 = (v6 * v7) + 0.0;
  v9 = *a5;
  *(&v9 + 1) = v8;
  DWORD2(v9) = *(a5 + 1);
  *a5 = v9;
  return *&v5;
}

float __vfx_script_VMCParticles_graph_5D958868_DF35_4085_8654_603C9A86965A(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 32);
  v3 = *v2;
  v4 = -0.33;
  if (**(arguments_buffer + 16))
  {
    v4 = -1.0;
  }

  v5 = 1.0;
  if (**(arguments_buffer + 24))
  {
    v5 = 0.0;
  }

  v6 = (v4 * v5) + 0.0;
  v7 = *v2;
  *(&v7 + 1) = v6;
  DWORD2(v7) = *(v2 + 1);
  *v2 = v7;
  return *&v3;
}

void Main_VMCParticles_graph_3B7F6C17_DC21_4CBE_A0B6_00795EC5018A(uint64_t a1, uint64_t a2, char a3, int a4, __int128 *a5, _BYTE *a6)
{
  v6 = *a5;
  v7 = -1.0;
  if (a4)
  {
    v7 = -0.5;
  }

  *a6 = a3 ^ 1 | a4;
  v8 = v6;
  *(&v8 + 1) = v7;
  DWORD2(v8) = DWORD2(v6);
  *a5 = v8;
}

uint64_t __vfx_script_VMCParticles_graph_3B7F6C17_DC21_4CBE_A0B6_00795EC5018A(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  result = vfx_script_get_arguments_buffer();
  v2 = *(result + 32);
  v3 = *v2;
  v4 = -1.0;
  if (**(result + 24))
  {
    v4 = -0.5;
  }

  **(result + 40) = **(result + 16) ^ 1 | **(result + 24);
  v5 = v3;
  *(&v5 + 1) = v4;
  DWORD2(v5) = DWORD2(v3);
  *v2 = v5;
  return result;
}

__n128 Main_VMCParticles_graph_A914479F_F468_4795_8E1E_41C0A98A3A01(__n128 a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, __n128 *a7)
{
  a1.n128_f32[0] = a1.n128_f32[0] / a1.n128_f32[1];
  if (fabsf(a1.n128_f32[1]) <= 0.00000011921)
  {
    a1.n128_f32[0] = 0.0;
  }

  v7 = a1.n128_f32[0] * 0.79;
  a1.n128_f32[0] = a1.n128_f32[0] * 1.3;
  v8 = 1.85;
  if (a4 | a5)
  {
    v8 = 0.0;
  }

  v9 = 0.74;
  if (((a6 ^ 1) & a4) == 0)
  {
    v9 = 0.0;
  }

  v10 = 1.19;
  if (((a6 ^ 1) & a5) == 0)
  {
    v10 = 0.0;
  }

  v11 = v8 + (v9 + v10);
  if ((a4 & a6) == 0)
  {
    v7 = 0.0;
  }

  v12 = v11 + v7;
  if ((a5 & a6) == 0)
  {
    a1.n128_f32[0] = 0.0;
  }

  a1.n128_f32[0] = -(a1.n128_f32[0] + v12);
  a1.n128_u32[1] = HIDWORD(a7->n128_u64[0]);
  a1.n128_u32[2] = a7->n128_u64[1];
  *a7 = a1;
  result.n128_f64[0] = a1.n128_f64[0];
  result.n128_f32[2] = a1.n128_f32[2];
  return result;
}

__n128 __vfx_script_VMCParticles_graph_A914479F_F468_4795_8E1E_41C0A98A3A01(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 48);
  v3 = **(arguments_buffer + 16);
  v4 = **(arguments_buffer + 24);
  v5 = **(arguments_buffer + 32);
  LODWORD(v6) = HIDWORD(**(arguments_buffer + 40));
  *&v7 = COERCE_FLOAT(**(arguments_buffer + 40)) / v6;
  if (fabsf(v6) <= 0.00000011921)
  {
    *&v7 = 0.0;
  }

  v8 = *&v7 * 0.79;
  *&v7 = *&v7 * 1.3;
  v9 = 1.85;
  if ((v3 | v4))
  {
    v9 = 0.0;
  }

  v10 = 0.74;
  if ((v3 & (v5 ^ 1) & 1) == 0)
  {
    v10 = 0.0;
  }

  v11 = 1.19;
  if ((v4 & (v5 ^ 1) & 1) == 0)
  {
    v11 = 0.0;
  }

  v12 = v9 + (v10 + v11);
  if ((v3 & v5 & 1) == 0)
  {
    v8 = 0.0;
  }

  v13 = v12 + v8;
  if ((v4 & v5 & 1) == 0)
  {
    *&v7 = 0.0;
  }

  *&v7 = -(*&v7 + v13);
  DWORD1(v7) = HIDWORD(*v2);
  DWORD2(v7) = v2[1];
  *v2 = v7;
  result.n128_u64[0] = v7;
  result.n128_u32[2] = DWORD2(v7);
  return result;
}

__n128 Main_VMCParticles_graph_8FFB1B4C_C330_435D_8249_9CD583F85229(__n128 a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, __n128 *a7)
{
  a1.n128_f32[0] = a1.n128_f32[0] / a1.n128_f32[1];
  if (fabsf(a1.n128_f32[1]) <= 0.00000011921)
  {
    a1.n128_f32[0] = 0.0;
  }

  v7 = a1.n128_f32[0] * 0.79;
  a1.n128_f32[0] = a1.n128_f32[0] * 1.3;
  v8 = 1.85;
  if (a4 | a5)
  {
    v8 = 0.0;
  }

  v9 = 0.74;
  if (((a6 ^ 1) & a4) == 0)
  {
    v9 = 0.0;
  }

  v10 = 1.19;
  if (((a6 ^ 1) & a5) == 0)
  {
    v10 = 0.0;
  }

  v11 = v8 + (v9 + v10);
  if ((a4 & a6) == 0)
  {
    v7 = 0.0;
  }

  v12 = v11 + v7;
  if ((a5 & a6) == 0)
  {
    a1.n128_f32[0] = 0.0;
  }

  a1.n128_f32[0] = a1.n128_f32[0] + v12;
  a1.n128_u32[1] = HIDWORD(a7->n128_u64[0]);
  a1.n128_u32[2] = a7->n128_u64[1];
  *a7 = a1;
  result.n128_f64[0] = a1.n128_f64[0];
  result.n128_f32[2] = a1.n128_f32[2];
  return result;
}

__n128 __vfx_script_VMCParticles_graph_8FFB1B4C_C330_435D_8249_9CD583F85229(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 48);
  v3 = **(arguments_buffer + 16);
  v4 = **(arguments_buffer + 24);
  v5 = **(arguments_buffer + 32);
  LODWORD(v6) = HIDWORD(**(arguments_buffer + 40));
  *&v7 = COERCE_FLOAT(**(arguments_buffer + 40)) / v6;
  if (fabsf(v6) <= 0.00000011921)
  {
    *&v7 = 0.0;
  }

  v8 = *&v7 * 0.79;
  *&v7 = *&v7 * 1.3;
  v9 = 1.85;
  if ((v3 | v4))
  {
    v9 = 0.0;
  }

  v10 = 0.74;
  if ((v3 & (v5 ^ 1) & 1) == 0)
  {
    v10 = 0.0;
  }

  v11 = 1.19;
  if ((v4 & (v5 ^ 1) & 1) == 0)
  {
    v11 = 0.0;
  }

  v12 = v9 + (v10 + v11);
  if ((v3 & v5 & 1) == 0)
  {
    v8 = 0.0;
  }

  v13 = v12 + v8;
  if ((v4 & v5 & 1) == 0)
  {
    *&v7 = 0.0;
  }

  *&v7 = *&v7 + v13;
  DWORD1(v7) = HIDWORD(*v2);
  DWORD2(v7) = v2[1];
  *v2 = v7;
  result.n128_u64[0] = v7;
  result.n128_u32[2] = DWORD2(v7);
  return result;
}

float Main_VMCParticles_graph_D5A926A8_D9DD_456C_B6D4_4FDF3C1BB467(uint64_t a1, uint64_t a2, int a3, int a4, __int128 *a5)
{
  v5 = *a5;
  v6 = 0.33;
  v7 = 0.0;
  if (a3)
  {
    v6 = 0.0;
  }

  v8 = 1.0;
  if (a4)
  {
    v8 = 0.0;
  }

  v9 = v6 * v8;
  if (a4)
  {
    v7 = 0.5;
  }

  v10 = v7 + v9;
  v11 = *a5;
  *(&v11 + 1) = v10;
  DWORD2(v11) = *(a5 + 1);
  *a5 = v11;
  return *&v5;
}

float __vfx_script_VMCParticles_graph_D5A926A8_D9DD_456C_B6D4_4FDF3C1BB467(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 32);
  v3 = *v2;
  v4 = 0.33;
  v5 = 0.0;
  if (**(arguments_buffer + 16))
  {
    v4 = 0.0;
  }

  v6 = 1.0;
  if (**(arguments_buffer + 24))
  {
    v6 = 0.0;
  }

  v7 = v4 * v6;
  if (**(arguments_buffer + 24))
  {
    v5 = 0.5;
  }

  v8 = v5 + v7;
  v9 = *v2;
  *(&v9 + 1) = v8;
  DWORD2(v9) = *(v2 + 1);
  *v2 = v9;
  return *&v3;
}

float Main_VMCParticles_graph_FA441883_F559_4A46_86C7_02742D9AC80D(uint64_t a1, uint64_t a2, int a3, int a4, __int128 *a5)
{
  v5 = *a5;
  v6 = -0.33;
  if (a3)
  {
    v6 = -1.0;
  }

  v7 = 1.0;
  if (a4)
  {
    v7 = 0.0;
  }

  v8 = (v6 * v7) + 0.0;
  v9 = *a5;
  *(&v9 + 1) = v8;
  DWORD2(v9) = *(a5 + 1);
  *a5 = v9;
  return *&v5;
}

float __vfx_script_VMCParticles_graph_FA441883_F559_4A46_86C7_02742D9AC80D(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 32);
  v3 = *v2;
  v4 = -0.33;
  if (**(arguments_buffer + 16))
  {
    v4 = -1.0;
  }

  v5 = 1.0;
  if (**(arguments_buffer + 24))
  {
    v5 = 0.0;
  }

  v6 = (v4 * v5) + 0.0;
  v7 = *v2;
  *(&v7 + 1) = v6;
  DWORD2(v7) = *(v2 + 1);
  *v2 = v7;
  return *&v3;
}

float Main_VMCParticles_graph_0B995548_91B4_4FFF_90AE_B881318BA5DE(uint64_t a1, uint64_t a2, int a3, int a4, __int128 *a5)
{
  v5 = *a5;
  v6 = 0.33;
  v7 = 0.0;
  if (a3)
  {
    v6 = 0.0;
  }

  v8 = 1.0;
  if (a4)
  {
    v8 = 0.0;
  }

  v9 = v6 * v8;
  if (a4)
  {
    v7 = 0.5;
  }

  v10 = v7 + v9;
  v11 = *a5;
  *(&v11 + 1) = v10;
  DWORD2(v11) = *(a5 + 1);
  *a5 = v11;
  return *&v5;
}

float __vfx_script_VMCParticles_graph_0B995548_91B4_4FFF_90AE_B881318BA5DE(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 32);
  v3 = *v2;
  v4 = 0.33;
  v5 = 0.0;
  if (**(arguments_buffer + 16))
  {
    v4 = 0.0;
  }

  v6 = 1.0;
  if (**(arguments_buffer + 24))
  {
    v6 = 0.0;
  }

  v7 = v4 * v6;
  if (**(arguments_buffer + 24))
  {
    v5 = 0.5;
  }

  v8 = v5 + v7;
  v9 = *v2;
  *(&v9 + 1) = v8;
  DWORD2(v9) = *(v2 + 1);
  *v2 = v9;
  return *&v3;
}

void Main_VMCParticles_graph_4B720A4C_22ED_4BC7_8EAB_63388F55B5E1(uint64_t a1, uint64_t a2, char a3, int a4, __int128 *a5, _BYTE *a6)
{
  v6 = *a5;
  v7 = -1.0;
  if (a4)
  {
    v7 = -0.5;
  }

  *a6 = a3 ^ 1 | a4;
  v8 = v6;
  *(&v8 + 1) = v7;
  DWORD2(v8) = DWORD2(v6);
  *a5 = v8;
}

uint64_t __vfx_script_VMCParticles_graph_4B720A4C_22ED_4BC7_8EAB_63388F55B5E1(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  result = vfx_script_get_arguments_buffer();
  v2 = *(result + 32);
  v3 = *v2;
  v4 = -1.0;
  if (**(result + 24))
  {
    v4 = -0.5;
  }

  **(result + 40) = **(result + 16) ^ 1 | **(result + 24);
  v5 = v3;
  *(&v5 + 1) = v4;
  DWORD2(v5) = DWORD2(v3);
  *v2 = v5;
  return result;
}

__n128 Main_VMCParticles_graph_F324EAA4_B817_4C7A_B24F_74A008361421(__n128 a1, float a2, double a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, __n128 *a9)
{
  a1.n128_f32[0] = (fminf(fmaxf((a1.n128_f32[0] + 1.0) * 0.5, 0.0), 1.0) * 0.28) + 0.86;
  v9 = (fminf(fmaxf((a2 + 1.0) * 0.5, 0.0), 1.0) * 0.8) + -0.4;
  v10 = fabsf(*&a3) <= 0.00000011921;
  LODWORD(v11) = vdiv_f32(vdup_lane_s32(*&a3, 1), *&a3).u32[0];
  if (v10)
  {
    v11 = 0.0;
  }

  v12 = v11 * 0.61;
  v13 = v11 * 0.96;
  v14 = 1.0;
  if (a6 | a7)
  {
    v14 = 0.0;
  }

  if (((a8 ^ 1) & a6) == 0)
  {
    v12 = 0.0;
  }

  if (((a8 ^ 1) & a7) == 0)
  {
    v13 = 0.0;
  }

  v15 = v14 + (v12 + v13);
  v16 = 0.67;
  if ((a6 & a8) == 0)
  {
    v16 = 0.0;
  }

  v17 = v16 + v15;
  v18 = 1.14;
  if ((a7 & a8) == 0)
  {
    v18 = 0.0;
  }

  v19 = v9 + (v18 + v17);
  a1.n128_f32[1] = v19;
  a1.n128_u32[2] = a9->n128_u32[2];
  *a9 = a1;
  result.n128_f64[0] = a1.n128_f64[0];
  result.n128_f32[2] = a1.n128_f32[2];
  return result;
}

__n128 __vfx_script_VMCParticles_graph_F324EAA4_B817_4C7A_B24F_74A008361421(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 64);
  v3 = **(arguments_buffer + 32);
  v4 = **(arguments_buffer + 40);
  v5 = **(arguments_buffer + 48);
  v6 = **(arguments_buffer + 56);
  *&v7 = (fminf(fmaxf((**(arguments_buffer + 16) + 1.0) * 0.5, 0.0), 1.0) * 0.28) + 0.86;
  v8 = (fminf(fmaxf((**(arguments_buffer + 24) + 1.0) * 0.5, 0.0), 1.0) * 0.8) + -0.4;
  v9 = fabsf(v6.f32[0]) <= 0.00000011921;
  LODWORD(v10) = vdiv_f32(vdup_lane_s32(v6, 1), v6).u32[0];
  if (v9)
  {
    v10 = 0.0;
  }

  v11 = v10 * 0.61;
  v12 = v10 * 0.96;
  v13 = 1.0;
  if ((v3 | v4))
  {
    v13 = 0.0;
  }

  if ((v3 & (v5 ^ 1) & 1) == 0)
  {
    v11 = 0.0;
  }

  if ((v4 & (v5 ^ 1) & 1) == 0)
  {
    v12 = 0.0;
  }

  v14 = v13 + (v11 + v12);
  v15 = 0.67;
  if ((v3 & v5 & 1) == 0)
  {
    v15 = 0.0;
  }

  v16 = v15 + v14;
  v17 = 1.14;
  if ((v4 & v5 & 1) == 0)
  {
    v17 = 0.0;
  }

  v18 = v8 + (v17 + v16);
  *(&v7 + 1) = v18;
  DWORD2(v7) = *(v2 + 8);
  *v2 = v7;
  result.n128_u64[0] = v7;
  result.n128_u32[2] = DWORD2(v7);
  return result;
}

float Spawn_VMCParticles_graph_F06B866A_2AAD_4693_8963_A8695D4F626C(const void *a1, unsigned int a2, float a3, float32x2_t a4, float a5, float32_t a6, float a7, float a8, float *a9, float *a10, float *a11, float *a12, float *a13, BOOL *a14, BOOL *a15, BOOL *a16)
{
  a4.f32[1] = a6;
  v16 = vmaxnm_f32(vdiv_f32(vadd_f32(vabs_f32(vmul_n_f32(a4, a5)), 0xBF000000BF800000), 0xBEF0A3D7BF7851ECLL), 0);
  __asm
  {
    FMOV            V2.2S, #1.0
    FMOV            V3.2S, #-1.0
  }

  v23 = vaddv_f32(vmla_f32(_D2, _D3, vminnm_f32(v16, _D2))) * a3;
  v16.f32[0] = (a7 * 0.1) * v23;
  *a9 = v23;
  *a10 = v23;
  *a11 = v16.f32[0];
  *a12 = v16.f32[0];
  result = (a8 * 0.03) * v23;
  *a13 = result;
  *a14 = 1;
  *a15 = 1;
  *a16 = 1;
  return result;
}

float __vfx_script_VMCParticles_graph_F06B866A_2AAD_4693_8963_A8695D4F626C(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = arguments_buffer[2];
  v3 = arguments_buffer[3];
  v4 = arguments_buffer[4];
  v5 = arguments_buffer[5];
  v6 = arguments_buffer[6];
  v7 = arguments_buffer[7];
  v8 = arguments_buffer[8];
  v9 = arguments_buffer[9];
  v10 = arguments_buffer[10];
  v11 = arguments_buffer[11];
  v12 = arguments_buffer[12];
  v13 = arguments_buffer[13];
  v15 = arguments_buffer[14];
  v14 = arguments_buffer[15];
  v16.i32[0] = *v3;
  v16.i32[1] = *v5;
  __asm
  {
    FMOV            V2.2S, #1.0
    FMOV            V5.2S, #-1.0
  }

  result = *v2 * vaddv_f32(vmla_f32(_D2, _D5, vminnm_f32(vmaxnm_f32(vdiv_f32(vadd_f32(vabs_f32(vmul_n_f32(v16, *v4)), 0xBF000000BF800000), 0xBEF0A3D7BF7851ECLL), 0), _D2)));
  v16.f32[0] = (*v6 * 0.1) * result;
  _D2.f32[0] = (*v7 * 0.03) * result;
  *v8 = result;
  *v9 = result;
  *v10 = v16.i32[0];
  *v11 = v16.i32[0];
  *v12 = _D2.i32[0];
  *v13 = 1;
  *v15 = 1;
  *v14 = 1;
  return result;
}

__n128 Init_VMCParticles_graph_25FD3188_A461_4DDE_9306_B8B93CAEA6CC(float a1, float a2, float a3, __n128 a4, float a5, double a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, float *a12, float *a13, __n128 *a14, __int128 *a15, __int128 *a16, __int128 *a17, __int128 *a18, __int128 *a19, uint64_t a20, _BYTE *a21, _BYTE *a22, _BYTE *a23)
{
  v25 = *a16;
  v26 = *a17;
  v27 = *a18;
  v28 = *a19;
  v29 = *a14;
  v30 = *a15;
  v31 = vmul_n_f32(0x3FC666663F4CCCCDLL, a1);
  v32 = 0.0;
  v33 = vmul_n_f32(v31, (fminf(fmaxf(((fminf(fmaxf(-(fabsf(a2 * a3) + -1.0), 0.0), 1.0) * -0.5) + 1.0) + ((fminf(fmaxf((fabsf(a3 * a4.n128_f32[0]) + -0.5) * -2.0, 0.0), 1.0) * -0.5) + 1.0), 0.0), 1.0) * 0.0) + 1.0);
  v34 = 0.75;
  if (a9 | a10)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = 0.75;
  }

  v36 = a11 ^ 1;
  v37 = 1.93;
  if (a9 | a10)
  {
    v37 = 0.0;
  }

  v38 = 3.0;
  if (a9 | a10)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = 3.0;
  }

  v40 = 1.2;
  if (a9 | a10)
  {
    v40 = 0.0;
  }

  v41 = 1.25;
  if ((v36 & a9) != 0)
  {
    v42 = 1.25;
  }

  else
  {
    v42 = 0.0;
  }

  v43 = 0.79;
  if ((v36 & a9) != 0)
  {
    v44 = 4.0;
  }

  else
  {
    v43 = 0.0;
    v44 = 0.0;
  }

  v45 = 1.88;
  if ((v36 & a9) == 0)
  {
    v45 = 0.0;
  }

  if ((a9 & a11) == 0)
  {
    v41 = 0.0;
  }

  v46 = 1.71;
  if ((a9 & a11) == 0)
  {
    v46 = 0.0;
    v38 = 0.0;
  }

  v47 = 0.94;
  if ((a9 & a11) == 0)
  {
    v47 = 0.0;
  }

  if ((a10 & a11) != 0)
  {
    v48 = 0.75;
  }

  else
  {
    v48 = 0.0;
  }

  v49 = 1.9;
  if ((a10 & a11) == 0)
  {
    v49 = 0.0;
  }

  v50 = 3.58;
  if ((a10 & a11) == 0)
  {
    v50 = 0.0;
  }

  v51 = 1.49;
  if ((a10 & a11) == 0)
  {
    v51 = 0.0;
  }

  if ((v36 & a10) == 0)
  {
    v34 = 0.0;
  }

  v52 = v48 + (v41 + (v35 + (v42 + v34)));
  v53 = (a5 * *&a6) * v52;
  v54 = vmuls_lane_f32(a5, *&a6, 1) * v52;
  *&v23 = v49 + (v46 + (v37 + (v43 + v34)));
  v55 = 5.38;
  if ((v36 & a10) == 0)
  {
    v55 = 0.0;
  }

  v56 = v50 + (v38 + (v39 + (v44 + v55)));
  v57 = 1.95;
  if ((v36 & a10) == 0)
  {
    v57 = 0.0;
  }

  v58 = v51 + (v47 + (v40 + (v45 + v57)));
  v59 = 2.5;
  if ((v36 & a10) != 0)
  {
    *&v24 = 2.5;
  }

  else
  {
    *&v24 = 4.0;
  }

  if ((v36 & a10) != 0)
  {
    v59 = 4.0;
  }

  if (a9)
  {
    v32 = 1.1;
  }

  *(&v24 + 1) = v32 + v59;
  DWORD2(v24) = *(a20 + 8);
  *a21 = 1;
  *a22 = 1;
  *a23 = 1;
  *a12 = fminf(v33.f32[0], v33.f32[1]);
  a12[1] = fmaxf(v33.f32[0], v33.f32[1]);
  *a13 = fminf(v53, v54);
  a13[1] = fmaxf(v53, v54);
  DWORD1(v23) = DWORD1(v25);
  DWORD2(v23) = DWORD2(v25);
  *a16 = v23;
  v60 = v26;
  *(&v60 + 1) = v56;
  DWORD2(v60) = DWORD2(v26);
  *a17 = v60;
  v61 = v27;
  *(&v61 + 1) = v58;
  DWORD2(v61) = DWORD2(v27);
  *a18 = v61;
  v62 = v28;
  *(&v62 + 1) = -v58;
  DWORD2(v62) = DWORD2(v28);
  *a19 = v62;
  *a20 = v24;
  a4.n128_u32[1] = DWORD1(v29);
  a4.n128_u32[2] = DWORD2(v29);
  a4.n128_f32[0] = -*&v23;
  *a14 = a4;
  v63 = v30;
  *(&v63 + 1) = v56;
  DWORD2(v63) = DWORD2(v30);
  *a15 = v63;
  result.n128_u64[0] = v63;
  result.n128_u32[2] = DWORD2(v63);
  return result;
}

float __vfx_script_VMCParticles_graph_25FD3188_A461_4DDE_9306_B8B93CAEA6CC(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v3 = arguments_buffer[2];
  v4 = arguments_buffer[3];
  v5 = arguments_buffer[4];
  v6 = arguments_buffer[5];
  v7 = arguments_buffer[6];
  v8 = arguments_buffer[7];
  v9 = arguments_buffer[8];
  v10 = arguments_buffer[9];
  v12 = arguments_buffer[10];
  v11 = arguments_buffer[11];
  v14 = arguments_buffer[12];
  v13 = arguments_buffer[13];
  v16 = arguments_buffer[14];
  v15 = arguments_buffer[15];
  v18 = arguments_buffer[16];
  v17 = arguments_buffer[17];
  v19 = arguments_buffer[18];
  v20 = arguments_buffer[19];
  v22 = arguments_buffer[20];
  v21 = arguments_buffer[21];
  v23 = arguments_buffer[22];
  v24 = *v3;
  v25 = *v4;
  v26 = *v5;
  v27 = *v7;
  v28 = *v8;
  v29 = *v9;
  LODWORD(v30) = *v10;
  v31 = *v12;
  v32 = *v15;
  v33 = *v18;
  v34 = *v17;
  v35 = *v19;
  v36 = *v13;
  v37 = *v16;
  v38 = vmul_n_f32(0x3FC666663F4CCCCDLL, v24);
  v39 = 0.0;
  v40 = vmul_n_f32(v38, (fminf(fmaxf(((fminf(fmaxf(-(fabsf(v25 * v26) + -1.0), 0.0), 1.0) * -0.5) + 1.0) + ((fminf(fmaxf((fabsf(v26 * *v6) + -0.5) * -2.0, 0.0), 1.0) * -0.5) + 1.0), 0.0), 1.0) * 0.0) + 1.0);
  LODWORD(v41) = 0.75;
  if ((v27 | *v8))
  {
    v42 = 0.0;
  }

  else
  {
    v42 = 0.75;
  }

  v43 = v29 ^ 1;
  v44 = 1.93;
  if ((v27 | v28))
  {
    v44 = 0.0;
  }

  v45 = 3.0;
  if ((v27 | v28))
  {
    v46 = 0.0;
  }

  else
  {
    v46 = 3.0;
  }

  v47 = 1.2;
  if ((v27 | v28))
  {
    v47 = 0.0;
  }

  v48 = (v27 & v43) == 0;
  v49 = 1.25;
  if ((v27 & v43) != 0)
  {
    v50 = 1.25;
  }

  else
  {
    v50 = 0.0;
  }

  v51 = v28 & v43;
  v52 = 0.79;
  if (v48)
  {
    v52 = 0.0;
  }

  if (v48)
  {
    v53 = 0.0;
  }

  else
  {
    v53 = 4.0;
  }

  v54 = 1.88;
  if (v48)
  {
    v54 = 0.0;
  }

  if ((v27 & v29) == 0)
  {
    v49 = 0.0;
  }

  v55 = v28 & v29;
  v56 = 1.71;
  if ((v27 & v29) == 0)
  {
    v56 = 0.0;
    v45 = 0.0;
  }

  v57 = 0.94;
  if ((v27 & v29) == 0)
  {
    v57 = 0.0;
  }

  if (v55)
  {
    v58 = 0.75;
  }

  else
  {
    v58 = 0.0;
  }

  v59 = 1.9;
  if ((v55 & 1) == 0)
  {
    v59 = 0.0;
  }

  v60 = 3.58;
  if ((v55 & 1) == 0)
  {
    v60 = 0.0;
  }

  v61 = 1.49;
  if ((v55 & 1) == 0)
  {
    v61 = 0.0;
  }

  if ((v51 & 1) == 0)
  {
    *&v41 = 0.0;
  }

  v62 = v58 + (v49 + (v42 + (v50 + *&v41)));
  v63 = (*&v30 * v31.f32[0]) * v62;
  v64 = vmuls_lane_f32(*&v30, v31, 1) * v62;
  *&v41 = v59 + (v56 + (v44 + (v52 + *&v41)));
  v65 = 5.38;
  if ((v51 & 1) == 0)
  {
    v65 = 0.0;
  }

  v66 = v60 + (v45 + (v46 + (v53 + v65)));
  v67 = 1.95;
  if ((v51 & 1) == 0)
  {
    v67 = 0.0;
  }

  v68 = v61 + (v57 + (v47 + (v54 + v67)));
  v69 = 2.5;
  if (v51)
  {
    *&v2 = 2.5;
  }

  else
  {
    *&v2 = 4.0;
  }

  if (v51)
  {
    v69 = 4.0;
  }

  if (*v7)
  {
    v39 = 1.1;
  }

  *(&v2 + 1) = v39 + v69;
  DWORD2(v2) = *(v20 + 8);
  *v22 = 1;
  *v21 = 1;
  *v23 = 1;
  *v11 = fminf(v40.f32[0], v40.f32[1]);
  v11[1] = fmaxf(v40.f32[0], v40.f32[1]);
  *v14 = fminf(v63, v64);
  v14[1] = fmaxf(v63, v64);
  DWORD1(v41) = DWORD1(v32);
  DWORD2(v41) = DWORD2(v32);
  *v15 = v41;
  v70 = v33;
  *(&v70 + 1) = v66;
  DWORD2(v70) = DWORD2(v33);
  *v18 = v70;
  v71 = v34;
  *(&v71 + 1) = v68;
  DWORD2(v71) = DWORD2(v34);
  *v17 = v71;
  v72 = v35;
  *(&v72 + 1) = -v68;
  DWORD2(v72) = DWORD2(v35);
  *v19 = v72;
  *v20 = v2;
  DWORD1(v30) = DWORD1(v36);
  DWORD2(v30) = DWORD2(v36);
  *&v30 = -*&v41;
  *v13 = v30;
  v73 = v37;
  *(&v73 + 1) = v66;
  DWORD2(v73) = DWORD2(v37);
  *v16 = v73;
  *(v13 + 3) = 1065353216;
  *(v15 + 3) = 1065353216;
  *(v17 + 3) = 1065353216;
  *(v19 + 3) = 1065353216;
  return *&v37;
}

int8x16_t Update_VMCParticles_graph_6A353C51_F304_42D8_9E95_D3BA58457D18(float a1, float32x2_t a2, float32_t a3, uint64_t a4, uint64_t a5, int8x16_t *a6)
{
  a2.f32[1] = a3;
  v6 = vmul_n_f32(a2, a1);
  __asm { FMOV            V1.2S, #3.0 }

  *result.i8 = vmul_f32(v6, _D1);
  result.i64[1] = vextq_s8(*a6, *a6, 8uLL).u64[0];
  *a6 = result;
  return result;
}

int8x16_t __vfx_script_VMCParticles_graph_6A353C51_F304_42D8_9E95_D3BA58457D18(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 40);
  v3.i32[0] = **(arguments_buffer + 24);
  v3.i32[1] = **(arguments_buffer + 32);
  v4 = vmul_n_f32(v3, **(arguments_buffer + 16));
  __asm { FMOV            V1.2S, #3.0 }

  *result.i8 = vmul_f32(v4, _D1);
  result.i64[1] = vextq_s8(*v2, *v2, 8uLL).u64[0];
  *v2 = result;
  return result;
}

float Main_VMCParticles_graph_1072D7CF_4C5A_44CA_989E_8E48D20C59A1(const void *a1, unsigned int a2, int a3, int a4, int a5, float *a6, float *a7)
{
  v7 = 1.2;
  v8 = 0.0;
  if (a3 | a4)
  {
    v7 = 0.0;
  }

  v9 = 0.83;
  if (((a5 ^ 1) & a3) == 0)
  {
    v9 = 0.0;
  }

  v10 = 1.28;
  if (((a5 ^ 1) & a4) == 0)
  {
    v10 = 0.0;
  }

  v11 = v7 + (v9 + v10);
  v12 = 0.83;
  if ((a3 & a5) == 0)
  {
    v12 = 0.0;
  }

  v13 = v12 + v11;
  if ((a4 & a5) != 0)
  {
    v8 = 1.37;
  }

  result = v8 + v13;
  *a6 = result;
  *a7 = result;
  return result;
}

float __vfx_script_VMCParticles_graph_1072D7CF_4C5A_44CA_989E_8E48D20C59A1(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  arguments_buffer = vfx_script_get_arguments_buffer();
  v2 = *(arguments_buffer + 48);
  v3 = **(arguments_buffer + 16);
  v4 = **(arguments_buffer + 24);
  v5 = **(arguments_buffer + 32);
  v6 = 1.2;
  v7 = 0.0;
  if ((v3 | v4))
  {
    v6 = 0.0;
  }

  v8 = 0.83;
  if ((v3 & (v5 ^ 1) & 1) == 0)
  {
    v8 = 0.0;
  }

  v9 = 1.28;
  if ((v4 & (v5 ^ 1) & 1) == 0)
  {
    v9 = 0.0;
  }

  v10 = v6 + (v8 + v9);
  v11 = 0.83;
  if ((v3 & v5 & 1) == 0)
  {
    v11 = 0.0;
  }

  v12 = v11 + v10;
  if (v4 & v5)
  {
    v7 = 1.37;
  }

  result = v7 + v12;
  **(arguments_buffer + 40) = result;
  *v2 = result;
  return result;
}

__n128 ParticleInit_VMCParticles_particleInit_375(__n128 result, uint64_t a2, uint64_t a3, __n128 *a4)
{
  result.n128_u32[3] = 1.0;
  *a4 = result;
  return result;
}

uint64_t __vfx_script_VMCParticles_particleInit_375(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

__n128 ParticleInit_VMCParticles_particleInit_32(__n128 result, uint64_t a2, uint64_t a3, __n128 *a4)
{
  result.n128_u32[3] = 1.0;
  *a4 = result;
  return result;
}

uint64_t __vfx_script_VMCParticles_particleInit_32(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

__n128 ParticleInit_VMCParticles_particleInit_100(__n128 result, uint64_t a2, uint64_t a3, __n128 *a4)
{
  result.n128_u32[3] = 1.0;
  *a4 = result;
  return result;
}

uint64_t __vfx_script_VMCParticles_particleInit_100(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

__n128 ParticleInit_VMCParticles_particleInit_1(__n128 result, uint64_t a2, uint64_t a3, __n128 *a4)
{
  result.n128_u32[3] = 1.0;
  *a4 = result;
  return result;
}

uint64_t __vfx_script_VMCParticles_particleInit_1(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

__n128 ParticleInit_VMCParticles_particleInit_147(__n128 result, uint64_t a2, uint64_t a3, __n128 *a4)
{
  result.n128_u32[3] = 1.0;
  *a4 = result;
  return result;
}

uint64_t __vfx_script_VMCParticles_particleInit_147(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

__n128 ParticleInit_VMCParticles_particleInit_253(__n128 result, uint64_t a2, uint64_t a3, __n128 *a4)
{
  result.n128_u32[3] = 1.0;
  *a4 = result;
  return result;
}

uint64_t __vfx_script_VMCParticles_particleInit_253(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

__n128 ParticleInit_VMCParticles_particleInit_155(__n128 result, uint64_t a2, uint64_t a3, __n128 *a4)
{
  result.n128_u32[3] = 1.0;
  *a4 = result;
  return result;
}

uint64_t __vfx_script_VMCParticles_particleInit_155(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

__n128 ParticleInit_VMCParticles_particleInit_351(__n128 result, uint64_t a2, uint64_t a3, __n128 *a4)
{
  result.n128_u32[3] = 1.0;
  *a4 = result;
  return result;
}

uint64_t __vfx_script_VMCParticles_particleInit_351(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

__n128 ParticleInit_VMCParticles_particleInit_168(__n128 result, uint64_t a2, uint64_t a3, __n128 *a4)
{
  result.n128_u32[3] = 1.0;
  *a4 = result;
  return result;
}

uint64_t __vfx_script_VMCParticles_particleInit_168(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

__n128 ParticleInit_VMCParticles_particleInit_128(__n128 result, uint64_t a2, uint64_t a3, __n128 *a4)
{
  result.n128_u32[3] = 1.0;
  *a4 = result;
  return result;
}

uint64_t __vfx_script_VMCParticles_particleInit_128(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

void ParticleUpdate_VMCParticles_particleUpdate_258(float a1, float32x4_t a2, float a3, uint64_t a4, uint64_t a5, float *a6, float32x4_t *a7)
{
  if (flt_34118[sqrtf(vaddv_f32(vmul_f32(*a2.f32, *a2.f32))) > 0.1] <= a1 && a1 <= 0.4)
  {
    a1 = 0.32;
  }

  *a6 = a1;
  *a7 = vmlaq_n_f32(0, a2, (fminf(fmaxf((a3 + -0.1) / 0.9, 0.0), 1.0) * 0.04) + 0.96);
}

uint64_t __vfx_script_VMCParticles_particleUpdate_258(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

void ParticleUpdate_VMCParticles_particleUpdate_176(float a1, float32x4_t a2, float a3, uint64_t a4, uint64_t a5, float *a6, float32x4_t *a7)
{
  if (flt_34118[sqrtf(vaddv_f32(vmul_f32(*a2.f32, *a2.f32))) > 0.1] <= a1 && a1 <= 0.4)
  {
    a1 = 0.32;
  }

  *a6 = a1;
  *a7 = vmlaq_n_f32(0, a2, (fminf(fmaxf((a3 + -0.1) / 0.9, 0.0), 1.0) * 0.02) + 0.98);
}

uint64_t __vfx_script_VMCParticles_particleUpdate_176(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

void ParticleUpdate_VMCParticles_particleUpdate_94(float a1, float32x4_t a2, float a3, uint64_t a4, uint64_t a5, float *a6, float32x4_t *a7)
{
  if (flt_34118[sqrtf(vaddv_f32(vmul_f32(*a2.f32, *a2.f32))) > 0.11] <= a1 && a1 <= 0.4)
  {
    a1 = 0.32;
  }

  *a6 = a1;
  *a7 = vmlaq_n_f32(0, a2, (fminf(fmaxf((a3 + -0.1) / 0.9, 0.0), 1.0) * 0.02) + 0.98);
}

uint64_t __vfx_script_VMCParticles_particleUpdate_94(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

void ParticleUpdate_VMCParticles_particleUpdate_348(float a1, float32x4_t a2, float a3, uint64_t a4, uint64_t a5, float *a6, float32x4_t *a7)
{
  if (flt_34118[sqrtf(vaddv_f32(vmul_f32(*a2.f32, *a2.f32))) > 0.1] <= a1 && a1 <= 0.4)
  {
    a1 = 0.32;
  }

  *a6 = a1;
  *a7 = vmlaq_n_f32(0, a2, (fminf(fmaxf((a3 + -0.1) / 0.9, 0.0), 1.0) * 0.02) + 0.98);
}

uint64_t __vfx_script_VMCParticles_particleUpdate_348(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

void ParticleUpdate_VMCParticles_particleUpdate_11(float a1, float32x4_t a2, float a3, uint64_t a4, uint64_t a5, float *a6, float32x4_t *a7)
{
  if (flt_34118[sqrtf(vaddv_f32(vmul_f32(*a2.f32, *a2.f32))) > 0.14] <= a1 && a1 <= 0.4)
  {
    a1 = 0.32;
  }

  *a6 = a1;
  *a7 = vmlaq_n_f32(0, a2, (fminf(fmaxf((a3 + -0.1) / 0.9, 0.0), 1.0) * 0.04) + 0.96);
}

uint64_t __vfx_script_VMCParticles_particleUpdate_11(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

void ParticleUpdate_VMCParticles_particleUpdate_23(float a1, float32x4_t a2, float a3, uint64_t a4, uint64_t a5, float *a6, float32x4_t *a7)
{
  if (flt_34118[sqrtf(vaddv_f32(vmul_f32(*a2.f32, *a2.f32))) > 0.14] <= a1 && a1 <= 0.4)
  {
    a1 = 0.32;
  }

  *a6 = a1;
  *a7 = vmlaq_n_f32(0, a2, (fminf(fmaxf((a3 + -0.1) / 0.9, 0.0), 1.0) * 0.03) + 0.97);
}

uint64_t __vfx_script_VMCParticles_particleUpdate_23(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

void ParticleUpdate_VMCParticles_particleUpdate_68(float a1, float32x4_t a2, float a3, uint64_t a4, uint64_t a5, float *a6, float32x4_t *a7)
{
  if (flt_34118[sqrtf(vaddv_f32(vmul_f32(*a2.f32, *a2.f32))) > 0.12] <= a1 && a1 <= 0.4)
  {
    a1 = 0.32;
  }

  *a6 = a1;
  *a7 = vmlaq_n_f32(0, a2, (fminf(fmaxf((a3 + -0.1) / 0.9, 0.0), 1.0) * 0.02) + 0.98);
}

uint64_t __vfx_script_VMCParticles_particleUpdate_68(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

void ParticleUpdate_VMCParticles_particleUpdate_117(float a1, float32x4_t a2, float a3, uint64_t a4, uint64_t a5, float *a6, float32x4_t *a7)
{
  if (flt_34118[sqrtf(vaddv_f32(vmul_f32(*a2.f32, *a2.f32))) > 0.1] <= a1 && a1 <= 0.4)
  {
    a1 = 0.32;
  }

  *a6 = a1;
  *a7 = vmlaq_n_f32(0, a2, (fminf(fmaxf((a3 + -0.1) / 0.9, 0.0), 1.0) * 0.03) + 0.97);
}

uint64_t __vfx_script_VMCParticles_particleUpdate_117(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

void ParticleUpdate_VMCParticles_particleUpdate_30(float a1, float32x4_t a2, float a3, uint64_t a4, uint64_t a5, float *a6, float32x4_t *a7)
{
  if (flt_34118[sqrtf(vaddv_f32(vmul_f32(*a2.f32, *a2.f32))) > 0.1] <= a1 && a1 <= 0.4)
  {
    a1 = 0.32;
  }

  *a6 = a1;
  *a7 = vmlaq_n_f32(0, a2, (fminf(fmaxf((a3 + -0.1) / 0.9, 0.0), 1.0) * 0.03) + 0.97);
}

uint64_t __vfx_script_VMCParticles_particleUpdate_30(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

void ParticleUpdate_VMCParticles_particleUpdate_381(float a1, float32x4_t a2, float a3, uint64_t a4, uint64_t a5, float *a6, float32x4_t *a7)
{
  if (flt_34118[sqrtf(vaddv_f32(vmul_f32(*a2.f32, *a2.f32))) > 0.12] <= a1 && a1 <= 0.4)
  {
    a1 = 0.32;
  }

  *a6 = a1;
  *a7 = vmlaq_n_f32(0, a2, (fminf(fmaxf((a3 + -0.1) / 0.9, 0.0), 1.0) * 0.03) + 0.97);
}

uint64_t __vfx_script_VMCParticles_particleUpdate_381(uint64_t a1)
{
  if (qword_4D758 != -1)
  {
    sub_32454();
  }

  vfx_script_get_iteration_range();
  return vfx_script_get_arguments_buffer();
}

void sub_8264(id a1)
{
  qword_4D760 = sel_registerName("setValue:forKeyPath:");
  qword_4D768 = sel_registerName("valueForKeyPath:");
  qword_4D770 = objc_lookUpClass("NSString");
  qword_4D778 = sel_registerName("stringWithUTF8String:");
  qword_4D780 = objc_lookUpClass("VFXTransaction");
  qword_4D788 = sel_registerName("begin");
  qword_4D790 = sel_registerName("setAnimationDurationAsFloat:");
  qword_4D798 = sel_registerName("commit");
  qword_4D7A0 = objc_lookUpClass("NSDictionary");
  qword_4D7A8 = objc_lookUpClass("NSMutableDictionary");
  qword_4D7B0 = sel_registerName("dictionary");
  qword_4D7B8 = sel_registerName("setValue:forKey:");
  qword_4D7C0 = sel_registerName("setObject:forKey:");
  qword_4D7C8 = objc_lookUpClass("NSValue");
  qword_4D7D0 = objc_lookUpClass("NSNumber");
  qword_4D7D8 = sel_registerName("numberWithBool:");
  qword_4D7E0 = sel_registerName("numberWithFloat:");
  qword_4D7E8 = sel_registerName("numberWithUnsignedInteger:");
  qword_4D7F0 = sel_registerName("firstObject");
  qword_4D7F8 = sel_registerName("count");
  qword_4D800 = objc_lookUpClass("VFXNode");
  qword_4D808 = sel_registerName("addAnimationAsset:forKey:");
  qword_4D810 = sel_registerName("removeAllAnimations");
  qword_4D818 = sel_registerName("removeAnimationForKey:");
  qword_4D820 = sel_registerName("script_rootNode");
  qword_4D828 = sel_registerName("clone");
  qword_4D830 = sel_registerName("parentNode");
  qword_4D838 = sel_registerName("addChildNode:");
  qword_4D840 = sel_registerName("deepClone");
  qword_4D848 = sel_registerName("insertChildNode:atIndex:");
  qword_4D850 = sel_registerName("insertChildNode:");
  qword_4D858 = sel_registerName("removeFromParentNode");
  qword_4D860 = sel_registerName("childNodeWithName:");
  qword_4D868 = sel_registerName("convertPosition:fromNode:");
  qword_4D870 = sel_registerName("convertVector:fromNode:");
  qword_4D878 = sel_registerName("convertTransform:fromNode:");
  qword_4D880 = sel_registerName("convertPosition:toNode:");
  qword_4D888 = sel_registerName("convertVector:toNode:");
  qword_4D890 = sel_registerName("convertTransform:toNode:");
  qword_4D898 = sel_registerName("localTranslateBy:");
  qword_4D8A0 = sel_registerName("localRotateBy:");
  qword_4D8A8 = sel_registerName("rotateBy:aroundTarget:");
  qword_4D8B0 = sel_registerName("projectPoint:");
  qword_4D8B8 = sel_registerName("unprojectPoint:");
  qword_4D8C0 = sel_registerName("script_hitTest:options:");
  qword_4D8C8 = sel_registerName("hitTestWithSegmentFromPoint:toPoint:options:");
  qword_4D8D0 = sel_registerName("node");
  qword_4D8D8 = sel_registerName("setState:");
  qword_4D8E0 = sel_registerName("setStateNamed:");
  qword_4D8E8 = sel_registerName("_contentsScaleFactor");
  qword_4D8F0 = sel_registerName("_screenSize");
  qword_4D8F8 = sel_registerName("physicsBody");
  qword_4D900 = sel_registerName("script_instantiate:");
  qword_4D908 = sel_registerName("geometryIndex");
  qword_4D910 = sel_registerName("faceIndex");
  qword_4D918 = sel_registerName("localCoordinates");
  qword_4D920 = sel_registerName("worldCoordinates");
  qword_4D928 = sel_registerName("localNormal");
  qword_4D930 = sel_registerName("worldNormal");
  qword_4D938 = sel_registerName("modelTransform");
  qword_4D940 = sel_registerName("boneNode");
  qword_4D948 = sel_registerName("uv0");
  qword_4D950 = sel_registerName("applyForce:impulse:");
  qword_4D958 = sel_registerName("applyForce:atPosition:impulse:");
  qword_4D960 = sel_registerName("applyTorque:impulse:");
  qword_4D968 = sel_registerName("presentationObject");
}

id sub_87D0()
{
  v1 = sub_32538();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer19AXMockMotionManager__mockDeviceMotion);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer19AXMockMotionManager__mockDeviceMotion);
  }

  else
  {
    v7 = objc_allocWithZone(type metadata accessor for MockCMAttitude());
    v8 = sub_2835C(0.0, 0.0, 0.0);
    sub_32528();
    sub_32508();
    v10 = v9;
    (*(v2 + 8))(v4, v1);
    v11 = type metadata accessor for MockDeviceMotion();
    v12 = objc_allocWithZone(v11);
    v13 = &v12[OBJC_IVAR____TtC18AXMotionCuesServer16MockDeviceMotion__userAcceleration];
    *(v13 + 1) = 0;
    *(v13 + 2) = 0;
    *v13 = 0;
    v14 = &v12[OBJC_IVAR____TtC18AXMotionCuesServer16MockDeviceMotion__gravity];
    *(v14 + 1) = 0;
    *(v14 + 2) = 0;
    *v14 = 0;
    v15 = &v12[OBJC_IVAR____TtC18AXMotionCuesServer16MockDeviceMotion__rotationRate];
    *(v15 + 1) = 0;
    *(v15 + 2) = 0;
    *v15 = 0;
    *&v12[OBJC_IVAR____TtC18AXMotionCuesServer16MockDeviceMotion__attitude] = v8;
    *&v12[OBJC_IVAR____TtC18AXMotionCuesServer16MockDeviceMotion__timestamp] = v10;
    v18.receiver = v12;
    v18.super_class = v11;
    v6 = objc_msgSendSuper2(&v18, "init");
    v5 = 0;
  }

  v16 = v5;
  return v6;
}

id sub_89CC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (v0[OBJC_IVAR____TtC18AXMotionCuesServer19AXMockMotionManager__isDeviceMotionActive] == 1)
  {
    v0[OBJC_IVAR____TtC18AXMotionCuesServer19AXMockMotionManager__isDeviceMotionActive] = 0;
    v3 = OBJC_IVAR____TtC18AXMotionCuesServer19AXMockMotionManager__timer;
    v4 = *&v1[OBJC_IVAR____TtC18AXMotionCuesServer19AXMockMotionManager__timer];
    if (v4)
    {
      [v4 invalidate];
      v5 = *&v1[v3];
    }

    else
    {
      v5 = 0;
    }

    *&v1[v3] = 0;

    (*&v1[OBJC_IVAR____TtC18AXMotionCuesServer19AXMockMotionManager__completionHandler])();
  }

  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_8B14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (Strong + OBJC_IVAR____TtC18AXMotionCuesServer19AXMockMotionManager__data);
    swift_beginAccess();
    v5 = *v4;
    if (*v4 >> 62)
    {
      v6 = sub_32E58();
    }

    else
    {
      v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    }

    v7 = v4[1];
    if (v7 == v6)
    {
      swift_endAccess();
      sub_8EA0();
LABEL_12:

      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = sub_32E28();
    }

    else
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      if (v7 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_18:
        __break(1u);
        return;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    if (!__OFADD__(v7, 1))
    {
      v4[1] = v7 + 1;
      swift_endAccess();
      v10 = *&v3[OBJC_IVAR____TtC18AXMotionCuesServer19AXMockMotionManager__mockDeviceMotion];
      *&v3[OBJC_IVAR____TtC18AXMotionCuesServer19AXMockMotionManager__mockDeviceMotion] = v9;

      v3 = v10;
      goto LABEL_12;
    }

    goto LABEL_17;
  }
}

void sub_8C44(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_8D14(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + OBJC_IVAR____TtC18AXMotionCuesServer19AXMockMotionManager__isDeviceMotionActive) & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC18AXMotionCuesServer19AXMockMotionManager__isDeviceMotionActive) = 1;
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10[4] = a1;
    v10[5] = v6;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_8C44;
    v10[3] = a2;
    v7 = _Block_copy(v10);

    v8 = [v5 scheduledTimerWithTimeInterval:1 repeats:v7 block:0.0167];
    _Block_release(v7);
    v9 = *(v2 + OBJC_IVAR____TtC18AXMotionCuesServer19AXMockMotionManager__timer);
    *(v2 + OBJC_IVAR____TtC18AXMotionCuesServer19AXMockMotionManager__timer) = v8;
  }
}

void sub_8EA0()
{
  if (*(v0 + OBJC_IVAR____TtC18AXMotionCuesServer19AXMockMotionManager__isDeviceMotionActive) == 1)
  {
    *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer19AXMockMotionManager__isDeviceMotionActive) = 0;
    v1 = OBJC_IVAR____TtC18AXMotionCuesServer19AXMockMotionManager__timer;
    v2 = *(v0 + OBJC_IVAR____TtC18AXMotionCuesServer19AXMockMotionManager__timer);
    if (v2)
    {
      [v2 invalidate];
      v3 = *(v0 + v1);
    }

    else
    {
      v3 = 0;
    }

    *(v0 + v1) = 0;

    (*(v0 + OBJC_IVAR____TtC18AXMotionCuesServer19AXMockMotionManager__completionHandler))();
  }
}

id variable initialization expression of AXMotionCuesServer._motionManager()
{
  v0 = objc_allocWithZone(CMMotionManager);

  return [v0 initUsing6AxisSensorFusion];
}

id variable initialization expression of AXMotionCuesRootViewController.gridView()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

double variable initialization expression of AXMotionCuesRootViewController.statistics@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0x7FEFFFFFFFFFFFFFLL;
  result = 1.79769313e308;
  *(a1 + 40) = xmmword_34130;
  return result;
}

double variable initialization expression of AXMotionCuesVFXManager._viewSize()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;

  return v2;
}

__n128 sub_9160(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_916C(uint64_t a1, int a2)
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

uint64_t sub_918C(uint64_t result, int a2, int a3)
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

__n128 initializeBufferWithCopyOfBuffer for IMUVector(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IMUVector(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IMUVector(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

__n128 sub_9254(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_9274(uint64_t a1, int a2)
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

uint64_t sub_9294(uint64_t result, int a2, int a3)
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

uint64_t sub_92E4(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for CFString(0);
  sub_9930(&qword_4BC10, type metadata accessor for CFString, &unk_3458C);
  return sub_32578() & 1;
}

void *sub_936C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_9390(uint64_t a1, id *a2)
{
  result = sub_32978();
  *a2 = 0;
  return result;
}

uint64_t sub_9408(uint64_t a1, id *a2)
{
  v3 = sub_32988();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_9488@<X0>(uint64_t *a1@<X8>)
{
  sub_32998();
  v2 = sub_32968();

  *a1 = v2;
  return result;
}

uint64_t sub_94CC()
{
  sub_32998();
  v0 = sub_32A18();

  return v0;
}

uint64_t sub_9508(uint64_t a1)
{
  sub_32998();
  sub_329E8();
}

Swift::Int sub_955C(uint64_t a1)
{
  sub_32998();
  sub_32F78();
  sub_329E8();
  v1 = sub_32F88();

  return v1;
}

id sub_95DC@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_95E8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_32578();
}

uint64_t sub_9654(void *a1, uint64_t *a2)
{
  v2 = sub_32998();
  v4 = v3;
  if (v2 == sub_32998() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_32EE8();
  }

  return v7 & 1;
}

uint64_t sub_96DC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_32968();

  *a2 = v3;
  return result;
}

uint64_t sub_9724@<X0>(uint64_t *a1@<X8>)
{
  result = sub_32998();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_9750()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_9790(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_97E4(uint64_t a1)
{
  v2 = sub_9930(&qword_4BC18, type metadata accessor for VFXWorldLoaderOption, &unk_344B4);
  v3 = sub_9930(&qword_4BC20, type metadata accessor for VFXWorldLoaderOption, &unk_34358);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_9930(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_99D4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

Swift::Int sub_9B0C(uint64_t a1, uint64_t a2)
{
  sub_32F78();
  swift_getWitnessTable();
  sub_32588();
  return sub_32F88();
}

uint64_t sub_9BEC()
{
  v1 = v0;
  v2 = sub_A168(&qword_4C160, &qword_345D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtC18AXMotionCuesServer22InVehicleEventListener__continuation;
  swift_beginAccess();
  if (!(*(v3 + 48))(&v1[v6], 1, v2))
  {
    (*(v3 + 16))(v5, &v1[v6], v2);
    sub_32B18();
    (*(v3 + 8))(v5, v2);
  }

  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v7, v1);

  sub_B744(&v1[v6], &qword_4BE50, &qword_345F0);
  return swift_deallocClassInstance();
}

void sub_9DB4(uint64_t a1)
{
  sub_9E44(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_9E44(uint64_t a1)
{
  if (!qword_4BD40)
  {
    sub_9EA8(&qword_4C160, &qword_345D8);
    v1 = sub_32CF8();
    if (!v2)
    {
      atomic_store(v1, &qword_4BD40);
    }
  }
}

uint64_t sub_9EA8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_9F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_32538();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_9FE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_32538();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_A0BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A0F4(uint64_t a1)
{
  result = sub_32538();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_A168(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_A1B0@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_32698();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_A168(&qword_4BE58, &qword_345F8);
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = sub_A168(&qword_4BE50, &qword_345F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = OBJC_IVAR____TtC18AXMotionCuesServer22InVehicleEventListener__continuation;
  swift_beginAccess();
  sub_A630(v1 + v12, v11);
  v13 = sub_A168(&qword_4C160, &qword_345D8);
  LODWORD(v12) = (*(*(v13 - 8) + 48))(v11, 1, v13);
  sub_B744(v11, &qword_4BE50, &qword_345F0);
  if (v12 == 1)
  {
    v14 = CFNotificationCenterGetDarwinNotifyCenter();
    v15 = sub_32968();
    CFNotificationCenterAddObserver(v14, v1, sub_A6A0, v15, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v16 = CFNotificationCenterGetDarwinNotifyCenter();
    v17 = sub_32968();
    CFNotificationCenterAddObserver(v16, v1, sub_A6A0, v17, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    type metadata accessor for InVehicleEvent(0);
    (*(v25 + 104))(v8, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v26);
    return sub_32B48();
  }

  else
  {
    if (qword_4BAF0 != -1)
    {
      swift_once();
    }

    v19 = sub_AD0C(v2, MCLog);
    swift_beginAccess();
    (*(v3 + 16))(v5, v19, v2);
    v20 = sub_32678();
    v21 = sub_32C58();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "Motion activity updates already started.", v22, 2u);
    }

    (*(v3 + 8))(v5, v2);
    sub_AD44();
    swift_allocError();
    *v23 = 0xD000000000000028;
    v23[1] = 0x8000000000037560;
    return swift_willThrow();
  }
}

uint64_t sub_A630(uint64_t a1, uint64_t a2)
{
  v4 = sub_A168(&qword_4BE50, &qword_345F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_A6A0(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_AE48(a2, a3);
}

uint64_t sub_A720(uint64_t a1, uint64_t a2)
{
  v4 = sub_A168(&qword_4BE50, &qword_345F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_A168(&qword_4C160, &qword_345D8);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC18AXMotionCuesServer22InVehicleEventListener__continuation;
  swift_beginAccess();
  sub_AD98(v6, a2 + v9);
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  return sub_32AF8();
}

void sub_A8A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveEveryObserver(v4, v3);
  }
}

uint64_t sub_A914()
{
  v1 = v0;
  v2 = sub_32698();
  v24 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_A168(&qword_4BE50, &qword_345F0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = sub_A168(&qword_4C160, &qword_345D8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - v13;
  v15 = OBJC_IVAR____TtC18AXMotionCuesServer22InVehicleEventListener__continuation;
  swift_beginAccess();
  sub_A630(v1 + v15, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_B744(v10, &qword_4BE50, &qword_345F0);
    if (qword_4BAF0 != -1)
    {
      swift_once();
    }

    v16 = sub_AD0C(v2, MCLog);
    swift_beginAccess();
    v17 = v24;
    (*(v24 + 16))(v4, v16, v2);
    v18 = sub_32678();
    v19 = sub_32C58();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "Motion activity updates already stopped.", v20, 2u);
    }

    (*(v17 + 8))(v4, v2);
    sub_AD44();
    swift_allocError();
    *v21 = 0xD000000000000028;
    v21[1] = 0x8000000000037590;
    return swift_willThrow();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    sub_32B18();
    (*(v12 + 8))(v14, v11);
    (*(v12 + 56))(v8, 1, 1, v11);
    swift_beginAccess();
    sub_AD98(v8, v1 + v15);
    return swift_endAccess();
  }
}

uint64_t sub_AD0C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_AD44()
{
  result = qword_4C0F0;
  if (!qword_4C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4C0F0);
  }

  return result;
}

uint64_t sub_AD98(uint64_t a1, uint64_t a2)
{
  v4 = sub_A168(&qword_4BE50, &qword_345F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_AE08()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_AE48(uint64_t a1, void *a2)
{
  v4 = sub_A168(&qword_4C160, &qword_345D8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - v6;
  v8 = sub_A168(&qword_4BE60, &qword_34600);
  v9 = __chkstk_darwin(v8 - 8);
  v59 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v61 = &v54 - v11;
  v63 = type metadata accessor for InVehicleEvent(0);
  v12 = __chkstk_darwin(v63);
  v58 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v60 = &v54 - v15;
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v18 = sub_32698();
  v64 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v54 - v22;
  if (a1)
  {

    v65 = sub_32968();
    v24 = sub_32968();
    if (a2)
    {
      v62 = v24;
      v55 = v7;
      v56 = v5;
      v57 = v4;
      v67 = a2;
      v66 = v65;
      type metadata accessor for CFNotificationName(0);
      sub_B690();
      v25 = a2;
      v26 = sub_32948();

      if (v26)
      {
        v28 = v56;
        v27 = v57;
        if (qword_4BAF0 != -1)
        {
          swift_once();
        }

        v29 = sub_AD0C(v18, MCLog);
        swift_beginAccess();
        (*(v64 + 16))(v23, v29, v18);
        v30 = sub_32678();
        v31 = sub_32C68();
        v32 = os_log_type_enabled(v30, v31);
        v33 = v55;
        if (v32)
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_0, v30, v31, "Received vehicle enter", v34, 2u);
        }

        (*(v64 + 8))(v23, v18);
        sub_32518();
        v17[*(v63 + 20)] = 1;
        v35 = OBJC_IVAR____TtC18AXMotionCuesServer22InVehicleEventListener__continuation;
        swift_beginAccess();
        if ((*(v28 + 48))(a1 + v35, 1, v27))
        {
          sub_B6E8(v17);
          swift_endAccess();

          v36 = 1;
          v37 = v61;
LABEL_24:
          v53 = sub_A168(&unk_4BE70, &unk_34608);
          (*(*(v53 - 8) + 56))(v37, v36, 1, v53);
          sub_B744(v37, &qword_4BE60, &qword_34600);
          return;
        }

        (*(v28 + 16))(v33, a1 + v35, v27);
        swift_endAccess();
        sub_B7A4(v17, v60);
        v37 = v61;
        sub_32B08();

        (*(v28 + 8))(v33, v27);
        v52 = v17;
      }

      else
      {
        v67 = a2;
        v39 = v62;
        v66 = v62;
        v40 = v25;
        v41 = sub_32948();

        if ((v41 & 1) == 0)
        {

          return;
        }

        if (qword_4BAF0 != -1)
        {
          swift_once();
        }

        v42 = sub_AD0C(v18, MCLog);
        swift_beginAccess();
        (*(v64 + 16))(v21, v42, v18);
        v43 = sub_32678();
        v44 = sub_32C68();
        v45 = os_log_type_enabled(v43, v44);
        v47 = v56;
        v46 = v57;
        v48 = v55;
        if (v45)
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&dword_0, v43, v44, "Received vehicle exit", v49, 2u);
        }

        (*(v64 + 8))(v21, v18);
        v50 = v58;
        sub_32518();
        *(v50 + *(v63 + 20)) = 0;
        v51 = OBJC_IVAR____TtC18AXMotionCuesServer22InVehicleEventListener__continuation;
        swift_beginAccess();
        if ((*(v47 + 48))(a1 + v51, 1, v46))
        {
          sub_B6E8(v50);
          swift_endAccess();

          v36 = 1;
          v37 = v59;
          goto LABEL_24;
        }

        (*(v47 + 16))(v48, a1 + v51, v46);
        swift_endAccess();
        sub_B7A4(v50, v60);
        v37 = v59;
        sub_32B08();

        (*(v47 + 8))(v48, v46);
        v52 = v50;
      }

      sub_B6E8(v52);
      v36 = 0;
      goto LABEL_24;
    }

    v38 = v65;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_B690()
{
  result = qword_4BE68;
  if (!qword_4BE68)
  {
    type metadata accessor for CFNotificationName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4BE68);
  }

  return result;
}

uint64_t sub_B6E8(uint64_t a1)
{
  v2 = type metadata accessor for InVehicleEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B744(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_A168(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_B7A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InVehicleEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B830()
{
  v0 = sub_32698();
  sub_1AFB0(v0, MCLog);
  sub_AD0C(v0, MCLog);
  return sub_32688();
}

uint64_t sub_B8AC()
{
  v0 = sub_32698();
  sub_1AFB0(v0, MCPLog);
  sub_AD0C(v0, MCPLog);
  return sub_32688();
}

uint64_t sub_B950(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_32698();

  return sub_AD0C(v4, a2);
}

uint64_t sub_B9D4()
{
  type metadata accessor for AXMotionCuesActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  static AXMotionCuesActor.shared = v0;
  return result;
}

uint64_t *AXMotionCuesActor.shared.unsafeMutableAddressor()
{
  if (qword_4BB00 != -1)
  {
    swift_once();
  }

  return &static AXMotionCuesActor.shared;
}

uint64_t static AXMotionCuesActor.shared.getter()
{
  if (qword_4BB00 != -1)
  {
    swift_once();
  }
}

uint64_t AXMotionCuesActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_BB18(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AXMotionCuesActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

id sub_BB50()
{
  result = [objc_allocWithZone(type metadata accessor for AXMotionCuesServer()) init];
  qword_4BE80 = result;
  return result;
}

id sub_BB80()
{
  v1 = OBJC_IVAR___AXMotionCuesServer____lazy_storage____displayManager;
  v2 = *(v0 + OBJC_IVAR___AXMotionCuesServer____lazy_storage____displayManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___AXMotionCuesServer____lazy_storage____displayManager);
LABEL_5:
    v6 = v2;
    return v3;
  }

  result = [objc_opt_self() sharedDisplayManager];
  if (result)
  {
    v5 = *(v0 + v1);
    *(v0 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_BC04()
{
  v1 = OBJC_IVAR___AXMotionCuesServer____lazy_storage___bannerManager;
  v2 = *(v0 + OBJC_IVAR___AXMotionCuesServer____lazy_storage___bannerManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___AXMotionCuesServer____lazy_storage___bannerManager);
  }

  else
  {
    v4 = [objc_allocWithZone(AXAlertBannerManager) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_BC78()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___AXMotionCuesServer__mainDisplayViewController] = 0;
  *&v0[OBJC_IVAR___AXMotionCuesServer____lazy_storage____displayManager] = 0;
  *&v0[OBJC_IVAR___AXMotionCuesServer____lazy_storage___bannerManager] = 0;
  *&v0[OBJC_IVAR___AXMotionCuesServer__screenMonitor] = 0;
  v0[OBJC_IVAR___AXMotionCuesServer__isRunning] = 0;
  *&v0[OBJC_IVAR___AXMotionCuesServer__startTime] = 0;
  v0[OBJC_IVAR___AXMotionCuesServer__updatePending] = 0;
  v0[OBJC_IVAR___AXMotionCuesServer__updating] = 0;
  v0[OBJC_IVAR___AXMotionCuesServer__isResetting] = 0;
  *&v0[OBJC_IVAR___AXMotionCuesServer__inVehicleEventListener] = 0;
  *&v0[OBJC_IVAR___AXMotionCuesServer__inVehicleEventTask] = 0;
  v0[OBJC_IVAR___AXMotionCuesServer__isInVehicle] = 0;
  v0[OBJC_IVAR___AXMotionCuesServer__needsBannerForInVehicleStateChange] = 0;
  v0[OBJC_IVAR___AXMotionCuesServer__didSnoozeCuesFromBanner] = 0;
  v3 = OBJC_IVAR___AXMotionCuesServer__motionManager;
  v4 = [objc_allocWithZone(CMMotionManager) initUsing6AxisSensorFusion];
  *&v1[v3] = v4;
  v5 = &v1[OBJC_IVAR___AXMotionCuesServer_bannerIdentifier];
  type metadata accessor for DeviceMotionProvider();
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *&v1[OBJC_IVAR___AXMotionCuesServer__deviceMotionProvider] = v6;
  type metadata accessor for AXMotionCuesModel();
  swift_allocObject();
  v7 = v4;

  *&v1[OBJC_IVAR___AXMotionCuesServer__motionCuesModel] = sub_260E0(v8);
  AXMCEnableControlCenterModule();
  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "init");
}

id static AXMotionCuesServer.sharedInstance()()
{
  if (qword_4BB08 != -1)
  {
    swift_once();
  }

  v0 = swift_dynamicCastClassUnconditional();

  return v0;
}

id AXMotionCuesServer.processMessage(_:withIdentifier:fromClientWithIdentifier:)(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v43 = a3;
  v9 = sub_A168(&qword_4C580, &qword_34670);
  __chkstk_darwin(v9 - 8);
  v39 = v36 - v10;
  v11 = sub_32698();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = a1;
  }

  else
  {
    v15 = sub_190E0(&_swiftEmptyArrayStorage);
  }

  v37 = v15;
  v42 = sub_32928();
  v17 = v16;
  if (qword_4BAF0 != -1)
  {
    swift_once();
  }

  v18 = sub_AD0C(v11, MCLog);
  swift_beginAccess();
  (*(v12 + 16))(v14, v18, v11);

  v19 = sub_32678();
  v20 = sub_32C68();

  v21 = os_log_type_enabled(v19, v20);
  v40 = a4;
  v41 = a2;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v36[1] = v5;
    v23 = v22;
    v44 = swift_slowAlloc();
    *v23 = 134218498;
    *(v23 + 4) = a2;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_182B0(v43, a4, &v44);
    *(v23 + 22) = 2080;
    *(v23 + 24) = sub_182B0(v42, v17, &v44);
    _os_log_impl(&dword_0, v19, v20, "Service got a message: %ld from client: %s. Payload: %s", v23, 0x20u);
    swift_arrayDestroy();
  }

  (*(v12 + 8))(v14, v11);
  result = [objc_opt_self() sharedServiceManager];
  if (result)
  {
    v25 = result;
    v26 = sub_32968();
    v27 = v38;
    [v25 beginTransactionWithIdentifier:v26 forService:v38];

    v28 = sub_32AE8();
    v29 = v39;
    (*(*(v28 - 8) + 56))(v39, 1, 1, v28);
    sub_32AC8();
    v30 = v40;

    v31 = v27;
    v32 = sub_32AB8();
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = &protocol witness table for MainActor;
    v35 = v41;
    v34 = v42;
    v33[4] = v41;
    v33[5] = v31;
    v33[6] = v43;
    v33[7] = v30;
    v33[8] = v37;
    v33[9] = v35;
    v33[10] = v34;
    v33[11] = v17;
    sub_DBE0(0, 0, v29, &unk_34680, v33);

    return sub_190E0(&_swiftEmptyArrayStorage);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_C3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 288) = v15;
  *(v8 + 272) = v14;
  *(v8 + 256) = a7;
  *(v8 + 264) = a8;
  *(v8 + 240) = a5;
  *(v8 + 248) = a6;
  *(v8 + 232) = a4;
  v9 = sub_32698();
  *(v8 + 296) = v9;
  *(v8 + 304) = *(v9 - 8);
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  sub_32AC8();
  *(v8 + 352) = sub_32AB8();
  v11 = sub_32A98();
  *(v8 + 360) = v11;
  *(v8 + 368) = v10;

  return (_swift_task_switch)(sub_C4F8, v11, v10);
}

id sub_C4F8()
{
  v74 = v0;
  v1 = *(v0 + 232);
  if (v1 > 2)
  {
    switch(v1)
    {
      case 3:
        if (qword_4BAF0 != -1)
        {
          swift_once();
        }

        v29 = *(v0 + 344);
        v30 = *(v0 + 296);
        v31 = *(v0 + 304);
        v32 = sub_AD0C(v30, MCLog);
        swift_beginAccess();
        (*(v31 + 16))(v29, v32, v30);

        v33 = sub_32678();
        v34 = sub_32C68();

        v35 = os_log_type_enabled(v33, v34);
        v36 = *(v0 + 344);
        v37 = *(v0 + 296);
        v38 = *(v0 + 304);
        if (!v35)
        {
          goto LABEL_28;
        }

        v40 = *(v0 + 248);
        v39 = *(v0 + 256);
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v73[0] = v42;
        *v41 = 136315138;
        *(v41 + 4) = sub_182B0(v40, v39, v73);
        v43 = "New visible handler client: %s";
        break;
      case 4:
        if (qword_4BAF0 != -1)
        {
          swift_once();
        }

        v44 = *(v0 + 336);
        v45 = *(v0 + 296);
        v46 = *(v0 + 304);
        v47 = sub_AD0C(v45, MCLog);
        swift_beginAccess();
        (*(v46 + 16))(v44, v47, v45);

        v33 = sub_32678();
        v34 = sub_32C68();

        v48 = os_log_type_enabled(v33, v34);
        v36 = *(v0 + 336);
        v37 = *(v0 + 296);
        v38 = *(v0 + 304);
        if (!v48)
        {
LABEL_28:

          (*(v38 + 8))(v36, v37);
LABEL_38:
          result = [objc_opt_self() sharedServiceManager];
          if (result)
          {
            v66 = result;
            v67 = *(v0 + 240);

            v68 = sub_32968();
            [v66 endTransactionWithIdentifier:v68 forService:v67];

            v69 = *(v0 + 8);

            return v69();
          }

          else
          {
            __break(1u);
          }

          return result;
        }

        v50 = *(v0 + 248);
        v49 = *(v0 + 256);
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v73[0] = v42;
        *v41 = 136315138;
        *(v41 + 4) = sub_182B0(v50, v49, v73);
        v43 = "New moving handler client: %s";
        break;
      case 5:
        if (AXIsInternalInstall())
        {
          v2 = *(v0 + 264);
          *(v0 + 184) = 1752457584;
          *(v0 + 192) = 0xE400000000000000;
          sub_32DC8();
          if (*(v2 + 16) && (v3 = sub_18858(v0 + 16), (v4 & 1) != 0))
          {
            sub_1A4A4(*(*(v0 + 264) + 56) + 32 * v3, v0 + 56);
            sub_1AA70(v0 + 16);
            if (swift_dynamicCast())
            {
              v6 = *(v0 + 200);
              v5 = *(v0 + 208);
              if (qword_4BAF0 != -1)
              {
                swift_once();
              }

              v7 = *(v0 + 328);
              v8 = *(v0 + 296);
              v9 = *(v0 + 304);
              v10 = sub_AD0C(v8, MCLog);
              swift_beginAccess();
              (*(v9 + 16))(v7, v10, v8);
              v11 = sub_32678();
              v12 = sub_32C48();
              if (os_log_type_enabled(v11, v12))
              {
                v13 = swift_slowAlloc();
                *v13 = 0;
                _os_log_impl(&dword_0, v11, v12, "Simulating device motion", v13, 2u);
              }

              v14 = *(v0 + 328);
              v15 = *(v0 + 296);
              v16 = *(v0 + 304);
              v17 = *(v0 + 240);

              (*(v16 + 8))(v14, v15);
              v18 = sub_27178(v6, v5);

              v19 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v20 = type metadata accessor for AXMockMotionManager();
              v21 = objc_allocWithZone(v20);
              *&v21[OBJC_IVAR____TtC18AXMotionCuesServer19AXMockMotionManager__timer] = 0;
              v21[OBJC_IVAR____TtC18AXMotionCuesServer19AXMockMotionManager__isDeviceMotionActive] = 0;
              *&v21[OBJC_IVAR____TtC18AXMotionCuesServer19AXMockMotionManager__mockDeviceMotion] = 0;
              v22 = &v21[OBJC_IVAR____TtC18AXMotionCuesServer19AXMockMotionManager__data];
              *v22 = v18;
              v22[1] = 0;
              v23 = &v21[OBJC_IVAR____TtC18AXMotionCuesServer19AXMockMotionManager__completionHandler];
              *v23 = sub_1AC70;
              v23[1] = v19;
              *(v0 + 216) = v21;
              *(v0 + 224) = v20;
              v24 = objc_msgSendSuper2((v0 + 216), "init");
              type metadata accessor for DeviceMotionProvider();
              v25 = swift_allocObject();
              *(v25 + 16) = v24;
              *(*(v17 + OBJC_IVAR___AXMotionCuesServer__motionCuesModel) + 216) = v25;
              v26 = v24;

              sub_31A48();
            }
          }

          else
          {
            sub_1AA70(v0 + 16);
          }
        }

        goto LABEL_38;
      default:
LABEL_32:
        if (qword_4BAF0 != -1)
        {
          swift_once();
        }

        v52 = *(v0 + 320);
        v53 = *(v0 + 296);
        v54 = *(v0 + 304);
        v55 = sub_AD0C(v53, MCLog);
        swift_beginAccess();
        (*(v54 + 16))(v52, v55, v53);

        v56 = sub_32678();
        v57 = sub_32C58();

        v58 = os_log_type_enabled(v56, v57);
        v59 = *(v0 + 320);
        v60 = *(v0 + 296);
        v61 = *(v0 + 304);
        if (v58)
        {
          v70 = *(v0 + 280);
          v71 = *(v0 + 288);
          v72 = *(v0 + 320);
          v62 = *(v0 + 272);
          v64 = *(v0 + 248);
          v63 = *(v0 + 256);
          v65 = swift_slowAlloc();
          v73[0] = swift_slowAlloc();
          *v65 = 134218498;
          *(v65 + 4) = v62;
          *(v65 + 12) = 2080;
          *(v65 + 14) = sub_182B0(v64, v63, v73);
          *(v65 + 22) = 2080;
          *(v65 + 24) = sub_182B0(v70, v71, v73);
          _os_log_impl(&dword_0, v56, v57, "Unhandled service message: %ld from client: %s. Payload: %s", v65, 0x20u);
          swift_arrayDestroy();

          (*(v61 + 8))(v72, v60);
        }

        else
        {

          (*(v61 + 8))(v59, v60);
        }

        goto LABEL_38;
    }

    _os_log_impl(&dword_0, v33, v34, v43, v41, 0xCu);
    sub_1A508(v42);

    goto LABEL_28;
  }

  if (v1 == 1)
  {
    v51 = swift_task_alloc();
    *(v0 + 376) = v51;
    *v51 = v0;
    v51[1] = sub_CF90;

    return sub_D2E8();
  }

  else
  {
    if (v1 != 2)
    {
      goto LABEL_32;
    }

    v27 = swift_task_alloc();
    *(v0 + 384) = v27;
    *v27 = v0;
    v27[1] = sub_D1C8;

    return sub_D6AC();
  }
}

uint64_t sub_CF90()
{
  v1 = *v0;

  v2 = *(v1 + 368);
  v3 = *(v1 + 360);

  return (_swift_task_switch)(sub_D0B0, v3, v2);
}

id sub_D0B0()
{
  result = [objc_opt_self() sharedServiceManager];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 240);

    v4 = sub_32968();
    [v2 endTransactionWithIdentifier:v4 forService:v3];

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_D1C8()
{
  v1 = *v0;

  v2 = *(v1 + 368);
  v3 = *(v1 + 360);

  return (_swift_task_switch)(sub_1B04C, v3, v2);
}

uint64_t sub_D2E8()
{
  v1[5] = v0;
  v2 = sub_32698();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  if (qword_4BB00 != -1)
  {
    swift_once();
  }

  v3 = static AXMotionCuesActor.shared;

  return (_swift_task_switch)(sub_D3DC, v3, 0);
}

uint64_t sub_D3DC()
{
  if (qword_4BAF0 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = sub_AD0C(v3, MCLog);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_32678();
  v6 = sub_32C68();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "Turning on the Motion Cues.", v7, 2u);
  }

  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];

  v11 = (*(v9 + 8))(v8, v10);
  sub_19A24(v11);
  if (_AXSMotionCuesMode())
  {
    sub_EC34();
  }

  else
  {
    sub_E340();
  }

  sub_EF28();
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_D59C;

  return sub_F06C();
}

uint64_t sub_D59C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_D6AC()
{
  v1[5] = v0;
  v2 = sub_32698();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  if (qword_4BB00 != -1)
  {
    swift_once();
  }

  v1[9] = static AXMotionCuesActor.shared;

  return (_swift_task_switch)(sub_D7A4);
}

uint64_t sub_D7A4()
{
  if (qword_4BAF0 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = sub_AD0C(v3, MCLog);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_32678();
  v6 = sub_32C68();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "Disabling the Motion Cues.", v7, 2u);
  }

  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];

  v11 = (*(v9 + 8))(v8, v10);
  sub_19A24(v11);
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_D944;

  return sub_F06C();
}

uint64_t sub_D944()
{
  v1 = *(*v0 + 72);

  return (_swift_task_switch)(sub_DA54, v1, 0);
}

uint64_t sub_DA54()
{
  v1 = *(v0 + 40);
  sub_EC34();
  v2 = OBJC_IVAR___AXMotionCuesServer__screenMonitor;
  v3 = *(v1 + OBJC_IVAR___AXMotionCuesServer__screenMonitor);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(v1 + v2);
  }

  else
  {
    v4 = 0;
  }

  *(v1 + v2) = 0;

  v5 = *(v0 + 8);

  return v5();
}

void sub_DAF8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(*(Strong + OBJC_IVAR___AXMotionCuesServer__motionCuesModel) + 216) = *(Strong + OBJC_IVAR___AXMotionCuesServer__deviceMotionProvider);
    v2 = Strong;
    swift_retain_n();

    v3 = sub_32968();
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v4, v3, 0, 0, 1u);
  }
}

uint64_t sub_DBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_A168(&qword_4C580, &qword_34670);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1A9AC(a3, v25 - v10, &qword_4C580, &qword_34670);
  v12 = sub_32AE8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_B744(v11, &qword_4C580, &qword_34670);
  }

  else
  {
    sub_32AD8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_32A98();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_329D8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_B744(a3, &qword_4C580, &qword_34670);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_B744(a3, &qword_4C580, &qword_34670);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_DEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_A168(&qword_4C580, &qword_34670);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1A9AC(a3, v25 - v10, &qword_4C580, &qword_34670);
  v12 = sub_32AE8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_B744(v11, &qword_4C580, &qword_34670);
  }

  else
  {
    sub_32AD8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_32A98();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_329D8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_A168(&qword_4C148, &qword_34940);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_B744(a3, &qword_4C580, &qword_34670);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_B744(a3, &qword_4C580, &qword_34670);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_A168(&qword_4C148, &qword_34940);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_E340()
{
  v1 = sub_A168(&qword_4C580, &qword_34670);
  __chkstk_darwin(v1 - 8);
  v3 = &v57[-v2];
  v4 = sub_32698();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v7 = __chkstk_darwin(v6);
  v9 = &v57[-v8];
  __chkstk_darwin(v7);
  v11 = &v57[-v10];
  v12 = sub_A168(&qword_4C158, &unk_34980);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v15 = __chkstk_darwin(v14);
  v19 = &v57[-v18];
  v20 = OBJC_IVAR___AXMotionCuesServer__inVehicleEventListener;
  if (*(&v0->isa + OBJC_IVAR___AXMotionCuesServer__inVehicleEventListener))
  {
    if (qword_4BAF0 != -1)
    {
      swift_once();
    }

    v21 = sub_AD0C(v4, MCLog);
    swift_beginAccess();
    (*(v5 + 16))(v9, v21, v4);
    v22 = sub_32678();
    v23 = sub_32C68();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "Already listening for in-vehicle detection updates.", v24, 2u);
    }

    return (*(v5 + 8))(v9, v4);
  }

  else
  {
    v61 = v17;
    v62 = v16;
    v64 = v0;
    v65 = v3;
    v63 = v15;
    type metadata accessor for InVehicleEventListener(0);
    v25 = swift_allocObject();
    v26 = OBJC_IVAR____TtC18AXMotionCuesServer22InVehicleEventListener__continuation;
    v27 = sub_A168(&qword_4C160, &qword_345D8);
    (*(*(v27 - 8) + 56))(v25 + v26, 1, 1, v27);
    sub_A1B0(v19);
    v28 = v64;
    *(&v64->isa + v20) = v25;

    *(&v28->isa + OBJC_IVAR___AXMotionCuesServer__didSnoozeCuesFromBanner) = 0;
    v60 = [objc_opt_self() vehicularState];
    v29 = OBJC_IVAR___AXMotionCuesServer__isInVehicle;
    *(&v28->isa + OBJC_IVAR___AXMotionCuesServer__isInVehicle) = v60 == &dword_0 + 2;
    if (qword_4BAF0 != -1)
    {
      swift_once();
    }

    v30 = sub_AD0C(v4, MCLog);
    swift_beginAccess();
    (*(v5 + 16))(v11, v30, v4);
    v31 = v28;
    v32 = sub_32678();
    v33 = sub_32C68();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v58 = v33;
      v35 = v34;
      v59 = swift_slowAlloc();
      v67 = v59;
      *v35 = 136315394;
      if (*(&v64->isa + v29))
      {
        v36 = 0x43494845562D4E49;
      }

      else
      {
        v36 = 0x562D4E4920544F4ELL;
      }

      if (*(&v64->isa + v29))
      {
        v37 = 0xEA0000000000454CLL;
      }

      else
      {
        v37 = 0xEF29454C43494845;
      }

      v38 = sub_182B0(v36, v37, &v67);
      v64 = v32;
      v39 = v38;

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v66 = v60;
      type metadata accessor for CMVehicularState(0);
      v40 = sub_329C8();
      v42 = sub_182B0(v40, v41, &v67);

      *(v35 + 14) = v42;
      v43 = v64;
      _os_log_impl(&dword_0, v64, v58, "Setting up in-vehicle detection listener with initial state %s, based on CMVehicleState %s", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v5 + 8))(v11, v4);
    v45 = v65;
    v64 = v25;
    v60 = OBJC_IVAR___AXMotionCuesServer__inVehicleEventTask;
    if (*(&v31->isa + OBJC_IVAR___AXMotionCuesServer__inVehicleEventTask))
    {

      sub_32B58();
    }

    v46 = sub_32AE8();
    (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
    v48 = v61;
    v47 = v62;
    v49 = v63;
    (*(v62 + 16))(v61, v19, v63);
    sub_32AC8();
    v50 = v31;
    v51 = sub_32AB8();
    v52 = v31;
    v53 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v54 = (v13 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    *(v55 + 16) = v51;
    *(v55 + 24) = &protocol witness table for MainActor;
    (*(v47 + 32))(v55 + v53, v48, v49);
    *(v55 + v54) = v50;
    v56 = sub_DBE0(0, 0, v65, &unk_34998, v55);

    (*(v47 + 8))(v19, v49);
    *&v60[v52] = v56;
  }
}

uint64_t sub_EC34()
{
  v1 = sub_32698();
  __chkstk_darwin(v1);
  v2 = OBJC_IVAR___AXMotionCuesServer__inVehicleEventListener;
  if (*(v0 + OBJC_IVAR___AXMotionCuesServer__inVehicleEventListener))
  {

    sub_A914();

    *(v0 + v2) = 0;
  }

  v3 = OBJC_IVAR___AXMotionCuesServer__inVehicleEventTask;
  if (*(v0 + OBJC_IVAR___AXMotionCuesServer__inVehicleEventTask))
  {

    sub_32B58();
  }

  *(v0 + v3) = 0;

  *(v0 + OBJC_IVAR___AXMotionCuesServer__isInVehicle) = 0;
  return result;
}

void sub_EF28()
{
  v1 = OBJC_IVAR___AXMotionCuesServer__screenMonitor;
  if (!*(v0 + OBJC_IVAR___AXMotionCuesServer__screenMonitor))
  {
    v2 = [objc_opt_self() configurationForDefaultMainDisplayMonitor];
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7[4] = sub_1AE88;
    v7[5] = v3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_11944;
    v7[3] = &unk_45DD0;
    v4 = _Block_copy(v7);

    [v2 setTransitionHandler:v4];
    _Block_release(v4);
    v5 = [objc_opt_self() monitorWithConfiguration:v2];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
  }
}

uint64_t sub_F06C()
{
  v1[8] = v0;
  sub_A168(&qword_4C0D0, &qword_34888);
  v1[9] = swift_task_alloc();
  v2 = sub_32698();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  if (qword_4BB00 != -1)
  {
    swift_once();
  }

  v1[14] = static AXMotionCuesActor.shared;

  return (_swift_task_switch)(sub_F1A8);
}

id sub_F1A8()
{
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR___AXMotionCuesServer__updating;
  *(v0 + 120) = OBJC_IVAR___AXMotionCuesServer__updating;
  if (*(v1 + v2))
  {
    v3 = (v1 + OBJC_IVAR___AXMotionCuesServer__updatePending);
    v4 = 1;
LABEL_31:
    *v3 = v4;

    v48 = *(v0 + 8);

    return v48();
  }

  else
  {
    *(v1 + v2) = 1;
    v5 = objc_opt_self();
    *(v0 + 128) = v5;
    result = [v5 sharedServiceManager];
    if (result)
    {
      v7 = result;
      v8 = *(v0 + 64);
      v9 = sub_32968();
      [v7 beginTransactionWithIdentifier:v9 forService:v8];

      v10 = OBJC_IVAR___AXMotionCuesServer__updatePending;
      v11 = OBJC_IVAR___AXMotionCuesServer__isInVehicle;
      *(v0 + 136) = OBJC_IVAR___AXMotionCuesServer__updatePending;
      *(v0 + 144) = v11;
      v12 = OBJC_IVAR___AXMotionCuesServer__screenMonitor;
      *(v0 + 152) = OBJC_IVAR___AXMotionCuesServer__didSnoozeCuesFromBanner;
      *(v0 + 160) = v12;
      *(v0 + 168) = OBJC_IVAR___AXMotionCuesServer__isRunning;
      v13 = *(v0 + 64);
      do
      {
        v14 = *(v0 + 152);
        v15 = *(v0 + 160);
        v16 = *(v0 + 144);
        *(v13 + v10) = 0;
        v17 = _AXSMotionCuesEnabled();
        v18 = *(v13 + v16);
        *(v0 + 200) = v18;
        v19 = _AXSMotionCuesMode();
        v20 = *(v13 + v14);
        v21 = *(v13 + v15);
        if (v21 && (v22 = [v21 currentLayout]) != 0)
        {
          v23 = v22;
          v24 = [v22 backlightState];
        }

        else
        {
          v24 = 3;
        }

        v25 = 0;
        *(v0 + 176) = v24;
        if (v17 && (v24 & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          if (v19 == 1)
          {
            v25 = 1;
          }

          else if (v19)
          {
            v25 = 0;
          }

          else
          {
            v25 = v18 & (v20 ^ 1);
          }
        }

        v50 = v24 & 0xFFFFFFFFFFFFFFFELL;
        v51 = v24;
        v56 = v25;
        v53 = v19;
        if (qword_4BAF0 != -1)
        {
          swift_once();
        }

        v52 = v17;
        v54 = v18;
        v26 = *(v0 + 104);
        v28 = *(v0 + 80);
        v27 = *(v0 + 88);
        v29 = sub_AD0C(v28, MCLog);
        swift_beginAccess();
        v55 = *(v27 + 16);
        v55(v26, v29, v28);
        v30 = sub_32678();
        v31 = sub_32C68();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_0, v30, v31, "Begin transaction", v32, 2u);
        }

        v33 = *(v0 + 168);
        v34 = *(v0 + 104);
        v35 = *(v0 + 80);
        v36 = *(v0 + 88);
        v37 = *(v0 + 64);

        v38 = *(v36 + 8);
        v38(v34, v35);
        if (v56 != *(v37 + v33))
        {
          v55(*(v0 + 96), v29, *(v0 + 80));
          v39 = sub_32678();
          v40 = sub_32C68();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            *v41 = 67110400;
            *(v41 + 4) = v56;
            *(v41 + 8) = 1024;
            *(v41 + 10) = v52 != 0;
            *(v41 + 14) = 1024;
            *(v41 + 16) = v54;
            *(v41 + 20) = 1024;
            *(v41 + 22) = v53;
            *(v41 + 26) = 1024;
            *(v41 + 28) = v50 == 2;
            *(v41 + 32) = 2048;
            *(v41 + 34) = v51;
            _os_log_impl(&dword_0, v39, v40, "Updating state: shouldStart=%{BOOL}d, enabled=%{BOOL}d, inVehicle=%{BOOL}d, mode=%d, screenIsOn=%{BOOL}d Backlight state: %ld ", v41, 0x2Au);
          }

          v42 = *(v0 + 96);
          v43 = *(v0 + 80);

          v38(v42, v43);
          if (v56)
          {
            v44 = swift_task_alloc();
            *(v0 + 184) = v44;
            *v44 = v0;
            v44[1] = sub_F77C;

            return sub_13404();
          }

          else
          {
            v49 = swift_task_alloc();
            *(v0 + 192) = v49;
            *v49 = v0;
            v49[1] = sub_FE80;

            return sub_12748();
          }
        }

        v10 = *(v0 + 136);
        v13 = *(v0 + 64);
      }

      while ((*(v13 + v10) & 1) != 0);
      result = [*(v0 + 128) sharedServiceManager];
      if (result)
      {
        v45 = result;
        v46 = *(v0 + 64);
        v47 = sub_32968();
        [v45 endTransactionWithIdentifier:v47 forService:v46];

        v4 = 0;
        v3 = (*(v0 + 64) + *(v0 + 120));
        goto LABEL_31;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_F77C()
{
  v1 = *(*v0 + 112);

  return (_swift_task_switch)(sub_F88C, v1, 0);
}

id sub_F88C()
{
  if (qword_4BB10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = *(v0 + 72);
  v3 = qword_4E9E8;
  sub_32528();
  v4 = sub_32538();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v5 = OBJC_IVAR____TtC18AXMotionCuesServer27AXMotionCuesAnalyticsHelper_lastEnableTime;
  swift_beginAccess();
  sub_199B4(v2, v3 + v5);
  swift_endAccess();
  *(v3 + 17) = v1;
  if (*(v3 + 16) != 1)
  {
    v6 = sub_1CD78();
    sub_1CF7C(0xD00000000000002ALL, 0x8000000000037910, v6);

    *(v3 + 16) = 1;
  }

  while (1)
  {
    v13 = *(v0 + 136);
    v14 = *(v0 + 64);
    if ((*(v14 + v13) & 1) == 0)
    {
      break;
    }

    v15 = *(v0 + 152);
    v16 = *(v0 + 160);
    v17 = *(v0 + 144);
    *(v14 + v13) = 0;
    v18 = _AXSMotionCuesEnabled();
    v19 = *(v14 + v17);
    *(v0 + 200) = v19;
    v20 = _AXSMotionCuesMode();
    v21 = *(v14 + v15);
    v22 = *(v14 + v16);
    if (v22 && (v23 = [v22 currentLayout]) != 0)
    {
      v24 = v23;
      v25 = [v23 backlightState];
    }

    else
    {
      v25 = 3;
    }

    v26 = 0;
    *(v0 + 176) = v25;
    if (v18 && (v25 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      if (v20 == 1)
      {
        v26 = 1;
      }

      else if (v20)
      {
        v26 = 0;
      }

      else
      {
        v26 = v19 & (v21 ^ 1);
      }
    }

    v46 = v25 & 0xFFFFFFFFFFFFFFFELL;
    v48 = v18;
    v49 = v20;
    if (qword_4BAF0 != -1)
    {
      swift_once();
    }

    v47 = v25;
    v52 = v26;
    v50 = v19;
    v27 = *(v0 + 104);
    v28 = *(v0 + 80);
    v29 = *(v0 + 88);
    v30 = sub_AD0C(v28, MCLog);
    swift_beginAccess();
    v51 = *(v29 + 16);
    v51(v27, v30, v28);
    v31 = sub_32678();
    v32 = sub_32C68();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "Begin transaction", v33, 2u);
    }

    v7 = *(v0 + 168);
    v8 = *(v0 + 104);
    v10 = *(v0 + 80);
    v9 = *(v0 + 88);
    v11 = *(v0 + 64);

    v12 = *(v9 + 8);
    v12(v8, v10);
    if (v52 != *(v11 + v7))
    {
      v51(*(v0 + 96), v30, *(v0 + 80));
      v39 = sub_32678();
      v40 = sub_32C68();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 67110400;
        *(v41 + 4) = v52;
        *(v41 + 8) = 1024;
        *(v41 + 10) = v48 != 0;
        *(v41 + 14) = 1024;
        *(v41 + 16) = v50;
        *(v41 + 20) = 1024;
        *(v41 + 22) = v49;
        *(v41 + 26) = 1024;
        *(v41 + 28) = v46 == 2;
        *(v41 + 32) = 2048;
        *(v41 + 34) = v47;
        _os_log_impl(&dword_0, v39, v40, "Updating state: shouldStart=%{BOOL}d, enabled=%{BOOL}d, inVehicle=%{BOOL}d, mode=%d, screenIsOn=%{BOOL}d Backlight state: %ld ", v41, 0x2Au);
      }

      v42 = *(v0 + 96);
      v43 = *(v0 + 80);

      v12(v42, v43);
      if (v52)
      {
        v44 = swift_task_alloc();
        *(v0 + 184) = v44;
        *v44 = v0;
        v44[1] = sub_F77C;

        return sub_13404();
      }

      else
      {
        v45 = swift_task_alloc();
        *(v0 + 192) = v45;
        *v45 = v0;
        v45[1] = sub_FE80;

        return sub_12748();
      }
    }
  }

  result = [*(v0 + 128) sharedServiceManager];
  if (result)
  {
    v35 = result;
    v36 = *(v0 + 64);
    v37 = sub_32968();
    [v35 endTransactionWithIdentifier:v37 forService:v36];

    *(*(v0 + 64) + *(v0 + 120)) = 0;

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_FE80()
{
  v1 = *(*v0 + 112);

  return (_swift_task_switch)(sub_FF90, v1, 0);
}

id sub_FF90()
{
  if (qword_4BB10 != -1)
  {
    swift_once();
  }

  sub_1C1BC(*(v0 + 200), (*(v0 + 176) & 0xFFFFFFFFFFFFFFFELL) == 2);
  while (1)
  {
    v7 = *(v0 + 136);
    v8 = *(v0 + 64);
    if ((*(v8 + v7) & 1) == 0)
    {
      break;
    }

    v9 = *(v0 + 152);
    v10 = *(v0 + 160);
    v11 = *(v0 + 144);
    *(v8 + v7) = 0;
    v12 = _AXSMotionCuesEnabled();
    v13 = *(v8 + v11);
    *(v0 + 200) = v13;
    v14 = _AXSMotionCuesMode();
    v15 = *(v8 + v9);
    v16 = *(v8 + v10);
    if (v16 && (v17 = [v16 currentLayout]) != 0)
    {
      v18 = v17;
      v19 = [v17 backlightState];
    }

    else
    {
      v19 = 3;
    }

    v20 = 0;
    *(v0 + 176) = v19;
    if (v12 && (v19 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      if (v14 == 1)
      {
        v20 = 1;
      }

      else if (v14)
      {
        v20 = 0;
      }

      else
      {
        v20 = v13 & (v15 ^ 1);
      }
    }

    v40 = v19 & 0xFFFFFFFFFFFFFFFELL;
    v41 = v19;
    v42 = v12;
    v46 = v20;
    if (qword_4BAF0 != -1)
    {
      swift_once();
    }

    v43 = v14;
    v44 = v13;
    v21 = *(v0 + 104);
    v23 = *(v0 + 80);
    v22 = *(v0 + 88);
    v24 = sub_AD0C(v23, MCLog);
    swift_beginAccess();
    v45 = *(v22 + 16);
    v45(v21, v24, v23);
    v25 = sub_32678();
    v26 = sub_32C68();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "Begin transaction", v27, 2u);
    }

    v1 = *(v0 + 168);
    v2 = *(v0 + 104);
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v5 = *(v0 + 64);

    v6 = *(v3 + 8);
    v6(v2, v4);
    if (v46 != *(v5 + v1))
    {
      v45(*(v0 + 96), v24, *(v0 + 80));
      v33 = sub_32678();
      v34 = sub_32C68();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 67110400;
        *(v35 + 4) = v46;
        *(v35 + 8) = 1024;
        *(v35 + 10) = v42 != 0;
        *(v35 + 14) = 1024;
        *(v35 + 16) = v44;
        *(v35 + 20) = 1024;
        *(v35 + 22) = v43;
        *(v35 + 26) = 1024;
        *(v35 + 28) = v40 == 2;
        *(v35 + 32) = 2048;
        *(v35 + 34) = v41;
        _os_log_impl(&dword_0, v33, v34, "Updating state: shouldStart=%{BOOL}d, enabled=%{BOOL}d, inVehicle=%{BOOL}d, mode=%d, screenIsOn=%{BOOL}d Backlight state: %ld ", v35, 0x2Au);
      }

      v36 = *(v0 + 96);
      v37 = *(v0 + 80);

      v6(v36, v37);
      if (v46)
      {
        v38 = swift_task_alloc();
        *(v0 + 184) = v38;
        *v38 = v0;
        v38[1] = sub_F77C;

        return sub_13404();
      }

      else
      {
        v39 = swift_task_alloc();
        *(v0 + 192) = v39;
        *v39 = v0;
        v39[1] = sub_FE80;

        return sub_12748();
      }
    }
  }

  result = [*(v0 + 128) sharedServiceManager];
  if (result)
  {
    v29 = result;
    v30 = *(v0 + 64);
    v31 = sub_32968();
    [v29 endTransactionWithIdentifier:v31 forService:v30];

    *(*(v0 + 64) + *(v0 + 120)) = 0;

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_104CC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v30 = a2;
  *(&v30 + 1) = a3;
  LOBYTE(v5) = a1;
  v6 = [objc_opt_self() sharedServiceManager];
  if (!v6)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = v6;
  v8 = [v6 clientsForService:v4];

  if (!v8)
  {
LABEL_22:
    __break(1u);
    return;
  }

  sub_1A964(0, &qword_4C118, AXUIClientMessenger_ptr);
  v9 = sub_32A48();

  if (v9 >> 62)
  {
    goto LABEL_16;
  }

  v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
  if (v10)
  {
    while (1)
    {
      v27 = objc_opt_self();
      if (v10 < 1)
      {
        break;
      }

      v28 = v9 & 0xC000000000000001;
      sub_A168(&qword_4C120, &qword_34908);
      v11 = 0;
      v12 = v5 & 1;
      v5 = &qword_34910;
      while (1)
      {
        v13 = v28 ? sub_32E28() : *(v9 + 8 * v11 + 32);
        v14 = v13;
        v31[0] = v30;
        sub_32DC8();
        v35 = &type metadata for Bool;
        v34[40] = v12;
        v15 = sub_32E88();
        sub_1A9AC(v34, v31, &qword_4C128, &qword_34910);
        v16 = sub_18858(v31);
        if (v17)
        {
          break;
        }

        v15[(v16 >> 6) + 8] |= 1 << v16;
        v18 = v15[6] + 40 * v16;
        v19 = v31[0];
        v20 = v31[1];
        *(v18 + 32) = v32;
        *v18 = v19;
        *(v18 + 16) = v20;
        sub_199A4(&v33, (v15[7] + 32 * v16));
        v21 = v15[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_15;
        }

        ++v11;
        v15[2] = v23;
        sub_B744(v34, &qword_4C128, &qword_34910);
        v24 = v9;
        isa = sub_32908().super.isa;

        v26 = [v27 mainAccessQueue];
        [v14 sendAsynchronousMessage:isa withIdentifier:a4 targetAccessQueue:v26 completion:0];

        v9 = v24;
        if (v10 == v11)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v10 = sub_32E58();
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_17:

LABEL_13:
}

uint64_t sub_107EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_32698();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_A168(&qword_4C168, &qword_349A0);
  v5[10] = swift_task_alloc();
  v7 = sub_A168(&qword_4C170, &qword_349A8);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = sub_32AC8();
  v5[15] = sub_32AB8();
  v9 = sub_32A98();
  v5[16] = v9;
  v5[17] = v8;

  return (_swift_task_switch)(sub_10984, v9, v8);
}

uint64_t sub_10984()
{
  sub_A168(&qword_4C158, &unk_34980);
  sub_32B28();
  v1 = OBJC_IVAR___AXMotionCuesServer__needsBannerForInVehicleStateChange;
  v0[18] = OBJC_IVAR___AXMotionCuesServer__isInVehicle;
  v0[19] = v1;
  v0[20] = OBJC_IVAR___AXMotionCuesServer__didSnoozeCuesFromBanner;
  v2 = sub_32AB8();
  v0[21] = v2;
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_10A80;
  v4 = v0[10];
  v5 = v0[11];

  return AsyncStream.Iterator.next(isolation:)(v4, v2, &protocol witness table for MainActor, v5);
}

uint64_t sub_10A80()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return (_swift_task_switch)(sub_10BC4, v3, v2);
}

uint64_t sub_10BC4()
{
  v1 = *(v0 + 80);
  v2 = type metadata accessor for InVehicleEvent(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 144);
    v6 = *(v0 + 48);
    v7 = *(v1 + *(v2 + 20));
    sub_B6E8(v1);
    if (v7 == *(v6 + v5))
    {
      v22 = sub_32AB8();
      *(v0 + 168) = v22;
      v23 = swift_task_alloc();
      *(v0 + 176) = v23;
      *v23 = v0;
      v23[1] = sub_10A80;
      v24 = *(v0 + 80);
      v25 = *(v0 + 88);

      return AsyncStream.Iterator.next(isolation:)(v24, v22, &protocol witness table for MainActor, v25);
    }

    else
    {
      v9 = *(v0 + 152);
      v8 = *(v0 + 160);
      v10 = *(v0 + 48);
      *(v10 + *(v0 + 144)) = v7;
      *(v10 + v9) = 1;
      *(v10 + v8) = 0;
      if (qword_4BAF0 != -1)
      {
        swift_once();
      }

      v12 = *(v0 + 64);
      v11 = *(v0 + 72);
      v14 = *(v0 + 48);
      v13 = *(v0 + 56);
      v15 = sub_AD0C(v13, MCLog);
      swift_beginAccess();
      (*(v12 + 16))(v11, v15, v13);
      v16 = v14;
      v17 = sub_32678();
      v18 = sub_32C68();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = *(v0 + 144);
        v20 = *(v0 + 48);
        v21 = swift_slowAlloc();
        *v21 = 67109120;
        *(v21 + 4) = v20[v19];

        _os_log_impl(&dword_0, v17, v18, "In-vehicle state changed: %{BOOL}d", v21, 8u);
      }

      else
      {
      }

      (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
      v26 = swift_task_alloc();
      *(v0 + 184) = v26;
      *v26 = v0;
      v26[1] = sub_10F2C;

      return sub_F06C();
    }
  }
}

uint64_t sub_10F2C()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return (_swift_task_switch)(sub_1104C, v3, v2);
}

uint64_t sub_1104C(uint64_t a1)
{
  v2 = sub_32AB8();
  v1[21] = v2;
  v3 = swift_task_alloc();
  v1[22] = v3;
  *v3 = v1;
  v3[1] = sub_10A80;
  v4 = v1[10];
  v5 = v1[11];

  return AsyncStream.Iterator.next(isolation:)(v4, v2, &protocol witness table for MainActor, v5);
}

id sub_11104(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_A168(&qword_4C580, &qword_34670);
  __chkstk_darwin(v5 - 8);
  v7 = &v18[-v6];
  result = [objc_opt_self() sharedServiceManager];
  if (result)
  {
    v9 = result;
    v10 = sub_32968();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    [v9 beginTransactionWithIdentifier:v10 forService:Strong];

    v12 = sub_32AE8();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v13 = swift_allocObject();
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    sub_32AC8();
    v15 = a2;

    v16 = sub_32AB8();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = &protocol witness table for MainActor;
    v17[4] = a2;
    v17[5] = v13;

    sub_DBE0(0, 0, v7, &unk_349B8, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_11320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = sub_32698();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  sub_32AC8();
  v5[16] = sub_32AB8();
  v8 = sub_32A98();
  v5[17] = v8;
  v5[18] = v7;

  return (_swift_task_switch)(sub_11414, v8, v7);
}

id sub_11414()
{
  if (qword_4BAF0 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[11];
  v5 = sub_AD0C(v3, MCLog);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5, v3);
  v6 = v4;
  v7 = sub_32678();
  v8 = sub_32C48();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[11];
    v10 = -1;
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    if (v9)
    {
      v10 = [v6 backlightState];
    }

    *(v11 + 4) = v10;

    _os_log_impl(&dword_0, v7, v8, "Screen state changed: backlightState=%ld", v11, 0xCu);
  }

  else
  {

    v7 = v6;
  }

  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[13];

  (*(v13 + 8))(v12, v14);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v16 = swift_task_alloc();
    v0[20] = v16;
    *v16 = v0;
    v16[1] = sub_11700;

    return sub_F06C();
  }

  else
  {
    result = [objc_opt_self() sharedServiceManager];
    if (result)
    {
      v18 = result;

      v19 = sub_32968();
      swift_beginAccess();
      v20 = swift_unknownObjectWeakLoadStrong();
      [v18 endTransactionWithIdentifier:v19 forService:v20];

      v21 = v0[1];

      return v21();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_11700()
{
  v1 = *v0;
  v2 = *(*v0 + 152);

  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return (_swift_task_switch)(sub_11840, v4, v3);
}

id sub_11840()
{
  result = [objc_opt_self() sharedServiceManager];
  if (result)
  {
    v2 = result;

    v3 = sub_32968();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    [v2 endTransactionWithIdentifier:v3 forService:Strong];

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_11944(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

void sub_119E4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_328A8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v50 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_328C8();
  v49 = *(v5 - 8);
  __chkstk_darwin(v5);
  v48 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_32568();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[OBJC_IVAR___AXMotionCuesServer__screenMonitor];
  if (!v11 || (v12 = [v11 currentLayout]) == 0 || (v13 = v12, v14 = objc_msgSend(v12, "backlightState"), v13, (v14 & 0xFFFFFFFFFFFFFFFELL) == 2))
  {
    if ((_AXSMotionCuesShouldShowBanner() || !_AXSMotionCuesMode()) && (_AXSMotionCuesMode() || v1[OBJC_IVAR___AXMotionCuesServer__needsBannerForInVehicleStateChange] == 1))
    {
      v45 = v5;
      v46 = v3;
      v47 = v2;
      _AXSSetMotionCuesShouldShowBanner();
      v1[OBJC_IVAR___AXMotionCuesServer__needsBannerForInVehicleStateChange] = 0;
      v15 = 0;
      if (!_AXSMotionCuesMode())
      {
        v15 = v1[OBJC_IVAR___AXMotionCuesServer__isRunning];
      }

      sub_32558();
      v42[0] = sub_32548();
      v42[1] = v16;
      (*(v8 + 8))(v10, v7);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v41._countAndFlagsBits = 0xE000000000000000;
      v58.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v58.value._object = 0xEB00000000656C62;
      v57._object = 0x80000000000379B0;
      v57._countAndFlagsBits = 0xD000000000000013;
      v19.super.isa = v18;
      v59._countAndFlagsBits = 0;
      v59._object = 0xE000000000000000;
      sub_32488(v57, v58, v19, v59, 0, v41);

      v20 = sub_12080();
      sub_12278(v20);
      v43 = v21;
      sub_190E0(&_swiftEmptyArrayStorage);
      v22 = 0;
      v23 = 0;
      v44 = v15;
      if (v15)
      {
        v23 = swift_allocObject();
        *(v23 + 16) = v1;
        v24 = v1;
        v22 = sub_1A6FC;
      }

      v25 = sub_32968();

      v26 = sub_32968();

      v27 = sub_32968();

      v28.super.isa = sub_32908().super.isa;

      if (v44)
      {
        v55 = v22;
        v56 = v23;
        aBlock = _NSConcreteStackBlock;
        v52 = 1107296256;
        v53 = sub_1D8DC;
        v54 = &unk_45C40;
        v29 = _Block_copy(&aBlock);
      }

      else
      {
        v29 = 0;
      }

      v30 = v47;
      v31 = objc_allocWithZone(AXAlertBannerContent);
      v32 = v43;
      v33 = [v31 initWithIdentifier:v25 title:v26 subtitle:v27 iconImage:v43 userInfo:v28.super.isa actionBlock:v29];
      _Block_release(v29);

      sub_1A964(0, &qword_4C0F8, OS_dispatch_queue_ptr);
      v34 = sub_32C88();
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      *(v36 + 24) = v33;
      v55 = sub_1A610;
      v56 = v36;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v53 = sub_1D8DC;
      v54 = &unk_45C18;
      v37 = _Block_copy(&aBlock);
      v38 = v33;

      v39 = v48;
      sub_328B8();
      aBlock = &_swiftEmptyArrayStorage;
      sub_1A618(&qword_4C100, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_A168(&qword_4C108, &qword_348E0);
      sub_1A660();
      v40 = v50;
      sub_32D28();
      sub_32C98();
      _Block_release(v37);

      (*(v46 + 8))(v40, v30);
      (*(v49 + 8))(v39, v45);
    }
  }
}

uint64_t sub_12080()
{
  swift_getObjectType();
  v1 = _AXSMotionCuesMode();
  if (v1 == 2)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v13._countAndFlagsBits = 0xE000000000000000;
    v4._countAndFlagsBits = 0xD000000000000011;
    v4._object = 0x8000000000037A30;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass:v2];
    v13._countAndFlagsBits = 0xE000000000000000;
    v4._object = 0x8000000000037A50;
    v4._countAndFlagsBits = 0xD000000000000010;
LABEL_5:
    v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v15.value._object = 0xEB00000000656C62;
    v6.super.isa = v3;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v7 = sub_32488(v4, v15, v6, v17, 0, v13);
    goto LABEL_13;
  }

  if (*(v0 + OBJC_IVAR___AXMotionCuesServer__isRunning))
  {
    v8 = 0xD000000000000010;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*(v0 + OBJC_IVAR___AXMotionCuesServer__isRunning))
  {
    v9 = "MotionCuesPillOff";
  }

  else
  {
    v9 = "motion.cues.slash";
  }

  v10 = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:v10];
  v13._countAndFlagsBits = 0xE000000000000000;
  v14._object = (v9 | 0x8000000000000000);
  v14._countAndFlagsBits = v8;
  v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v16.value._object = 0xEB00000000656C62;
  v11.super.isa = v3;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v7 = sub_32488(v14, v16, v11, v18, 0, v13);

LABEL_13:

  return v7;
}

void sub_12278(uint64_t a1)
{
  v2 = _AXSMotionCuesMode();
  if (v2 != 2)
  {
    if (v2 != 1)
    {
      goto LABEL_7;
    }

    v3 = [objc_opt_self() systemBlueColor];
    v4 = [objc_opt_self() configurationWithHierarchicalColor:v3];

    v5 = sub_32968();
    v6 = [objc_opt_self() _systemImageNamed:v5 withConfiguration:v4];

    if (v6)
    {
      return;
    }

    __break(1u);
  }

  v7 = [objc_opt_self() labelColor];
  v1 = [objc_opt_self() configurationWithHierarchicalColor:v7];

  v8 = sub_32968();
  v9 = [objc_opt_self() _systemImageNamed:v8 withConfiguration:v1];

  if (v9)
  {
    return;
  }

  __break(1u);
LABEL_7:
  v10 = v1[OBJC_IVAR___AXMotionCuesServer__isRunning];
  v11 = objc_opt_self();
  v12 = &selRef_systemBlueColor;
  if (!v10)
  {
    v12 = &selRef_labelColor;
  }

  v13 = [v11 *v12];
  v14 = [objc_opt_self() configurationWithHierarchicalColor:v13];

  v15 = sub_32968();
  v16 = [objc_opt_self() _systemImageNamed:v15 withConfiguration:v14];

  if (!v16)
  {
    __break(1u);
  }
}

uint64_t sub_124E0(_BYTE *a1)
{
  v2 = sub_A168(&qword_4C580, &qword_34670);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_BC04();
  v6 = sub_32968();
  [v5 dismissAlertBanner:v6];

  a1[OBJC_IVAR___AXMotionCuesServer__didSnoozeCuesFromBanner] = 1;
  v7 = sub_32AE8();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v9 = a1;
  sub_DBE0(0, 0, v4, &unk_348F0, v8);
}

void sub_1263C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_BC04();

    [v5 postAlertBanner:a2];
  }
}

uint64_t sub_126B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B048;

  return sub_12748();
}

uint64_t sub_12748()
{
  v1[39] = v0;
  v2 = sub_32698();
  v1[40] = v2;
  v1[41] = *(v2 - 8);
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  if (qword_4BB00 != -1)
  {
    swift_once();
  }

  v1[45] = static AXMotionCuesActor.shared;

  return (_swift_task_switch)(sub_12858);
}

uint64_t sub_12858()
{
  if (_AXSMotionCuesActive())
  {
    _AXSSetMotionCuesActive();
  }

  v1 = *(v0 + 312);
  v2 = OBJC_IVAR___AXMotionCuesServer__isRunning;
  *(v0 + 368) = OBJC_IVAR___AXMotionCuesServer__isRunning;
  if ((*(v1 + v2) & 1) == 0)
  {
    if (qword_4BAF0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 352);
    v8 = *(v0 + 320);
    v9 = *(v0 + 328);
    v10 = sub_AD0C(v8, MCLog);
    swift_beginAccess();
    (*(v9 + 16))(v7, v10, v8);
    v11 = sub_32678();
    v12 = sub_32C68();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 352);
    v15 = *(v0 + 320);
    v16 = *(v0 + 328);
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v11, v12, "Not running Motion Cues, no need to stop", v17, 2u);
    }

    (*(v16 + 8))(v14, v15);

    v18 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_31DA4();

  *(v1 + v2) = 0;
  v3 = *(v1 + OBJC_IVAR___AXMotionCuesServer__mainDisplayViewController);
  *(v0 + 376) = v3;
  if (v3)
  {
    sub_32AC8();
    v4 = v3;
    *(v0 + 384) = sub_32AB8();
    v6 = sub_32A98();

    return (_swift_task_switch)(sub_12B44, v6, v5);
  }

  else
  {
    *(v0 + 432) = xmmword_34130;
    *(v0 + 416) = 0;
    *(v0 + 424) = 0;
    *(v0 + 400) = 0;
    *(v0 + 408) = 0x7FEFFFFFFFFFFFFFLL;
    *(v0 + 392) = 0;
    v19 = swift_task_alloc();
    *(v0 + 448) = v19;
    *v19 = v0;
    v19[1] = sub_12C28;

    return sub_14C74();
  }
}

uint64_t sub_12B44(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 376);

  v4 = *&v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_statistics];
  v8 = *&v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_statistics + 24];
  v9 = *&v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_statistics + 8];
  v7 = *&v3[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_statistics + 40];

  *(v2 + 416) = v8;
  *(v2 + 432) = v7;
  *(v2 + 400) = v9;
  *(v2 + 392) = v4;
  v5 = swift_task_alloc();
  *(v2 + 448) = v5;
  *v5 = v2;
  v5[1] = sub_12C28;

  return sub_14C74();
}

uint64_t sub_12C28()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  v3 = *(v2 + 360);
  if (v0)
  {
    v4 = sub_131DC;
  }

  else
  {
    v4 = sub_12D54;
  }

  return (_swift_task_switch)(v4, v3, 0);
}

uint64_t sub_12D54()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 312);
  v3 = CFAbsoluteTimeGetCurrent() - *(v2 + OBJC_IVAR___AXMotionCuesServer__startTime);
  if (v3 <= 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1 / v3;
  }

  if (qword_4BAF0 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 344);
  v6 = *(v0 + 320);
  v7 = *(v0 + 328);
  v8 = sub_AD0C(v6, MCLog);
  swift_beginAccess();
  (*(v7 + 16))(v5, v8, v6);
  v9 = sub_32678();
  v10 = sub_32C68();
  if (os_log_type_enabled(v9, v10))
  {
    v12 = *(v0 + 432);
    v11 = *(v0 + 440);
    v14 = *(v0 + 416);
    v13 = *(v0 + 424);
    v16 = *(v0 + 400);
    v15 = *(v0 + 408);
    v17 = swift_slowAlloc();
    *v17 = 134219776;
    *(v17 + 4) = v3;
    *(v17 + 12) = 2048;
    *(v17 + 14) = v4;
    *(v17 + 22) = 2048;
    *(v17 + 24) = v16;
    *(v17 + 32) = 2048;
    *(v17 + 34) = v15;
    *(v17 + 42) = 2048;
    *(v17 + 44) = v14;
    *(v17 + 52) = 2048;
    *(v17 + 54) = v13;
    *(v17 + 62) = 2048;
    *(v17 + 64) = v12;
    *(v17 + 72) = 2048;
    *(v17 + 74) = v11;
    _os_log_impl(&dword_0, v9, v10, "Motion Cues UI stopped: duration=%f seconds, frameRate=%f, frameTimeAverage=%f, frameTimeMin=%f, frameTimeMax=%f, modelTimeAverage=%f, modelTimeMin=%f, modelTimeMax=%f", v17, 0x52u);
  }

  v18 = *(v0 + 344);
  v19 = *(v0 + 320);
  v20 = *(v0 + 328);

  result = (*(v20 + 8))(v18, v19);
  if (kAXMotionCuesStopNotification)
  {
    v22 = kAXMotionCuesStopNotification;
    v23 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v23, v22, 0, 0, 1u);

    sub_A168(&qword_4C130, &qword_34918);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_34650;
    *(inited + 32) = sub_32998();
    *(inited + 40) = v25;
    *(inited + 48) = sub_32B78();
    *(inited + 56) = 0x746152656D617266;
    *(inited + 64) = 0xE900000000000065;
    *(inited + 72) = sub_32B78();
    *(inited + 80) = 0xD000000000000010;
    *(inited + 88) = 0x8000000000037AC0;
    *(inited + 96) = sub_32B78();
    strcpy((inited + 104), "frameTimeMin");
    *(inited + 117) = 0;
    *(inited + 118) = -5120;
    *(inited + 120) = sub_32B78();
    strcpy((inited + 128), "frameTimeMax");
    *(inited + 141) = 0;
    *(inited + 142) = -5120;
    *(inited + 144) = sub_32B78();
    *(inited + 152) = 0xD000000000000010;
    *(inited + 160) = 0x8000000000037AE0;
    *(inited + 168) = sub_32B78();
    strcpy((inited + 176), "modelTimeMin");
    *(inited + 189) = 0;
    *(inited + 190) = -5120;
    *(inited + 192) = sub_32B78();
    strcpy((inited + 200), "modelTimeMax");
    *(inited + 213) = 0;
    *(inited + 214) = -5120;
    *(inited + 216) = sub_32B78();
    v26 = sub_19780(inited, &qword_4C140, &qword_34928);
    swift_setDeallocating();
    sub_A168(&qword_4C138, &qword_34920);
    swift_arrayDestroy();
    v27 = AXMotionCuesAnalyticsStopEvent;
    sub_156E0(v26);

    sub_1A964(0, &qword_4C0D8, NSObject_ptr);
    isa = sub_32908().super.isa;

    AnalyticsSendEvent();

    sub_119E4();

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_131DC()
{
  *(v0[39] + v0[46]) = 1;
  if (!_AXSMotionCuesActive())
  {
    _AXSSetMotionCuesActive();
  }

  if (qword_4BAF0 != -1)
  {
    swift_once();
  }

  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v4 = sub_AD0C(v3, MCLog);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = sub_32678();
  v6 = sub_32C58();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v5, v6, "Coordinator did not stop Motion cues main screen %@", v7, 0xCu);
    sub_B744(v8, &qword_4BEA0, &qword_34BA0);
  }

  else
  {
  }

  (*(v0[41] + 8))(v0[42], v0[40]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_13404()
{
  v1[17] = v0;
  v2 = sub_32628();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  sub_A168(&qword_4C580, &qword_34670);
  v1[21] = swift_task_alloc();
  v3 = sub_325E8();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v4 = sub_32698();
  v1[27] = v4;
  v1[28] = *(v4 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  if (qword_4BB00 != -1)
  {
    swift_once();
  }

  v1[34] = static AXMotionCuesActor.shared;

  return (_swift_task_switch)(sub_13634);
}

uint64_t sub_13634()
{
  v1 = v0[17];
  v2 = OBJC_IVAR___AXMotionCuesServer__isRunning;
  v0[35] = OBJC_IVAR___AXMotionCuesServer__isRunning;
  if (*(v1 + v2) == 1)
  {
    if (qword_4BAF0 != -1)
    {
      swift_once();
    }

    v3 = v0[33];
    v4 = v0[27];
    v5 = v0[28];
    v6 = sub_AD0C(v4, MCLog);
    swift_beginAccess();
    (*(v5 + 16))(v3, v6, v4);
    v7 = sub_32678();
    v8 = sub_32C68();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[28];
    if (v9)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v7, v8, "Already running Motion Cues, no need to start", v11, 2u);
    }

    (*(v10 + 8))(v0[33], v0[27]);

    v12 = v0[1];

    return v12();
  }

  else
  {
    if (qword_4BB18 != -1)
    {
      swift_once();
    }

    v14 = sub_32618();
    v0[36] = sub_AD0C(v14, static MCSignpost.server);
    sub_325D8();
    v15 = sub_325F8();
    v16 = sub_32CB8();
    if (sub_32CE8())
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_325C8();
      _os_signpost_emit_with_name_impl(&dword_0, v15, v16, v18, "startMotionCues", "", v17, 2u);
    }

    v19 = v0[25];
    v20 = v0[26];
    v21 = v0[22];
    v22 = v0[23];

    (*(v22 + 16))(v19, v20, v21);
    sub_32658();
    swift_allocObject();
    v0[37] = sub_32648();
    v23 = *(v22 + 8);
    v0[38] = v23;
    v0[39] = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v20, v21);

    sub_31A48();

    *(v1 + v2) = 1;
    if (!_AXSMotionCuesActive())
    {
      _AXSSetMotionCuesActive();
    }

    v24 = v0[17];

    sub_2405C();

    v25 = OBJC_IVAR___AXMotionCuesServer__mainDisplayViewController;
    v0[40] = OBJC_IVAR___AXMotionCuesServer__mainDisplayViewController;
    if (*(v24 + v25))
    {
      if (qword_4BAF0 != -1)
      {
        swift_once();
      }

      v26 = v0[32];
      v27 = v0[27];
      v28 = v0[28];
      v29 = sub_AD0C(v27, MCLog);
      swift_beginAccess();
      (*(v28 + 16))(v26, v29, v27);
      v30 = sub_32678();
      v31 = sub_32C58();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_0, v30, v31, "Trying to start motion cues when main display view controller is not nil. Cleaning up old one before overwriting.", v32, 2u);
      }

      v33 = v0[32];
      v34 = v0[27];
      v35 = v0[28];

      (*(v35 + 8))(v33, v34);
      v36 = swift_task_alloc();
      v0[41] = v36;
      *v36 = v0;
      v36[1] = sub_13D6C;

      return sub_14C74();
    }

    else
    {
      v37 = swift_task_alloc();
      v0[43] = v37;
      *v37 = v0;
      v37[1] = sub_13EDC;

      return sub_19F10(0);
    }
  }
}

uint64_t sub_13D6C()
{
  v2 = *v1;
  v2[42] = v0;

  if (v0)
  {
    v3 = v2[34];

    return (_swift_task_switch)(sub_148D0, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[43] = v4;
    *v4 = v2;
    v4[1] = sub_13EDC;

    return sub_19F10(0);
  }
}

uint64_t sub_13EDC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 352) = a1;
  *(v4 + 360) = v1;

  v5 = *(v3 + 272);
  if (v1)
  {
    v6 = sub_1452C;
  }

  else
  {
    v6 = sub_14010;
  }

  return (_swift_task_switch)(v6, v5, 0);
}

uint64_t sub_14010()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 320);
  v3 = *(v0 + 136);
  v4 = *(v3 + v2);
  *(v3 + v2) = v1;
  v5 = v1;

  if (qword_4BAF0 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 248);
  v7 = *(v0 + 216);
  v8 = *(v0 + 224);
  v9 = sub_AD0C(v7, MCLog);
  swift_beginAccess();
  (*(v8 + 16))(v6, v9, v7);
  v10 = sub_32678();
  v11 = sub_32C68();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "Motion Cues UI started", v12, 2u);
  }

  v13 = *(v0 + 248);
  v14 = *(v0 + 216);
  v15 = *(v0 + 224);

  result = (*(v15 + 8))(v13, v14);
  if (kAXMotionCuesStartNotification)
  {
    v17 = *(v0 + 136);
    v18 = kAXMotionCuesStartNotification;
    v19 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v19, v18, 0, 0, 1u);

    *(v17 + OBJC_IVAR___AXMotionCuesServer__startTime) = CFAbsoluteTimeGetCurrent();
    v20 = AXMotionCuesAnalyticsStartEvent;
    sub_19780(&_swiftEmptyArrayStorage, &qword_4C0C8, &qword_34AD0);
    sub_1A964(0, &qword_4C0D8, NSObject_ptr);
    isa = sub_32908().super.isa;

    AnalyticsSendEvent();

    if (!AXIsInternalInstall() || (v22 = [objc_opt_self() sharedInstance], v23 = objc_msgSend(v22, "showMotionCuesInScreenshots"), v22, (v23 & 1) == 0))
    {
      v24 = *(v0 + 352);
      v25 = *(v0 + 168);
      v26 = sub_32AE8();
      (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
      sub_32AC8();
      v27 = v24;
      v28 = sub_32AB8();
      v29 = swift_allocObject();
      v29[2] = v28;
      v29[3] = &protocol witness table for MainActor;
      v29[4] = v27;
      sub_DBE0(0, 0, v25, &unk_348A8, v29);
    }

    v30 = *(v0 + 352);
    sub_119E4();

    v31 = sub_325F8();
    sub_32638();
    v32 = sub_32CA8();
    if (sub_32CE8())
    {
      v34 = *(v0 + 152);
      v33 = *(v0 + 160);
      v35 = *(v0 + 144);

      sub_32668();

      if ((*(v34 + 88))(v33, v35) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v36 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
        v36 = "";
      }

      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = sub_325C8();
      _os_signpost_emit_with_name_impl(&dword_0, v31, v32, v38, "startMotionCues", v36, v37, 2u);
    }

    (*(v0 + 304))(*(v0 + 192), *(v0 + 176));

    v39 = *(v0 + 8);

    return v39();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1452C(uint64_t a1)
{
  *(*(v1 + 136) + *(v1 + 280)) = 0;
  if (_AXSMotionCuesActive())
  {
    _AXSSetMotionCuesActive();
  }

  if (qword_4BAF0 != -1)
  {
    swift_once();
  }

  v3 = *(v1 + 224);
  v2 = *(v1 + 232);
  v4 = *(v1 + 216);
  v5 = sub_AD0C(v4, MCLog);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = sub_32678();
  v7 = sub_32C58();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v6, v7, "Coordinator did not show Motion cues main screen %@", v8, 0xCu);
    sub_B744(v9, &qword_4BEA0, &qword_34BA0);
  }

  else
  {
  }

  (*(*(v1 + 224) + 8))(*(v1 + 232), *(v1 + 216));
  v11 = sub_325F8();
  sub_32638();
  v12 = sub_32CA8();
  if (sub_32CE8())
  {
    v14 = *(v1 + 152);
    v13 = *(v1 + 160);
    v15 = *(v1 + 144);

    sub_32668();

    if ((*(v14 + 88))(v13, v15) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v16 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v1 + 152) + 8))(*(v1 + 160), *(v1 + 144));
      v16 = "";
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_325C8();
    _os_signpost_emit_with_name_impl(&dword_0, v11, v12, v18, "startMotionCues", v16, v17, 2u);
  }

  (*(v1 + 304))(*(v1 + 192), *(v1 + 176));

  v19 = *(v1 + 8);

  return v19();
}

uint64_t sub_148D0(uint64_t a1)
{
  *(*(v1 + 136) + *(v1 + 280)) = 0;
  if (_AXSMotionCuesActive())
  {
    _AXSSetMotionCuesActive();
  }

  if (qword_4BAF0 != -1)
  {
    swift_once();
  }

  v3 = *(v1 + 224);
  v2 = *(v1 + 232);
  v4 = *(v1 + 216);
  v5 = sub_AD0C(v4, MCLog);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = sub_32678();
  v7 = sub_32C58();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v6, v7, "Coordinator did not show Motion cues main screen %@", v8, 0xCu);
    sub_B744(v9, &qword_4BEA0, &qword_34BA0);
  }

  else
  {
  }

  (*(*(v1 + 224) + 8))(*(v1 + 232), *(v1 + 216));
  v11 = sub_325F8();
  sub_32638();
  v12 = sub_32CA8();
  if (sub_32CE8())
  {
    v14 = *(v1 + 152);
    v13 = *(v1 + 160);
    v15 = *(v1 + 144);

    sub_32668();

    if ((*(v14 + 88))(v13, v15) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v16 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v1 + 152) + 8))(*(v1 + 160), *(v1 + 144));
      v16 = "";
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_325C8();
    _os_signpost_emit_with_name_impl(&dword_0, v11, v12, v18, "startMotionCues", v16, v17, 2u);
  }

  (*(v1 + 304))(*(v1 + 192), *(v1 + 176));

  v19 = *(v1 + 8);

  return v19();
}

uint64_t sub_14C74()
{
  v1[5] = v0;
  v2 = sub_32698();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  if (qword_4BB00 != -1)
  {
    swift_once();
  }

  v1[9] = static AXMotionCuesActor.shared;

  return (_swift_task_switch)(sub_14D6C);
}

uint64_t sub_14D6C()
{
  v1 = v0[5];
  v2 = OBJC_IVAR___AXMotionCuesServer__mainDisplayViewController;
  v0[10] = OBJC_IVAR___AXMotionCuesServer__mainDisplayViewController;
  v3 = *(v1 + v2);
  v0[11] = v3;
  if (!v3)
  {
    if (qword_4BAF0 != -1)
    {
      swift_once();
    }

    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[6];
    v10 = sub_AD0C(v9, MCLog);
    swift_beginAccess();
    (*(v8 + 16))(v7, v10, v9);
    v11 = sub_32678();
    v12 = sub_32C58();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[7];
    v14 = v0[8];
    v16 = v0[6];
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v11, v12, "Called removeMainDisplayViewController but view controller is already nil.", v17, 2u);
    }

    (*(v15 + 8))(v14, v16);

    v18 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v0[12] = sub_32AC8();
  v4 = v3;
  v0[13] = sub_32AB8();
  v6 = sub_32A98();
  v0[14] = v6;
  v0[15] = v5;

  return (_swift_task_switch)(sub_14F7C, v6, v5);
}

uint64_t sub_14F7C(uint64_t a1)
{
  v2 = v1[11];
  v1[16] = sub_32AB8();
  v3 = swift_task_alloc();
  v1[17] = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  v1[18] = v4;
  *v4 = v1;
  v4[1] = sub_15080;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_15080()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return (_swift_task_switch)(sub_151E0, v3, v2);
}

uint64_t sub_151E0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 72);

  return (_swift_task_switch)(sub_1524C, v3, 0);
}

uint64_t sub_1524C(uint64_t a1)
{
  *(v1 + 152) = sub_32AB8();
  v3 = sub_32A98();

  return (_swift_task_switch)(sub_152D8, v3, v2);
}

uint64_t sub_152D8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 88);

  AXMotionCuesRootViewController.tearDown()();
  v4 = v3;
  v5 = swift_task_alloc();
  *(v2 + 160) = v5;
  *v5 = v2;
  v5[1] = sub_15380;

  return sub_19B34();
}

uint64_t sub_15380()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_15524;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_154A8;
    v3 = v5;
  }

  return (_swift_task_switch)(v4, v3, 0);
}

uint64_t sub_154A8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);

  v3 = *(v2 + v1);
  *(v2 + v1) = 0;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_15524()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_15598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_32AC8();
  *(v4 + 24) = sub_32AB8();
  v6 = sub_32A98();

  return (_swift_task_switch)(sub_15630, v6, v5);
}

uint64_t sub_15630(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);

  v4 = [v3 view];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 layer];
    [v6 setDisableUpdateMask:18];
  }

  v7 = *(v2 + 8);

  return v7();
}

void sub_156E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_A168(&qword_4C0C8, &qword_34AD0);
    v2 = sub_32E88();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_1889C(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

Swift::Void __swiftcall AXMotionCuesServer.handleNilDeviceMotion()()
{
  v1 = sub_A168(&qword_4C580, &qword_34670);
  __chkstk_darwin(v1 - 8);
  v3 = &v35 - v2;
  v4 = sub_32698();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = OBJC_IVAR___AXMotionCuesServer__motionManager;
  if ([*&v0[OBJC_IVAR___AXMotionCuesServer__motionManager] isDeviceMotionAvailableNoSim])
  {
    if ([*&v0[v11] isDeviceMotionActiveNoSim])
    {
      v12 = v0;
      if (qword_4BAF0 != -1)
      {
        swift_once();
      }

      v13 = sub_AD0C(v4, MCLog);
      swift_beginAccess();
      (*(v5 + 16))(v10, v13, v4);
      v14 = sub_32678();
      v15 = sub_32C58();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_0, v14, v15, "Resetting motion cues because device motion is available and active but not providing data", v16, 2u);
      }

      (*(v5 + 8))(v10, v4);
      v17 = sub_32AE8();
      (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = v12;
      v19 = v12;
      sub_DBE0(0, 0, v3, &unk_346B8, v18);
LABEL_18:

      return;
    }

    v20 = _AXSMotionCuesMode();
    if (v20 != 1 && (v20 || (v0[OBJC_IVAR___AXMotionCuesServer__isInVehicle] & 1) == 0))
    {
      if (qword_4BAF0 != -1)
      {
        swift_once();
      }

      v21 = sub_AD0C(v4, MCLog);
      swift_beginAccess();
      (*(v5 + 16))(v8, v21, v4);
      v22 = v0;
      v23 = sub_32678();
      v24 = sub_32C58();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        v27 = *&v22[OBJC_IVAR___AXMotionCuesServer__mainDisplayViewController];
        *(v25 + 4) = v27;
        *v26 = v27;
        v28 = v27;
        _os_log_impl(&dword_0, v23, v24, "Got nil device motion but motion manager is not active. Somehow the view controller is still querying for motion updates. Trying again to clean up mainDisplayViewController %@.", v25, 0xCu);
        sub_B744(v26, &qword_4BEA0, &qword_34BA0);
      }

      (*(v5 + 8))(v8, v4);
      v29 = *&v22[OBJC_IVAR___AXMotionCuesServer__mainDisplayViewController];
      v30 = sub_32AE8();
      (*(*(v30 - 8) + 56))(v3, 1, 1, v30);
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v31[4] = v22;
      if (v29)
      {
        v32 = v29;
        v33 = v22;
        sub_DEE0(0, 0, v3, &unk_346A0, v31);
      }

      else
      {
        v34 = v22;
        sub_DEE0(0, 0, v3, &unk_34690, v31);
      }

      goto LABEL_18;
    }
  }
}

uint64_t sub_15E28(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_15EBC;

  return sub_14C74();
}

uint64_t sub_15EBC()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
  }

  return (_swift_task_switch)(sub_1B058, 0, 0);
}

uint64_t sub_15FD8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1606C;

  return sub_19B34();
}

uint64_t sub_1606C()
{
  *(*v1 + 32) = v0;

  if (v0)
  {

    v2 = sub_1B058;
  }

  else
  {
    v2 = sub_16188;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_161B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_16240;

  return sub_16334();
}

uint64_t sub_16240()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_16334()
{
  v1[11] = v0;
  v2 = sub_32698();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  if (qword_4BB00 != -1)
  {
    swift_once();
  }

  v1[17] = static AXMotionCuesActor.shared;

  return (_swift_task_switch)(sub_16444);
}

uint64_t sub_16444()
{
  v1 = v0[11];
  v2 = OBJC_IVAR___AXMotionCuesServer__isResetting;
  v0[18] = OBJC_IVAR___AXMotionCuesServer__isResetting;
  if (*(v1 + v2))
  {
    if (qword_4BAF0 != -1)
    {
      swift_once();
    }

    v4 = v0 + 14;
    v3 = v0[14];
    v5 = v0[12];
    v6 = v0[13];
    v7 = sub_AD0C(v5, MCLog);
    swift_beginAccess();
    (*(v6 + 16))(v3, v7, v5);
    v8 = sub_32678();
    v9 = sub_32C48();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = "Already resetting motion cues";
LABEL_14:
      v17 = *v4;
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v8, v9, v10, v18, 2u);

LABEL_16:
      v19 = v0[13];
      v20 = v0[12];

      (*(v19 + 8))(v17, v20);

      v21 = v0[1];

      return v21();
    }

    goto LABEL_15;
  }

  if (*(v1 + OBJC_IVAR___AXMotionCuesServer__isRunning) != 1)
  {
    if (qword_4BAF0 != -1)
    {
      swift_once();
    }

    v4 = v0 + 15;
    v13 = v0[15];
    v14 = v0[12];
    v15 = v0[13];
    v16 = sub_AD0C(v14, MCLog);
    swift_beginAccess();
    (*(v15 + 16))(v13, v16, v14);
    v8 = sub_32678();
    v9 = sub_32C48();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = "Motion cues not running, no need to reset";
      goto LABEL_14;
    }

LABEL_15:
    v17 = *v4;
    goto LABEL_16;
  }

  *(v1 + v2) = 1;
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_16734;

  return sub_12748();
}

uint64_t sub_16734()
{
  v1 = *(*v0 + 136);

  return (_swift_task_switch)(sub_16844, v1, 0);
}

uint64_t sub_16844()
{
  v1 = *(v0 + 88);
  v2 = [objc_allocWithZone(CMMotionManager) initUsing6AxisSensorFusion];
  v3 = *(v1 + OBJC_IVAR___AXMotionCuesServer__motionManager);
  *(v1 + OBJC_IVAR___AXMotionCuesServer__motionManager) = v2;
  v4 = v2;

  type metadata accessor for DeviceMotionProvider();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v1 + OBJC_IVAR___AXMotionCuesServer__deviceMotionProvider) = v5;

  type metadata accessor for AXMotionCuesModel();
  swift_allocObject();
  *(v1 + OBJC_IVAR___AXMotionCuesServer__motionCuesModel) = sub_260E0(v5);

  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  *v6 = v0;
  v6[1] = sub_16984;

  return sub_F06C();
}

uint64_t sub_16984()
{
  v1 = *(*v0 + 136);

  return (_swift_task_switch)(sub_16A94, v1, 0);
}

uint64_t sub_16A94()
{
  *(v0[11] + v0[18]) = 0;
  if (qword_4BAF0 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v4 = sub_AD0C(v2, MCLog);
  swift_beginAccess();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_32678();
  v6 = sub_32C48();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[16];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v5, v6, "Finished resetting motion cues", v9, 2u);
  }

  v10 = v0[12];
  v11 = v0[13];

  (*(v11 + 8))(v8, v10);

  v12 = v0[1];

  return v12();
}

Swift::Void __swiftcall AXMotionCuesServer.handleRootViewControllerDidDisappear()()
{
  v1 = sub_A168(&qword_4C580, &qword_34670);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_32698();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_AXSMotionCuesActive() && (*(v0 + OBJC_IVAR___AXMotionCuesServer__isResetting) & 1) == 0)
  {
    v8 = v0;
    if (qword_4BAF0 != -1)
    {
      swift_once();
    }

    v9 = sub_AD0C(v4, MCLog);
    swift_beginAccess();
    (*(v5 + 16))(v7, v9, v4);
    v10 = sub_32678();
    v11 = sub_32C58();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "Resetting motion cues because root view controller disappeared with motion cues active", v12, 2u);
    }

    (*(v5 + 8))(v7, v4);
    v13 = sub_32AE8();
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v8;
    v15 = v8;
    sub_DBE0(0, 0, v3, &unk_346C8, v14);
  }
}

uint64_t sub_16EE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B048;

  return sub_16334();
}

uint64_t sub_16F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[18] = a1;
  sub_32AC8();
  v5[21] = sub_32AB8();
  v7 = sub_32A98();
  v5[22] = v7;
  v5[23] = v6;

  return (_swift_task_switch)(sub_1700C, v7, v6);
}

uint64_t sub_1700C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = objc_allocWithZone(type metadata accessor for AXMotionCuesRootViewController());

  v7 = sub_1D920(v6, sub_1A900, v3, sub_1A930, v4);
  v0[24] = v7;
  *&v7[OBJC_IVAR____TtC18AXMotionCuesServer30AXMotionCuesRootViewController_delegate + 8] = &protocol witness table for AXMotionCuesServer;
  swift_unknownObjectWeakAssign();
  v8 = sub_BB80();
  v0[25] = v8;
  v9 = v7;
  v10 = sub_32968();
  v0[26] = v10;
  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_17264;
  v11 = swift_continuation_init();
  v0[17] = sub_A168(&qword_4C0E8, &qword_348D8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_174E8;
  v0[13] = &unk_45CE0;
  v0[14] = v11;
  [v8 addContentViewController:v9 withUserInteractionEnabled:0 forService:v1 forSceneClientIdentifier:v10 context:0 userInterfaceStyle:1 forWindowScene:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_17264()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return (_swift_task_switch)(sub_1736C, v2, v1);
}

uint64_t sub_1736C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 200);
  v4 = *(v2 + 208);
  v5 = *(v2 + 192);

  v6 = *(v2 + 216);

  v7 = *(v2 + 192);
  if (v6 == 1)
  {
    **(v2 + 144) = v7;
  }

  else
  {
    sub_AD44();
    swift_allocError();
    *v9 = 0xD00000000000002CLL;
    v9[1] = 0x8000000000037A90;
    swift_willThrow();
  }

  v8 = *(v2 + 8);

  return v8();
}

void sub_17460(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_104CC(a1 & 1, a3, a4, a5);
  }
}

uint64_t sub_174E8(uint64_t a1, char a2)
{
  **(*(*sub_1A554((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

uint64_t sub_17544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_A168(&qword_4C580, &qword_34670);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1A9AC(a3, v22 - v9, &qword_4C580, &qword_34670);
  v11 = sub_32AE8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_B744(v10, &qword_4C580, &qword_34670);
  }

  else
  {
    sub_32AD8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_32A98();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_329D8() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_B744(a3, &qword_4C580, &qword_34670);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_B744(a3, &qword_4C580, &qword_34670);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_177F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_A168(&qword_4C580, &qword_34670);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1A9AC(a3, v22 - v9, &qword_4C580, &qword_34670);
  v11 = sub_32AE8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_B744(v10, &qword_4C580, &qword_34670);
  }

  else
  {
    sub_32AD8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_32A98();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_329D8() + 32;
      type metadata accessor for AXMotionCuesRootViewController();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_B744(a3, &qword_4C580, &qword_34670);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_B744(a3, &qword_4C580, &qword_34670);
  type metadata accessor for AXMotionCuesRootViewController();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_17AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  sub_32AC8();
  v4[19] = sub_32AB8();
  v6 = sub_32A98();
  v4[20] = v6;
  v4[21] = v5;

  return (_swift_task_switch)(sub_17B40, v6, v5);
}

uint64_t sub_17B40()
{
  v1 = v0[18];
  v2 = sub_BB80();
  v0[22] = v2;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_17C78;
  v3 = swift_continuation_init();
  v0[17] = sub_A168(&qword_4C0E8, &qword_348D8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_174E8;
  v0[13] = &unk_45BA0;
  v0[14] = v3;
  [v2 removeAllContentViewControllersForService:v1 withUserInteractionEnabled:0 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_17C78()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return (_swift_task_switch)(sub_17D80, v2, v1);
}

uint64_t sub_17D80(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 176);

  v4 = *(v2 + 184);

  if (v4 != 1)
  {
    sub_AD44();
    swift_allocError();
    *v6 = 0xD00000000000002ELL;
    v6[1] = 0x8000000000037980;
    swift_willThrow();
  }

  v5 = *(v2 + 8);

  return v5();
}

id AXMotionCuesServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t AXMotionCuesError.description.getter(uint64_t a1, void *a2)
{
  sub_32E18(21);

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  sub_329F8(v5);
  return 0xD000000000000013;
}

unint64_t sub_18044()
{
  v1 = *v0;
  v2 = v0[1];
  sub_32E18(21);

  v4._countAndFlagsBits = v1;
  v4._object = v2;
  sub_329F8(v4);
  return 0xD000000000000013;
}

uint64_t sub_180C0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_181B8;

  return v6(a1);
}

uint64_t sub_181B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_182B0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1837C(v11, 0, 0, 1, a1, a2);
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
    sub_1A4A4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1A508(v11);
  return v7;
}

unint64_t sub_1837C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_18488(a5, a6);
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
    result = sub_32E38();
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

char *sub_18488(uint64_t a1, unint64_t a2)
{
  v3 = sub_184D4(a1, a2);
  sub_18604(&off_45388);
  return v3;
}

char *sub_184D4(uint64_t a1, unint64_t a2)
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

  v6 = sub_186F0(v5, 0);
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

  result = sub_32E38();
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
        v10 = sub_32A08();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_186F0(v10, 0);
        result = sub_32DF8();
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

uint64_t sub_18604(uint64_t result)
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

  result = sub_18764(result, v11, 1, v3);
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

void *sub_186F0(uint64_t a1, uint64_t a2)
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

  sub_A168(&qword_4C150, &qword_34950);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_18764(char *result, int64_t a2, char a3, char *a4)
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
    sub_A168(&qword_4C150, &qword_34950);
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

unint64_t sub_18858(uint64_t a1)
{
  v2 = v1;
  v4 = sub_32DA8(*(v2 + 40));

  return sub_189A8(a1, v4);
}

unint64_t sub_1889C(uint64_t a1, uint64_t a2)
{
  sub_32F78();
  sub_329E8();
  v4 = sub_32F88();

  return sub_18A70(a1, a2, v4);
}

unint64_t sub_18914(uint64_t a1)
{
  sub_32998();
  sub_32F78();
  sub_329E8();
  v2 = sub_32F88();

  return sub_18B28(a1, v2);
}

unint64_t sub_189A8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1AA14(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_32DB8();
      sub_1AA70(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_18A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_32EE8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_18B28(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_32998();
      v8 = v7;
      if (v6 == sub_32998() && v8 == v9)
      {
        break;
      }

      v11 = sub_32EE8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_18C2C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_18D20;

  return v5(v2 + 32);
}

uint64_t sub_18D20()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

Swift::Int sub_18E34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_A168(&unk_4C180, &qword_349C8);
    v3 = sub_32DE8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_1AA14(v6 + 40 * v4, v19);
      result = sub_32DA8(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_1AA14(*(v3 + 48) + 40 * i, v18);
        v11 = sub_32DB8();
        result = sub_1AA70(v18);
        if (v11)
        {
          sub_1AA70(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int _s18AXMotionCuesServerAAC48possibleRequiredEntitlementsForProcessingMessage14withIdentifierShys11AnyHashableVGSgSi_tFZ_0()
{
  sub_A168(&qword_4C178, &qword_349C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_34660;
  sub_32DC8();
  sub_32DC8();
  sub_32DC8();
  sub_32DC8();
  v1 = sub_18E34(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_190E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_A168(&qword_4C120, &qword_34908);
    v3 = sub_32E88();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A9AC(v4, v13, &qword_4C128, &qword_34910);
      result = sub_18858(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_199A4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1921C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_19274(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B048;

  return sub_C3B8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_19374(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B048;

  return sub_15FD8(a1);
}

uint64_t sub_19428(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B048;

  return sub_15E28(a1);
}

uint64_t sub_194E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B048;

  return sub_161B0();
}

uint64_t sub_19594()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B048;

  return sub_16EE0();
}

uint64_t sub_196D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19720(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_19780(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_A168(a2, a3);
    v5 = sub_32E88();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1889C(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1987C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_A168(&qword_4C0B8, &qword_34858);
    v3 = sub_32E88();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A9AC(v4, &v11, &qword_4C0C0, &unk_34860);
      v5 = v11;
      result = sub_18914(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_199A4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_199A4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_199B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_A168(&qword_4C0D0, &qword_34888);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_19A24(uint64_t a1)
{
  _AXSMotionCuesMode();
  _AXSMotionCuesEnabled();
  isa = sub_32A88().super.super.isa;
  v2 = [objc_allocWithZone(BMAccessibilityMotionCues) initWithEnabled:isa];

  v3 = [BiomeLibrary() Accessibility];
  swift_unknownObjectRelease();
  v4 = [v3 MotionCues];
  swift_unknownObjectRelease();
  v5 = [v4 source];

  [v5 sendEvent:v2];
}

uint64_t sub_19B34()
{
  *(v1 + 40) = v0;
  sub_A168(&qword_4C580, &qword_34670);
  *(v1 + 48) = swift_task_alloc();

  return (_swift_task_switch)(sub_19BD0, 0, 0);
}

uint64_t sub_19BD0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_32AE8();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_32AC8();
  v4 = v2;
  v5 = sub_32AB8();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;
  v7 = sub_17544(0, 0, v1, &unk_348C8, v6);
  v0[7] = v7;
  v8 = swift_task_alloc();
  v0[8] = v8;
  v9 = sub_A168(&qword_4C0E0, &qword_348D0);
  v0[9] = v9;
  *v8 = v0;
  v8[1] = sub_19D58;

  return Task.result.getter(v0 + 2, v7, &type metadata for () + 8, v9, &protocol self-conformance witness table for Error);
}

uint64_t sub_19D58()
{

  return (_swift_task_switch)(sub_19E54, 0, 0);
}

uint64_t sub_19E54(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 24))
  {
    *(v2 + 32) = *(v2 + 16);
    swift_willThrowTypedImpl();
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_19F10(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_A168(&qword_4C580, &qword_34670);
  v2[7] = swift_task_alloc();

  return (_swift_task_switch)(sub_19FAC, 0, 0);
}

uint64_t sub_19FAC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_32AE8();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_32AC8();
  v5 = v3;
  v6 = v2;
  v7 = sub_32AB8();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  v8[5] = v3;
  v9 = sub_177F0(0, 0, v1, &unk_34900, v8);
  v0[8] = v9;
  v10 = swift_task_alloc();
  v0[9] = v10;
  v11 = type metadata accessor for AXMotionCuesRootViewController();
  v12 = sub_A168(&qword_4C0E0, &qword_348D0);
  v0[10] = v12;
  *v10 = v0;
  v10[1] = sub_1A140;

  return Task.result.getter(v0 + 2, v9, v11, v12, &protocol self-conformance witness table for Error);
}

uint64_t sub_1A140()
{

  return (_swift_task_switch)(sub_1A23C, 0, 0);
}

uint64_t sub_1A23C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (*(v2 + 24))
  {
    *(v2 + 32) = v3;
    swift_willThrowTypedImpl();

    v4 = *(v2 + 8);

    return v4();
  }

  else
  {

    v6 = *(v2 + 8);

    return v6(v3);
  }
}

uint64_t sub_1A324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_16240;

  return sub_15598(a1, v4, v5, v6);
}

uint64_t sub_1A3E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B048;

  return sub_17AA8(a1, v4, v5, v6);
}

uint64_t sub_1A4A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1A508(void *a1)
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

void *sub_1A554(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1A598()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1A5D0(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t sub_1A618(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A660()
{
  result = qword_4C110;
  if (!qword_4C110)
  {
    sub_9EA8(&qword_4C108, &qword_348E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4C110);
  }

  return result;
}

uint64_t sub_1A6C4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1A704()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1A744()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B048;

  return sub_126B8();
}

uint64_t sub_1A7F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1A840(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_16240;

  return sub_16F70(a1, v4, v5, v7, v6);
}

uint64_t sub_1A964(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1A9AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_A168(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AAC4(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t sub_1AAFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B048;

  return sub_18C2C(a1, v4);
}

uint64_t sub_1ABB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B048;

  return sub_180C0(a1, v4);
}

uint64_t sub_1AC78()
{
  v1 = sub_A168(&qword_4C158, &unk_34980);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AD5C(uint64_t a1)
{
  v4 = *(sub_A168(&qword_4C158, &unk_34980) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B048;

  return sub_107EC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1AE90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AEA8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1AEF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B048;

  return sub_11320(a1, v4, v5, v7, v6);
}

uint64_t *sub_1AFB0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

double sub_1B05C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v75 = *(a1 + 8);
  v6 = *(a1 + 24);
  v67 = *(a1 + 16);
  v74 = v6;
  v7 = v6;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v13 = *(a1 + 64);
  v12 = *(a1 + 72);
  v69 = v13;
  v70 = v12;
  v14 = *(a1 + 88);
  v68 = *(a1 + 80);
  v71 = v68;
  v72 = v14;
  v66 = (a1 + 96);
  v15 = *(a1 + 112);
  v77[0] = *(a1 + 96);
  v77[1] = v15;
  v73 = *(a1 + 128);
  v16 = sub_32698();
  v17 = __chkstk_darwin(v16);
  v20 = fabs(v5) <= 1.5 && (*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  v21 = 0.0;
  v65 = v5;
  if (v20)
  {
    v22 = v5;
  }

  else
  {
    v22 = 0.0;
  }

  v23 = v12;
  v24 = v67;
  if (fabs(v75) <= 1.5 && (*&v75 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v26 = v75;
  }

  else
  {
    v26 = 0.0;
  }

  if (fabs(v67) <= 1.5 && (*&v67 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v28 = v67;
  }

  else
  {
    v28 = 0.0;
  }

  if (fabs(v74) <= 1.5 && (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v30 = v74;
  }

  else
  {
    v30 = 0.0;
  }

  if (fabs(v8) <= 1.5 && (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v32 = v8;
  }

  else
  {
    v32 = 0.0;
  }

  if (fabs(v9) <= 1.5 && (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v34 = v9;
  }

  else
  {
    v34 = 0.0;
  }

  if (fabs(v10) <= 10.0 && (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v36 = v10;
  }

  else
  {
    v36 = 0.0;
  }

  if (fabs(v11) <= 10.0 && (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v38 = v11;
  }

  else
  {
    v38 = 0.0;
  }

  v39 = fabs(v13) <= 10.0 && (*&v69 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  v69 = v13;
  if (v39)
  {
    v40 = v13;
  }

  else
  {
    v40 = 0.0;
  }

  v41 = v68;
  if (fabs(v23) <= 6.4 && (*&v70 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v43 = v23;
  }

  else
  {
    v43 = 0.0;
  }

  if (fabs(v68) <= 6.4 && (*&v71 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v45 = v68;
  }

  else
  {
    v45 = 0.0;
  }

  v46 = fabs(v14) <= 6.4 && (*&v72 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  v72 = v14;
  if (v46)
  {
    v21 = v14;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v47 = -v26;
      v74 = -v32;
      v10 = -v38;
      v75 = v22;
      v24 = v28;
      v8 = v30;
      v9 = v34;
      v23 = -v45;
      v11 = v36;
      v41 = v43;
    }

    else
    {
      if (a2 != 4)
      {
        goto LABEL_80;
      }

      v75 = -v22;
      v8 = -v30;
      v11 = -v36;
      v47 = v26;
      v24 = v28;
      v74 = v32;
      v9 = v34;
      v41 = -v43;
      v10 = v38;
      v23 = v45;
    }

LABEL_87:
    v48 = v21;
    goto LABEL_88;
  }

  if (a2 == 1)
  {
    v47 = v22;
    v75 = v26;
    v24 = v28;
    v74 = v30;
    v8 = v32;
    v9 = v34;
    v10 = v36;
    v11 = v38;
    v23 = v43;
    v41 = v45;
    goto LABEL_87;
  }

  if (a2 == 2)
  {
    v47 = -v22;
    v75 = -v26;
    v74 = -v30;
    v8 = -v32;
    v10 = -v36;
    v24 = v28;
    v11 = -v38;
    v9 = v34;
    v23 = -v43;
    v48 = v21;
    v41 = -v45;
LABEL_88:
    v58 = v66;
    goto LABEL_89;
  }

LABEL_80:
  v49 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v19;
  if (qword_4BAF0 != -1)
  {
    v64 = v17;
    swift_once();
    v17 = v64;
  }

  v51 = v17;
  v52 = sub_AD0C(v17, MCLog);
  swift_beginAccess();
  v53 = v52;
  v54 = v51;
  (*(v50 + 16))(v49, v53, v51);
  v55 = sub_32678();
  v56 = sub_32C58();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_0, v55, v56, "Processing unknown orientation.", v57, 2u);
  }

  (*(v50 + 8))(v49, v54);
  v58 = v77;
  v47 = v65;
  v40 = v69;
  v48 = v72;
LABEL_89:
  v60 = v58[1];
  v76 = *v58;
  v59 = v76;
  v61 = v75;
  *a3 = v47;
  *(a3 + 8) = v61;
  v62 = v74;
  *(a3 + 16) = v24;
  *(a3 + 24) = v62;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  *(a3 + 48) = v10;
  *(a3 + 56) = v11;
  *(a3 + 64) = v40;
  *(a3 + 72) = v23;
  *(a3 + 80) = v41;
  *(a3 + 88) = v48;
  *(a3 + 96) = v59;
  *(a3 + 112) = v60;
  result = v73;
  *(a3 + 128) = v73;
  return result;
}