id sub_1AB8(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_2A350);
  if (qword_2A358)
  {
    v3 = qword_2A358 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_2A360))
  {
    qword_2A358 = v2;
    qword_2A360 = [v2 version];
    v5 = _EnumValueRange();
    v6 = qword_2A348;
    qword_2A348 = v5;
  }

  v7 = qword_2A348;
  os_unfair_lock_unlock(&unk_2A350);

  return v7;
}

void sub_1C84(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = objc_opt_class();
  v4 = [*(a1 + 32) device];
  v5 = [v3 _orderedValuesForDevice:v4];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"style %lu", [v10 unsignedIntValue]);
        [v2 setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = qword_2A368;
  qword_2A368 = v2;
}

id sub_1E30(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_2A380);
  if (qword_2A388)
  {
    v3 = qword_2A388 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != qword_2A390))
  {
    qword_2A388 = v2;
    qword_2A390 = [v2 version];
    v5 = qword_2A378;
    qword_2A378 = &off_21668;
  }

  v6 = qword_2A378;
  os_unfair_lock_unlock(&unk_2A380);

  return v6;
}

void sub_1FF4(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = objc_opt_class();
  v4 = [*(a1 + 32) device];
  v5 = [v3 _orderedValuesForDevice:v4];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"light %lu", [v10 unsignedIntValue]);
        [v2 setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = qword_2A398;
  qword_2A398 = v2;
}

void sub_2F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2FA8(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateDateOverrideAnimationWithStopTime:*(a1 + 40)];
}

void sub_380C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) layoutRuleForComplicationState:a2 layoutOverride:0];
  v5 = *(a1 + 56);
  v6[0] = *(a1 + 40);
  v6[1] = v5;
  v6[2] = *(a1 + 72);
  [v4 setContentTransform:v6];
  [*(a1 + 32) setDefaultLayoutRule:v4 forState:a2];
}

void sub_4FB4(id a1)
{
  qword_2A3A8 = objc_alloc_init(NSCache);

  _objc_release_x1();
}

void sub_4FF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v4 bounds];
  [v3 drawInRect:?];
  v7 = [*(a1 + 40) layer];
  v6 = [v5 CGContext];

  [v7 renderInContext:v6];
}

double sub_52E8(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_2A3D0);
  if (qword_2A3D8)
  {
    v3 = qword_2A3D8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_2A3E0))
  {
    v5 = qword_2A3B8;
  }

  else
  {
    qword_2A3D8 = v2;
    qword_2A3E0 = [v2 version];
    v5 = sub_53D0(qword_2A3E0, v2);
    qword_2A3B8 = v5;
    qword_2A3C0 = v6;
    qword_2A3C8 = v7;
  }

  os_unfair_lock_unlock(&unk_2A3D0);

  return *&v5;
}

double sub_53D0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CLKUIAnalogHandConfiguration defaultHourConfigurationForDevice:v2];
  [v3 pegRadius];
  [v3 pegStrokeWidth];
  [NTKGladiusDialView longHourTickRadiusForDevice:v2];

  return 0.0;
}

void sub_7004(id *a1, void *a2, uint64_t a3)
{
  v5 = *(a1[4] + 1);
  v6 = a2;
  sub_73B8(v5, v12);
  [a1[4] _hourTickLengthAtIndex:a3 forStyle:*(a1[4] + 6)];
  CLKInterpolateBetweenFloatsClipped();
  v8 = [UIColor colorWithWhite:1.0 alpha:v7];
  v9 = [*(a1[4] + 7) hourTickDay];
  v10 = NTKInterpolateBetweenColors();

  [a1[5] addObject:v10];
  [v6 setBackgroundColor:{objc_msgSend(a1[6], "CGColor")}];
  v13[0] = [v10 CGColor];
  v13[1] = [a1[7] CGColor];
  v11 = [NSArray arrayWithObjects:v13 count:2];
  [v6 setColors:v11];
}

void sub_73B8(void *a1@<X1>, void *a2@<X8>)
{
  v5 = a1;
  os_unfair_lock_lock(&unk_2AE28);
  if (qword_2AE30)
  {
    v3 = qword_2AE30 == v5;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v5 version], v4 != qword_2AE38))
  {
    qword_2AE30 = v5;
    qword_2AE38 = [v5 version];
    sub_7490(v5, __src);
    memcpy(&unk_2A3E8, __src, 0xA40uLL);
  }

  memcpy(a2, &unk_2A3E8, 0xA40uLL);
  os_unfair_lock_unlock(&unk_2AE28);
}

void sub_7490(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 248) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 504) = 0;
  *(a2 + 264) = 0u;
  *(a2 + 280) = 0u;
  *(a2 + 296) = 0u;
  *(a2 + 312) = 0u;
  *(a2 + 328) = 0u;
  *(a2 + 344) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0u;
  *(a2 + 408) = 0u;
  *(a2 + 424) = 0u;
  *(a2 + 440) = 0u;
  *(a2 + 456) = 0u;
  *(a2 + 472) = 0u;
  *(a2 + 488) = 0u;
  v4 = [CLKDeviceMetrics metricsWithDevice:v3 identitySizeClass:2];
  *a2 = xmmword_16BA0;
  [v4 scaledValue:7.0];
  *(a2 + 16) = v5;
  [v3 screenBounds];
  CLKRectGetCenter();
  v37 = v7;
  v38 = v6;
  [v3 screenBounds];
  CGRectGetMidY(v45);
  v43[0] = &off_21518;
  v43[1] = &off_21530;
  v44[0] = &off_216F8;
  v44[1] = &off_21708;
  v43[2] = &off_21548;
  v43[3] = &off_21560;
  v44[2] = &off_21718;
  v44[3] = &off_21728;
  v8 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:4];
  [v4 scaledValue:v8 withOverrides:87.0];

  v41[0] = &off_21518;
  v41[1] = &off_21530;
  v42[0] = &off_21708;
  v42[1] = &off_21738;
  v41[2] = &off_21548;
  v41[3] = &off_21560;
  v42[2] = &off_21748;
  v42[3] = &off_21758;
  v9 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:4];
  [v4 scaledValue:v9 withOverrides:84.0];

  v39[0] = &off_21518;
  v39[1] = &off_21530;
  v40[0] = &off_21768;
  v40[1] = &off_21778;
  v39[2] = &off_21548;
  v39[3] = &off_21560;
  v40[2] = &off_21788;
  v40[3] = &off_21798;
  v10 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:4];
  v33 = v4;
  [v4 scaledValue:v10 withOverrides:55.5];

  v35 = a2 + 2232;
  v36 = a2 + 2424;
  v11 = a2 + 2520;
  v12 = a2 + 2136;
  v13 = a2 + 1944;
  v14 = (a2 + 512);
  v15 = -60;
  v34 = a2;
  do
  {
    NTKScreenRadiusAtAngleWithInset();
    v17 = v16;
    NTKScreenRadiusAtAngleWithInset();
    v19 = v17 - v18;
    v20 = v17 + (v17 - v18) * -0.5;
    v21 = __sincos_stret((v15 + 60) * 0.104719755 + -1.57079633);
    *(a2 + 24) = (v15 + 60) * 0.104719755 + -1.57079633;
    *(a2 + 1464) = v19;
    *(v14 - 1) = v38 + v20 * v21.__cosval;
    *v14 = v37 + v20 * v21.__sinval;
    v22 = (v15 + 60) / 5u;
    if (!((v15 + 60) % 5u))
    {
      NTKScreenRadiusAtAngleWithInset();
      v24 = v23;
      v25 = v17 - v23;
      v26 = v17 - v25 * 0.5;
      *(v36 + 8 * v22) = v25;
      v27 = (v35 + 16 * v22);
      *v27 = v38 + v26 * v21.__cosval;
      v27[1] = v37 + v26 * v21.__sinval;
      *(v11 + 8 * v22) = v24;
      NTKScreenRadiusAtAngleWithInset();
      v29 = v28 - v24;
      v30 = v28 - (v28 - v24) * 0.5;
      *(v12 + 8 * v22) = v29;
      v31 = (v13 + 16 * v22);
      *v31 = v38 + v30 * v21.__cosval;
      v31[1] = v37 + v30 * v21.__sinval;
    }

    v14 += 2;
    a2 += 8;
  }

  while (!__CFADD__(v15++, 1));
  *(v34 + 2616) = 0x4008000000000000;
}

void sub_845C(id a1, NTKFace *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  v6 = v5;
  switch(a3)
  {
    case 2uLL:
      v13 = +[NTKComplication nullComplication];
      [(NTKFace *)v6 setComplication:v13 forSlot:NTKComplicationSlotSubdialBottom];

      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:8 zOrder:4000];
      v15[0] = v8;
      v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:4000];
      v15[1] = v9;
      v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:18 zOrder:4000];
      v15[2] = v10;
      v11 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v15[3] = v11;
      v12 = v15;
      goto LABEL_7;
    case 1uLL:
      [(NTKFace *)v5 _setFaceGalleryComplicationTypesForSlots:&__NSDictionary0__struct];
      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:8 zOrder:4000];
      v16[0] = v8;
      v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:5 zOrder:9000];
      v16[1] = v9;
      v10 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:18 zOrder:4000];
      v16[2] = v10;
      v11 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v16[3] = v11;
      v12 = v16;
LABEL_7:
      v14 = [NSArray arrayWithObjects:v12 count:4];
      [(NTKFace *)v6 setCurationPlacements:v14];

      goto LABEL_8;
    case 0uLL:
      v7 = +[NTKComplication nullComplication];
      [(NTKFace *)v6 setComplication:v7 forSlot:NTKComplicationSlotSubdialBottom];

      v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:18 zOrder:4000];
      v17[0] = v8;
      v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
      v17[1] = v9;
      v10 = [NSArray arrayWithObjects:v17 count:2];
      [(NTKFace *)v6 setCurationPlacements:v10];
LABEL_8:

      break;
  }
}

void sub_9394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_93B8(uint64_t a1, void *a2, id *a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained lightingDelegate];
  [v6 lowFrequencyLightingTimerFired];
}

double sub_9838(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&unk_2AE58);
  if (qword_2AE60)
  {
    v3 = qword_2AE60 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == qword_2AE68))
  {
    v5 = qword_2AE40;
  }

  else
  {
    qword_2AE60 = v2;
    qword_2AE68 = [v2 version];
    v5 = sub_9920(qword_2AE68, v2);
    qword_2AE40 = v5;
    qword_2AE48 = v6;
    qword_2AE50 = v7;
  }

  os_unfair_lock_unlock(&unk_2AE58);

  return *&v5;
}

double sub_9920(uint64_t a1, uint64_t a2)
{
  v2 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:6.0];
  v4 = v3;
  [v2 scaledValue:35.5];
  [v2 scaledValue:65.0];

  return v4;
}

__n128 sub_99B0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_99C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 36))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_99E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 36) = v3;
  return result;
}

__n128 sub_9A3C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_9A48(uint64_t a1, int a2)
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

uint64_t sub_9A68(uint64_t result, int a2, int a3)
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

unint64_t sub_9AA4(int32x2_t a1, int32x2_t a2, int32x2_t a3, int32x2_t a4)
{
  *v4.f32 = vsub_f32(vzip1_s32(a4, a2), vzip1_s32(a3, a1));
  *v5.f32 = vsub_f32(vzip2_s32(a4, a2), vzip2_s32(a3, a1));
  v6 = vmul_f32(*v5.f32, vrev64_s32(*v4.f32));
  v7 = vsub_f32(v6, vdup_lane_s32(v6, 1));
  if (fabsf(*v7.i32) >= 0.000000001)
  {
    v10 = vsub_f32(a1, a3);
    v4.i64[1] = v4.i64[0];
    v5.i64[1] = v5.i64[0];
    v11 = vdivq_f32(vsubq_f32(vmulq_lane_f32(v4, v10, 1), vmulq_n_f32(v5, v10.f32[0])), vdupq_lane_s32(v7, 0));
    v12.i32[0] = vmovn_s32(vmvnq_s8(vcgtq_f32(xmmword_16BF0, v11))).u32[0];
    v12.i32[1] = vmovn_s32(vmvnq_s8(vcgtq_f32(v11, xmmword_16BF0))).i32[1];
    v9 = vmaxv_u16(v12) & 1;
    if ((vaddvq_s32(vandq_s8(vmovl_s16(v12), xmmword_16C00)) & 0xF) != 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = v11.u32[0];
    }
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  return v8 | (v9 << 32);
}

unint64_t sub_9B7C(uint64_t a1, __n128 a2, __n128 a3, float a4, int32x2_t a5, int32x2_t a6)
{
  v7 = vsub_f32(a3.n128_u64[0], a2.n128_u64[0]);
  v8 = a3.n128_f32[1];
  v9 = a2.n128_f32[1];
  v10 = sqrtf(vmul_f32(v7, v7).f32[0] + ((a3.n128_f32[1] - a2.n128_f32[1]) * (a3.n128_f32[1] - a2.n128_f32[1])));
  v11 = v7.f32[0] / v10;
  v82 = v7.f32[0] / v10;
  v83 = v10;
  v12 = (a3.n128_f32[1] - a2.n128_f32[1]) / v10;
  v81 = a4;
  if ((a1 & 0x100000000) == 0)
  {
    a4 = *&a1;
  }

  v13 = (a3.n128_f32[1] - a2.n128_f32[1]) / v10;
  v14 = v12 * a4;
  v15 = a4;
  v16 = -(v11 * a4);
  v84 = a3.n128_u64[0];
  v85 = a2.n128_u64[0];
  *v17.i32 = a2.n128_f32[0] + (v12 * a4);
  *&v17.i32[1] = a2.n128_f32[1] + v16;
  *v18.i32 = a3.n128_f32[0] + v14;
  *&v18.i32[1] = a3.n128_f32[1] + v16;
  v19 = a5;
  v21 = sub_9AA4(a5, a6, v17, v18);
  if ((v21 & 0x100000000) != 0)
  {
    v24 = _swiftEmptyArrayStorage;
  }

  else
  {
    v23 = v21;
    v24 = sub_A8A8(0, 1, 1, _swiftEmptyArrayStorage, v22);
    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    if (v27 >= v26 >> 1)
    {
      v24 = sub_A8A8((v26 > 1), v27 + 1, 1, v24, v25);
    }

    *(v24 + 2) = v27 + 1;
    *&v24[4 * v27 + 32] = v23;
  }

  *v28.i32 = v85.f32[0] - v14;
  *&v28.i32[1] = v9 - v16;
  *v29.i32 = v84.f32[0] - v14;
  *&v29.i32[1] = v8 - v16;
  v30 = a6;
  v31 = sub_9AA4(v19, a6, v28, v29);
  if ((v31 & 0x100000000) != 0)
  {
    v34 = v13;
    v35 = v81;
  }

  else
  {
    v32 = v31;
    v34 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_A8A8(0, *(v24 + 2) + 1, 1, v24, v33);
    }

    v35 = v81;
    v37 = *(v24 + 2);
    v36 = *(v24 + 3);
    if (v37 >= v36 >> 1)
    {
      v24 = sub_A8A8((v36 > 1), v37 + 1, 1, v24, v33);
    }

    *(v24 + 2) = v37 + 1;
    *&v24[4 * v37 + 32] = v32;
  }

  v38 = sub_A194(v85, v35, v19, v30);
  if (v39 != -1)
  {
    v40 = v38;
    if (v39)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_A8A8(0, *(v24 + 2) + 1, 1, v24, v41);
      }

      v43 = *(v24 + 2);
      v42 = *(v24 + 3);
      v44 = v42 >> 1;
      v45 = v43 + 1;
      if (v42 >> 1 <= v43)
      {
        v24 = sub_A8A8((v42 > 1), v43 + 1, 1, v24, v41);
        v42 = *(v24 + 3);
        v44 = v42 >> 1;
      }

      *(v24 + 2) = v45;
      *&v24[4 * v43 + 32] = v40;
      v46 = v43 + 2;
      if (v44 < v46)
      {
        v24 = sub_A8A8((v42 > 1), v46, 1, v24, v41);
      }

      v40 >>= 32;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_A8A8(0, *(v24 + 2) + 1, 1, v24, v47);
      }

      v45 = *(v24 + 2);
      v48 = *(v24 + 3);
      v46 = v45 + 1;
      if (v45 >= v48 >> 1)
      {
        v24 = sub_A8A8((v48 > 1), v45 + 1, 1, v24, v47);
      }
    }

    *(v24 + 2) = v46;
    *&v24[4 * v45 + 32] = v40;
  }

  v49 = sub_A194(v84, v35, v19, v30);
  if (v50 == -1)
  {
    v52 = v82;
  }

  else
  {
    v51 = v49;
    v52 = v82;
    if (v50)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_A8A8(0, *(v24 + 2) + 1, 1, v24, v53);
      }

      v55 = *(v24 + 2);
      v54 = *(v24 + 3);
      v56 = v54 >> 1;
      v57 = v55 + 1;
      if (v54 >> 1 <= v55)
      {
        v24 = sub_A8A8((v54 > 1), v55 + 1, 1, v24, v53);
        v54 = *(v24 + 3);
        v56 = v54 >> 1;
      }

      *(v24 + 2) = v57;
      *&v24[4 * v55 + 32] = v51;
      v58 = v55 + 2;
      if (v56 < v58)
      {
        v24 = sub_A8A8((v54 > 1), v58, 1, v24, v53);
      }

      v51 >>= 32;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_A8A8(0, *(v24 + 2) + 1, 1, v24, v59);
      }

      v57 = *(v24 + 2);
      v60 = *(v24 + 3);
      v58 = v57 + 1;
      if (v57 >= v60 >> 1)
      {
        v24 = sub_A8A8((v60 > 1), v57 + 1, 1, v24, v59);
      }
    }

    *(v24 + 2) = v58;
    *&v24[4 * v57 + 32] = v51;
  }

  v61 = vsub_f32(v19, v85);
  v62 = (v52 * v61.f32[0]) + vmuls_lane_f32(v34, v61, 1);
  v63 = vabds_f32(v34 * v61.f32[0], vmuls_lane_f32(v52, v61, 1));
  if (v62 > 0.0 && v62 < v83 && v63 < v15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_A8A8(0, *(v24 + 2) + 1, 1, v24, v66);
    }

    v68 = *(v24 + 2);
    v67 = *(v24 + 3);
    if (v68 >= v67 >> 1)
    {
      v24 = sub_A8A8((v67 > 1), v68 + 1, 1, v24, v66);
    }

    *(v24 + 2) = v68 + 1;
    *&v24[4 * v68 + 32] = 0;
  }

  v69 = vsub_f32(v30, v85);
  v70 = (v52 * v69.f32[0]) + vmuls_lane_f32(v34, v69, 1);
  v71 = vabds_f32(v34 * v69.f32[0], vmuls_lane_f32(v52, v69, 1));
  if (v70 <= 0.0 || v70 >= v83 || v71 >= v15)
  {
    v74 = *(v24 + 2);
    if (v74)
    {
      goto LABEL_65;
    }

LABEL_72:

    return v74;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_A8A8(0, *(v24 + 2) + 1, 1, v24, v75);
  }

  v77 = *(v24 + 2);
  v76 = *(v24 + 3);
  v74 = v77 + 1;
  if (v77 >= v76 >> 1)
  {
    v24 = sub_A8A8((v76 > 1), v77 + 1, 1, v24, v75);
  }

  *(v24 + 2) = v74;
  *&v24[4 * v77 + 32] = 1065353216;
  if (v77 == -1)
  {
    goto LABEL_72;
  }

LABEL_65:
  if (v74 == 1)
  {
    v74 = *(v24 + 8);

    return v74;
  }

  result = sub_A250(v24);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v79 = result;
    result = sub_A2A8(v24);
    if ((result & 0x100000000) == 0)
    {
      v80 = result;

      return v79 | (v80 << 32);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_A194(float32x2_t a1, float a2, float32x2_t a3, float32x2_t a4)
{
  v4 = vsub_f32(a4, a3);
  v5 = sqrtf(vaddv_f32(vmul_f32(v4, v4)));
  v6 = vsub_f32(a1, a3);
  v7.i32[0] = v6.i32[0];
  v7.f32[1] = v4.f32[1] / v5;
  v4.i32[1] = v6.i32[1];
  v4.f32[0] = v4.f32[0] / v5;
  v8 = vadd_f32(vmul_f32(v6, v4), vrev64_s32(vmul_f32(v6, v7)));
  v9 = vsub_f32(vdup_lane_s32(v8, 1), vmul_f32(v8, v8)).f32[0];
  v10 = a2 * a2;
  result = 0;
  if (v10 >= v9)
  {
    v12 = sqrtf(v10 - v9);
    v13 = v8.f32[0] - v12;
    if (v5 >= (v8.f32[0] - v12))
    {
      v14 = v8.f32[0] + v12;
      if (v14 >= 0.0)
      {
        v15 = v13 / v5;
        if (v15 <= 0.0)
        {
          v15 = 0.0;
        }

        v16 = v14 / v5;
        if (v16 > 1.0)
        {
          v16 = 1.0;
        }

        return LODWORD(v15) | (LODWORD(v16) << 32);
      }
    }
  }

  return result;
}

unint64_t sub_A250(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v5 < v2)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

unint64_t sub_A2A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

char *sub_A300(__n128 a1, __n128 a2, float a3, float a4, float a5, float32x2_t a6, __n128 a7, float a8)
{
  v9 = a2.n128_f32[0];
  v10 = vrev64_s32(a1.n128_u64[0]);
  v11 = vmul_n_f32(a1.n128_u64[0], a4 - a5);
  v94 = a1.n128_u64[0];
  a2.n128_u64[0] = vmul_n_f32(a1.n128_u64[0], a4);
  v97 = a4 - a5;
  a1.n128_u64[0] = v11;
  v92 = a2.n128_u64[0];
  v12 = sub_9B7C(0x100000000, a1, a2, v9, vmul_n_f32(a6, -(a4 - a5)), vmul_n_f32(a6, -a8));
  if (v13 == -1 || (v13 & 1) == 0)
  {
    v16 = sub_A9AC(0, 1, 1, _swiftEmptyArrayStorage, v14);
    v20 = *(v16 + 2);
    v19 = *(v16 + 3);
    v21 = v20 + 1;
    v15 = 0.0;
  }

  else
  {
    v15 = *(&v12 + 1);
    v16 = sub_A9AC(0, 1, 1, _swiftEmptyArrayStorage, v14);
    v20 = *(v16 + 2);
    v19 = *(v16 + 3);
    v21 = v20 + 1;
  }

  if (v20 >= v19 >> 1)
  {
    v16 = sub_A9AC((v19 > 1), v21, 1, v16, v17);
  }

  v22 = v97;
  *(v16 + 2) = v21;
  v23 = &v16[12 * v20];
  *(v23 + 4) = COERCE_UNSIGNED_INT(((v97 - a8) * v15) - v97) | (COERCE_UNSIGNED_INT((v97 - a8) - v97) << 32);
  v23[40] = 1;
  v25 = v94;
  v24 = a6;
  v26 = vsub_f32(0, a6);
  v27 = -*v94.i32;
  v28 = v9 / v97;
  v29 = vmul_f32(v10, v26);
  v30 = vsub_f32(v29, vdup_lane_s32(v29, 1)).f32[0];
  v31 = v9 / v97;
  if (v30 != 0.0)
  {
    v32 = -a3;
    if (v30 > 0.0)
    {
      v32 = a3;
    }

    v89 = v30;
    v33.i32[0] = vdup_lane_s32(v94, 1).u32[0];
    v33.f32[1] = -*v94.i32;
    v34 = vmul_n_f32(v33, v32);
    v35 = sub_9AA4(0, vmul_n_f32(v26, v97), v34, vadd_f32(v11, v34));
    v30 = v89;
    v27 = -*v94.i32;
    v25 = v94;
    v24 = a6;
    v22 = v97;
    v31 = v9 / v97;
    if ((v35 & 0x100000000) == 0)
    {
      v31 = *&v35;
      if (v28 > *&v35)
      {
        v31 = v9 / v97;
      }
    }
  }

  v36 = v24.f32[1];
  v37 = vmul_f32(v11, v26);
  v17.n128_u64[0] = vadd_f32(v37, vdup_lane_s32(v37, 1));
  v38 = v22 * v22;
  v39 = (v22 * v22) - vmul_f32(v17.n128_u64[0], v17.n128_u64[0]).f32[0];
  v40 = v9;
  v41 = v9 * v9;
  v42 = 1.0;
  if (v39 >= v41)
  {
    goto LABEL_17;
  }

  v43 = v17.n128_f32[0] - sqrtf(v41 - v39);
  v17.n128_u32[0] = 1.0;
  if (v22 >= v43)
  {
    v17.n128_f32[0] = fminf(v43 / v22, 1.0);
  }

  if (vaddv_f32(vmul_f32(v26, v25)) >= 0.0 && ((v57 = fabsf(v30) * (v22 * v17.n128_f32[0]), v31 < v17.n128_f32[0]) ? (v58 = v57 <= a3) : (v58 = 1), v42 = v17.n128_f32[0], v58))
  {
    v59 = *(v16 + 3);
    v45 = v21 + 1;
    if (v21 >= v59 >> 1)
    {
      v86 = v24.f32[1];
      v91 = v27;
      v87 = sub_A9AC((v59 > 1), v21 + 1, 1, v16, v17);
      v27 = v91;
      v36 = v86;
      v25 = v94;
      v24 = a6;
      v22 = v97;
      v16 = v87;
    }

    v46 = 0;
    v47 = -1;
  }

  else
  {
LABEL_17:
    v44 = *(v16 + 3);
    v45 = v21 + 1;
    if (v21 >= v44 >> 1)
    {
      v83 = v24.f32[1];
      v90 = v27;
      v84 = sub_A9AC((v44 > 1), v21 + 1, 1, v16, v17);
      v27 = v90;
      v36 = v83;
      v25 = v94;
      v24 = a6;
      v22 = v97;
      v16 = v84;
    }

    v46 = COERCE_UNSIGNED_INT(0.0 - (v22 * v31)) | (COERCE_UNSIGNED_INT(0.0 - (v22 * v42)) << 32);
    v47 = 1;
  }

  v48 = v40;
  *(v16 + 2) = v45;
  v49 = &v16[12 * v21];
  *(v49 + 4) = v46;
  v49[40] = v47;
  v50 = vmuls_lane_f32(v24.f32[0], v25, 1) - (v25.f32[0] * v36);
  if (v50 != 0.0)
  {
    v52 = v36;
    v53 = -a3;
    if (v50 > 0.0)
    {
      v53 = a3;
    }

    v54.i32[0] = vdup_lane_s32(v25, 1).u32[0];
    v54.f32[1] = v27;
    v55 = vmul_n_f32(v54, v53);
    v56 = sub_9AA4(0, vmul_n_f32(v24, v22), v55, vadd_f32(v11, v55));
    if ((v56 & 0x100000000) != 0)
    {
      v51 = v28;
      v22 = v97;
      v25 = v94;
      v24 = a6;
      v36 = v52;
      goto LABEL_36;
    }

    v51 = *&v56;
    v22 = v97;
    v25 = v94;
    v24 = a6;
    v36 = v52;
    if (v28 <= *&v56)
    {
      goto LABEL_36;
    }
  }

  v51 = v28;
LABEL_36:
  v60 = vmul_f32(v11, v24);
  v17.n128_u64[0] = vadd_f32(v60, vdup_lane_s32(v60, 1));
  v61 = v38 - vmul_f32(v17.n128_u64[0], v17.n128_u64[0]).f32[0];
  v62 = 1.0;
  if (v61 >= v41)
  {
    goto LABEL_40;
  }

  v63 = v17.n128_f32[0] - sqrtf(v41 - v61);
  v17.n128_u32[0] = 1.0;
  if (v22 >= v63)
  {
    v17.n128_f32[0] = fminf(v63 / v22, 1.0);
  }

  if ((vmul_f32(v25, v24).f32[0] + (v25.f32[1] * v36)) >= 0.0 && ((v80 = fabsf(v50) * (v22 * v17.n128_f32[0]), v51 < v17.n128_f32[0]) ? (v81 = v80 <= a3) : (v81 = 1), v62 = v17.n128_f32[0], v81))
  {
    v65 = *(v16 + 2);
    v82 = *(v16 + 3);
    v66 = v65 + 1;
    if (v65 >= v82 >> 1)
    {
      v88 = sub_A9AC((v82 > 1), v65 + 1, 1, v16, v17);
      v24 = a6;
      v22 = v97;
      v16 = v88;
    }

    v67 = 0;
    v68 = -1;
  }

  else
  {
LABEL_40:
    v65 = *(v16 + 2);
    v64 = *(v16 + 3);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      v85 = sub_A9AC((v64 > 1), v65 + 1, 1, v16, v17);
      v24 = a6;
      v22 = v97;
      v16 = v85;
    }

    v67 = COERCE_UNSIGNED_INT((v22 * v51) + 0.0) | (COERCE_UNSIGNED_INT((v22 * v62) + 0.0) << 32);
    v68 = 1;
  }

  *(v16 + 2) = v66;
  v69 = &v16[12 * v65];
  *(v69 + 4) = v67;
  v69[40] = v68;
  v70.n128_u64[1] = a7.n128_u64[1];
  v70.n128_u64[0] = v11;
  v18.n128_u64[0] = v92;
  v71 = sub_9B7C(0x100000000, v70, v18, v48, vmul_n_f32(v24, v22), vmul_n_f32(v24, a7.n128_f32[0]));
  if (v72 == -1 || (v72 & 1) == 0)
  {
    v76 = *(v16 + 2);
    v75 = *(v16 + 3);
    v77 = v76 + 1;
    v74 = 0.0;
  }

  else
  {
    v74 = *(&v71 + 1);
    v76 = *(v16 + 2);
    v75 = *(v16 + 3);
    v77 = v76 + 1;
  }

  if (v76 >= v75 >> 1)
  {
    v16 = sub_A9AC((v75 > 1), v77, 1, v16, v73);
  }

  *(v16 + 2) = v77;
  v78 = &v16[12 * v76];
  *(v78 + 4) = COERCE_UNSIGNED_INT(v97 + ((a7.n128_f32[0] - v97) * v74)) | (COERCE_UNSIGNED_INT(v97 + (a7.n128_f32[0] - v97)) << 32);
  v78[40] = 1;
  return v16;
}

char *sub_A8A8(char *result, int64_t a2, char a3, char *a4, __n128 a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_AABC(&qword_29C58, &qword_16C80);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 29;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 2);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[4 * v9])
    {
      memmove(v14, v15, 4 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 4 * v9);
  }

  return v11;
}

char *sub_A9AC(char *result, int64_t a2, char a3, char *a4, __n128 a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_AABC(&qword_29C50, &qword_16C78);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 12);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  v15 = 12 * v9;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v11;
}

uint64_t sub_AABC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

char *sub_AB08(char *result, int64_t a2, char a3, char *a4, __n128 a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_AABC(&qword_29C60, &qword_16C88);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

void sub_AC20(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t initializeBufferWithCopyOfBuffer for LineIntersection(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LineIntersection(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LineIntersection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_AD34()
{
  v0 = sub_129A0();
  sub_ADB4(v0, qword_2AE70);
  sub_AE18(v0, qword_2AE70);
  return sub_12990();
}

uint64_t *sub_ADB4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_AE18(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

float sub_AFC4(void *a1)
{
  v10 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v7 = 0;
  [a1 getRed:&v10 green:&v9 blue:&v8 alpha:&v7];
  v3 = *(v1 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_renderer);
  if (v3)
  {
    *&v4 = v10;
    *&v5 = v9;
    *&v6 = __PAIR64__(v5, v4);
    result = v8;
    *(&v6 + 1) = LODWORD(result);
    *(v3 + 112) = v6;
  }

  return result;
}

id sub_B460()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NTKGladiusQuad(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for NTKGladiusQuad(uint64_t a1)
{
  result = qword_29D78;
  if (!qword_29D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_B54C(uint64_t a1, uint64_t a2)
{
  sub_B5FC(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_B5FC(uint64_t a1, uint64_t a2)
{
  if (!qword_29F40)
  {
    type metadata accessor for GladiusUtilities.DateOverride(255);
    v2 = sub_12A10();
    if (!v3)
    {
      atomic_store(v2, &qword_29F40);
    }
  }
}

id sub_B654()
{
  v1 = v0;
  v2 = [objc_opt_self() currentDevice];
  v3 = objc_opt_self();
  result = [v3 defaultHourConfigurationForDevice:v2];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  result = [v3 defaultMinuteConfigurationForDevice:v2];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = [v3 defaultSecondConfigurationForDevice:v2];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v7 = result;
  [v5 handWidth];
  v9 = v8;
  [v5 armLength];
  v11 = v9 + v10;
  [v5 handLength];
  v13 = v12 - v9;
  [v6 handLength];
  *&v9 = v14 - v9;
  [v5 handWidth];
  *&v15 = v15 * 0.5;
  v16 = *&v15 + -2.0;
  [v5 armWidth];
  v18 = v17 * 0.5;
  [v7 handLength];
  v20 = v19;
  [v7 tailLength];
  *&v21 = v21;
  v22 = *(v1 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_screenSize);
  v23 = *(v1 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_screenSize + 8) / v22;
  *v26 = v11;
  *&v26[1] = v13;
  v26[2] = LODWORD(v9);
  *&v26[3] = v16;
  *&v26[4] = v18;
  *&v26[5] = v20;
  *&v22 = v22 * 0.5;
  v26[6] = LODWORD(v21);
  *&v26[7] = v23;
  v26[8] = LODWORD(v22);
  type metadata accessor for GladiusRenderer();
  swift_allocObject();
  sub_120DC(v26);
  v25 = v24;

  *(v1 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_renderer) = v25;
}

void *sub_B898()
{
  v1 = sub_AABC(&unk_29F50, &qword_16DC0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_renderer);
  if (!v7)
  {
    return (v7 != 0);
  }

  v8 = OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion14NTKGladiusQuad_dateOverride;
  swift_beginAccess();
  sub_BB0C(v0 + v8, v4, &unk_29F50, &qword_16DC0);

  sub_C79C(v6, v4);
  v19 = v10;
  v20 = v9;
  v12 = v11;
  sub_BB74(v4, &unk_29F50, &qword_16DC0);
  sub_BB0C(v6, v4, &unk_29F50, &qword_16DC0);
  swift_beginAccess();
  sub_BA9C(v4, v0 + v8);
  swift_endAccess();
  *&v13.f64[0] = v20;
  *&v13.f64[1] = v19;
  v7[8] = vsub_f32(vdup_n_s32(0x3FC90FDAu), vcvt_f32_f64(v13));
  *v13.f64 = v12;
  v7[9].f32[0] = 1.5708 - *v13.f64;
  result = swift_unknownObjectUnownedLoadStrong();
  if (result)
  {
    v15 = result;
    sub_11C08(v12);
    v17 = v16;

    sub_BB74(v6, &unk_29F50, &qword_16DC0);
    v18 = v17;
    v7[12].f32[0] = v18 * 1.5;

    return (v7 != 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_BA9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_AABC(&unk_29F50, &qword_16DC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_BB0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_AABC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_BB74(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_AABC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for GladiusUtilities.DateOverride(uint64_t a1)
{
  result = qword_29E00;
  if (!qword_29E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_BC80(uint64_t a1)
{
  sub_12920();
  if (v1 <= 0x3F)
  {
    sub_BCF4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_BCF4(uint64_t a1)
{
  if (!qword_29E10)
  {
    __chkstk_darwin(a1);
    sub_12920();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_29E10);
    }
  }
}

id sub_BE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v96 = a2;
  v97 = a1;
  v94 = a3;
  v5 = sub_AABC(&unk_29F50, &qword_16DC0);
  __chkstk_darwin(v5 - 8);
  v91 = (&v82 - v6);
  v7 = sub_12920();
  v95 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v89 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v90 = &v82 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v82 - v13;
  __chkstk_darwin(v12);
  v16 = &v82 - v15;
  v17 = sub_AABC(&qword_29D88, qword_16D70);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v82 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v82 - v25;
  __chkstk_darwin(v24);
  v28 = &v82 - v27;
  v29 = type metadata accessor for GladiusUtilities.DateOverride(0);
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v32 = __chkstk_darwin(v31);
  v33 = __chkstk_darwin(v32);
  v35 = &v82 - v34;
  __chkstk_darwin(v33);
  v92 = &v82 - v38;
  v93 = v30;
  if (a4 == 0.0)
  {
    sub_BB74(v97, &unk_29F50, &qword_16DC0);
    sub_D00C(v96, v28, &qword_29D88, qword_16D70);
    v39 = v95;
    if ((*(v95 + 48))(v28, 1, v7) == 1)
    {
      v40 = v28;
LABEL_7:
      sub_BB74(v40, &qword_29D88, qword_16D70);
      v47 = 1;
      v48 = v94;
      return (*(v93 + 56))(v48, v47, 1, v29);
    }

    v49 = v92;
    (*(v39 + 32))(v92, v28, v7);
    swift_storeEnumTagMultiPayload();
LABEL_21:
    v81 = v49;
    v48 = v94;
    sub_CEE8(v81, v94);
    v47 = 0;
    return (*(v93 + 56))(v48, v47, 1, v29);
  }

  v83 = v37;
  v84 = v23;
  v86 = v36;
  v87 = v16;
  v85 = v20;
  Current = CFAbsoluteTimeGetCurrent();
  v42 = v91;
  sub_BB0C(v97, v91, &unk_29F50, &qword_16DC0);
  v43 = (*(v30 + 48))(v42, 1, v29);
  v88 = v29;
  if (v43 != 1)
  {
    sub_CF4C(v42, v35);
    v50 = v26;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v51 = sub_AABC(&unk_29E40, "Xr");
      v52 = v95;
      v53 = *(v95 + 32);
      v54 = v7;
      v53(v50, &v35[*(v51 + 48)], v7);
      (*(v52 + 8))(v35, v7);
    }

    else
    {
      v52 = v95;
      v53 = *(v95 + 32);
      v54 = v7;
      v53(v50, v35, v7);
    }

    v67 = v96;
    v68 = v87;
    sub_CFB0(v42);
    (*(v52 + 56))(v50, 0, 1, v54);
    v91 = v53;
    v53(v68, v50, v54);
    v69 = sub_AABC(&unk_29E40, "Xr");
    v70 = v69[12];
    v71 = v86;
    (*(v52 + 16))(v86, v68, v54);
    v72 = v85;
    sub_BB0C(v67, v85, &qword_29D88, qword_16D70);
    v73 = *(v52 + 48);
    if (v73(v72, 1, v54) == 1)
    {
      result = [objc_opt_self() faceDate];
      if (!result)
      {
        goto LABEL_24;
      }

      v74 = result;
      v75 = v90;
      sub_12910();

      v71 = v86;
      sub_12900();
      sub_BB74(v97, &unk_29F50, &qword_16DC0);
      v76 = *(v95 + 8);
      v76(v87, v54);
      v76(v75, v54);
      if (v73(v72, 1, v54) != 1)
      {
        sub_BB74(v72, &qword_29D88, qword_16D70);
      }
    }

    else
    {
      sub_BB74(v97, &unk_29F50, &qword_16DC0);
      (*(v52 + 8))(v68, v54);
      v91((v71 + v70), v72, v54);
    }

    v77 = v69[20];
    *(v71 + v69[16]) = Current;
    *(v71 + v77) = a4;
    v78 = v96;
    v79 = v73(v96, 1, v54) != 1;
    v80 = v69[24];
    sub_BB74(v78, &qword_29D88, qword_16D70);
    *(v71 + v80) = v79;
    v29 = v88;
    swift_storeEnumTagMultiPayload();
    v66 = v71;
    goto LABEL_20;
  }

  sub_BB74(v42, &unk_29F50, &qword_16DC0);
  v44 = v95;
  v45 = v7;
  (*(v95 + 56))(v26, 1, 1, v7);
  sub_BB74(v26, &qword_29D88, qword_16D70);
  v46 = v96;
  v40 = v84;
  sub_BB0C(v96, v84, &qword_29D88, qword_16D70);
  if ((*(v44 + 48))(v40, 1, v7) == 1)
  {
    sub_BB74(v97, &unk_29F50, &qword_16DC0);
    sub_BB74(v46, &qword_29D88, qword_16D70);
    v29 = v88;
    goto LABEL_7;
  }

  v55 = *(v44 + 32);
  v56 = v14;
  v55(v14, v40, v45);
  result = [objc_opt_self() faceDate];
  if (result)
  {
    v58 = result;
    v59 = sub_AABC(&unk_29E40, "Xr");
    v60 = v59[12];
    v61 = v59[16];
    v62 = v59[20];
    v63 = v59[24];
    v64 = v89;
    sub_12910();

    sub_BB74(v97, &unk_29F50, &qword_16DC0);
    v65 = v83;
    v55(v83, v64, v45);
    v55((v65 + v60), v56, v45);
    *(v65 + v61) = Current;
    *(v65 + v62) = a4;
    sub_BB74(v96, &qword_29D88, qword_16D70);
    *(v65 + v63) = 1;
    v29 = v88;
    swift_storeEnumTagMultiPayload();
    v66 = v65;
LABEL_20:
    v49 = v92;
    sub_CEE8(v66, v92);
    goto LABEL_21;
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id sub_C79C(uint64_t a1, uint64_t a2)
{
  v4 = sub_12920();
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v53 = &v49 - v9;
  v10 = __chkstk_darwin(v8);
  v52 = &v49 - v11;
  __chkstk_darwin(v10);
  v13 = &v49 - v12;
  v14 = sub_AABC(&unk_29F50, &qword_16DC0);
  v15 = __chkstk_darwin(v14 - 8);
  v50 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v49 - v17;
  v19 = type metadata accessor for GladiusUtilities.DateOverride(0);
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v56 = &v49 - v24;
  v51 = a1;
  sub_BB0C(a2, a1, &unk_29F50, &qword_16DC0);
  sub_BB0C(a2, v18, &unk_29F50, &qword_16DC0);
  v49 = v20;
  v25 = v20;
  v26 = v19;
  if ((*(v25 + 48))(v18, 1, v19) == 1)
  {
    sub_BB74(v18, &unk_29F50, &qword_16DC0);
    result = [objc_opt_self() faceDate];
    if (result)
    {
      v28 = result;
      sub_12910();

      sub_CDA8();
      return (*(v54 + 8))(v7, v55);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v29 = v56;
    sub_CEE8(v18, v56);
    sub_CF4C(v29, v23);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = sub_AABC(&unk_29E40, "Xr");
      v31 = v30[12];
      v32 = *&v23[v30[16]];
      v33 = *&v23[v30[20]];
      v34 = v23[v30[24]];
      v35 = v54;
      v36 = v55;
      v37 = *(v54 + 32);
      v38 = v52;
      v37(v52, v23, v55);
      v39 = v53;
      v37(v53, &v23[v31], v36);
      sub_CDA8();
      sub_CDA8();
      v40 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
      v42 = (CFAbsoluteTimeGetCurrent() - v32) / v33;
      v41 = v42;
      *&v42 = fminf(v41, 1.0);
      if (*&v42 < 0.0)
      {
        *&v42 = 0.0;
      }

      [v40 _solveForInput:v42];
      CLKInterpolateShortestPathBetweenAnglesUnclipped();
      CLKInterpolateShortestPathBetweenAnglesUnclipped();
      CLKInterpolateShortestPathBetweenAnglesUnclipped();

      v43 = *(v35 + 8);
      v43(v38, v36);
      sub_CFB0(v56);
      if (v41 >= 1.0)
      {
        v46 = v51;
        sub_BB74(v51, &unk_29F50, &qword_16DC0);
        if (v34)
        {
          v47 = v50;
          v37(v50, v39, v36);
          swift_storeEnumTagMultiPayload();
          v48 = 0;
        }

        else
        {
          v43(v39, v36);
          v48 = 1;
          v47 = v50;
        }

        (*(v49 + 56))(v47, v48, 1, v26);
        return sub_D00C(v47, v46, &unk_29F50, &qword_16DC0);
      }

      else
      {
        return (v43)(v39, v36);
      }
    }

    else
    {
      v45 = v54;
      v44 = v55;
      (*(v54 + 32))(v13, v23, v55);
      sub_CDA8();
      (*(v45 + 8))(v13, v44);
      return sub_CFB0(v56);
    }
  }

  return result;
}

double sub_CDA8()
{
  v0 = sub_12960();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[1] = 0;
  v8 = 0.0;
  v7[0] = 0;
  isa = sub_128F0().super.isa;
  sub_12940();
  v5 = sub_12930().super.isa;
  (*(v1 + 8))(v3, v0);
  NTKHourMinuteSecondAnglesForTime();

  return v8;
}

uint64_t sub_CEE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GladiusUtilities.DateOverride(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_CF4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GladiusUtilities.DateOverride(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_CFB0(uint64_t a1)
{
  v2 = type metadata accessor for GladiusUtilities.DateOverride(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D00C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_AABC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

Class sub_D0C8(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  sub_11B60(0, a4, a5);

  v5.super.isa = sub_129D0().super.isa;

  return v5.super.isa;
}

uint64_t sub_D14C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5, void *a6)
{
  sub_11B60(0, a4, a5);
  *(a1 + *a6) = sub_129E0();
}

id sub_D238(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorMinuteLayers] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorHourLayers] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_majorHourLayers] = _swiftEmptyArrayStorage;
  v3 = OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_dateOverride;
  v4 = type metadata accessor for GladiusUtilities.DateOverride(0);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_dateOverrideAnimationTimer] = 0;
  swift_unknownObjectWeakInit();
  v5 = &v1[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v1[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_hasActiveTimeAnimations] = 0;
  sub_11B60(0, &qword_29FA0, off_20510);
  v6 = [swift_getObjCClassFromMetadata() logObject];
  sub_129B0();
  v7 = &v1[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_fadeAnimationKey];
  *v7 = 0x65646146656D6974;
  v7[1] = 0xE800000000000000;
  *&v1[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_tickOverlayBrightness] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_device] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for NTKGladiusLightSpillCoordinator(0);
  return objc_msgSendSuper2(&v9, "init");
}

id sub_D3E4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v35 = a5;
  v10 = sub_AABC(&qword_29D88, qword_16D70);
  __chkstk_darwin(v10 - 8);
  v34 = &v32 - v11;
  v12 = sub_12920();
  v36 = *(v12 - 8);
  v37 = v12;
  __chkstk_darwin(v12);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v5 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors);
  v16 = *(v5 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors);
  v15 = *(v5 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors + 8);
  v17 = *(v5 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors + 16);
  v18 = *(v5 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors + 24);
  v19 = *(v5 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors + 32);
  *v14 = a1;
  v14[1] = a2;
  v14[2] = a3;
  v14[3] = a4;
  v20 = v35;
  v14[4] = v35;

  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = v20;
  sub_11AF8(v16, v15, v17, v18, v19);
  if (*(v5 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_hasActiveTimeAnimations) == 1)
  {
    result = [objc_opt_self() faceDate];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v26 = result;
    v27 = v33;
    sub_12910();

    sub_D734(v27);
    (*(v36 + 8))(v27, v37);
  }

  sub_F044();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = result;
    v29 = v34;
    (*(v36 + 56))(v34, 1, 1, v37);
    sub_10724(v29);
    v31 = v30;
    sub_BB74(v29, &qword_29D88, qword_16D70);
    [v28 lightSpillCoordinator:v5 wantsUpdateForAngle:v31];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_D734(uint64_t a1)
{
  v3 = sub_AABC(&qword_29D88, qword_16D70);
  __chkstk_darwin(v3 - 8);
  v5 = &v103 - v4;
  v6 = (v1 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors);
  v7 = *(v1 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors);
  if (v7)
  {
    v9 = v6[3];
    v8 = v6[4];
    v11 = v6[1];
    v10 = v6[2];
    v12 = sub_12920();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v5, a1, v12);
    (*(v13 + 56))(v5, 0, 1, v12);
    v111 = v7;

    v110 = v11;
    v109 = v10;
    v112 = v9;
    v14 = v8;
    sub_10724(v5);
    v16 = v15;
    sub_BB74(v5, &qword_29D88, qword_16D70);
    v17 = *(v1 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_majorHourLayers);
    v108 = v14;
    if (v17 >> 62)
    {
      goto LABEL_65;
    }

    for (i = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)); ; i = sub_12A80())
    {
      v117 = v1;
      v118 = (v1 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_fadeAnimationKey);

      if (i)
      {
        v115 = v17 & 0xFFFFFFFFFFFFFF8;
        v116 = v17 & 0xC000000000000001;
        v19 = CLKUIAnalogHandsDurationForSecondsAnimation;
        v113 = v111 & 0xFFFFFFFFFFFFFF8;
        v114 = (v111 & 0xC000000000000001);
        v20 = 4;
        v1 = i;
        while (1)
        {
          v21 = v20 - 4;
          if (v116)
          {
            v22 = sub_12A20();
          }

          else
          {
            if (v21 >= *(v115 + 16))
            {
              goto LABEL_59;
            }

            v22 = v17[v20];
          }

          v23 = v22;
          v24 = (v20 - 3);
          if (__OFADD__(v21, 1))
          {
            break;
          }

          v25 = sub_129C0();
          v26 = [objc_opt_self() animationWithKeyPath:v25];

          v27 = v26;
          [v27 setDuration:v19];
          LODWORD(v28) = 15.0;
          LODWORD(v29) = 30.0;
          LODWORD(v30) = 15.0;
          [v27 setPreferredFrameRateRange:{v28, v29, v30}];

          *v31.i64 = v21 * 3.14159265 / 6.0;
          v32.i64[0] = v16;
          v33 = sub_115D8(v32, v31);
          if (v114)
          {
            v34 = sub_12A20();
          }

          else
          {
            if (v21 >= *(v113 + 16))
            {
              goto LABEL_60;
            }

            v34 = *(v111 + 8 * v20);
          }

          v35 = v34;
          sub_11828(v33, v34, v112);
          v37 = v36;

          sub_E320(v37);

          isa = sub_129D0().super.isa;

          [v27 setValues:isa];

          sub_11B60(0, &qword_29F68, NSNumber_ptr);
          v39 = sub_129D0().super.isa;

          [v27 setKeyTimes:v39];

          v40 = sub_129C0();
          [v23 addAnimation:v27 forKey:v40];

          ++v20;
          if (v24 == v1)
          {
            goto LABEL_17;
          }
        }

LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

LABEL_17:

      v1 = *(v117 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorMinuteLayers);
      v41 = v1 >> 62 ? sub_12A80() : *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
      v116 = OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_device;

      if (!v41)
      {
        break;
      }

      v17 = 0;
      v115 = v1 & 0xC000000000000001;
      v42 = CLKUIAnalogHandsDurationForSecondsAnimation;
      while (1)
      {
        if (v115)
        {
          v43 = sub_12A20();
        }

        else
        {
          if (v17 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_62;
          }

          v43 = *(v1 + 8 * v17 + 32);
        }

        v44 = v43;
        v45 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v46 = sub_129C0();
        v47 = [objc_opt_self() animationWithKeyPath:v46];

        v48 = v47;
        [v48 setDuration:v42];
        LODWORD(v49) = 15.0;
        LODWORD(v50) = 30.0;
        LODWORD(v51) = 15.0;
        [v48 setPreferredFrameRateRange:{v49, v50, v51}];

        [objc_opt_self() minorMinuteAngleAtIndex:v17 device:*(v117 + v116)];
        v53.i64[0] = v52;
        v54.i64[0] = v16;
        v55 = sub_115D8(v54, v53);
        sub_11828(v55, v110, v109);
        v57 = v56;

        sub_E320(v57);

        v58 = sub_129D0().super.isa;

        [v48 setValues:v58];

        sub_11B60(0, &qword_29F68, NSNumber_ptr);
        v59 = sub_129D0().super.isa;

        [v48 setKeyTimes:v59];

        v60 = sub_129C0();
        [v44 addAnimation:v48 forKey:v60];

        v17 = (v17 + 1);
        if (v45 == v41)
        {
          goto LABEL_28;
        }
      }

LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      ;
    }

LABEL_28:

    v61 = objc_opt_self();
    v62 = v108;
    v63 = [v61 whiteColor];
    v64 = NTKInterpolateBetweenColors();

    v65 = *(v117 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorHourLayers);
    if (v65 >> 62)
    {
      v102 = *(v117 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorHourLayers);
      v66 = sub_12A80();
      v65 = v102;
    }

    else
    {
      v66 = *(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8));
    }

    v103 = v65;

    if (v66)
    {
      v1 = 0;
      v107 = v103 & 0xFFFFFFFFFFFFFF8;
      v108 = (v103 & 0xC000000000000001);
      v105 = "legate_>,N,W,VupdateDelegate";
      v106 = v103 + 32;
      v67 = CLKUIAnalogHandsDurationForSecondsAnimation;
      v17 = &off_28000;
      v104 = v66;
      do
      {
        if (v108)
        {
          v79 = sub_12A20();
        }

        else
        {
          if (v1 >= *(v107 + 16))
          {
            goto LABEL_64;
          }

          v79 = *(v106 + 8 * v1);
        }

        v80 = v79;
        v78 = (v1 + 1);
        if (__OFADD__(v1, 1))
        {
          goto LABEL_63;
        }

        [objc_opt_self() minorHourAngleAtIndex:v1 device:*(v117 + v116)];
        v82.i64[0] = v81;
        v83.i64[0] = v16;
        v84 = sub_115D8(v83, v82);
        v86 = v85;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v113 = v86;
          v114 = v80;
          v115 = v78;
          v87 = sub_129C0();
          v88 = [objc_opt_self() animationWithKeyPath:v87];

          v89 = *(v84 + 16);
          if (v89)
          {
            v119[0] = _swiftEmptyArrayStorage;
            v90 = v88;
            v1 = v119;
            sub_12A50();
            v91 = 0;
            while (1)
            {
              if (v91 >= *(v84 + 16))
              {
                __break(1u);
                goto LABEL_58;
              }

              v92 = NTKInterpolateBetweenColors();
              if (!v92)
              {
                break;
              }

              v93 = v92;
              ++v91;
              v94 = [v92 CGColor];

              v1 = v119;
              sub_12A30();
              sub_12A60();
              sub_12A70();
              sub_12A40();
              if (v89 == v91)
              {

                v69 = v119[0];
                v66 = v104;
                goto LABEL_33;
              }
            }

            __break(1u);
            return;
          }

          v68 = v88;

          v69 = _swiftEmptyArrayStorage;
LABEL_33:
          sub_E434(v69);
        }

        else
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {

            goto LABEL_35;
          }

          v113 = v86;
          v114 = v80;
          v115 = v78;
          v95 = sub_129C0();
          v96 = [objc_opt_self() animationWithKeyPath:v95];

          v88 = v96;
          sub_11828(v84, v112, v112);
          v98 = v97;

          sub_E320(v98);
        }

        v70 = sub_129D0().super.isa;

        [v88 setValues:v70];

        v71 = v88;
        [v71 setDuration:v67];
        LODWORD(v72) = 15.0;
        LODWORD(v73) = 30.0;
        LODWORD(v74) = 15.0;
        [v71 setPreferredFrameRateRange:{v72, v73, v74}];
        sub_11B60(0, &qword_29F68, NSNumber_ptr);
        v75 = sub_129D0().super.isa;

        [v71 setKeyTimes:v75];

        v76 = sub_129C0();
        v77 = v114;
        [v114 addAnimation:v71 forKey:v76];

        v78 = v115;
LABEL_35:
        v1 = v78;
      }

      while (v78 != v66);
    }

    *(v117 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_hasActiveTimeAnimations) = 1;
  }

  else
  {
    v118 = sub_12980();
    v99 = sub_129F0();
    if (os_log_type_enabled(v118, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_0, v118, v99, "trying to start ticks animation with no palette!", v100, 2u);
    }

    v101 = v118;
  }
}

unint64_t *sub_E320(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_11374(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {

      sub_AABC(&qword_29F70, &qword_16F50);
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_11374((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_11AE8(&v8, &v2[4 * v6 + 4]);
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_E434(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_12A80();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_11374(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_12A20();
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_11374((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_11AE8(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGColor(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_11374((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_11AE8(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_E6E8()
{
  v1 = sub_AABC(&qword_29D88, qword_16D70);
  __chkstk_darwin(v1 - 8);
  v3 = &v28 - v2;
  v4 = type metadata accessor for GladiusUtilities.DateOverride(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = sub_AABC(&unk_29F50, &qword_16DC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  v14 = OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_dateOverride;
  swift_beginAccess();
  sub_BB0C(v0 + v14, v13, &unk_29F50, &qword_16DC0);
  if ((*(v5 + 48))(v13, 1, v4))
  {
    sub_BB74(v13, &unk_29F50, &qword_16DC0);
LABEL_3:
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v16 = result;
      v17 = sub_12920();
      (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
      sub_10724(v3);
      v19 = v18;
      sub_BB74(v3, &qword_29D88, qword_16D70);
      [v16 lightSpillCoordinator:v0 wantsUpdateForAngle:v19];
      return swift_unknownObjectRelease();
    }

    return result;
  }

  sub_CF4C(v13, v10);
  sub_BB74(v13, &unk_29F50, &qword_16DC0);
  sub_CF4C(v10, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_CFB0(v10);
    return sub_CFB0(v8);
  }

  v20 = sub_AABC(&unk_29E40, "Xr");
  v21 = v20;
  if (v8[v20[24]])
  {
    v22 = 1;
  }

  else
  {
    v23 = *&v8[v20[20]];
    v24 = *&v8[v20[16]];
    v22 = CFAbsoluteTimeGetCurrent() < v23 + v24;
  }

  v25 = v21[12];
  sub_CFB0(v10);
  v26 = sub_12920();
  v27 = *(*(v26 - 8) + 8);
  v27(&v8[v25], v26);
  result = (v27)(v8, v26);
  if (!v22)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_EAC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_majorHourLayers);
  if (v1 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); ; i = sub_12A80())
  {

    if (i)
    {
      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = sub_12A20();
        }

        else
        {
          if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_36;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v7 = sub_129C0();
        [v5 removeAnimationForKey:v7];

        ++v3;
        if (v6 == i)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_12:

    v1 = *(v21 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorMinuteLayers);
    if (v1 >> 62)
    {
      v8 = sub_12A80();
    }

    else
    {
      v8 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    }

    if (v8)
    {
      v9 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = sub_12A20();
        }

        else
        {
          if (v9 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_38;
          }

          v10 = *(v1 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = sub_129C0();
        [v11 removeAnimationForKey:v13];

        ++v9;
        if (v12 == v8)
        {
          goto LABEL_23;
        }
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_23:

    v1 = *(v21 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorHourLayers);
    v14 = v1 >> 62 ? sub_12A80() : *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));

    if (!v14)
    {
      break;
    }

    v15 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v16 = sub_12A20();
      }

      else
      {
        if (v15 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_40;
        }

        v16 = *(v1 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v19 = sub_129C0();
      [v17 removeAnimationForKey:v19];

      ++v15;
      if (v18 == v14)
      {
        goto LABEL_34;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

LABEL_34:

  *(v21 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_hasActiveTimeAnimations) = 0;
  return result;
}

void sub_F044()
{
  v1 = sub_AABC(&qword_29D88, qword_16D70);
  __chkstk_darwin(v1 - 8);
  v47 = &v46 - v2;
  v3 = type metadata accessor for GladiusUtilities.DateOverride(0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v46 - v8;
  v10 = sub_AABC(&unk_29F50, &qword_16DC0);
  v11 = __chkstk_darwin(v10 - 8);
  v48 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v46 - v14;
  __chkstk_darwin(v13);
  v17 = &v46 - v16;
  v18 = OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_dateOverride;
  swift_beginAccess();
  v49 = v0;
  v19 = v0 + v18;
  v20 = v3;
  v21 = v4;
  sub_BB0C(v19, v17, &unk_29F50, &qword_16DC0);
  if ((*(v4 + 48))(v17, 1, v20))
  {
    sub_BB74(v17, &unk_29F50, &qword_16DC0);
LABEL_3:
    v22 = v48;
    (*(v21 + 56))(v48, 1, 1, v20);
    v23 = v49;
    swift_beginAccess();
    sub_BA9C(v22, v23 + v18);
    v24 = swift_endAccess();
    sub_100A4(v24);
    return;
  }

  v46 = v15;
  v25 = v47;
  sub_CF4C(v17, v9);
  sub_BB74(v17, &unk_29F50, &qword_16DC0);
  sub_CF4C(v9, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = sub_AABC(&unk_29E40, "Xr");
    v27 = v26;
    if (v7[v26[24]])
    {
      v28 = 1;
    }

    else
    {
      v30 = *&v7[v26[20]];
      v31 = *&v7[v26[16]];
      v28 = CFAbsoluteTimeGetCurrent() < v30 + v31;
    }

    v32 = v27[12];
    sub_CFB0(v9);
    v33 = sub_12920();
    v34 = *(*(v33 - 8) + 8);
    v34(&v7[v32], v33);
    v34(v7, v33);
    v29 = v25;
    if (!v28)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_CFB0(v9);
    sub_CFB0(v7);
    v29 = v25;
  }

  v36 = v48;
  v35 = v49;
  sub_BB0C(v49 + v18, v48, &unk_29F50, &qword_16DC0);
  v37 = v46;
  sub_C79C(v46, v36);
  v39 = v38;
  sub_BB74(v36, &unk_29F50, &qword_16DC0);
  sub_BB0C(v37, v36, &unk_29F50, &qword_16DC0);
  swift_beginAccess();
  sub_BA9C(v36, v35 + v18);
  v40 = swift_endAccess();
  sub_F584(v40, v39);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v42 = Strong;
    v43 = sub_12920();
    (*(*(v43 - 8) + 56))(v29, 1, 1, v43);
    sub_10724(v29);
    v45 = v44;
    sub_BB74(v29, &qword_29D88, qword_16D70);
    [v42 lightSpillCoordinator:v35 wantsUpdateForAngle:v45];
    swift_unknownObjectRelease();
  }

  sub_BB74(v37, &unk_29F50, &qword_16DC0);
}

void sub_F584(uint64_t a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors);
  v4 = *(v2 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors);
  if (!v4)
  {
    v91 = sub_12980();
    v75 = sub_129F0();
    if (os_log_type_enabled(v91, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_0, v91, v75, "trying to apply instantaneous tick lighting with no palette!", v76, 2u);
    }

    return;
  }

  v5 = v3[3];
  v6 = v3[4];
  v8 = v3[1];
  v7 = v3[2];
  v9 = objc_opt_self();
  sub_112EC(v4, v8, v7, v5, v6);
  v10 = v5;
  v88 = v9;
  v11 = [v9 whiteColor];
  v86 = NTKInterpolateBetweenColors();
  v87 = v10;

  v89 = v2;
  v12 = *(v2 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_majorHourLayers);
  v85 = v4;
  v77 = v8;
  v78 = v7;
  v81 = v6;
  if (v12 >> 62)
  {
    goto LABEL_65;
  }

  for (i = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)); ; i = sub_12A80())
  {

    if (!i)
    {
LABEL_20:

      v33 = v81;
      v34 = [v88 whiteColor];
      v79 = NTKInterpolateBetweenColors();
      v80 = v33;

      v35 = v89;
      v36 = *(v89 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorHourLayers);
      if (v36 >> 62)
      {
        v12 = sub_12A80();
      }

      else
      {
        v12 = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
      }

      v90 = OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_device;

      if (!v12)
      {
LABEL_37:

        v56 = v77;
        v57 = [v88 whiteColor];
        v83 = NTKInterpolateBetweenColors();
        v84 = v56;

        v12 = v78;
        v58 = [v88 whiteColor];
        v82 = NTKInterpolateBetweenColors();
        v88 = v12;

        v59 = *(v35 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorMinuteLayers);
        if (v59 >> 62)
        {
          v60 = sub_12A80();
        }

        else
        {
          v60 = *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8));
        }

        if (!v60)
        {
LABEL_50:

          return;
        }

        v61 = 0;
        v81 = &dword_0 + 2;
        while (1)
        {
          if ((v59 & 0xC000000000000001) != 0)
          {
            v62 = sub_12A20();
          }

          else
          {
            if (v61 >= *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_64;
            }

            v62 = *(v59 + 8 * v61 + 32);
          }

          v63 = v62;
          v64 = v61 + 1;
          if (__OFADD__(v61, 1))
          {
            goto LABEL_63;
          }

          [objc_opt_self() minorMinuteAngleAtIndex:v61 device:*(v35 + v90)];
          v65 = NTKInterpolateBetweenColors();
          if (!v65)
          {
            goto LABEL_70;
          }

          v66 = v65;
          v67 = [v65 CGColor];

          v68 = NTKInterpolateBetweenColors();
          if (!v68)
          {
            goto LABEL_71;
          }

          v69 = v68;
          v70 = [v68 CGColor];

          sub_AABC(&qword_29F60, &qword_16F48);
          v71 = swift_allocObject();
          *(v71 + 16) = xmmword_16E00;
          type metadata accessor for CGColor(0);
          *(v71 + 32) = v67;
          *(v71 + 88) = v72;
          *(v71 + 56) = v72;
          *(v71 + 64) = v70;
          v73 = v67;
          v12 = v70;
          isa = sub_129D0().super.isa;

          [v63 setColors:isa];

          ++v61;
          v35 = v89;
          if (v64 == v60)
          {
            goto LABEL_50;
          }
        }
      }

      v37 = 0;
      while (1)
      {
        if ((v36 & 0xC000000000000001) != 0)
        {
          v46 = sub_12A20();
        }

        else
        {
          if (v37 >= *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_62;
          }

          v46 = *(v36 + 8 * v37 + 32);
        }

        v45 = v46;
        v47 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_61;
        }

        [objc_opt_self() minorHourAngleAtIndex:v37 device:*(v35 + v90)];
        objc_opt_self();
        v48 = swift_dynamicCastObjCClass();
        if (v48)
        {
          v38 = v48;
          v39 = [v88 whiteColor];
          v40 = [v39 CGColor];

          [v38 setForegroundColor:v40];
          v41 = v45;
          v42 = NTKInterpolateBetweenColors();
          if (!v42)
          {
            goto LABEL_72;
          }

          v43 = v42;
          v44 = [v42 CGColor];

          [v38 setContentsMultiplyColor:v44];
        }

        else
        {
          objc_opt_self();
          v49 = swift_dynamicCastObjCClass();
          if (!v49)
          {
            goto LABEL_27;
          }

          v50 = v49;
          v51 = NTKInterpolateBetweenColors();
          if (!v51)
          {
            goto LABEL_73;
          }

          v52 = v51;
          v53 = [v51 CGColor];

          sub_AABC(&qword_29F60, &qword_16F48);
          v54 = swift_allocObject();
          *(v54 + 16) = xmmword_16E00;
          type metadata accessor for CGColor(0);
          *(v54 + 32) = v53;
          *(v54 + 88) = v55;
          *(v54 + 56) = v55;
          *(v54 + 64) = v53;
          v41 = v53;
          v44 = sub_129D0().super.isa;

          [v50 setColors:v44];
        }

        v45 = v44;
        v35 = v89;
LABEL_27:

        ++v37;
        if (v47 == v12)
        {
          goto LABEL_37;
        }
      }
    }

    v14 = 4;
LABEL_6:
    v15 = v14 - 4;
    if ((v12 & 0xC000000000000001) != 0)
    {
      break;
    }

    v16 = &off_28000;
    if (v15 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_59;
    }

    v17 = *(v12 + 8 * v14);
    v18 = v14 - 3;
    if (!__OFADD__(v15, 1))
    {
      goto LABEL_9;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    ;
  }

  v17 = sub_12A20();
  v16 = &off_28000;
  v18 = v14 - 3;
  if (__OFADD__(v15, 1))
  {
    goto LABEL_58;
  }

LABEL_9:
  if ((v85 & 0xC000000000000001) != 0)
  {
    v19 = sub_12A20();
  }

  else
  {
    if (v15 >= *(&dword_10 + (v85 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_60;
    }

    v19 = v85[v14];
  }

  v20 = v19;
  sub_AABC(&qword_29F60, &qword_16F48);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_16E00;
  v22 = v20;
  v23 = [v88 whiteColor];
  v24 = NTKInterpolateBetweenColors();

  v25 = NTKInterpolateBetweenColors();
  if (v25)
  {
    v26 = [v25 v16[69]];

    type metadata accessor for CGColor(0);
    v28 = v27;
    *(v21 + 56) = v27;
    *(v21 + 32) = v26;
    v29 = NTKInterpolateBetweenColors();
    if (!v29)
    {
      goto LABEL_69;
    }

    v30 = v29;
    v31 = [v29 v16[69]];

    *(v21 + 88) = v28;
    *(v21 + 64) = v31;
    v32 = sub_129D0().super.isa;

    [v17 setColors:v32];

    ++v14;
    if (v18 == i)
    {
      goto LABEL_20;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

void sub_100A4(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors);
  v61 = *(v1 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_currentDialColors);
  if (v61)
  {
    v3 = v2[1];
    v60 = v2[2];
    v62 = v2[3];
    v58 = v2[4];
    v4 = *(v1 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_majorHourLayers);
    if (v4 >> 62)
    {
      goto LABEL_48;
    }

    for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); ; i = v55)
    {
      v56 = v3;
      sub_112EC(v61, v3, v60, v62, v58);

      if (!i)
      {
        break;
      }

      v6 = 4;
      while (1)
      {
        v7 = v6 - 4;
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = sub_12A20();
        }

        else
        {
          if (v7 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_46;
          }

          v8 = *(v4 + 8 * v6);
        }

        v9 = v8;
        v10 = v6 - 3;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        sub_AABC(&qword_29F60, &qword_16F48);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_16E00;
        if ((v61 & 0xC000000000000001) != 0)
        {
          v12 = sub_12A20();
        }

        else
        {
          if (v7 >= *(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_47;
          }

          v12 = *(v61 + 8 * v6);
        }

        v13 = v12;
        v14 = [v12 CGColor];

        type metadata accessor for CGColor(0);
        v16 = v15;
        *(v11 + 56) = v15;
        *(v11 + 32) = v14;
        v17 = [v62 CGColor];
        *(v11 + 88) = v16;
        *(v11 + 64) = v17;
        isa = sub_129D0().super.isa;

        [v9 setColors:isa];

        ++v6;
        if (v10 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      v54 = v3;
      v55 = sub_12A80();
      v3 = v54;
    }

LABEL_17:

    v19 = v57;
    v20 = *(v57 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorHourLayers);
    if (!(v20 >> 62))
    {
      v21 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
      if (!v21)
      {
        goto LABEL_31;
      }

      goto LABEL_19;
    }

    v21 = sub_12A80();
    if (v21)
    {
LABEL_19:
      if (v21 >= 1)
      {
        v22 = v20 & 0xC000000000000001;

        v23 = 0;
        v24 = &NTKAllSignatureCircularTypes_ptr;
        v25 = &off_28000;
        v59 = v20;
        while (1)
        {
          if (v22)
          {
            v30 = sub_12A20();
          }

          else
          {
            v30 = *(v20 + 8 * v23 + 32);
          }

          v29 = v30;
          objc_opt_self();
          v31 = swift_dynamicCastObjCClass();
          if (v31)
          {
            v26 = v31;
            v27 = v29;
            v28 = [v58 CGColor];
            [v26 v25[284]];
          }

          else
          {
            objc_opt_self();
            v32 = swift_dynamicCastObjCClass();
            if (!v32)
            {
              goto LABEL_23;
            }

            v33 = v32;
            v34 = v24;
            v35 = [v62 CGColor];
            sub_AABC(&qword_29F60, &qword_16F48);
            v36 = v21;
            v37 = v22;
            v38 = v25;
            v39 = swift_allocObject();
            *(v39 + 16) = xmmword_16E00;
            type metadata accessor for CGColor(0);
            *(v39 + 32) = v35;
            *(v39 + 88) = v40;
            *(v39 + 56) = v40;
            *(v39 + 64) = v35;
            v41 = v35;
            v24 = v34;
            v27 = v41;
            v28 = sub_129D0().super.isa;
            v25 = v38;
            v22 = v37;
            v21 = v36;
            v20 = v59;

            [v33 setColors:v28];
          }

          v29 = v28;
LABEL_23:
          ++v23;

          if (v21 == v23)
          {

            v19 = v57;
            goto LABEL_31;
          }
        }
      }

      __break(1u);
      goto LABEL_57;
    }

LABEL_31:
    v42 = *(v19 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_minorMinuteLayers);
    if (v42 >> 62)
    {
      v43 = sub_12A80();
      if (v43)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v43 = *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8));
      if (v43)
      {
LABEL_33:
        if (v43 < 1)
        {
LABEL_57:
          __break(1u);
          return;
        }

        v44 = 0;
        do
        {
          if ((v42 & 0xC000000000000001) != 0)
          {
            v45 = sub_12A20();
          }

          else
          {
            v45 = *(v42 + 8 * v44 + 32);
          }

          v46 = v45;
          ++v44;
          v47 = [v60 CGColor];
          sub_AABC(&qword_29F60, &qword_16F48);
          v48 = swift_allocObject();
          *(v48 + 16) = xmmword_16E00;
          type metadata accessor for CGColor(0);
          *(v48 + 32) = v47;
          *(v48 + 88) = v49;
          *(v48 + 56) = v49;
          *(v48 + 64) = v47;
          v50 = v47;
          v51 = sub_129D0().super.isa;

          [v46 setColors:v51];
        }

        while (v43 != v44);

        goto LABEL_53;
      }
    }

LABEL_53:

    return;
  }

  v63 = sub_12980();
  v52 = sub_129F0();
  if (os_log_type_enabled(v63, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_0, v63, v52, "trying to clear instantaneous tick lighting with no palette!", v53, 2u);
  }
}

uint64_t sub_10724(uint64_t a1)
{
  v2 = sub_12960();
  v67 = *(v2 - 8);
  v68 = v2;
  __chkstk_darwin(v2);
  v66 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AABC(&qword_29D88, qword_16D70);
  v5 = __chkstk_darwin(v4 - 8);
  v64 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v62 = &v57 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v57 - v10;
  __chkstk_darwin(v9);
  v65 = &v57 - v12;
  v13 = type metadata accessor for GladiusUtilities.DateOverride(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v61 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v57 - v17;
  v19 = sub_AABC(&unk_29F50, &qword_16DC0);
  v20 = __chkstk_darwin(v19 - 8);
  v60 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v59 = &v57 - v23;
  __chkstk_darwin(v22);
  v25 = &v57 - v24;
  v71 = 0;
  v26 = sub_12920();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  if (v28(a1, 1, v26) != 1)
  {
    goto LABEL_4;
  }

  v57 = v28;
  v58 = v11;
  v29 = OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_dateOverride;
  v30 = v63;
  swift_beginAccess();
  sub_BB0C(v30 + v29, v25, &unk_29F50, &qword_16DC0);
  if (!(*(v14 + 48))(v25, 1, v13))
  {
    sub_CF4C(v25, v18);
    sub_BB74(v25, &unk_29F50, &qword_16DC0);
    v38 = v61;
    sub_CF4C(v18, v61);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = sub_AABC(&unk_29E40, "Xr");
      v40 = v29;
      if (*(v38 + v39[24]))
      {
        v41 = v39[12];
        sub_CFB0(v18);
        v42 = *(v27 + 8);
        v42(v38 + v41, v26);
        v42(v38, v26);
        v43 = v63;
      }

      else
      {
        v51 = *(v38 + v39[20]);
        v52 = *(v38 + v39[16]);
        v53 = v39;
        Current = CFAbsoluteTimeGetCurrent();
        v55 = v53[12];
        sub_CFB0(v18);
        v56 = *(v27 + 8);
        v56(v38 + v55, v26);
        v56(v38, v26);
        v43 = v63;
        v11 = v58;
        v28 = v57;
        if (Current >= v51 + v52)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_CFB0(v18);
      sub_CFB0(v38);
      v43 = v63;
      v40 = v29;
    }

    v49 = v60;
    sub_BB0C(v43 + v40, v60, &unk_29F50, &qword_16DC0);
    v50 = v59;
    sub_C79C(v59, v49);
    sub_BB74(v49, &unk_29F50, &qword_16DC0);
    return sub_BB74(v50, &unk_29F50, &qword_16DC0);
  }

  sub_BB74(v25, &unk_29F50, &qword_16DC0);
  v11 = v58;
  v28 = v57;
LABEL_4:
  sub_BB0C(a1, v11, &qword_29D88, qword_16D70);
  if (v28(v11, 1, v26) == 1)
  {
    v31 = [objc_opt_self() faceDate];
    v32 = v65;
    if (v31)
    {
      v33 = v62;
      v34 = v28;
      v35 = v31;
      sub_12910();

      v28 = v34;
      v36 = 0;
      v37 = v64;
    }

    else
    {
      v36 = 1;
      v37 = v64;
      v33 = v62;
    }

    (*(v27 + 56))(v33, v36, 1, v26);
    sub_1127C(v33, v32);
    if (v28(v11, 1, v26) != 1)
    {
      sub_BB74(v11, &qword_29D88, qword_16D70);
    }
  }

  else
  {
    v32 = v65;
    (*(v27 + 32))(v65, v11, v26);
    (*(v27 + 56))(v32, 0, 1, v26);
    v37 = v64;
  }

  v69 = 0;
  v70 = 0;
  sub_BB0C(v32, v37, &qword_29D88, qword_16D70);
  v44 = v28(v37, 1, v26);
  isa = 0;
  if (v44 != 1)
  {
    isa = sub_128F0().super.isa;
    (*(v27 + 8))(v37, v26);
  }

  v46 = v66;
  sub_12950();
  v47 = sub_12930().super.isa;
  (*(v67 + 8))(v46, v68);
  CLKHourMinuteSecondAnglesForTime();

  return sub_BB74(v32, &qword_29D88, qword_16D70);
}

id sub_10EF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NTKGladiusLightSpillCoordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for NTKGladiusLightSpillCoordinator(uint64_t a1)
{
  result = qword_29F30;
  if (!qword_29F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_110A0(uint64_t a1, uint64_t a2)
{
  sub_B5FC(319, a2);
  if (v2 <= 0x3F)
  {
    sub_129A0();
    if (v3 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

__n128 sub_111C8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_111DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_11224(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1127C(uint64_t a1, uint64_t a2)
{
  v4 = sub_AABC(&qword_29D88, qword_16D70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_112EC(id result, void *a2, void *a3, void *a4, void *a5)
{
  if (result)
  {

    v8 = a2;
    v9 = a3;
    v10 = a4;

    return a5;
  }

  return result;
}

void *sub_11354(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_11394(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_11374(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_114C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_11394(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_AABC(&unk_29F88, qword_16F60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_AABC(&qword_29F70, &qword_16F50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_114C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_AABC(&qword_29F60, &qword_16F48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_115D8(int8x16_t a1, int8x16_t a2)
{
  *a1.i64 = *a1.i64 / 6.28318531 - (*a2.i64 / 6.28318531 + -1.0);
  *a2.i64 = *a1.i64 - trunc(*a1.i64);
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  a1.i64[0] = vbslq_s8(vnegq_f64(v2), a2, a1).i64[0];
  if (1.0 - *a1.i64 / 0.4 < 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0 - *a1.i64 / 0.4;
  }

  sub_AABC(&qword_29C60, &qword_16C88);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_16E10;
  *(v4 + 32) = v3;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0x3FF0000000000000;
  *(v4 + 64) = v3;
  sub_12A50();
  sub_12970();
  sub_12A30();
  sub_12A60();
  sub_12A70();
  sub_12A40();
  sub_12970();
  sub_12A30();
  sub_12A60();
  sub_12A70();
  sub_12A40();
  sub_12970();
  sub_12A30();
  sub_12A60();
  sub_12A70();
  sub_12A40();
  sub_12970();
  sub_12A30();
  sub_12A60();
  sub_12A70();
  sub_12A40();
  sub_12970();
  sub_12A30();
  sub_12A60();
  sub_12A70();
  sub_12A40();
  return v4;
}

void sub_11828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_11B60(0, &qword_29F78, NSObject_ptr);
  v4 = sub_12A00();
  v5 = objc_opt_self();
  v6 = [v5 whiteColor];
  v7 = NTKInterpolateBetweenColors();

  if (!v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v4)
  {
    v8 = v7;
LABEL_5:
    v10 = *(a1 + 16);
    if (!v10)
    {

      return;
    }

    v21 = v8;
    sub_11354(0, v10, 0);
    v11 = a1 + 32;
    v12 = v4;
    while (1)
    {
      v13 = NTKInterpolateBetweenColors();
      if (!v13)
      {
        break;
      }

      v14 = v13;
      if (v4)
      {
        v15 = v13;
      }

      else
      {
        v15 = NTKInterpolateBetweenColors();
        if (!v15)
        {
          goto LABEL_17;
        }
      }

      sub_AABC(&qword_29F80, &qword_16F58);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_16E20;
      v17 = v15;
      *(v16 + 32) = [v14 CGColor];
      v18 = [v17 CGColor];

      *(v16 + 40) = v18;
      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];
      if (v20 >= v19 >> 1)
      {
        sub_11354((v19 > 1), v20 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v20 + 1;
      _swiftEmptyArrayStorage[v20 + 4] = v16;
      v11 += 8;
      --v10;
      v4 = v12;
      if (!v10)
      {

        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = [v5 whiteColor];
  v8 = NTKInterpolateBetweenColors();

  if (v8)
  {
    goto LABEL_5;
  }

LABEL_19:
  __break(1u);
}

_OWORD *sub_11AE8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_11AF8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a1)
  {
  }
}

uint64_t sub_11B60(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_11C08(double a1)
{
  if (a1 <= 0.0)
  {
    v4 = ceil(a1 / -6.28318531) * 6.28318531 + a1;
  }

  else
  {
    v4 = a1 - floor(a1 / 6.28318531) * 6.28318531;
  }

  v5 = floor(v4 / 6.28318531 * 120.0);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2 = v5 % 120;
  v6 = (v2 + 1 + ((-119 * (v2 + 1)) >> 8)) & 0x80;
  v3 = (v2 + 1 - 120 * ((((137 * (v2 + 1)) >> 8) >> 6) + (v6 >> 7)));
  if ((v2 & 0x8000000000000000) != 0 || (v2 + 1 - 120 * ((((137 * (v2 + 1)) >> 8) >> 6) + (v6 >> 7))) < 0)
  {
    if (qword_29C30 == -1)
    {
LABEL_13:
      v8 = sub_129A0();
      sub_AE18(v8, qword_2AE70);
      v9 = sub_12980();
      v10 = sub_129F0();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 134218496;
        *(v11 + 4) = v4;
        *(v11 + 12) = 2048;
        *(v11 + 14) = v2;
        *(v11 + 22) = 2048;
        *(v11 + 24) = v3;
        _os_log_impl(&dword_0, v9, v10, "Invalid sample index for angle: %f, baseIndex: %ld, nextIndex: %ld", v11, 0x20u);
      }

      return;
    }

LABEL_19:
    swift_once();
    goto LABEL_13;
  }

  v7 = *(*(v1 + OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion32NTKGladiusStretchySecondHandData_samples) + 16);
  if (v2 >= v7)
  {
    __break(1u);
  }

  else if (v7 > v3)
  {
    CLKInterpolateBetweenFloatsUnclipped();
    return;
  }

  __break(1u);
}

id sub_11EDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NTKGladiusStretchySecondHandData();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_11F44(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

id sub_11F90(void *a1)
{
  *&v1[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion32NTKGladiusStretchySecondHandData_sampleCount] = 120;
  [a1 screenBounds];
  v2.n128_f64[0] = CGRectGetWidth(v12) * 0.5;
  *&v1[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion32NTKGladiusStretchySecondHandData_baseRadius] = v2.n128_u64[0];
  v3 = sub_AB08(0, 120, 0, _swiftEmptyArrayStorage, v2);
  for (i = 0; i != 120; ++i)
  {
    NTKScreenRadiusAtAngleWithInset();
    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v8 = v5.n128_u64[0];
      v9 = sub_AB08((v6 > 1), v7 + 1, 1, v3, v5);
      v5.n128_u64[0] = v8;
      v3 = v9;
    }

    *(v3 + 2) = v7 + 1;
    *&v3[8 * v7 + 32] = v5.n128_u64[0];
  }

  *&v1[OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion32NTKGladiusStretchySecondHandData_samples] = v3;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for NTKGladiusStretchySecondHandData();
  return objc_msgSendSuper2(&v11, "init");
}

void sub_120DC(uint64_t a1)
{
  *(v1 + 16) = 81;
  *(v1 + 24) = 0;
  *(v1 + 48) = CFAbsoluteTimeGetCurrent();
  *(v1 + 64) = 0x3F800000C0200000;
  *(v1 + 112) = xmmword_16FE0;
  v3 = *(a1 + 16);
  *(v1 + 76) = *a1;
  *(v1 + 72) = 1064388153;
  *(v1 + 128) = 1065353216;
  *(v1 + 92) = v3;
  *(v1 + 108) = *(a1 + 32);
  v4 = MTLCreateSystemDefaultDevice();
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = v4;
  v6 = [v4 newCommandQueue];
  if (!v6)
  {
LABEL_15:
    swift_unknownObjectRelease();
LABEL_16:
    type metadata accessor for GladiusRenderer();
    swift_deallocPartialClassInstance();
    return;
  }

  v7 = v6;
  *(v1 + 32) = v5;
  swift_unknownObjectRetain();
  v8 = sub_129C0();
  [v7 setLabel:v8];

  *(v1 + 40) = v7;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  swift_unknownObjectRetain();
  v11 = [v10 bundleForClass:ObjCClassFromMetadata];
  v26 = 0;
  v12 = [v5 newDefaultLibraryWithBundle:v11 error:&v26];

  if (!v12)
  {
    v24 = v26;
    sub_128E0();

    swift_willThrow();
    swift_unknownObjectRelease();

LABEL_13:
    swift_unknownObjectRelease();
LABEL_14:
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v13 = v26;
  v14 = sub_129C0();
  v15 = [v12 newFunctionWithName:v14];

  if (!v15)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v16 = sub_129C0();
  v17 = [v12 newFunctionWithName:v16];

  if (!v17)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v18 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  [v18 setVertexFunction:v15];
  [v18 setFragmentFunction:v17];
  v19 = [v18 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript:0];

  if (v20)
  {
    [v20 setPixelFormat:*(v1 + 16)];
    [v20 setBlendingEnabled:0];
    v26 = 0;
    v21 = [v5 newRenderPipelineStateWithDescriptor:v18 error:&v26];
    if (v21)
    {
      v22 = v21;
      v23 = v26;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      *(v1 + 56) = v22;
      return;
    }

    v25 = v26;
    sub_128E0();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_14;
  }

  __break(1u);
}

id sub_12548(void *a1)
{
  [a1 setRenderPipelineState:*(v1 + 56)];
  v3 = *(v1 + 68);
  v43 = *(v1 + 128);
  v42 = *(v1 + 112);
  v4 = *(v1 + 72);
  v46 = *(v1 + 76);
  v47 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = *(v1 + 92);
  v7 = *(v1 + 96);
  v8 = *(v1 + 100);
  v9 = *(v1 + 104);
  v11 = __sincosf_stret(*(v1 + 64));
  v10.n128_u64[0] = __PAIR64__(LODWORD(v11.__sinval), LODWORD(v11.__cosval));
  v45 = v10;
  v13 = __sincosf_stret(v3);
  v12.n128_u64[0] = __PAIR64__(LODWORD(v13.__sinval), LODWORD(v13.__cosval));
  v44 = v12;
  v14 = __sincosf_stret(v4);
  v15.n128_u32[0] = v5;
  v16.n128_u32[0] = v7;
  v17 = sub_A300(v45, v15, v6, v46 + *&v47, *&v47, __PAIR64__(LODWORD(v14.__sinval), LODWORD(v14.__cosval)), v16, v8);
  v18.n128_u32[0] = v5;
  v19.n128_u32[0] = v7;
  v20 = sub_A300(v44, v18, v6, v46 + *(&v47 + 1), *(&v47 + 1), __PAIR64__(LODWORD(v14.__sinval), LODWORD(v14.__cosval)), v19, v8);
  if (*(v17 + 2) < 4uLL)
  {
LABEL_36:
    __break(1u);
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
LABEL_3:
  while (1)
  {
    v25 = 12 * v21;
    v26 = v24;
    while (1)
    {
      v27 = v21;
      v24 = v26;
      v28 = v17[v25 + 40];
      v26 = 0x7F0000007FLL;
      if (v28 != 255 && (v28 & 1) != 0)
      {
        v29 = *&v17[v25 + 32];
        v30 = *(&v29 + 1);
        if (*(&v29 + 1) >= *&v29)
        {
          v31 = *&v29;
        }

        else
        {
          v31 = *(&v29 + 1);
        }

        if (*&v29 > *(&v29 + 1))
        {
          v30 = *&v29;
        }

        if (v27 >= *(v20 + 2))
        {
          __break(1u);
          goto LABEL_36;
        }

        v32 = v20[v25 + 40];
        v33 = 0x7F0000007FLL;
        if (v32 != 255 && (v32 & 1) != 0)
        {
          v34 = *&v20[v25 + 32];
          if (*(&v34 + 1) >= *&v34)
          {
            v33.i32[0] = *&v20[v25 + 32];
          }

          else
          {
            v33.i32[0] = HIDWORD(*&v20[v25 + 32]);
          }

          if (v31 > v33.f32[0])
          {
            v33.f32[0] = v31;
          }

          if (*&v34 > *(&v34 + 1))
          {
            LODWORD(v35) = *&v20[v25 + 32];
          }

          else
          {
            LODWORD(v35) = HIDWORD(*&v20[v25 + 32]);
          }

          if (v35 < v30)
          {
            v30 = v35;
          }

          v33.f32[1] = v30;
        }

        v36 = vabs_f32(v33);
        v37 = vcgt_f32(v36, vdup_lane_s32(v36, 1)).u8[0];
        v38 = vrev64_s32(v33);
        if (v37)
        {
          v39 = -1;
        }

        else
        {
          v39 = 0;
        }

        v26 = vbsl_s8(vdup_n_s32(v39), v38, v33);
      }

      v21 = v27 + 1;
      if (v27 > 1)
      {
        break;
      }

      v25 += 12;
      if (v27)
      {
        v23 = v26;
        goto LABEL_3;
      }
    }

    if (v27 != 2)
    {
      break;
    }

    v22 = v26;
  }

  v48[0] = v24;
  v48[1] = v23;
  v48[2] = v22;
  v48[3] = v26;
  v48[4] = v45.n128_u64[0];
  v48[5] = v44.n128_u64[0];
  *&v40 = __PAIR64__(LODWORD(v46), v43);
  v48[6] = __PAIR64__(LODWORD(v14.__sinval), LODWORD(v14.__cosval));
  *(&v40 + 1) = v47;
  v49 = v42;
  v50 = v40;
  v51 = v5;
  v52 = v6;
  v53 = v7;
  v54 = v8;
  v55 = v9;
  [a1 setFragmentBytes:v48 length:128 atIndex:0];
  return [a1 drawPrimitives:3 vertexStart:0 vertexCount:3];
}

uint64_t sub_1281C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 132, 15);
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}