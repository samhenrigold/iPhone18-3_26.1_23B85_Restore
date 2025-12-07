void sub_23C09A6E4(uint64_t a1, void *a2, uint64_t a3)
{
  v54[4] = *MEMORY[0x277D85DE8];
  v6 = a2;
  switch(a3)
  {
    case 2:
      v38 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v5, 12, 4000);
      v40 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v39, 3, 4000, v38);
      v52[1] = v40;
      v42 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v41, 17, 4000);
      v52[2] = v42;
      v44 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v43, v52, 3);
      objc_msgSend_setCurationPlacements_(v6, v45, v44);

      if (*(a1 + 48) != 1)
      {
        break;
      }

      v19 = objc_msgSend_curationPlacements(v6, v46, v47);
      v37 = MEMORY[0x277D2C020];
      goto LABEL_10;
    case 1:
      v24 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v5, 12, 4000);
      v53[0] = v24;
      v26 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v25, 13, 4000);
      v53[1] = v26;
      v28 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v27, 3, 4000);
      v53[2] = v28;
      v30 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v29, 17, 4000);
      v53[3] = v30;
      v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v31, v53, 4);
      objc_msgSend_setCurationPlacements_(v6, v33, v32);

      if (*(a1 + 48) != 1)
      {
        break;
      }

      v19 = objc_msgSend_curationPlacements(v6, v34, v35);
      v37 = MEMORY[0x277D2C020];
LABEL_10:
      objc_msgSend_placementWithWatchOS12Group_zOrder_(v37, v36, 1, 4000);
      goto LABEL_11;
    case 0:
      v7 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v5, 12, 4000);
      v54[0] = v7;
      v9 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v8, 13, 4000);
      v54[1] = v9;
      v11 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v10, 3, 4000);
      v54[2] = v11;
      v13 = objc_msgSend_placementWithWatchOS12Group_zOrder_(MEMORY[0x277D2C020], v12, 17, 9000);
      v54[3] = v13;
      v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v14, v54, 4);
      objc_msgSend_setCurationPlacements_(v6, v16, v15);

      if (*(a1 + 48) == 1)
      {
        v19 = objc_msgSend_curationPlacements(v6, v17, v18);
        v20 = MEMORY[0x277D2C020];
        v22 = objc_msgSend__newFacesGroupZOrderForDevice_(*(a1 + 32), v21, *(a1 + 40));
        objc_msgSend_placementWithWatchOS12Group_zOrder_(v20, v23, 1, v22);
        v48 = LABEL_11:;
        v50 = objc_msgSend_arrayByAddingObject_(v19, v49, v48);
        objc_msgSend_setCurationPlacements_(v6, v51, v50);
      }

      break;
  }
}

void sub_23C09B464(uint64_t a1, const char *a2, void *a3)
{
  v5 = objc_msgSend_display(a3, a2, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_transitionToMonochromeWithFraction_(v5, v3, v4, 1.0);
  }
}

uint64_t sub_23C09BA08()
{
  qword_281459BB8 = objc_alloc_init(NTKUnity2025ChimesObserver);

  return MEMORY[0x2821F96F8]();
}

void sub_23C09BF58(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_device(*(a1 + 32), a2, a3);
  sub_23C09C5B4(v5, v5);
  v7 = v6;

  memset(&v25, 0, sizeof(v25));
  CGAffineTransformMakeScale(&v25, v7, v7);
  v8 = *MEMORY[0x277D2BF08];
  v10 = objc_msgSend_complicationLayoutforSlot_(*(a1 + 40), v9, *MEMORY[0x277D2BF08]);
  objc_msgSend__circularComplicationCenterForSlot_inFaceBounds_(*(a1 + 32), v11, v8, *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  v13 = objc_msgSend_layoutRuleForState_viewCenterInFaceBounds_position_editingAdjustment_wide_forDevice_(MEMORY[0x277D2C0D0], v12, a2, 0, 1, 0, *(a1 + 48));
  v24 = v25;
  objc_msgSend_setContentTransform_(v13, v14, &v24);
  objc_msgSend_setDefaultLayoutRule_forState_(v10, v15, v13, a2);
  v16 = *MEMORY[0x277D2BEE8];
  v18 = objc_msgSend_complicationLayoutforSlot_(*(a1 + 40), v17, *MEMORY[0x277D2BEE8]);

  objc_msgSend__circularComplicationCenterForSlot_inFaceBounds_(*(a1 + 32), v19, v16, *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  v21 = objc_msgSend_layoutRuleForState_viewCenterInFaceBounds_position_editingAdjustment_wide_forDevice_(MEMORY[0x277D2C0D0], v20, a2, 1, 1, 0, *(a1 + 48));

  v24 = v25;
  objc_msgSend_setContentTransform_(v21, v22, &v24);
  objc_msgSend_setDefaultLayoutRule_forState_(v18, v23, v21, a2);
}

double sub_23C09C5B4(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_27E1EE0F8);
  if (qword_27E1EE100)
  {
    v5 = qword_27E1EE100 == v2;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && objc_msgSend_version(v2, v3, v4) == qword_27E1EE108)
  {
    v6 = qword_27E1EE0E0;
  }

  else
  {
    qword_27E1EE100 = v2;
    qword_27E1EE108 = objc_msgSend_version(v2, v3, v4);
    v6 = sub_23C09C69C(qword_27E1EE108, v2);
    qword_27E1EE0E0 = v6;
    qword_27E1EE0E8 = v7;
    qword_27E1EE0F0 = v8;
  }

  os_unfair_lock_unlock(&unk_27E1EE0F8);

  return *&v6;
}

double sub_23C09C69C(uint64_t a1, void *a2)
{
  v55[8] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_msgSend_screenBounds(v2, v3, v4);
  v6 = v5;
  objc_msgSend_screenBounds(v2, v7, v8);
  v10 = objc_msgSend_metricsWithDevice_identitySizeClass_(MEMORY[0x277CBBAF8], v9, v2, 2);
  MEMORY[0x23EEC6520](v2);

  v54[0] = &unk_284EDE058;
  v54[1] = &unk_284EDE070;
  v55[0] = &unk_284EDE1C0;
  v55[1] = &unk_284EDE1D0;
  v54[2] = &unk_284EDE088;
  v54[3] = &unk_284EDE0A0;
  v55[2] = &unk_284EDE1E0;
  v55[3] = &unk_284EDE1F0;
  v54[4] = &unk_284EDE0B8;
  v54[5] = &unk_284EDE0D0;
  v55[4] = &unk_284EDE1F0;
  v55[5] = &unk_284EDE1D0;
  v54[6] = &unk_284EDE0E8;
  v54[7] = &unk_284EDE100;
  v55[6] = &unk_284EDE200;
  v55[7] = &unk_284EDE210;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v55, v54, 8);
  objc_msgSend_scaledValue_withOverrides_(v10, v13, v12, 84.0);
  v15 = v14;

  v52[0] = &unk_284EDE058;
  __asm { FMOV            V0.2D, #13.0 }

  v51 = _Q0;
  v22 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v21, &v51, "{CGSize=dd}");
  v53[0] = v22;
  v52[1] = &unk_284EDE070;
  __asm { FMOV            V0.2D, #14.0 }

  v50 = _Q0;
  v25 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v24, &v50, "{CGSize=dd}");
  v53[1] = v25;
  v52[2] = &unk_284EDE088;
  v49 = xmmword_23C0A09D0;
  v27 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v26, &v49, "{CGSize=dd}");
  v53[2] = v27;
  v52[3] = &unk_284EDE0A0;
  v48 = xmmword_23C0A09E0;
  v29 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v28, &v48, "{CGSize=dd}");
  v53[3] = v29;
  v52[4] = &unk_284EDE0B8;
  v47 = xmmword_23C0A09F0;
  v31 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v30, &v47, "{CGSize=dd}");
  v53[4] = v31;
  v52[5] = &unk_284EDE0D0;
  v46 = xmmword_23C0A0A00;
  v33 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v32, &v46, "{CGSize=dd}");
  v53[5] = v33;
  v52[6] = &unk_284EDE0E8;
  v45 = xmmword_23C0A0A10;
  v35 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v34, &v45, "{CGSize=dd}");
  v53[6] = v35;
  v52[7] = &unk_284EDE100;
  v44 = xmmword_23C0A09F0;
  v37 = objc_msgSend_valueWithBytes_objCType_(MEMORY[0x277CCAE60], v36, &v44, "{CGSize=dd}");
  v53[7] = v37;
  v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v38, v53, v52, 8);
  objc_msgSend_scaledSize_withOverrides_(v10, v40, v39, 13.0, 13.0);
  v42 = v41;

  return v6 * 0.5 - v15 * 0.5 * 0.5 - v42 * 0.5;
}

void getHourAndMinuteFromDate(void *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = MEMORY[0x277CBEA80];
  v6 = a1;
  v20 = objc_msgSend_currentCalendar(v5, v7, v8);
  v10 = objc_msgSend_components_fromDate_(v20, v9, 96, v6);

  *a2 = objc_msgSend_hour(v10, v11, v12);
  *a3 = objc_msgSend_minute(v10, v13, v14);
  v17 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], v15, v16);
  if ((CLKLocaleIs24HourMode() & 1) == 0)
  {
    v18 = *a2;
    if (*a2)
    {
      if (v18 < 13)
      {
        goto LABEL_7;
      }

      v19 = v18 - 12;
    }

    else
    {
      v19 = 12;
    }

    *a2 = v19;
  }

LABEL_7:
}

void sub_23C09CCB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23C09CCCC(uint64_t a1, void *a2, id *a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_updateImageIfHourChanged_(WeakRetained, v6, *a3);
}

uint64_t NTKUnity2025SettingIndexFromColorwayName(void *a1)
{
  v1 = a1;
  v4 = v1;
  if (v1 && objc_msgSend_length(v1, v2, v3))
  {
    v7 = objc_msgSend_length(v4, v5, v6);
    v9 = objc_msgSend_characterAtIndex_(v4, v8, v7 - 1);
    if (v9 >= 53)
    {
      v9 = 53;
    }

    if (v9 <= 48)
    {
      v9 = 48;
    }

    v10 = (v9 - 48);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id generateColorArray(int a1)
{
  v17[3] = *MEMORY[0x277D85DE8];
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v1 = NTKColorWithRGBA();
      v16 = v1;
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v6, &v16, 1);
      goto LABEL_12;
    }

    if (a1 == 2)
    {
      v1 = NTKColorWithRGBA();
      v15 = v1;
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v3, &v15, 1);
      goto LABEL_12;
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v1 = NTKColorWithRGBA();
        v14 = v1;
        objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, &v14, 1);
        goto LABEL_12;
      case 4:
        v1 = NTKColorWithRGBA();
        v13 = v1;
        objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, &v13, 1);
        goto LABEL_12;
      case 5:
        v1 = NTKColorWithRGBA();
        v12 = v1;
        objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, &v12, 1);
        v7 = LABEL_12:;
        goto LABEL_13;
    }
  }

  v1 = NTKColorWithRGBA();
  v17[0] = v1;
  v9 = NTKColorWithRGBA();
  v17[1] = v9;
  v10 = NTKColorWithRGBA();
  v17[2] = v10;
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v17, 3);

LABEL_13:

  return v7;
}

uint64_t sub_23C09D5AC()
{
  qword_27E1EE110 = objc_alloc_init(MEMORY[0x277CBEA78]);

  return MEMORY[0x2821F96F8]();
}

id sub_23C09DC80(uint64_t a1)
{
  if (qword_27E1EE428 != -1)
  {
    sub_23C09FADC();
  }

  v2 = qword_27E1EE420;

  return v2;
}

void *sub_23C09E64C(uint64_t a1, const char *a2)
{
  result = *(a1 + 32);
  v4 = *(a1 + 40);
  if (!*(result + 12 * v4 + 14))
  {
    return objc_msgSend_loadMesh_(result, a2, v4);
  }

  return result;
}

void *sub_23C09E67C(uint64_t a1, const char *a2)
{
  result = *(a1 + 32);
  if (!result[134])
  {
    return objc_msgSend_loadMesh_(result, a2, 10);
  }

  return result;
}

uint64_t sub_23C09F71C(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();
  qword_27E1EE420 = objc_msgSend_bundleForClass_(v2, v4, v3);

  return MEMORY[0x2821F96F8]();
}

void sub_23C09F778(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 2u);
}

float NTKUnity2025MathNormalizeRotation(float result)
{
    ;
  }

    ;
  }

  return result;
}

double NTKUnity2025MathBuildEulerRotationMatrix(float a1, float a2, float a3)
{
  __sincosf_stret(a2);
  cosval = __sincosf_stret(a1).__cosval;
  v6 = __sincosf_stret(a3);
  *&v7 = cosval * v6.__cosval;
  *(&v7 + 1) = cosval * v6.__sinval;
  return v7;
}

double NTKUnity2025MathMatrixTranslate()
{
  __asm { FMOV            V3.4S, #1.0 }

  *&result = 1065353216;
  return result;
}

float NTKUnity2025MathSpringStep(float *a1, float *a2, float a3, float a4, float a5)
{
  v5 = *a2 + ((-(*a2 * a4) - (a3 * *a1)) * a5);
  result = *a1 + (*a2 * a5);
  *a2 = v5;
  *a1 = result;
  return result;
}

double NTKUnity2025MathSpringStep2(float32x2_t *a1, float32x2_t *a2, float32x2_t a3, int32x2_t a4, float a5)
{
  v5 = vmla_n_f32(*a1, *a2, a5);
  *a2 = vmla_n_f32(*a2, vmls_lane_f32(vmul_f32(*a2, vneg_f32(vdup_lane_s32(a4, 0))), *a1, a3, 0), a5);
  *a1 = v5;
  return *&v5;
}

double NTKUnity2025MathSpringStep3(float32x4_t *a1, float32x4_t *a2, float32x2_t a3, int32x2_t a4, float a5)
{
  v5 = vmlaq_n_f32(*a1, *a2, a5);
  *a2 = vmlaq_n_f32(*a2, vmlsq_lane_f32(vmulq_f32(*a2, vnegq_f32(vdupq_lane_s32(a4, 0))), *a1, a3, 0), a5);
  *a1 = v5;
  return *v5.i64;
}

float NTKUnity2025MathSpringImpulse(float *a1, float a2)
{
  result = *a1 + a2;
  *a1 = result;
  return result;
}

float NTKUnity2025MathSmoothMove(float *a1, float a2, float a3, float a4, float a5, float a6)
{
  v6 = a3 - a2;
  v7 = *a1 + ((-(*a1 * a6) - (a5 * v6)) * a4);
  v8 = v6 + (*a1 * a4);
  *a1 = v7;
  return a3 - v8;
}

__n128 NTKUnity2025MathLinearizeRGBColor(__n128 a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v4 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], a3, a4, a1.n128_f32[0], a1.n128_f32[1], a1.n128_f32[2], 1.0);
  CLKUIConvertToRGBfFromUIColor();
  v7 = v5;

  return v7;
}

void sub_23C09FC28()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 138412546;
  sub_23C09F7A0();
  _os_log_fault_impl(&dword_23C099000, v0, OS_LOG_TYPE_FAULT, "Unity2025: Failed to create %@ shader for device %@", v1, 0x16u);
}

void sub_23C09FCB4()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 138412546;
  sub_23C09F7A0();
  _os_log_fault_impl(&dword_23C099000, v0, OS_LOG_TYPE_FAULT, "Unity2025: Failed to create %@ shader for device %@", v1, 0x16u);
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}