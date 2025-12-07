void *copyLocationsFromLocationMessagePayload(void *a1, const char *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_objectForKey_(a1, a2, @"LocationCount");
  v6 = objc_msgSend_integerValue(v3, v4, v5);
  v8 = objc_msgSend_objectForKey_(a1, v7, @"Locations");
  v10 = objc_msgSend_objectForKey_(a1, v9, @"LocationsPrivate");
  v12 = objc_msgSend_objectForKey_(a1, v11, @"CoarseMetaData");
  if (v8)
  {
    v15 = v12;
    if (objc_msgSend_length(v8, v13, v14) == 156 * v6 && (!v10 || objc_msgSend_length(v10, v16, v17) == 560 * v6))
    {
      if (v15)
      {
        if (qword_1EB46D6E8 != -1)
        {
          dispatch_once(&qword_1EB46D6E8, &unk_1F20396A0);
        }

        v18 = qword_1EB46D6F0;
        if (os_log_type_enabled(qword_1EB46D6F0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1AB607000, v18, OS_LOG_TYPE_DEBUG, "Encoded coarse meta data found", buf, 2u);
        }

        v19 = sub_1AB60902C();
        if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EB46D6E8 != -1)
          {
            dispatch_once(&qword_1EB46D6E8, &unk_1F20396A0);
          }

          LOWORD(v53[0]) = 0;
          v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, qword_1EB46D6F0, 2, "Encoded coarse meta data found", v53, 2);
          sub_1AB60C944("Generic", 1, 0, 2, "NSArray * _Nonnull copyLocationsFromLocationMessagePayload(NSDictionary * _Nonnull)", "CoreLocation: %s\n", v20);
          if (v20 != buf)
          {
            free(v20);
          }
        }

        if (v6 > 1)
        {
          if (qword_1EB46D6E8 != -1)
          {
            dispatch_once(&qword_1EB46D6E8, &unk_1F20396A0);
          }

          v21 = qword_1EB46D6F0;
          if (os_log_type_enabled(qword_1EB46D6F0, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AB607000, v21, OS_LOG_TYPE_FAULT, "CLLocationManager should not get multiple locations with coarseMetaData", buf, 2u);
          }

          v22 = sub_1AB60902C();
          if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EB46D6E8 != -1)
            {
              dispatch_once(&qword_1EB46D6E8, &unk_1F20396A0);
            }

            LOWORD(v53[0]) = 0;
            LODWORD(v52) = 2;
            v23 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, qword_1EB46D6F0, 17, "CLLocationManager should not get multiple locations with coarseMetaData", v53, v52);
            sub_1AB60C944("Generic", 1, 0, 0, "NSArray * _Nonnull copyLocationsFromLocationMessagePayload(NSDictionary * _Nonnull)", "CoreLocation: %s\n", v23);
            if (v23 != buf)
            {
              free(v23);
            }
          }
        }
      }

      v24 = objc_msgSend_bytes(v8, v16, v17);
      v27 = objc_msgSend_bytes(v10, v25, v26);
      v28 = objc_alloc(MEMORY[0x1E695DF70]);
      v8 = objc_msgSend_initWithCapacity_(v28, v29, v6);
      if (v6 >= 1)
      {
        v30 = v27;
        do
        {
          v31 = [CLLocation alloc];
          v33 = v31;
          v34 = v24[1];
          if (v27)
          {
            v53[0] = *v24;
            v53[1] = v34;
            v35 = v24[2];
            v36 = v24[3];
            v37 = v24[5];
            v53[4] = v24[4];
            v53[5] = v37;
            v53[2] = v35;
            v53[3] = v36;
            v38 = v24[6];
            v39 = v24[7];
            v40 = v24[8];
            *&v54[12] = *(v24 + 140);
            v53[7] = v39;
            *v54 = v40;
            v53[6] = v38;
            memcpy(buf, v30, 0x230uLL);
            v42 = objc_msgSend_initWithClientLocation_clientLocationPrivate_coarseMetaData_(v33, v41, v53, buf, v15);
          }

          else
          {
            *buf = *v24;
            *&buf[16] = v34;
            v44 = v24[2];
            v45 = v24[3];
            v46 = v24[5];
            *&buf[64] = v24[4];
            *&buf[80] = v46;
            *&buf[32] = v44;
            *&buf[48] = v45;
            v47 = v24[6];
            v48 = v24[7];
            v49 = v24[8];
            *&buf[140] = *(v24 + 140);
            *&buf[112] = v48;
            *&buf[128] = v49;
            *&buf[96] = v47;
            v42 = objc_msgSend_initWithClientLocation_coarseMetaData_(v31, v32, buf, v15);
          }

          v50 = v42;
          objc_msgSend_addObject_(v8, v43, v42);

          v30 += 560;
          v24 = (v24 + 156);
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

void sub_1AB608878(float64x2_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 36);
  v5 = *(a3 + 36);
  if (v4 <= 0.0 || v5 <= 0.0)
  {
    if (v4 <= 0.0)
    {
      v7 = 0.0;
      if (v5 <= 0.0)
      {
        goto LABEL_11;
      }

      v6 = *(a3 + 28);
    }

    else
    {
      v6 = *(a2 + 28);
    }
  }

  else
  {
    v6 = (*(a2 + 28) + *(a3 + 28)) * 0.5;
  }

  v7 = -450.0;
  if (v6 >= -450.0)
  {
    v7 = v6;
    if (v6 > 1000000.0)
    {
      v7 = 1000000.0;
    }
  }

LABEL_11:
  v8 = *(a2 + 4);
  v9 = *(a2 + 12);
  v10 = *(a3 + 4);
  v11 = *(a3 + 12);
  if (sub_1AB608AB0(v8, v9, v10, v11))
  {

    sub_1AB609080(v8, v9, v10, v11);
  }

  else
  {

    sub_1AB608B34(a1, v8, v9, v10, v11, v7);
  }
}

void CLClientGetDistanceHighPrecision(_OWORD *a1, _OWORD *a2)
{
  if ((atomic_load_explicit(&qword_1ED4B7FA8, memory_order_acquire) & 1) == 0)
  {
    v11 = a2;
    v12 = a1;
    v10 = __cxa_guard_acquire(&qword_1ED4B7FA8);
    a2 = v11;
    a1 = v12;
    if (v10)
    {
      qword_1ED4B7F90 = 0;
      unk_1ED4B7F98 = 0;
      xmmword_1ED4B7F80 = xmmword_1AB62A580;
      qword_1ED4B7FA0 = 0x3FF0000000000000;
      __cxa_guard_release(&qword_1ED4B7FA8);
      a2 = v11;
      a1 = v12;
    }
  }

  v2 = a1[7];
  v15[6] = a1[6];
  v15[7] = v2;
  v16[0] = a1[8];
  *(v16 + 12) = *(a1 + 140);
  v3 = a1[3];
  v15[2] = a1[2];
  v15[3] = v3;
  v4 = a1[5];
  v15[4] = a1[4];
  v15[5] = v4;
  v5 = a1[1];
  v15[0] = *a1;
  v15[1] = v5;
  v6 = a2[7];
  v13[6] = a2[6];
  v13[7] = v6;
  v14[0] = a2[8];
  *(v14 + 12) = *(a2 + 140);
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v8 = a2[5];
  v13[4] = a2[4];
  v13[5] = v8;
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  sub_1AB608878(&xmmword_1ED4B7F80, v15, v13);
}

BOOL sub_1AB608AB0(double a1, double a2, double a3, double a4)
{
  if (a2 < 0.0)
  {
    a2 = a2 + 360.0;
  }

  if (a4 < 0.0)
  {
    a4 = a4 + 360.0;
  }

  v4 = a4 - a2;
  if (v4 <= 180.0)
  {
    if (v4 < -180.0)
    {
      v4 = v4 + 360.0;
    }
  }

  else
  {
    v4 = v4 + -360.0;
  }

  v5 = v4;
  if (v4 < 0)
  {
    v5 = -v5;
  }

  v6 = a3 - a1;
  if (v6 < 0)
  {
    v6 = a1 - a3;
  }

  return v6 > 2 || v5 > 2;
}

void sub_1AB608B34(float64x2_t *a1, double a2, double a3, double a4, double a5, double a6)
{
  v13 = 0;
  v14 = 0;
  if (sub_1AB608AB0(a2, a3, a4, a5) || !sub_1AB608C10(a1, &v14, &v13, &v12, a2, a3, a6, a4, a5, a6))
  {

    sub_1AB609080(a2, a3, a4, a5);
  }
}

BOOL sub_1AB608C10(float64x2_t *a1, double *a2, double *a3, double *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v10 = vabdd_f64(a5, a8);
  if (v10 <= 2.0)
  {
    v21 = a1[1].f64[1];
    if (v21 == 0.0 || vabdd_f64(a5, v21) > 0.005)
    {
      v22 = (a5 + a8) * 0.5;
      a1[1].f64[0] = v22 * 0.0174532925;
      a1[1].f64[1] = v22;
      v23 = __sincos_stret(v22 * 0.0174532925);
      v24 = v23.__sinval * -0.00669437999 * v23.__sinval + 1.0;
      v25 = sqrt(v24);
      v26.f64[0] = v24 * v25;
      v26.f64[1] = v25;
      *a1 = vdivq_f64(xmmword_1AB62A580, v26);
      a1[2].f64[0] = v23.__cosval;
    }

    v27 = 360.0;
    v28 = a6 + 360.0;
    if (a6 >= 0.0)
    {
      v28 = a6;
    }

    v29 = a9 + 360.0;
    if (a9 >= 0.0)
    {
      v29 = a9;
    }

    v30 = v29 - v28;
    if (v30 <= 180.0)
    {
      if (v30 >= -180.0)
      {
LABEL_13:
        *a2 = (a8 - a5) * 0.0174532925 * (a1->f64[0] + a7);
        *a3 = v30 * 0.0174532925 * ((a1->f64[1] + a7) * a1[2].f64[0]);
        *a4 = a10 - a7;
        return v10 <= 2.0;
      }
    }

    else
    {
      v27 = -360.0;
    }

    v30 = v30 + v27;
    goto LABEL_13;
  }

  return v10 <= 2.0;
}

uint64_t sub_1AB60902C()
{
  if (qword_1ED4B7DA8 != -1)
  {
    dispatch_once(&qword_1ED4B7DA8, &unk_1F2038578);
  }

  return qword_1ED4B7DA0;
}

void sub_1AB609080(double a1, double a2, double a3, double a4)
{
  v4 = a3;
  v5 = a1;
  if (a3 > 90.0)
  {
    return;
  }

  v6 = fabs(a1);
  if (v6 > 90.0 || a3 < -90.0)
  {
    return;
  }

  v7 = 360.0;
  v8 = a4 + 360.0;
  if (a4 >= 0.0)
  {
    v8 = a4;
  }

  v9 = a2 + 360.0;
  if (a2 >= 0.0)
  {
    v9 = a2;
  }

  v10 = v9 - v8;
  if (v10 <= 180.0)
  {
    if (v10 >= -180.0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = -360.0;
  }

  v10 = v10 + v7;
LABEL_12:
  if (fabs(v5 + a3) >= 0.0001)
  {
    v37 = a2;
    v39 = a4;
LABEL_17:
    v11 = v10;
    goto LABEL_18;
  }

  if (v6 < 0.0001 && 180.0 - fabs(v10) < 0.0001)
  {
    return;
  }

  v35 = fabs(v6 + -90.0) < 0.0001;
  if (v35)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v10;
  }

  v39 = a4;
  v37 = a2;
  if (!v35 && 180.0 - fabs(v10) >= 0.0001)
  {
    goto LABEL_17;
  }

  if (v5 <= a3)
  {
    v4 = a3 + -0.0001;
  }

  else
  {
    v5 = v5 + -0.0001;
  }

LABEL_18:
  v12 = v11 * 0.0174532925;
  v36 = v5;
  v13 = tan(v5 * 0.0174532925);
  v38 = v4;
  v14 = tan(v4 * 0.0174532925);
  v15 = v13 * 0.996647189;
  v16 = v14 * 0.996647189;
  v17 = atan(v15);
  v18 = atan(v16);
  v19 = __sincos_stret(v17);
  v20 = __sincos_stret(v18);
  v21 = 0;
  v22 = v20.__cosval * v19.__cosval;
  v40 = v12;
  while (1)
  {
    v23 = __sincos_stret(v12);
    v24 = sqrt((-(v19.__sinval * v20.__cosval) * v23.__cosval + v19.__cosval * v20.__sinval) * (-(v19.__sinval * v20.__cosval) * v23.__cosval + v19.__cosval * v20.__sinval) + v20.__cosval * v23.__sinval * (v20.__cosval * v23.__sinval));
    if (v24 < 2.22044605e-15)
    {
      break;
    }

    v25 = v22 * v23.__cosval + v19.__sinval * v20.__sinval;
    v26 = fabs(v25);
    if (fabs(v24) > 1.0 || v26 > 1.0)
    {
      break;
    }

    v28 = atan2(v24, v25);
    v29 = v22 * v23.__sinval / v24;
    if (v29 > 1.0)
    {
      break;
    }

    v30 = 1.0 - v29 * v29;
    if (fabs(v30) >= 2.22044605e-15)
    {
      v31 = v25 - v20.__sinval * (v19.__sinval + v19.__sinval) / v30;
      v32 = v30 * 0.000209550667 * ((v30 * -3.0 + 4.0) * 0.00335281066 + 4.0);
    }

    else
    {
      v31 = -1.0;
      v32 = 0.0;
    }

    v33 = v40 + v29 * ((1.0 - v32) * 0.00335281066) * (v28 + v24 * v32 * (v31 + v25 * v32 * (v31 * v31 * 2.0 + -1.0)));
    if (vabdd_f64(v33, v12) > 0.000000001)
    {
      v12 = v33;
      if (v21++ < 0x31)
      {
        continue;
      }
    }

    return;
  }

  sub_1AB6098C0(v36, v37, v38, v39);
}

BOOL CLLocationCoordinate2DIsValid(CLLocationCoordinate2D coord)
{
  v1 = coord.longitude <= 180.0;
  if (fabs(coord.latitude) > 90.0)
  {
    v1 = 0;
  }

  return coord.longitude >= -180.0 && v1;
}

double sub_1AB609558(_OWORD *a1, uint64_t a2, double a3)
{
  v5 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v5;
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[5];
  *(a2 + 64) = a1[4];
  *(a2 + 80) = v8;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  *(a2 + 140) = *(a1 + 140);
  *(a2 + 112) = v10;
  *(a2 + 128) = v11;
  *(a2 + 96) = v9;
  v12 = *(a2 + 44);
  if (v12 > 0.0 && a3 != 0.0)
  {
    v13 = *(a2 + 60);
    if (v13 >= 0.0)
    {
      sub_1AB612E8C((a2 + 4), (a2 + 12), *(a2 + 4), *(a2 + 12), a3, v12, v13);
    }
  }

  result = *(a2 + 76) + a3;
  *(a2 + 76) = result;
  return result;
}

uint64_t sub_1AB609610()
{
  qword_1ED4B7F68 = objc_alloc_init(MEMORY[0x1E696AB78]);
  objc_msgSend_setDateStyle_(qword_1ED4B7F68, v0, 1);
  objc_msgSend_setTimeStyle_(qword_1ED4B7F68, v1, 4);
  v2 = qword_1ED4B7F68;

  return MEMORY[0x1EEE66B58](v2, sel_setFormatterBehavior_, 1040);
}

double sub_1AB60966C(double a1, double a2, double a3, double a4)
{
  if (sub_1AB608AB0(a1, a2, a3, a4))
  {

    sub_1AB609080(a1, a2, a3, a4);
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
    sub_1AB60972C(&v11, &v10, &v9, a1, a2, 0.0, a3, a4, 0.0);
    return sqrt(v10 * v10 + v11 * v11);
  }

  return result;
}

double sub_1AB60972C(double *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v14 = 360.0;
  if (a5 < 0.0)
  {
    a5 = a5 + 360.0;
  }

  if (a8 < 0.0)
  {
    a8 = a8 + 360.0;
  }

  v15 = a8 - a5;
  if (v15 > 180.0)
  {
    v14 = -360.0;
LABEL_8:
    v15 = v15 + v14;
    goto LABEL_9;
  }

  if (v15 < -180.0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v16 = (a7 - a4) * 0.0174532925;
  v17 = (a6 + a9) * 0.5;
  v18 = v15 * 0.0174532925;
  v19 = __sincos_stret((a4 + a7) * 0.0174532925 * 0.5);
  v20 = sqrt(v19.__sinval * -0.00669437999 * v19.__sinval + 1.0);
  *a1 = v16 * (v17 + 6335439.33 / (v20 * (v20 * v20)));
  *a2 = v19.__cosval * (v17 + 6378137.0 / v20) * v18;
  result = a9 - a6;
  *a3 = a9 - a6;
  return result;
}

double sub_1AB6098C0(double a1, double a2, double a3, double a4)
{
  v5 = 360.0;
  if (a2 < 0.0)
  {
    a2 = a2 + 360.0;
  }

  if (a4 < 0.0)
  {
    a4 = a4 + 360.0;
  }

  v6 = a4 - a2;
  if (v6 <= 180.0)
  {
    if (v6 >= -180.0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = -360.0;
  }

  v6 = v6 + v5;
LABEL_9:
  v7 = a1 * 0.0174532925;
  v8 = v6 * 0.0174532925;
  v9 = sin((a3 - a1) * 0.0174532925 * 0.5);
  v10 = v9 * v9;
  v11 = __sincos_stret(v7);
  v12 = v11.__cosval * cos(a3 * 0.0174532925);
  v13 = sin(v8 * 0.5);
  v14 = v10 + v12 * (v13 * v13);
  v15 = 1.0 - v14;
  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  if (v15 < 0.0)
  {
    v15 = 0.0;
  }

  v16 = atan2(sqrt(v14), sqrt(v15));
  return (fabs(v11.__sinval) * -21000.0 + 6378160.0) * (v16 + v16);
}

void sub_1AB6099E8(float64x2_t *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v18 = a1[1].f64[1];
  if (v18 == 0.0 || vabdd_f64(a4, v18) > 0.005)
  {
    a1[1].f64[0] = a4 * 0.0174532925;
    a1[1].f64[1] = a4;
    v19 = __sincos_stret(a4 * 0.0174532925);
    v20 = v19.__sinval * -0.00669437999 * v19.__sinval + 1.0;
    v21 = sqrt(v20);
    v22.f64[0] = v20 * v21;
    v22.f64[1] = v21;
    *a1 = vdivq_f64(xmmword_1AB62A580, v22);
    a1[2].f64[0] = v19.__cosval;
  }

  *a2 = a4;
  *a3 = a5;
  if (fabs(a4) < 90.0 && a7 > 0.0 && a8 > 0.0 && a9 >= 0.0)
  {
    v23 = a7 * a8;
    v24 = __sincos_stret(a9 * 0.0174532925);
    v25 = a5 * 0.0174532925 + v23 * v24.__sinval / ((a1->f64[1] + a6) * a1[2].f64[0]);
    *a2 = (a4 * 0.0174532925 + v23 * v24.__cosval / (a1->f64[0] + a6)) * 57.2957795;
    v26 = v25 * 57.2957795;
    *a3 = v26;
    v27 = *a2;
    if (*a2 > 90.0)
    {
      *a2 = 180.0 - v27;
      v26 = *a3 + 180.0;
      *a3 = v26;
      v27 = *a2;
    }

    if (v27 < -90.0)
    {
      *a2 = -180.0 - v27;
      v26 = *a3 + 180.0;
      *a3 = v26;
    }

    if (v26 > -180.0)
    {
      if (v26 <= 180.0)
      {
        return;
      }
    }

    else
    {
      v26 = v26 + 360.0;
    }

    if (v26 > 180.0)
    {
      v26 = v26 + -360.0;
    }

    *a3 = v26;
  }
}

uint64_t sub_1AB609BE8(uint64_t a1, const __CFString *a2, char a3, uint64_t a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v8 = sub_1AB6178E8(a1);
  *v8 = &unk_1F2037D78;
  *(v8 + 16) = 0;
  *(v8 + 3) = 0u;
  v9 = (v8 + 3);
  *(v8 + 5) = 0u;
  *(v8 + 7) = 0u;
  v8[10] = a4;
  v8[11] = -1;
  *(v8 + 96) = a3;
  sub_1AB6178E8(v8 + 13);
  *(a1 + 104) = &unk_1F2038140;
  sub_1AB6178E8((a1 + 120));
  *(a1 + 120) = &unk_1F2038140;
  *(a1 + 72) = a2;
  CFRetain(a2);
  CFRetain(*(a1 + 80));
  sub_1AB6195C0(*(a1 + 80), &v53);
  if (v54 >= 0)
  {
    v10 = &v53;
  }

  else
  {
    v10 = v53;
  }

  v11 = getpwnam(v10);
  if (v11)
  {
    *(a1 + 88) = *&v11->pw_uid;
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038518);
    }

    v12 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      v13 = &v53;
      if (v54 < 0)
      {
        v13 = v53;
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136446210;
      *(buf[0].__r_.__value_.__r.__words + 4) = v13;
      _os_log_impl(&dword_1AB607000, v12, OS_LOG_TYPE_FAULT, "could not read user %{public}s uid/gid", buf, 0xCu);
    }

    v14 = sub_1AB60902C();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2038518);
      }

      v15 = &v53;
      if (v54 < 0)
      {
        v15 = v53;
      }

      LODWORD(v55.__r_.__value_.__l.__data_) = 136446210;
      *(v55.__r_.__value_.__r.__words + 4) = v15;
      v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "could not read user %{public}s uid/gid", &v55, 12);
      sub_1AB60C944("Generic", 1, 0, 0, "CLPreferences::CLPreferences(CFStringRef, BOOL, CFStringRef)", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  if (SHIBYTE(v54) < 0)
  {
    sub_1AB60C84C(__dst, v53, *(&v53 + 1));
  }

  else
  {
    *__dst = v53;
    v51 = v54;
  }

  sub_1AB615CEC(__dst, &v52);
  v17 = std::string::append(&v52, "/Library/Preferences/", 0x15uLL);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v55.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v55.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  sub_1AB6195C0(a2, &__p);
  if ((v49 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v49 & 0x80u) == 0)
  {
    v20 = v49;
  }

  else
  {
    v20 = v48;
  }

  v21 = std::string::append(&v55, p_p, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  buf[0].__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&buf[0].__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v46 = 6;
  strcpy(__s, ".plist");
  v23 = std::string::append(buf, __s, 6uLL);
  v24 = v23->__r_.__value_.__r.__words[0];
  v56[0] = v23->__r_.__value_.__l.__size_;
  *(v56 + 7) = *(&v23->__r_.__value_.__r.__words[1] + 7);
  v25 = HIBYTE(v23->__r_.__value_.__r.__words[2]);
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*v9);
  }

  v26 = v56[0];
  *(a1 + 24) = v24;
  *(a1 + 32) = v26;
  *(a1 + 39) = *(v56 + 7);
  *(a1 + 47) = v25;
  if (v46 < 0)
  {
    operator delete(*__s);
  }

  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  if (v49 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v54) < 0)
  {
    sub_1AB60C84C(v43, v53, *(&v53 + 1));
  }

  else
  {
    *v43 = v53;
    v44 = v54;
  }

  sub_1AB615E98(v43, &v52);
  v27 = std::string::append(&v52, "/", 1uLL);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v55.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&v55.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  sub_1AB6195C0(a2, &__p);
  if ((v49 & 0x80u) == 0)
  {
    v29 = &__p;
  }

  else
  {
    v29 = __p;
  }

  if ((v49 & 0x80u) == 0)
  {
    v30 = v49;
  }

  else
  {
    v30 = v48;
  }

  v31 = std::string::append(&v55, v29, v30);
  v32 = *&v31->__r_.__value_.__l.__data_;
  buf[0].__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&buf[0].__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  v46 = 6;
  strcpy(__s, ".plist");
  v33 = std::string::append(buf, __s, 6uLL);
  v34 = v33->__r_.__value_.__r.__words[0];
  v56[0] = v33->__r_.__value_.__l.__size_;
  *(v56 + 7) = *(&v33->__r_.__value_.__r.__words[1] + 7);
  v35 = HIBYTE(v33->__r_.__value_.__r.__words[2]);
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v36 = v56[0];
  *(a1 + 48) = v34;
  *(a1 + 56) = v36;
  *(a1 + 63) = *(v56 + 7);
  *(a1 + 71) = v35;
  if (v46 < 0)
  {
    operator delete(*__s);
  }

  if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf[0].__r_.__value_.__l.__data_);
  }

  if (v49 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  v37 = getpwnam("root");
  v41 = 0;
  if (v37)
  {
    v38 = v37;
    pw_uid = v37->pw_uid;
    if (pw_uid == getuid())
    {
      pw_gid = v38->pw_gid;
      if (pw_gid == getgid())
      {
        v41 = 1;
      }
    }
  }

  *(a1 + 16) = v41;
  sub_1AB60A3A4(a1);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53);
  }

  return a1;
}

void sub_1AB60A21C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  sub_1AB617CE0(v65);
  sub_1AB617CE0(v64);
  if (*(v63 + 71) < 0)
  {
    operator delete(*(v63 + 48));
  }

  if (*(v63 + 47) < 0)
  {
    operator delete(*v66);
  }

  sub_1AB617CE0(v63);
  _Unwind_Resume(a1);
}

BOOL sub_1AB60A3A4(uint64_t a1)
{
  os_unfair_lock_lock(&stru_1EB46D8BC);
  v2 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    if (!*(a1 + 56))
    {
      goto LABEL_7;
    }

    v2 = *v2;
    goto LABEL_6;
  }

  if (*(a1 + 71))
  {
LABEL_6:
    sub_1AB617E8C((a1 + 120), v2);
  }

LABEL_7:
  v3 = CFPreferencesSynchronize(*(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E898]);
  if (*(a1 + 16) == 1)
  {
    sub_1AB60A544(a1, 0);
  }

  os_unfair_lock_unlock(&stru_1EB46D8BC);
  return v3 != 0;
}

void *sub_1AB60A460(uint64_t a1)
{
  *a1 = &unk_1F2037D78;
  CFRelease(*(a1 + 72));
  CFRelease(*(a1 + 80));
  sub_1AB617CE0((a1 + 120));
  sub_1AB617CE0((a1 + 104));
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return sub_1AB617CE0(a1);
}

void sub_1AB60A50C(uint64_t a1)
{
  sub_1AB60A460(a1);

  JUMPOUT(0x1AC5A03A0);
}

void sub_1AB60A544(char *a1, int a2)
{
  v75 = *MEMORY[0x1E69E9840];
  if ((a1[96] & 1) == 0)
  {
    v2 = a1;
    if (!a2)
    {
      goto LABEL_24;
    }

    v3 = a1 + 24;
    v4 = a1[47];
    v5 = a1 + 24;
    if (v4 < 0)
    {
      v5 = *v3;
    }

    if (!stat(v5, &v61) && (v61.st_uid != *(v2 + 22) || v61.st_gid != *(v2 + 23) || (~v61.st_mode & 0x1B6) != 0))
    {
      v6 = 0x1EB46D000;
      if (qword_1EB46D728 != -1)
      {
        goto LABEL_90;
      }

      while (1)
      {
        v7 = off_1EB46D730;
        if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v3;
          if (v2[47] < 0)
          {
            v8 = *v3;
          }

          v9 = *(v2 + 22);
          v10 = *(v2 + 23);
          buf[0].st_dev = 136316674;
          *&buf[0].st_mode = v8;
          WORD2(buf[0].st_ino) = 1024;
          *(&buf[0].st_ino + 6) = v61.st_uid;
          HIWORD(buf[0].st_uid) = 1024;
          buf[0].st_gid = v9;
          LOWORD(buf[0].st_rdev) = 1024;
          *(&buf[0].st_rdev + 2) = v61.st_gid;
          *(&buf[0].st_rdev + 3) = 1024;
          LODWORD(buf[0].st_atimespec.tv_sec) = v10;
          WORD2(buf[0].st_atimespec.tv_sec) = 1024;
          *(&buf[0].st_atimespec.tv_sec + 6) = v61.st_mode;
          WORD1(buf[0].st_atimespec.tv_nsec) = 1024;
          HIDWORD(buf[0].st_atimespec.tv_nsec) = 438;
          _os_log_impl(&dword_1AB607000, v7, OS_LOG_TYPE_DEFAULT, "#Warning %s attributes incorrect (uid %d vs %d, gid %d vs %d, mode 0x%x vs 0x%x, resetting", buf, 0x30u);
        }

        v11 = sub_1AB60902C();
        if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (*(v6 + 229) != -1)
          {
            dispatch_once(&qword_1EB46D728, &unk_1F2038518);
          }

          if (v2[47] < 0)
          {
            v3 = *v3;
          }

          v12 = *(v2 + 22);
          v13 = *(v2 + 23);
          v62 = 136316674;
          v63 = v3;
          v64 = 1024;
          st_uid = v61.st_uid;
          v66 = 1024;
          *v67 = v12;
          *&v67[4] = 1024;
          *&v67[6] = v61.st_gid;
          v68 = 1024;
          v69 = v13;
          v70 = 1024;
          st_mode = v61.st_mode;
          v72 = 1024;
          v73 = 438;
          v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 0, "#Warning %s attributes incorrect (uid %d vs %d, gid %d vs %d, mode 0x%x vs 0x%x, resetting", &v62, 48, v59, v60, v61.st_dev, LODWORD(v61.st_ino), v61.st_uid);
          sub_1AB60C944("Generic", 1, 0, 2, "void CLPreferences::setFileAttributes(BOOL)", "CoreLocation: %s\n", v14);
          if (v14 != buf)
          {
            free(v14);
          }
        }

LABEL_24:
        v15 = (v2 + 24);
        v16 = v2 + 24;
        if (v2[47] < 0)
        {
          v16 = *v15;
        }

        v17 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v16, 0x8000100u);
        if (!v17)
        {
          break;
        }

        v20 = v17;
        v21 = objc_msgSend_pathComponents(v17, v18, v19);
        v26 = objc_msgSend_count(v21, v22, v23) - 1;
        if (v26 < 2)
        {
LABEL_34:
          CFRelease(v20);
          break;
        }

        PathComponent = v20;
        while (1)
        {
          PathComponent = objc_msgSend_stringByDeletingLastPathComponent(PathComponent, v24, v25);
          if ((objc_msgSend_isEqualToString_(PathComponent, v28, @"/var") & 1) == 0 && (objc_msgSend_isEqualToString_(PathComponent, v24, @"/tmp") & 1) == 0)
          {
            v29 = objc_msgSend_fileSystemRepresentation(PathComponent, v24, v25);
            if (!lstat(v29, buf) && (buf[0].st_mode & 0xF000) == 0xA000)
            {
              break;
            }
          }

          if (--v26 <= 1)
          {
            goto LABEL_34;
          }
        }

        if (qword_1EB46D728 != -1)
        {
          dispatch_once(&qword_1EB46D728, &unk_1F2038518);
        }

        v56 = off_1EB46D730;
        v6 = &off_1AB62A000;
        v3 = "assert";
        if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
        {
          buf[0].st_dev = 68289539;
          *&buf[0].st_mode = 0;
          LOWORD(buf[0].st_ino) = 2082;
          *(&buf[0].st_ino + 2) = &unk_1AB62CB23;
          HIWORD(buf[0].st_uid) = 2082;
          *&buf[0].st_gid = "assert";
          *(&buf[0].st_rdev + 2) = 2081;
          *(&buf[0].st_rdev + 6) = "!_parentDirContainsSymLink(cfSettingsFile)";
          _os_log_impl(&dword_1AB607000, v56, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1EB46D728 != -1)
          {
            dispatch_once(&qword_1EB46D728, &unk_1F2038518);
          }
        }

        v57 = off_1EB46D730;
        if (os_signpost_enabled(off_1EB46D730))
        {
          buf[0].st_dev = 68289539;
          *&buf[0].st_mode = 0;
          LOWORD(buf[0].st_ino) = 2082;
          *(&buf[0].st_ino + 2) = &unk_1AB62CB23;
          HIWORD(buf[0].st_uid) = 2082;
          *&buf[0].st_gid = "assert";
          *(&buf[0].st_rdev + 2) = 2081;
          *(&buf[0].st_rdev + 6) = "!_parentDirContainsSymLink(cfSettingsFile)";
          _os_signpost_emit_with_name_impl(&dword_1AB607000, v57, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1EB46D728 != -1)
          {
            dispatch_once(&qword_1EB46D728, &unk_1F2038518);
          }
        }

        v2 = off_1EB46D730;
        if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_INFO))
        {
          buf[0].st_dev = 68289539;
          *&buf[0].st_mode = 0;
          LOWORD(buf[0].st_ino) = 2082;
          *(&buf[0].st_ino + 2) = &unk_1AB62CB23;
          HIWORD(buf[0].st_uid) = 2082;
          *&buf[0].st_gid = "assert";
          *(&buf[0].st_rdev + 2) = 2081;
          *(&buf[0].st_rdev + 6) = "!_parentDirContainsSymLink(cfSettingsFile)";
          _os_log_impl(&dword_1AB607000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/LocationEssentials/Daemon/Shared/Utilities/CLPreferences.mm", 392, "setFileAttributes");
LABEL_90:
        dispatch_once(&qword_1EB46D728, &unk_1F2038518);
      }

      v30 = v2 + 24;
      if (v2[47] < 0)
      {
        v30 = *v15;
      }

      if (!lstat(v30, &v61))
      {
        v31 = v2 + 24;
        if (v2[47] < 0)
        {
          v31 = *v15;
        }

        if (lchmod(v31, 0x1B6u))
        {
          if (qword_1EB46D728 != -1)
          {
            dispatch_once(&qword_1EB46D728, &unk_1F2038518);
          }

          v32 = off_1EB46D730;
          if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
          {
            v33 = v2 + 24;
            if (v2[47] < 0)
            {
              v33 = *v15;
            }

            v34 = *__error();
            v35 = __error();
            v36 = strerror(*v35);
            buf[0].st_dev = 136446722;
            *&buf[0].st_mode = v33;
            WORD2(buf[0].st_ino) = 1026;
            *(&buf[0].st_ino + 6) = v34;
            HIWORD(buf[0].st_uid) = 2082;
            *&buf[0].st_gid = v36;
            _os_log_impl(&dword_1AB607000, v32, OS_LOG_TYPE_FAULT, "could not lchmod %{public}s errno %{public}d (%{public}s)", buf, 0x1Cu);
          }

          v37 = sub_1AB60902C();
          if ((*(v37 + 160) & 0x80000000) == 0 || (*(v37 + 164) & 0x80000000) == 0 || (*(v37 + 168) & 0x80000000) == 0 || *(v37 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EB46D728 != -1)
            {
              dispatch_once(&qword_1EB46D728, &unk_1F2038518);
            }

            v38 = off_1EB46D730;
            v39 = v2 + 24;
            if (v2[47] < 0)
            {
              v39 = *v15;
            }

            v40 = *__error();
            v41 = __error();
            v42 = strerror(*v41);
            v62 = 136446722;
            v63 = v39;
            v64 = 1026;
            st_uid = v40;
            v66 = 2082;
            *v67 = v42;
            LODWORD(v58) = 28;
            v43 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v38, 17, "could not lchmod %{public}s errno %{public}d (%{public}s)", &v62, v58);
            sub_1AB60C944("Generic", 1, 0, 0, "void CLPreferences::setFileAttributes(BOOL)", "CoreLocation: %s\n", v43);
            if (v43 != buf)
            {
              free(v43);
            }
          }
        }

        v44 = v2 + 24;
        if (v2[47] < 0)
        {
          v44 = *v15;
        }

        if (lchown(v44, *(v2 + 22), *(v2 + 23)))
        {
          if (qword_1EB46D728 != -1)
          {
            dispatch_once(&qword_1EB46D728, &unk_1F2038518);
          }

          v45 = off_1EB46D730;
          if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
          {
            v46 = v2 + 24;
            if (v2[47] < 0)
            {
              v46 = *v15;
            }

            v47 = *__error();
            v48 = __error();
            v49 = strerror(*v48);
            buf[0].st_dev = 136446722;
            *&buf[0].st_mode = v46;
            WORD2(buf[0].st_ino) = 1026;
            *(&buf[0].st_ino + 6) = v47;
            HIWORD(buf[0].st_uid) = 2082;
            *&buf[0].st_gid = v49;
            _os_log_impl(&dword_1AB607000, v45, OS_LOG_TYPE_FAULT, "could not lchown %{public}s errno %{public}d (%{public}s)", buf, 0x1Cu);
          }

          v50 = sub_1AB60902C();
          if ((*(v50 + 160) & 0x80000000) == 0 || (*(v50 + 164) & 0x80000000) == 0 || (*(v50 + 168) & 0x80000000) == 0 || *(v50 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EB46D728 != -1)
            {
              dispatch_once(&qword_1EB46D728, &unk_1F2038518);
            }

            v51 = off_1EB46D730;
            if (v2[47] < 0)
            {
              v15 = *v15;
            }

            v52 = *__error();
            v53 = __error();
            v54 = strerror(*v53);
            v62 = 136446722;
            v63 = v15;
            v64 = 1026;
            st_uid = v52;
            v66 = 2082;
            *v67 = v54;
            LODWORD(v58) = 28;
            v55 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v51, 17, "could not lchown %{public}s errno %{public}d (%{public}s)", &v62, v58);
            sub_1AB60C944("Generic", 1, 0, 0, "void CLPreferences::setFileAttributes(BOOL)", "CoreLocation: %s\n", v55);
            if (v55 != buf)
            {
              free(v55);
            }
          }
        }
      }
    }
  }
}

const __CFArray *sub_1AB60AECC(CFStringRef *a1)
{
  v2 = *MEMORY[0x1E695E8B0];
  result = CFPreferencesCopyKeyList(a1[9], a1[10], *MEMORY[0x1E695E8B0]);
  if (result)
  {
    v4 = result;
    CFPreferencesSetMultiple(0, result, a1[9], a1[10], v2);
    CFRelease(v4);
    data = (*a1)[26].data;

    return (data)(a1);
  }

  return result;
}

uint64_t sub_1AB60AF8C(CFStringRef *a1, CFStringRef key)
{
  CFPreferencesSetValue(key, 0, a1[9], a1[10], *MEMORY[0x1E695E8B0]);
  data = (*a1)[26].data;

  return (data)(a1);
}

CFIndex sub_1AB60B010(uint64_t a1)
{
  v1 = CFPreferencesCopyKeyList(*(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Count = CFArrayGetCount(v1);
  CFRelease(v2);
  return Count;
}

CFIndex sub_1AB60B068(uint64_t a1, CFStringRef key)
{
  v2 = CFPreferencesCopyValue(key, *(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(v3);
  }

  else
  {
    Count = 1;
  }

  CFRelease(v3);
  return Count;
}

uint64_t sub_1AB60B0E4()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1EB46D728 != -1)
  {
    dispatch_once(&qword_1EB46D728, &unk_1F2038518);
  }

  v0 = off_1EB46D730;
  if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AB607000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_1AB60902C();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038518);
    }

    v4[0] = 0;
    v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "***not supported***", v4, 2);
    sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLPreferences::serialize(CFDataRef *) const", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  return 0;
}

uint64_t sub_1AB60B284()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1EB46D728 != -1)
  {
    dispatch_once(&qword_1EB46D728, &unk_1F2038518);
  }

  v0 = off_1EB46D730;
  if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AB607000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_1AB60902C();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038518);
    }

    v4[0] = 0;
    v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "***not supported***", v4, 2);
    sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLPreferences::serializeBinary(CFDataRef *) const", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  return 0;
}

uint64_t sub_1AB60B424()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1EB46D728 != -1)
  {
    dispatch_once(&qword_1EB46D728, &unk_1F2038518);
  }

  v0 = off_1EB46D730;
  if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AB607000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_1AB60902C();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038518);
    }

    v4[0] = 0;
    v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "***not supported***", v4, 2);
    sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLPreferences::deserialize(const CFDataRef)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  return 0;
}

void sub_1AB60B5C4(const __CFString *a1, uint64_t a2)
{
  cf = 0;
  if ((*(*a2 + 912))(a2, a1, &cf))
  {
    sub_1AB623B68(a1, cf);
    CFRelease(cf);
  }
}

void sub_1AB60B644(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EB46D738 != -1)
  {
    dispatch_once(&qword_1EB46D738, &unk_1F2038538);
  }

  if (os_log_type_enabled(qword_1EB46D740, OS_LOG_TYPE_DEBUG))
  {
    os_unfair_lock_lock(&stru_1EB46D8BC);
    if ((*(*(a1 + 120) + 856))(a1 + 120) >= 1)
    {
      sub_1AB62348C(a1 + 120);
    }

    os_unfair_lock_unlock(&stru_1EB46D8BC);
    v2 = CFPreferencesCopyKeyList(*(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
    v3 = v2;
    if (v2 && CFArrayGetCount(v2))
    {
      v13.length = CFArrayGetCount(v3);
      v13.location = 0;
      CFArrayApplyFunction(v3, v13, sub_1AB60B5C4, a1);
      CFRelease(v3);
      v5 = *(a1 + 104);
      v4 = a1 + 104;
      if ((*(v5 + 856))(v4) >= 1)
      {

        sub_1AB62348C(v4);
      }
    }

    else
    {
      if (qword_1EB46D738 != -1)
      {
        dispatch_once(&qword_1EB46D738, &unk_1F2038538);
      }

      v6 = qword_1EB46D740;
      if (os_log_type_enabled(qword_1EB46D740, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1AB607000, v6, OS_LOG_TYPE_DEBUG, "\t<empty>", buf, 2u);
      }

      v7 = sub_1AB60902C();
      if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EB46D738 != -1)
        {
          dispatch_once(&qword_1EB46D738, &unk_1F2038538);
        }

        v9[0] = 0;
        v8 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, qword_1EB46D740, 2, "\t<empty>", v9, 2);
        sub_1AB60C944("Generic", 1, 0, 2, "virtual void CLPreferences::print() const", "CoreLocation: %s\n", v8);
        if (v8 != buf)
        {
          free(v8);
        }
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }
  }
}

void sub_1AB60B994()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1EB46D728 != -1)
  {
    dispatch_once(&qword_1EB46D728, &unk_1F2038518);
  }

  v0 = off_1EB46D730;
  if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AB607000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_1AB60902C();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038518);
    }

    v3[0] = 0;
    v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "***not supported***", v3, 2);
    sub_1AB60C944("Generic", 1, 0, 0, "virtual void CLPreferences::merge(const CLPreferences &, BOOL)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }
}

uint64_t sub_1AB60BB30()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1EB46D728 != -1)
  {
    dispatch_once(&qword_1EB46D728, &unk_1F2038518);
  }

  v0 = off_1EB46D730;
  if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AB607000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_1AB60902C();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038518);
    }

    v4[0] = 0;
    v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "***not supported***", v4, 2);
    sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLPreferences::loadFromFile(const char *)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  return 0;
}

uint64_t sub_1AB60BCD0()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1EB46D728 != -1)
  {
    dispatch_once(&qword_1EB46D728, &unk_1F2038518);
  }

  v0 = off_1EB46D730;
  if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AB607000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_1AB60902C();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038518);
    }

    v4[0] = 0;
    v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "***not supported***", v4, 2);
    sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLPreferences::saveToFile(const char *) const", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  return 0;
}

uint64_t sub_1AB60BE70()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1EB46D728 != -1)
  {
    dispatch_once(&qword_1EB46D728, &unk_1F2038518);
  }

  v0 = off_1EB46D730;
  if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AB607000, v0, OS_LOG_TYPE_FAULT, "***not supported***", buf, 2u);
  }

  v1 = sub_1AB60902C();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038518);
    }

    v4[0] = 0;
    v2 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "***not supported***", v4, 2);
    sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLPreferences::saveToBinaryFile(const char *) const", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  return 0;
}

void sub_1AB60C010(uint64_t a1, CFStringRef key, CFPropertyListRef value)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96) == 1)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038518);
    }

    v5 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      v6 = v26;
      sub_1AB6195C0(key, v26);
      if (v29 < 0)
      {
        v6 = *v26;
      }

      sub_1AB6195C0(*(a1 + 72), v24);
      v7 = v25;
      v8 = v24[0];
      sub_1AB6195C0(*(a1 + 80), __p);
      v9 = v24;
      if (v7 < 0)
      {
        v9 = v8;
      }

      if (v23 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 136446722;
      v32 = v6;
      v33 = 2082;
      v34 = v9;
      v35 = 2082;
      v36 = v10;
      _os_log_impl(&dword_1AB607000, v5, OS_LOG_TYPE_FAULT, "Attempt to set key %{public}s for read-only preferences %{public}s/%{public}s!", buf, 0x20u);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      if (SHIBYTE(v29) < 0)
      {
        operator delete(*v26);
      }
    }

    v11 = sub_1AB60902C();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2038518);
      }

      v12 = off_1EB46D730;
      sub_1AB6195C0(key, v24);
      if (v25 >= 0)
      {
        v13 = v24;
      }

      else
      {
        v13 = v24[0];
      }

      sub_1AB6195C0(*(a1 + 72), __p);
      v14 = v23;
      v15 = __p[0];
      sub_1AB6195C0(*(a1 + 80), v20);
      v16 = __p;
      if (v14 < 0)
      {
        v16 = v15;
      }

      if (v21 >= 0)
      {
        v17 = v20;
      }

      else
      {
        v17 = v20[0];
      }

      *v26 = 136446722;
      *&v26[4] = v13;
      v27 = 2082;
      v28 = v16;
      v29 = 2082;
      v30 = v17;
      v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v12, 17, "Attempt to set key %{public}s for read-only preferences %{public}s/%{public}s!", v26, 32);
      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }

      sub_1AB60C944("Generic", 1, 0, 0, "virtual void CLPreferences::setInternal(const CFStringRef, const CFTypeRef)", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  else
  {
    CFPreferencesSetValue(key, value, *(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
    v19 = *(*a1 + 848);

    v19(a1);
  }
}

void sub_1AB60C3D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1AB60C440(uint64_t a1, const __CFString *a2, void *a3)
{
  os_unfair_lock_lock(&stru_1EB46D8BC);
  v6 = sub_1AB61E56C(a1 + 120, a2, a3);
  os_unfair_lock_unlock(&stru_1EB46D8BC);
  if (v6)
  {
    return 1;
  }

  v7 = CFPreferencesCopyValue(a2, *(a1 + 72), *(a1 + 80), *MEMORY[0x1E695E8B0]);
  *a3 = v7;
  if (v7)
  {
    return 1;
  }

  return sub_1AB61E56C(a1 + 104, a2, a3);
}

void sub_1AB60C50C()
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EB46D728 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = &unk_1AB62CB23;
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(&dword_1AB607000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2038518);
      }
    }

    v1 = off_1EB46D730;
    if (os_signpost_enabled(off_1EB46D730))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = &unk_1AB62CB23;
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(&dword_1AB607000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2038518);
      }
    }

    v2 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = &unk_1AB62CB23;
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(&dword_1AB607000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/LocationEssentials/Daemon/Shared/Utilities/CLPreferences.mm", 329, "containsInternal");
LABEL_11:
    dispatch_once(&qword_1EB46D728, &unk_1F2038518);
  }
}

void sub_1AB60C73C(void *a1)
{
  sub_1AB617CE0(a1);

  JUMPOUT(0x1AC5A03A0);
}

os_log_t sub_1AB60C774()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1EB46D730 = result;
  return result;
}

void sub_1AB60C7BC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1AB60C818(exception, a1);
  __cxa_throw(exception, off_1E79520B0, MEMORY[0x1E69E5278]);
}

std::logic_error *sub_1AB60C818(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void *sub_1AB60C84C(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_1AB60C7A4();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

os_log_t sub_1AB60C8F0()
{
  result = os_log_create("com.apple.locationd.Legacy", "Direct_deprecated");
  qword_1EB46D740 = result;
  return result;
}

const char *sub_1AB60C920(unsigned int a1)
{
  if (a1 > 5)
  {
    return "NONE";
  }

  else
  {
    return off_1E79520D8[a1];
  }
}

uint64_t sub_1AB60C944(const char *a1, uint64_t a2, int a3, uint64_t a4, const char *a5, char *a6, ...)
{
  va_start(va, a6);
  v8 = a4;
  v10 = a2;
  v12 = sub_1AB60902C();
  if (a3)
  {
    return sub_1AB60EC50(v12, a1, v10, v8, a5, a6, va);
  }

  else
  {
    return sub_1AB60E2AC(v12, a1, v10, v8, a5, a6, va);
  }
}

uint64_t sub_1AB60C9C4(float32x4_t *a1, float a2, float a3, float a4, float a5)
{
  v28 = *MEMORY[0x1E69E9840];
  if (sub_1AB60CFC8(0, &unk_1EB46D748, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0.0))
  {
    if (qword_1EB46D6F8 != -1)
    {
      dispatch_once(&qword_1EB46D6F8, &unk_1F2038558);
    }

    v10 = qword_1EB46D700;
    if (os_log_type_enabled(qword_1EB46D700, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1AB607000, v10, OS_LOG_TYPE_DEBUG, "WMM initialization encountered an error", buf, 2u);
    }

    v11 = sub_1AB60902C();
    if (*(v11 + 160) <= 1 && *(v11 + 164) <= 1 && *(v11 + 168) <= 1 && !*(v11 + 152))
    {
      return 0xFFFFFFFFLL;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EB46D6F8 != -1)
    {
      dispatch_once(&qword_1EB46D6F8, &unk_1F2038558);
    }

    LOWORD(v26) = 0;
    v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, qword_1EB46D700, 2, "WMM initialization encountered an error", &v26, 2);
LABEL_25:
    v15 = v12;
    sub_1AB60C944("Generic", 1, 0, 2, "int declinationCalc(const float, const float, const float, const float, GeomagneticData *)", "CoreLocation: %s\n", v12);
    if (v15 != buf)
    {
      free(v15);
    }

    return 0xFFFFFFFFLL;
  }

  *&qword_1ED4B6E80 = a2;
  *(&qword_1ED4B6E80 + 1) = a3;
  *&dword_1ED4B6E88 = a4 / 1000.0;
  dword_1ED4B6E8C = LODWORD(a5);
  if (sub_1AB60CFC8(1, 0, &qword_1ED4B6E90, &qword_1ED4B6E90 + 1, &dword_1ED4B6E98, algn_1ED4B6E9C, a4 / 1000.0, a2, a3, a5))
  {
    if (qword_1EB46D6F8 != -1)
    {
      dispatch_once(&qword_1EB46D6F8, &unk_1F2038558);
    }

    v13 = qword_1EB46D700;
    if (os_log_type_enabled(qword_1EB46D700, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1AB607000, v13, OS_LOG_TYPE_DEBUG, "WMM evaluation encountered an error", buf, 2u);
    }

    v14 = sub_1AB60902C();
    if (*(v14 + 160) <= 1 && *(v14 + 164) <= 1 && *(v14 + 168) <= 1 && !*(v14 + 152))
    {
      return 0xFFFFFFFFLL;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EB46D6F8 != -1)
    {
      dispatch_once(&qword_1EB46D6F8, &unk_1F2038558);
    }

    LOWORD(v26) = 0;
    v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, qword_1EB46D700, 2, "WMM evaluation encountered an error", &v26, 2);
    goto LABEL_25;
  }

  qword_1ED4B6EA0 = qword_1ED4B6E90;
  dword_1ED4B6EA8 = dword_1ED4B6E98;
  *&dword_1ED4B6E8C = *&dword_1ED4B6E8C + 1.0;
  sub_1AB60CFC8(1, 0, &qword_1ED4B6E90, &qword_1ED4B6E90 + 1, &dword_1ED4B6E98, algn_1ED4B6E9C, *&dword_1ED4B6E88, *&qword_1ED4B6E80, *(&qword_1ED4B6E80 + 1), *&dword_1ED4B6E8C);
  v25 = *&dword_1ED4B6EA8;
  v17 = *&qword_1ED4B6EA0;
  v19 = __sincosf_stret(*&qword_1ED4B6EA0 * 0.017453);
  cosval = v19.__cosval;
  LODWORD(v24) = *&v19;
  v20 = HIDWORD(qword_1ED4B6EA0);
  v21 = __sincosf_stret(*(&qword_1ED4B6EA0 + 1) * 0.017453);
  if ((v25 * v21.__cosval) < 100.0)
  {
    v17 = log(-1.0);
    *&qword_1ED4B6EA0 = v17;
  }

  if (90.0 - fabsf(*&qword_1ED4B6E80) <= 0.001)
  {
    v17 = log(-1.0);
    *&qword_1ED4B6EA0 = v17;
    v23 = v17;
    v22.f32[0] = v17;
  }

  else
  {
    v22.f32[0] = v25 * (cosval * v21.__cosval);
    v23 = v25 * (v24 * v21.__cosval);
  }

  result = 0;
  v22.f32[1] = v23;
  v22.f32[2] = v25 * v21.__sinval;
  v22.f32[3] = v25;
  *a1 = vdivq_f32(v22, vdupq_n_s32(0x447A0000u));
  a1[1].f32[0] = (v25 * v21.__cosval) / 1000.0;
  a1[1].f32[1] = v17;
  a1[1].i32[2] = v20;
  return result;
}

uint64_t sub_1AB60CFC8(int a1, int *a2, float *a3, float *a4, float *a5, float *a6, float a7, float a8, float a9, float a10)
{
  v152 = *MEMORY[0x1E69E9840];
  if (a1 == 1)
  {
    v18 = a10 - *&dword_1ED4B6ED0;
    v19 = *&dword_1ED4B6EE4;
    if (*&dword_1ED4B6EE4 < 0.0 && v18 < 0.0)
    {
      if (qword_1EB46D6F8 != -1)
      {
        dispatch_once(&qword_1EB46D6F8, &unk_1F2038558);
      }

      v20 = qword_1EB46D700;
      v21 = a10;
      if (os_log_type_enabled(qword_1EB46D700, OS_LOG_TYPE_INFO))
      {
        *buf = 134349312;
        v149 = *&v21;
        v150 = 2050;
        v151 = *&dword_1ED4B6ED0;
        _os_log_impl(&dword_1AB607000, v20, OS_LOG_TYPE_INFO, "supplied date (%{public}f) outside valid range (epoch=%{public}f)", buf, 0x16u);
      }

      v22 = sub_1AB60902C();
      if (*(v22 + 160) <= 1 && *(v22 + 164) <= 1 && *(v22 + 168) <= 1 && !*(v22 + 152))
      {
        return 1;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EB46D6F8 != -1)
      {
        dispatch_once(&qword_1EB46D6F8, &unk_1F2038558);
      }

      v144 = 134349312;
      v145 = *&v21;
      v146 = 2050;
      v147 = *&dword_1ED4B6ED0;
      v23 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, qword_1EB46D700, 1, "supplied date (%{public}f) outside valid range (epoch=%{public}f)", &v144, 22);
LABEL_138:
      v138 = v23;
      sub_1AB60C944("Generic", 1, 0, 2, "int E0000(int, int *, float, float, float, float, float *, float *, float *, float *)", "CoreLocation: %s\n", v23);
      if (v138 != buf)
      {
        free(v138);
      }

      return 1;
    }

    v54 = __sincosf_stret(a9 * 0.017453);
    sinval = v54.__sinval;
    cosval = v54.__cosval;
    dword_1ED4B6F14 = LODWORD(v54.__sinval);
    dword_1ED4B6F48 = LODWORD(v54.__cosval);
    v57 = *&dword_1ED4B6EEC != a8 || *&dword_1ED4B6EE8 != a7;
    if (v57)
    {
      v58 = __sincosf_stret(a8 * 0.017453);
      v59 = sqrtf(*&dword_1ED4B6EBC - (*&dword_1ED4B6EC4 * (v58.__sinval * v58.__sinval)));
      v60 = (*&dword_1ED4B6EBC + (v59 * a7)) / (flt_1ED4B6EC0 + (v59 * a7));
      *&v61 = v58.__sinval / sqrtf((v58.__sinval * v58.__sinval) + ((v60 * v60) * (v58.__cosval * v58.__cosval)));
      *&v62 = sqrt(1.0 - (*&v61 * *&v61));
      dword_1ED4B6EF4 = v61;
      dword_1ED4B6EF8 = v62;
      v63 = (a7 * a7) + (v59 * a7) * 2.0 + ((flt_1ED4B6EC8 - (*&dword_1ED4B6ECC * (v58.__sinval * v58.__sinval))) / (v59 * v59));
      v64 = sqrtf(((v58.__sinval * v58.__sinval) * flt_1ED4B6EC0) + (*&dword_1ED4B6EBC * (v58.__cosval * v58.__cosval)));
      dword_1ED4B6EFC = sqrtf(v63);
      *&dword_1ED4B6F00 = (v64 + a7) / *&dword_1ED4B6EFC;
      *&dword_1ED4B6F04 = (v58.__sinval * (v58.__cosval * *&dword_1ED4B6EC4)) / (v64 * *&dword_1ED4B6EFC);
    }

    v65 = dword_1ED4B6EAC;
    if (*&dword_1ED4B6EF0 != a9)
    {
      if (dword_1ED4B6EAC >= 2)
      {
        v66 = dword_1ED4B6EAC + 1;
        v76 = dword_1ED4B6EAC - 1;
        v77 = &dword_1ED4B6F4C;
        v78 = v54.__sinval;
        do
        {
          v79 = *&dword_1ED4B6F48;
          v80 = (sinval * *&dword_1ED4B6F48) + (v78 * cosval);
          *(v77 - 13) = v80;
          v78 = *&dword_1ED4B6F14;
          cosval = (v79 * cosval) - (*&dword_1ED4B6F14 * sinval);
          *v77++ = cosval;
          sinval = v80;
          --v76;
        }

        while (v76);
      }

      else
      {
        v66 = 2;
      }

      dword_1ED4B6EB4 = v66;
    }

    v81 = *&dword_1ED4B6EF8;
    if (v65 >= 1)
    {
      v140 = a3;
      v141 = a6;
      v82 = 0;
      v83 = 0;
      v84 = *&dword_1ED4B6EB8 / *&dword_1ED4B6EFC;
      v85 = v84 * v84;
      v86 = *&dword_1ED4B6EF4;
      v87 = -*&dword_1ED4B6EF8;
      v88 = *&dword_1ED4B6F44;
      v89 = dword_1ED4B6FE0[0];
      v90 = (v65 + 1);
      v91 = *&dword_1ED4B6F10;
      v92 = 3;
      v93 = 1;
      v94 = 0.0;
      v95 = 0x4BCu;
      v96 = &qword_1ED4B6E80;
      v97 = 0.0;
      v98 = 0.0;
      v99 = 0.0;
      v142 = v90;
      while (1)
      {
        v100 = 0;
        v101 = -(v84 * v85);
        v85 = v84 * v85;
        v143 = v93 + 1;
        v102 = &qword_1ED4B6E80 + v93;
        v103 = (v102 + 798);
        v104 = v102[62];
        v105 = v93 - 2;
        v106 = (v102 + 797);
        v107 = v93 - 1;
        v108 = -13;
        v109 = v95;
        v110 = v83;
        v111 = v92;
        do
        {
          v112 = &qword_1ED4B6E80 + v100;
          if (v57)
          {
            if (v82 + 1 == v100)
            {
              *&v103[52 * v93] = v81 * *&v106[52 * v93 - 52];
              *&dword_1ED4B7854[13 * v93 + v93] = (v86 * *&v106[52 * v93 - 52]) + (v81 * *&dword_1ED4B7854[13 * v93 - 14 + v93]);
            }

            else
            {
              if (v93 == 1 && !v100)
              {
                *&dword_1ED4B7AFC = v86 * *&dword_1ED4B7AF8;
                *&dword_1ED4B7858 = (*&dword_1ED4B7AF8 * v87) + (v86 * *(&qword_1ED4B6E80 + v107 + 629));
                if (v19 == a10)
                {
LABEL_84:
                  v115 = v85 * *(&qword_1ED4B6E80 + v110 + 3196);
LABEL_85:
                  v120 = v102[460];
                  v118 = v88 * v120;
                  v119 = v91 * v120;
                  goto LABEL_86;
                }

LABEL_76:
                v113 = *(&qword_1ED4B6E80 + v110 + 492) + (v18 * *(&qword_1ED4B6E80 + v110 + 1168));
                *(&qword_1ED4B6E80 + v110 + 1844) = v113;
                if (!v100)
                {
                  goto LABEL_84;
                }

                v114 = *(v96 + v100 + 134) + (v18 * *(&qword_1ED4B6E80 + v109));
                *(&qword_1ED4B6E80 + v109 + 676) = v114;
                v115 = v85 * *(&qword_1ED4B6E80 + v110 + 3196);
                goto LABEL_80;
              }

              if (v93 >= 2)
              {
                if (v100 <= v105)
                {
                  v126 = *(&qword_1ED4B6E80 + v110 + 2512);
                  v124 = v108 + 13;
                }

                else
                {
                  v124 = 13 * v100;
                  v125 = &qword_1ED4B6E80 + v110;
                  *(v125 + 797) = 0;
                  *(v125 + 628) = 0;
                  v126 = 0.0;
                }

                v127 = *&v106[4 * v124];
                v128 = *(&unk_1EB46D9C0 + v110 + 4);
                *&v103[4 * v124] = (v86 * v127) - (v128 * v102[v124 + 796]);
                *(&qword_1ED4B6E80 + v110 + 2520) = ((v127 * v87) + (v86 * *(&qword_1ED4B6E80 + v110 + 2516))) - (v128 * v126);
              }
            }
          }

          if (v19 != a10)
          {
            goto LABEL_76;
          }

          v115 = v85 * *(&qword_1ED4B6E80 + v110 + 3196);
          if (!v100)
          {
            goto LABEL_85;
          }

          v113 = *(&qword_1ED4B6E80 + v110 + 1844);
          v114 = *(&qword_1ED4B6E80 + v109 + 676);
LABEL_80:
          v116 = v112[49];
          v117 = v112[36];
          v118 = (v114 * v117) + (v113 * v116);
          v119 = (v113 * v117) - (v114 * v116);
LABEL_86:
          v121 = *(&qword_1ED4B6E80 + v110 + 2520);
          v122 = v119 * v112[75];
          if (v81 == 0.0 && v100 == 1)
          {
            if (v93 == 1)
            {
              dword_1ED4B6FE4 = v89;
              v123 = *&v89;
            }

            else
            {
              v123 = (v86 * *&dword_1ED4B6FE0[v107]) - (*(&unk_1EB46D9C0 + v93 + 13) * *&dword_1ED4B6FE0[v105]);
              *&dword_1ED4B6FE0[v93] = v123;
            }

            v99 = v99 + (v122 * (v85 * v123));
          }

          v94 = v94 + ((v118 * v101) * v121);
          v97 = v97 + (v122 * v115);
          ++v100;
          --v111;
          v98 = v98 + ((v104 * v118) * v115);
          v110 += 52;
          v109 += 4;
          v108 += 13;
        }

        while (v111 > 1);
        ++v92;
        v83 += 4;
        v95 += 52;
        v96 = (v96 + 52);
        ++v82;
        v129 = v142;
        ++v93;
        if (v143 == v142)
        {
          dword_1ED4B6EB4 = v100;
          a3 = v140;
          a6 = v141;
          goto LABEL_102;
        }
      }
    }

    v129 = 1;
    v98 = 0.0;
    v94 = 0.0;
    v99 = 0.0;
    v97 = 0.0;
LABEL_102:
    dword_1ED4B6EB0 = v129;
    if (v81 == 0.0)
    {
      v130 = v99;
    }

    else
    {
      v130 = v97 / v81;
    }

    v131 = -(v98 * *&dword_1ED4B6F04) - (v94 * *&dword_1ED4B6F00);
    v132 = (v94 * *&dword_1ED4B6F04) - (v98 * *&dword_1ED4B6F00);
    v133 = sqrtf((v130 * v130) + (v131 * v131));
    *a5 = sqrtf((v132 * v132) + (v133 * v133));
    *a3 = atan2f(v130, v131) / 0.017453;
    *a4 = atan2f(v132, v133) / 0.017453;
    *a6 = -999.0;
    if (fabsf(a8) >= 55.0)
    {
      v134 = -999.0;
      if (a9 >= 0.0 && a8 > 0.0)
      {
        v134 = *a3 - a9;
        *a6 = v134;
      }

      if (a8 > 0.0 && a9 < 0.0)
      {
        v134 = fabsf(a9) + *a3;
        *a6 = v134;
      }

      if (a9 >= 0.0 && a8 < 0.0)
      {
        v134 = *a3 + a9;
        *a6 = v134;
      }

      if (a8 < 0.0 && a9 < 0.0)
      {
        v134 = *a3 - fabsf(a9);
        *a6 = v134;
      }

      if (v134 > 180.0)
      {
        v134 = v134 + -360.0;
LABEL_121:
        if (v134 < -180.0)
        {
          v134 = v134 + 360.0;
        }

        *a6 = v134;
        goto LABEL_124;
      }

      if (v134 < -180.0)
      {
        goto LABEL_121;
      }
    }

LABEL_124:
    result = 0;
    dword_1ED4B6EE4 = LODWORD(a10);
    dword_1ED4B6EE8 = LODWORD(a7);
    dword_1ED4B6EEC = LODWORD(a8);
    dword_1ED4B6EF0 = LODWORD(a9);
    return result;
  }

  v25 = fopen(&xmmword_1EB46D8C0, "r");
  if (!v25)
  {
    if (qword_1EB46D6F8 != -1)
    {
      dispatch_once(&qword_1EB46D6F8, &unk_1F2038558);
    }

    v67 = qword_1EB46D700;
    if (os_log_type_enabled(qword_1EB46D700, OS_LOG_TYPE_INFO))
    {
      v68 = __error();
      v69 = strerror(*v68);
      *buf = 136315394;
      v149 = &xmmword_1EB46D8C0;
      v150 = 2082;
      v151 = *&v69;
      _os_log_impl(&dword_1AB607000, v67, OS_LOG_TYPE_INFO, "could not open geomagnetic data file %s (%{public}s)", buf, 0x16u);
    }

    v70 = sub_1AB60902C();
    if (*(v70 + 160) <= 1 && *(v70 + 164) <= 1 && *(v70 + 168) <= 1 && !*(v70 + 152))
    {
      return 1;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EB46D6F8 != -1)
    {
      dispatch_once(&qword_1EB46D6F8, &unk_1F2038558);
    }

    v71 = qword_1EB46D700;
    v72 = __error();
    v73 = strerror(*v72);
    v144 = 136315394;
    v145 = &xmmword_1EB46D8C0;
    v146 = 2082;
    v147 = *&v73;
    v23 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v71, 1, "could not open geomagnetic data file %s (%{public}s)", &v144, 22);
    goto LABEL_138;
  }

  v26 = v25;
  dword_1ED4B6EAC = *a2;
  dword_1ED4B6F10 = 0;
  dword_1ED4B6FE0[0] = 1065353216;
  dword_1ED4B7AF8 = 1065353216;
  dword_1ED4B6F44 = 1065353216;
  dword_1ED4B7854[0] = 0;
  *&dword_1ED4B6EB8 = 0x4C1B2F2F45C7199ALL;
  *&flt_1ED4B6EC0 = 0x4884FA004C1A253BLL;
  *&flt_1ED4B6EC8 = 0x55A0AD8058BC2457;
  dword_1ED4B7068 = 0;
  dword_1ED4B730C = 0;
  if (!fgets(byte_1ED4B7014, 80, v25))
  {
    fclose(v26);
    if (qword_1EB46D6F8 != -1)
    {
      dispatch_once(&qword_1EB46D6F8, &unk_1F2038558);
    }

    v74 = qword_1EB46D700;
    if (os_log_type_enabled(qword_1EB46D700, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1AB607000, v74, OS_LOG_TYPE_INFO, "geomagnetic data file appears to be empty", buf, 2u);
    }

    v75 = sub_1AB60902C();
    if (*(v75 + 160) <= 1 && *(v75 + 164) <= 1 && *(v75 + 168) <= 1 && !*(v75 + 152))
    {
      return 1;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EB46D6F8 != -1)
    {
      dispatch_once(&qword_1EB46D6F8, &unk_1F2038558);
    }

    LOWORD(v144) = 0;
    v23 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, qword_1EB46D700, 1, "geomagnetic data file appears to be empty", &v144, 2);
    goto LABEL_138;
  }

  sscanf(byte_1ED4B7014, "%f", &dword_1ED4B6ED0);
  if (fgets(byte_1ED4B7014, 80, v26))
  {
    v27 = 0;
    do
    {
      do
      {
        if (!*(&qword_1ED4B6E80 + v27 + 404))
        {
          break;
        }

        *(&dword_1ED4B6F08 + v27) = *(&qword_1ED4B6E80 + v27 + 404);
        ++v27;
        *(&dword_1ED4B6F08 + v27) = 0;
      }

      while (v27 != 4);
      if (!(dword_1ED4B6F08 ^ 0x39393939 | byte_1ED4B6F0C))
      {
        break;
      }

      sscanf(byte_1ED4B7014, "%d%d%f%f%f%f", &dword_1ED4B6EB0, &dword_1ED4B6EB4, &dword_1ED4B6ED4, &dword_1ED4B6ED8, &dword_1ED4B6EDC, &dword_1ED4B6EE0);
      v28 = dword_1ED4B6EB4;
      if (dword_1ED4B6EB4 > 0xC || (v29 = dword_1ED4B6EB0, dword_1ED4B6EB0 >= 0xD))
      {
        fclose(v26);
        if (qword_1EB46D6F8 != -1)
        {
          dispatch_once(&qword_1EB46D6F8, &unk_1F2038558);
        }

        v136 = qword_1EB46D700;
        if (os_log_type_enabled(qword_1EB46D700, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1AB607000, v136, OS_LOG_TYPE_INFO, "geomagnetic data file appears to have invalid dimensions", buf, 2u);
        }

        v137 = sub_1AB60902C();
        if (*(v137 + 160) > 1 || *(v137 + 164) > 1 || *(v137 + 168) > 1 || *(v137 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EB46D6F8 != -1)
          {
            dispatch_once(&qword_1EB46D6F8, &unk_1F2038558);
          }

          LOWORD(v144) = 0;
          LODWORD(v139) = 2;
          v23 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, qword_1EB46D700, 1, "geomagnetic data file appears to have invalid dimensions", &v144, v139);
          goto LABEL_138;
        }

        return 1;
      }

      if (dword_1ED4B6EB4 <= dword_1ED4B6EB0)
      {
        v30 = &qword_1ED4B6E80 + 52 * dword_1ED4B6EB4 + 4 * dword_1ED4B6EB0;
        *(v30 + 122) = dword_1ED4B6ED4;
        *(v30 + 291) = dword_1ED4B6EDC;
        if (v28)
        {
          v31 = &qword_1ED4B6E80 + 52 * v29 + 4 * (v28 - 1);
          *(v31 + 122) = dword_1ED4B6ED8;
          *(v31 + 291) = dword_1ED4B6EE0;
        }
      }

      v32 = fgets(byte_1ED4B7014, 80, v26);
      v27 = 0;
    }

    while (v32);
  }

  dword_1ED4B7AF8 = 1065353216;
  if (dword_1ED4B6EAC < 1)
  {
    LODWORD(v34) = 1;
  }

  else
  {
    v33 = 0;
    v34 = dword_1ED4B6EAC + 1;
    v35 = 1;
    v36 = &qword_1ED4B6E80;
    v37 = &qword_1ED4B6E80;
    v38 = &unk_1EB46D9C4;
    do
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = &qword_1ED4B6E80 + v35;
      v43 = v42 + 798;
      v44 = 2 * v35;
      v45 = 2 * v35 - 1;
      v46 = v35;
      v42[798] = (v42[797] * v45) / v35++;
      v47 = (v45 * (v44 - 3));
      v48 = 2;
      v49 = 3;
      do
      {
        v38[v39] = ((v33 + v41) * (v33 + v40)) / v47;
        if (v39)
        {
          v50 = sqrtf((v48 * (v33 + v40 + 2)) / (v33 + v41 + 1)) * v43[v39 - 13];
          v43[v39] = v50;
          v51 = v37 + v41;
          v51[134] = v50 * v51[134];
          v51[303] = v50 * v51[303];
          v48 = 1;
        }

        v52 = v36 + v39;
        v53 = v52[799];
        v52[123] = v53 * v52[123];
        v52[292] = v53 * v52[292];
        ++v41;
        --v40;
        v39 += 13;
        --v49;
      }

      while (v33 + v49 > 1);
      ++v33;
      v42[62] = v35;
      v42[75] = v46;
      v37 = (v37 + 52);
      v36 = (v36 + 4);
      ++v38;
    }

    while (v35 != v34);
    dword_1ED4B6EB4 = v41;
  }

  dword_1ED4B6EB0 = v34;
  dword_1EB46D9F8 = 0;
  *&dword_1ED4B6EEC = 0xC47A0000C47A0000;
  *&dword_1ED4B6EE4 = 0xC47A0000C47A0000;
  fclose(v26);
  return 0;
}

os_log_t sub_1AB60DF30()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_1EB46D700 = result;
  return result;
}

void *sub_1AB60E078(uint64_t a1)
{
  *a1 = &unk_1F20385A8;
  sub_1AB60E0EC(a1, 0, 0);
  dispatch_release(*(a1 + 208));
  v2 = *(a1 + 224);
  if (v2)
  {
    sub_1AB611794(v2);
  }

  return sub_1AB613B84(a1);
}

uint64_t sub_1AB60E0EC(uint64_t a1, FILE *a2, char a3)
{
  v6 = (a1 + 40);
  (*(*(a1 + 40) + 16))(a1 + 40);
  v7 = v6[18];
  if (v7 != a2)
  {
    *(a1 + 184) = a2;
    if (v7 && *(a1 + 156) == 1)
    {
      fclose(v7);
    }

    *(a1 + 156) = a3;
  }

  return (*(*v6 + 24))(v6);
}

void sub_1AB60E1A0(uint64_t a1)
{
  sub_1AB60E078(a1);

  JUMPOUT(0x1AC5A03A0);
}

uint64_t sub_1AB60E1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9 = a1 + 40;
  (*(*(a1 + 40) + 16))(a1 + 40, a2, a3, a4, a5, a6, a7, a8);
  sub_1AB60E2AC(a1, "Generic", 0, 2, "void CLLog::logHeader()", "%s\n", va, va);
  return (*(*v9 + 24))(v9);
}

void sub_1AB60E298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AB611664(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AB60E2AC(uint64_t a1, const char *a2, int a3, signed int a4, const char *a5, const char *a6, va_list a7, ...)
{
  v80 = *MEMORY[0x1E69E9840];
  v13 = a1 + 40;
  (*(*(a1 + 40) + 16))(a1 + 40);
  v14 = vsnprintf(__str, 0x1FFuLL, a6, a7);
  if ((v14 & 0x80000000) == 0)
  {
    if (v14 >= 0x1FF)
    {
      operator new[]();
    }

    v15 = v14 - 1;
    if (__str[v15] != 10)
    {
      __assert_rtn("vlog", "CLLog.mm", 173, "'\\n' == buffer[fullContentLength - 1]");
    }

    if (v14 >= 2)
    {
      v15 = v15;
      v16 = __str;
      do
      {
        if (*v16 == 10)
        {
          *v16 = 32;
        }

        ++v16;
        --v15;
      }

      while (v15);
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (*(a1 + 152) == 1)
    {
      v18 = *(a1 + 200);
      v19 = sub_1AB60C920(a4);
      fprintf(v18, "%s,%s,Time,%08.3f,Function,%s,", v19, a2, Current, a5);
      fputs(__str, *(a1 + 200));
    }

    else
    {
      v20 = *(a1 + 184);
      if (v20 && *(a1 + 160) >= a4)
      {
        v21 = sub_1AB60C920(a4);
        fprintf(v20, "%s,%s,Time,%08.3f,Function,%s,", v21, a2, Current, a5);
        fputs(__str, *(a1 + 184));
        if (*(a1 + 172) >= a4)
        {
          sub_1AB60EEC4(a1, 3, *(a1 + 184));
        }

        v50[1] = v13;
        (*(*v13 + 16))(v13);
        v51 = 256;
        if (*(a1 + 12) >= 1)
        {
          v22 = *(a1 + 184);
          if (v22)
          {
            v23 = *(a1 + 151);
            if (v23 < 0)
            {
              v23 = *(a1 + 136);
            }

            if (v23)
            {
              v24 = *(a1 + 79);
              if (v24 < 0)
              {
                v24 = *(a1 + 64);
              }

              if (v24)
              {
                v50[0] = 0;
                fgetpos(v22, v50);
                if (v50[0] >= *(a1 + 12))
                {
                  v77 = v13;
                  (*(*v13 + 16))(v13);
                  v78 = 256;
                  sub_1AB60FD88(__p, ".log");
                  v27 = sub_1AB61448C(a1, v25, v26);
                  sub_1AB614120((a1 + 56), a1 + 80, __p, v27, &v76);
                  if (SHIBYTE(v53) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = HIBYTE(v76.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = v76.__r_.__value_.__l.__size_;
                  }

                  v29 = &v74;
                  sub_1AB611708(&v74, size + 4);
                  if (v75 < 0)
                  {
                    v29 = v74;
                  }

                  if (size)
                  {
                    if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v30 = &v76;
                    }

                    else
                    {
                      v30 = v76.__r_.__value_.__r.__words[0];
                    }

                    memmove(v29, v30, size);
                  }

                  strcpy(v29 + size, ".bz2");
                  sub_1AB60FE40(a1);
                  if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v31 = &v76;
                  }

                  else
                  {
                    v31 = v76.__r_.__value_.__r.__words[0];
                  }

                  v32 = getuid();
                  v33 = getgid();
                  sub_1AB611AEC(v31, v32, v33);
                  v35 = (a1 + 128);
                  v36 = (a1 + 128);
                  if (*(a1 + 151) < 0)
                  {
                    v36 = *v35;
                  }

                  if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v37 = &v76;
                  }

                  else
                  {
                    v37 = v76.__r_.__value_.__r.__words[0];
                  }

                  rename(v36, v37, v34);
                  if (v38)
                  {
                    v39 = SHIBYTE(v75);
                    v40 = v74;
                    v41 = __error();
                    v42 = &v74;
                    if (v39 < 0)
                    {
                      v42 = v40;
                    }

                    syslog(3, "%s,%s,Failed to move aside log file %s (%d)\n", "ERROR", "CLLog", v42, *v41);
                  }

                  if (*(a1 + 151) < 0)
                  {
                    v35 = *v35;
                  }

                  sub_1AB60F740(a1, v35);
                  if (*(a1 + 103) < 0)
                  {
                    sub_1AB60C84C(&__dst, *(a1 + 80), *(a1 + 88));
                  }

                  else
                  {
                    __dst = *(a1 + 80);
                    v73 = *(a1 + 96);
                  }

                  if (*(a1 + 79) < 0)
                  {
                    sub_1AB60C84C(&v70, *(a1 + 56), *(a1 + 64));
                  }

                  else
                  {
                    v70 = *(a1 + 56);
                    v71 = *(a1 + 72);
                  }

                  v43 = *(a1 + 16);
                  v68[0] = 0;
                  v68[1] = v68;
                  v68[2] = 0x2020000000;
                  v69 = 0;
                  v62[0] = MEMORY[0x1E69E9820];
                  v62[1] = 3321888768;
                  v62[2] = sub_1AB60FEC0;
                  v62[3] = &unk_1F20385D0;
                  v62[5] = a1;
                  if (SHIBYTE(v73) < 0)
                  {
                    sub_1AB60C84C(&v63, __dst, *(&__dst + 1));
                  }

                  else
                  {
                    v63 = __dst;
                    v64 = v73;
                  }

                  v62[4] = v68;
                  v67 = v43;
                  if (SHIBYTE(v71) < 0)
                  {
                    sub_1AB60C84C(&v65, v70, *(&v70 + 1));
                  }

                  else
                  {
                    v65 = v70;
                    v66 = v71;
                  }

                  v44 = *(a1 + 208);
                  __p[0] = MEMORY[0x1E69E9820];
                  __p[1] = 3321888768;
                  v53 = sub_1AB610298;
                  v54 = &unk_1F2038608;
                  v61 = v43;
                  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_1AB60C84C(&v56, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v56 = v76;
                  }

                  if (SHIBYTE(v75) < 0)
                  {
                    sub_1AB60C84C(&v57, v74, *(&v74 + 1));
                  }

                  else
                  {
                    v57 = v74;
                    v58 = v75;
                  }

                  if (SHIBYTE(v71) < 0)
                  {
                    sub_1AB60C84C(&v59, v70, *(&v70 + 1));
                  }

                  else
                  {
                    v59 = v70;
                    v60 = v71;
                  }

                  v55 = v62;
                  dispatch_async(v44, __p);
                  if (SHIBYTE(v60) < 0)
                  {
                    operator delete(v59);
                  }

                  if (SHIBYTE(v58) < 0)
                  {
                    operator delete(v57);
                  }

                  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v56.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v66) < 0)
                  {
                    operator delete(v65);
                  }

                  if (SHIBYTE(v64) < 0)
                  {
                    operator delete(v63);
                  }

                  _Block_object_dispose(v68, 8);
                  if (SHIBYTE(v71) < 0)
                  {
                    operator delete(v70);
                  }

                  if (SHIBYTE(v73) < 0)
                  {
                    operator delete(__dst);
                  }

                  if (SHIBYTE(v75) < 0)
                  {
                    operator delete(v74);
                  }

                  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v76.__r_.__value_.__l.__data_);
                  }

                  (*(*v13 + 24))(v13);
                }
              }
            }
          }
        }

        (*(*v13 + 24))(v13);
      }

      v45 = *(a1 + 192);
      if (v45 && *(a1 + 164) >= a4)
      {
        v46 = sub_1AB60C920(a4);
        fprintf(v45, "%s,%s,Time,%08.3f,", v46, a2, Current);
        fputs(__str, *(a1 + 192));
      }

      if ((!a3 || *(a1 + 176)) && *(a1 + 168) >= a4)
      {
        if (a4)
        {
          v47 = 5;
        }

        else
        {
          v47 = 3;
        }

        syslog(v47, "%s", __str);
      }
    }
  }

  return (*(*v13 + 24))(v13);
}

void sub_1AB60EAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  _Block_object_dispose(&a63, 8);
  if (a66 < 0)
  {
    operator delete(a65);
  }

  if (a68 < 0)
  {
    operator delete(a67);
  }

  if (a70 < 0)
  {
    operator delete(a69);
  }

  if (a72 < 0)
  {
    operator delete(a71);
  }

  sub_1AB611664(&a73);
  sub_1AB611664(&a20);
  if (v73)
  {
    MEMORY[0x1AC5A0380](v73, 0x1000C8077774924);
  }

  sub_1AB611664(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_1AB60EC50(uint64_t a1, const char *a2, int a3, signed int a4, const char *a5, char *__src, va_list a7)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = strncpy(__dst, __src, 0x65CuLL);
  sub_1AB60ED08(v13, __dst);
  return sub_1AB60E2AC(a1, a2, a3, a4, a5, __dst, a7);
}

BOOL sub_1AB60ED08(int a1, char *__s)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = strlen(__s);
  if (v3 < 1)
  {
    return 1;
  }

  v4 = &__s[v3];
  v5 = __s;
  while (1)
  {
    if (*v5 != 37)
    {
      v11 = v5;
      goto LABEL_17;
    }

    v6 = v5 + 1;
    v7 = v5[1];
    if (v7 == 123)
    {
      break;
    }

LABEL_10:
    v11 = v5 + 1;
    v12 = v5 + 1;
    if (v7 != 64)
    {
      if (v7 != 46)
      {
        goto LABEL_17;
      }

      if (v5[2] != 42)
      {
        goto LABEL_17;
      }

      v12 = v5 + 3;
      if (v5[3] != 80)
      {
        goto LABEL_17;
      }

      *(v5 + 1) = 9572;
    }

    *v12 = 112;
LABEL_17:
    v5 = v11 + 1;
    if (v11 + 1 >= v4)
    {
      return 1;
    }
  }

  if (v6 != v4)
  {
    v8 = 0;
    while (1)
    {
      v9 = &v5[v8 + 2];
      if (v9 == v4)
      {
        break;
      }

      ++v8;
      if (*v9 == 125)
      {
        v10 = &v5[v8];
        memmove(v5, v6, v8 + 1);
        *++v10 = 37;
        v7 = v10[1];
        v5 = v10;
        goto LABEL_10;
      }
    }
  }

  if (qword_1EB46D708 != -1)
  {
    dispatch_once(&qword_1EB46D708, &unk_1F2038680);
  }

  v14 = qword_1EB46D710;
  result = os_log_type_enabled(qword_1EB46D710, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v15 = 136446210;
    v16 = __s;
    _os_log_error_impl(&dword_1AB607000, v14, OS_LOG_TYPE_ERROR, "Failed parse os_log format specifier for shimming:missing closing brace,format,%{public}s", &v15, 0xCu);
    return 0;
  }

  return result;
}

uint64_t sub_1AB60EEC4(uint64_t a1, int a2, FILE *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a1 + 40;
  v5 = *(a1 + 40);
  v12 = a1 + 40;
  (*(v5 + 16))(a1 + 40);
  v13 = 256;
  CFAbsoluteTimeGetCurrent();
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *v14 = 0u;
  v7 = backtrace(v14, 128);
  v8 = a2 + 1;
  if (a2 + 1 < v7)
  {
    v9 = &v14[v8];
    do
    {
      if (dladdr(*v9, &v11))
      {
        if (v11.dli_sname)
        {
          basename(v11.dli_fname);
          fprintf(a3, "%s,%s,Time,%08.3f,%d\t%s\t0x%08lx %s + %lu\n", "STATUS");
        }

        else
        {
          basename(v11.dli_fname);
          fprintf(a3, "%s,%s,Time,%08.3f,%d\t%s\t0x%08lx 0x%08lx + %lu\n", "STATUS");
        }
      }

      else
      {
        fprintf(a3, "%s,%s,Time,%08.3f,%d\t0x%08lx\n");
      }

      ++v8;
      ++v9;
    }

    while (v7 != v8);
  }

  return (*(*v6 + 24))(v6);
}

void sub_1AB60F0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_1AB60A4F4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AB60F118(uint64_t a1, const char *a2, uint64_t a3)
{
  v39[2] = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(*(*(a1 + 48) + 64), a2, a3);
  pthread_self();
  sub_1AB619948(*(a1 + 24), "ShowError", (a1 + 154), 0xFFFFFFFFLL);
  sub_1AB619948(*(a1 + 24), "LogShowUI", (a1 + 155), 0xFFFFFFFFLL);
  sub_1AB61AAA8(*(a1 + 24), "LogFileLevel", (a1 + 160), 0xFFFFFFFFLL);
  sub_1AB61AAA8(*(a1 + 24), "LogBufferLevel", (a1 + 164), 0xFFFFFFFFLL);
  sub_1AB61AAA8(*(a1 + 24), "LogConsoleLevel", (a1 + 168), 0xFFFFFFFFLL);
  sub_1AB61AAA8(*(a1 + 24), "LogStackLevel", (a1 + 172), 0xFFFFFFFFLL);
  sub_1AB61B67C(*(a1 + 24), "LogFileDirectory", (a1 + 56), 0xFFFFFFFFLL);
  sub_1AB61B67C(*(a1 + 24), "LogFilePrefix", (a1 + 80), 0xFFFFFFFFLL);
  sub_1AB619948(*(a1 + 24), "LogFileFlush", (a1 + 157), 0xFFFFFFFFLL);
  sub_1AB619948(*(a1 + 24), "LogFence", (a1 + 153), 0xFFFFFFFFLL);
  v38 = 0;
  sub_1AB61AAA8(*(a1 + 24), "LogBufferSize", &v38, 0xFFFFFFFFLL);
  if ((*(a1 + 160) & 0x80000000) != 0)
  {
    sub_1AB60E0EC(a1, 0, 0);
    goto LABEL_75;
  }

  v4 = *(a1 + 184);
  memset(&__p, 0, sizeof(__p));
  if (!sub_1AB61B67C(*(a1 + 24), "LogFile", &__p, 0xFFFFFFFFLL))
  {
    goto LABEL_6;
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
LABEL_6:
    v6 = *(a1 + 79);
    if (v6 < 0)
    {
      if (!*(a1 + 64))
      {
        goto LABEL_43;
      }
    }

    else if (!*(a1 + 79))
    {
      goto LABEL_43;
    }

    if ((*(a1 + 103) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 88))
      {
        goto LABEL_43;
      }
    }

    else if (!*(a1 + 103))
    {
      goto LABEL_43;
    }

    if (v6 >= 0)
    {
      v7 = *(a1 + 79);
    }

    else
    {
      v7 = *(a1 + 64);
    }

    v8 = &v35;
    sub_1AB611708(&v35, v7 + 1);
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v35.__r_.__value_.__r.__words[0];
    }

    if (v7)
    {
      if (*(a1 + 79) >= 0)
      {
        v9 = (a1 + 56);
      }

      else
      {
        v9 = *(a1 + 56);
      }

      memmove(v8, v9, v7);
    }

    *(&v8->__r_.__value_.__l.__data_ + v7) = 47;
    v10 = *(a1 + 103);
    if (v10 >= 0)
    {
      v11 = (a1 + 80);
    }

    else
    {
      v11 = *(a1 + 80);
    }

    if (v10 >= 0)
    {
      v12 = *(a1 + 103);
    }

    else
    {
      v12 = *(a1 + 88);
    }

    v13 = std::string::append(&v35, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = *(a1 + 127);
    if (v15 >= 0)
    {
      v16 = (a1 + 104);
    }

    else
    {
      v16 = *(a1 + 104);
    }

    if (v15 >= 0)
    {
      v17 = *(a1 + 127);
    }

    else
    {
      v17 = *(a1 + 112);
    }

    v18 = std::string::append(&v36, v16, v17);
    v19 = v18->__r_.__value_.__r.__words[0];
    v39[0] = v18->__r_.__value_.__l.__size_;
    *(v39 + 7) = *(&v18->__r_.__value_.__r.__words[1] + 7);
    v20 = HIBYTE(v18->__r_.__value_.__r.__words[2]);
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v19;
    __p.__r_.__value_.__l.__size_ = v39[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v39 + 7);
    *(&__p.__r_.__value_.__s + 23) = v20;
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }
  }

LABEL_43:
  v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = __p.__r_.__value_.__l.__size_;
  }

  if (v22)
  {
    if (v4)
    {
      v23 = *(a1 + 151);
      v24 = v23;
      if ((v23 & 0x80u) != 0)
      {
        v23 = *(a1 + 136);
      }

      v25 = __p.__r_.__value_.__r.__words[0];
      if (v22 == v23)
      {
        v26 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v27 = v24 >= 0 ? (a1 + 128) : *(a1 + 128);
        if (!memcmp(v26, v27, v22))
        {
          goto LABEL_67;
        }
      }
    }

    else
    {
      v25 = __p.__r_.__value_.__r.__words[0];
    }

    if (v21 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = v25;
    }

    sub_1AB60F740(a1, p_p);
    if (!v4)
    {
      v29 = *(a1 + 216);
      if (v29)
      {
        sub_1AB615BB4(v29, *(a1 + 184));
      }
    }

LABEL_67:
    sub_1AB60FCE8(a1, *(a1 + 157));
    v30 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v30 = __p.__r_.__value_.__r.__words[0];
    }

    if (*(a1 + 157))
    {
      v31 = " and flushing immediately";
    }

    else
    {
      v31 = " no flush";
    }

    syslog(5, "%s,%s,logging locations to %s%s\n", "NOTICE", "CLLog", v30, v31);
    goto LABEL_73;
  }

  sub_1AB60E0EC(a1, 0, 0);
LABEL_73:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_75:
  if ((*(a1 + 164) & 0x80000000) != 0 || (v32 = v38, v38 < 1))
  {
    v34 = *(a1 + 224);
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    if (v34)
    {
      sub_1AB611794(v34);
    }

    *(a1 + 192) = 0;
  }

  else
  {
    if (v38 > 0xA00000)
    {
      v32 = 10485760;
      v38 = 10485760;
    }

    v33 = *(a1 + 216);
    if (!v33 || *(v33 + 16) != v32)
    {
      operator new();
    }

    *(a1 + 192) = sub_1AB615940(v33);
    syslog(5, "%s,%s,logging locations to an internal buffer with capacity %d\n", "NOTICE", "CLLog", v38);
  }
}

void sub_1AB60F6B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AB60F740(uint64_t a1, char *a2)
{
  *&v69[1526] = *MEMORY[0x1E69E9840];
  v4 = a1 + 40;
  (*(*(a1 + 40) + 16))(a1 + 40);
  if (a2)
  {
    v5 = getuid();
    v6 = getgid();
    sub_1AB611AEC(a2, v5, v6);
    v7 = fopen(a2, "a");
    if (v7)
    {
      sub_1AB61161C((a1 + 128), a2);
      sub_1AB60E0EC(a1, v7, 1);
      sub_1AB60FCE8(a1, *(a1 + 157));
      v8 = *(a1 + 184);
      if (v8)
      {
        sub_1AB612F6C(v8);
      }

      sub_1AB616634();
      sub_1AB616D58(__p);
      if (__p[23] >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      sub_1AB60FD88(&v64, v9);
      if (__p[23] < 0)
      {
        operator delete(*__p);
      }

      v10 = v66;
      v11 = v66;
      if (v66 < 0)
      {
        v10 = v65;
      }

      if (!v10)
      {
        if (v66 < 0)
        {
          v65 = 10;
          v12 = v64;
        }

        else
        {
          v66 = 10;
          v12 = &v64;
        }

        strcpy(v12, "Unplugged!");
        v11 = v66;
      }

      bzero(__p, 0x65CuLL);
      v14 = &v64;
      if (v11 < 0)
      {
        v14 = v64;
      }

      snprintf(__p, 0x65CuLL, "CoreLocation-%s\n", v14);
      sub_1AB60E1D8(a1, v15, 0, v16, v17, v18, v19, v20, __p);
      bzero(__p, 0x65CuLL);
      snprintf(__p, 0x65CuLL, "locationd was compiled on %s at %s\n", "Oct 22 2025", "21:21:33");
      sub_1AB60E1D8(a1, v21, 0, v22, v23, v24, v25, v26, __p);
      bufsize = 1024;
      if (_NSGetExecutablePath(buf, &bufsize))
      {
        bzero(__p, 0x65CuLL);
        v27 = sub_1AB616634();
        v28 = v61;
        sub_1AB616B60(v27, v61);
        if (v62 < 0)
        {
          v28 = v61[0];
        }

        sub_1AB616634();
        sub_1AB6166E4(v59);
        if (v60 >= 0)
        {
          v29 = v59;
        }

        else
        {
          v29 = v59[0];
        }

        snprintf(__p, 0x65CuLL, "/usr/libexec/locationd @ system model %s / version %s\n", v28, v29);
        if (v60 < 0)
        {
          operator delete(v59[0]);
        }

        if (v62 < 0)
        {
          operator delete(v61[0]);
        }
      }

      else
      {
        bzero(__p, 0x65CuLL);
        v36 = sub_1AB616634();
        v37 = v61;
        sub_1AB616B60(v36, v61);
        if (v62 < 0)
        {
          v37 = v61[0];
        }

        sub_1AB616634();
        sub_1AB6166E4(v59);
        if (v60 >= 0)
        {
          v38 = v59;
        }

        else
        {
          v38 = v59[0];
        }

        snprintf(__p, 0x65CuLL, "%s @ system model %s / version %s\n", buf, v37, v38);
        if (v60 < 0)
        {
          operator delete(v59[0]);
        }

        if (v62 < 0)
        {
          operator delete(v61[0]);
        }
      }

      sub_1AB60E1D8(a1, v30, 0, v31, v32, v33, v34, v35, __p);
      bzero(__p, 0x65CuLL);
      sub_1AB616634();
      sub_1AB616FB8(v61);
      if (v62 >= 0)
      {
        v39 = v61;
      }

      else
      {
        v39 = v61[0];
      }

      snprintf(__p, 0x65CuLL, "IOPlatformSerialNumber: %s\n", v39);
      if (v62 < 0)
      {
        operator delete(v61[0]);
      }

      sub_1AB60E1D8(a1, v40, 0, v41, v42, v43, v44, v45, __p);
      bzero(v69, 0x5EAuLL);
      strcpy(__p, "Begin settings dump (read at construction of CLSettings or upon darwin notification 'com.apple.locationd/prefs')\n");
      sub_1AB60E1D8(a1, v46, 0, v47, v48, v49, v50, v51, __p);
      (*(**(a1 + 24) + 792))(*(a1 + 24));
      bzero(&__p[19], 0x649uLL);
      strcpy(__p, "End settings dump\n");
      sub_1AB60E1D8(a1, v52, 0, v53, v54, v55, v56, v57, __p);
      if (v66 < 0)
      {
        operator delete(v64);
      }
    }

    else
    {
      v13 = __error();
      syslog(3, "%s,%s,could not open locations log %s, errno %d\n", "ERROR", "CLLog", a2, *v13);
    }
  }

  return (*(*v4 + 24))(v4);
}

void sub_1AB60FC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_1AB611664(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1AB60FCE8(uint64_t a1, int a2)
{
  v3 = a1 + 40;
  (*(*(a1 + 40) + 16))(a1 + 40);
  *(v3 + 117) = a2 != 0;
  v4 = *(v3 + 144);
  if (v4)
  {
    setvbuf(v4, 0, a2 != 0, 0);
  }

  return (*(*v3 + 24))(v3);
}

void *sub_1AB60FD88(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AB60C7A4();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

uint64_t sub_1AB60FE40(uint64_t a1)
{
  v1 = (a1 + 40);
  (*(*(a1 + 40) + 16))(a1 + 40);
  v2 = v1[18];
  if (v2)
  {
    fflush(v2);
  }

  return (*(*v1 + 24))(v1);
}

uint64_t sub_1AB60FEC0(uint64_t a1, char *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  sub_1AB60FD88(v21, a2);
  if (*(a1 + 71) >= 0)
  {
    v5 = *(a1 + 71);
  }

  else
  {
    v5 = *(a1 + 56);
  }

  v6 = v19;
  sub_1AB611708(v19, v5 + 1);
  if (v20 < 0)
  {
    v6 = v19[0];
  }

  if (v5)
  {
    if (*(a1 + 71) >= 0)
    {
      v7 = (a1 + 48);
    }

    else
    {
      v7 = *(a1 + 48);
    }

    memmove(v6, v7, v5);
  }

  *(v6 + v5) = 95;
  if (sub_1AB614498(v4, v21, v19))
  {
    sub_1AB60FD88(v17, a2);
    sub_1AB60FD88(v15, ".log.bz2");
    if (sub_1AB614564(v4, v17, v15))
    {
      v8 = 1;
    }

    else
    {
      sub_1AB60FD88(v13, a2);
      sub_1AB60FD88(__p, ".log");
      v8 = sub_1AB614564(v4, v13, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
    if (!v8)
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  if (++*(*(*(a1 + 32) + 8) + 24) > *(a1 + 96))
  {
    LOBYTE(v21[0]) = 0;
    v9 = (a1 + 72);
    if (*(a1 + 95) < 0)
    {
      v9 = *v9;
    }

    if (snprintf(v21, 0x400uLL, "%s/%s", v9, a2) > 1023)
    {
      syslog(3, "%s,%s,Rotation path is too long, could not delete old logs.\n", "ERROR", "CLLog");
    }

    else if (unlink(v21))
    {
      perror("Failed to delete log");
    }
  }

  return 1;
}

void sub_1AB61012C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1AB6101B0(_BYTE *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 71) < 0)
  {
    result = sub_1AB60C84C(result + 48, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v4 = *(a2 + 48);
    *(result + 8) = *(a2 + 64);
    *(result + 3) = v4;
  }

  if (*(a2 + 95) < 0)
  {
    return sub_1AB60C84C(v3 + 72, *(a2 + 72), *(a2 + 80));
  }

  v5 = *(a2 + 72);
  *(v3 + 11) = *(a2 + 88);
  *(v3 + 72) = v5;
  return result;
}

void sub_1AB610224(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_1AB610240(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    v2 = *(a1 + 48);

    operator delete(v2);
  }
}

void sub_1AB610298(uint64_t a1)
{
  if (!*(a1 + 112))
  {
    goto LABEL_7;
  }

  v2 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v2 = *v2;
  }

  v3 = (a1 + 64);
  v4 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v4 = *v3;
  }

  if (!sub_1AB61229C(v2, v4))
  {
    if (*(a1 + 87) < 0)
    {
      v3 = *v3;
    }

    syslog(3, "%s,%s,Failed to write %s\n", "ERROR", "CLLog", v3);
  }

  else
  {
LABEL_7:
    v5 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v5 = *v5;
    }

    unlink(v5);
  }

  if ((*(a1 + 112) & 0x80000000) == 0)
  {
    v6 = (a1 + 88);
    if (*(a1 + 111) < 0)
    {
      v6 = *v6;
    }

    v7 = *(a1 + 32);

    sub_1AB6176B8(v6, v7);
  }
}

char *sub_1AB61037C(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 63) < 0)
  {
    result = sub_1AB60C84C(result + 40, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(result + 7) = *(a2 + 56);
    *(result + 40) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    result = sub_1AB60C84C(v3 + 64, *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v5 = *(a2 + 64);
    *(v3 + 10) = *(a2 + 80);
    *(v3 + 4) = v5;
  }

  if (*(a2 + 111) < 0)
  {
    return sub_1AB60C84C(v3 + 88, *(a2 + 88), *(a2 + 96));
  }

  v6 = *(a2 + 88);
  *(v3 + 13) = *(a2 + 104);
  *(v3 + 88) = v6;
  return result;
}

void sub_1AB610418(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1AB61044C(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

uint64_t sub_1AB6104B4(uint64_t a1)
{
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  v75 = a1 + 40;
  (*(v2 + 16))(a1 + 40);
  v76 = 256;
  v6 = sub_1AB61448C(a1, v4, v5);
  if (*(a1 + 79) < 0)
  {
    sub_1AB60C84C(&__dst, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    __dst = *(a1 + 56);
    v74 = *(a1 + 72);
  }

  if (*(a1 + 103) < 0)
  {
    sub_1AB60C84C(&v71, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    v71 = *(a1 + 80);
    v72 = *(a1 + 96);
  }

  if (*(a1 + 216))
  {
    syslog(5, "%s,%s,dumping internal buffer\n", "NOTICE", "CLLog");
    sub_1AB6143BC(a1, &v77);
    if ((v77.st_gid & 0x80000000) == 0)
    {
      v7 = &v77;
    }

    else
    {
      v7 = *&v77.st_dev;
    }

    v8 = fopen(v7, "a");
    v9 = v8;
    if (SHIBYTE(v77.st_gid) < 0)
    {
      operator delete(*&v77.st_dev);
      if (v9)
      {
        goto LABEL_13;
      }
    }

    else if (v8)
    {
LABEL_13:
      sub_1AB615BB4(*(a1 + 216), v9);
      fclose(v9);
      v10 = 1;
      goto LABEL_16;
    }
  }

  v10 = 0;
LABEL_16:
  if (v74 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (!stat(p_dst, &v77))
  {
    v12 = HIBYTE(v74);
    if (v74 >= 0)
    {
      v13 = &__dst;
    }

    else
    {
      v13 = __dst;
    }

    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3321888768;
    v66[2] = sub_1AB61108C;
    v66[3] = &unk_1F2038638;
    v66[4] = a1;
    if (SHIBYTE(v72) < 0)
    {
      sub_1AB60C84C(&v67, v71, *(&v71 + 1));
      v12 = HIBYTE(v74);
    }

    else
    {
      v67 = v71;
      v68 = v72;
    }

    if (v12 < 0)
    {
      sub_1AB60C84C(&__p, __dst, *(&__dst + 1));
    }

    else
    {
      __p = __dst;
      v70 = v74;
    }

    sub_1AB6176B8(v13, v66);
    if (SHIBYTE(v70) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v68) < 0)
    {
      operator delete(v67);
    }
  }

  sub_1AB60FE40(a1);
  v14 = (a1 + 128);
  v15 = (a1 + 128);
  if (*(a1 + 151) < 0)
  {
    v15 = *v14;
  }

  if (!stat(v15, &v77))
  {
    sub_1AB6143BC(a1, &v77);
    v17 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v17 = *v14;
    }

    if ((v77.st_gid & 0x80000000) == 0)
    {
      v18 = &v77;
    }

    else
    {
      v18 = *&v77.st_dev;
    }

    rename(v17, v18, v16);
    if ((v77.st_gid & 0x80000000) == 0)
    {
      v19 = &v77;
    }

    else
    {
      v19 = *&v77.st_dev;
    }

    sub_1AB611A98(v19);
    if (*(a1 + 151) < 0)
    {
      v14 = *v14;
    }

    sub_1AB60F740(a1, v14);
    if (SHIBYTE(v77.st_gid) < 0)
    {
      operator delete(*&v77.st_dev);
    }

    v10 = 1;
  }

  v65 = 0;
  sub_1AB61752C(&v77);
  if (sub_1AB619948(*&v77.st_dev, "LogNatalimetry", &v65, 0xFFFFFFFFLL))
  {
    v20 = 1;
  }

  else
  {
    sub_1AB61752C(v63);
    v20 = sub_1AB619948(v63[0], "LogCalorimetry", &v65, 0xFFFFFFFFLL);
    if (v63[1])
    {
      sub_1AB611794(v63[1]);
    }
  }

  if (v77.st_ino)
  {
    sub_1AB611794(v77.st_ino);
  }

  if (v20)
  {
    if (v65)
    {
      sub_1AB616070(0, &v62);
      v21 = std::string::append(&v62, "userinfo", 8uLL);
      v22 = *&v21->__r_.__value_.__l.__data_;
      *&v77.st_uid = *(&v21->__r_.__value_.__l + 2);
      *&v77.st_dev = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v23 = std::string::append(&v77, ".plist", 6uLL);
      v24 = *&v23->__r_.__value_.__l.__data_;
      v64 = v23->__r_.__value_.__r.__words[2];
      *v63 = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v77.st_gid) < 0)
      {
        operator delete(*&v77.st_dev);
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      if (v64 >= 0)
      {
        v25 = v63;
      }

      else
      {
        v25 = v63[0];
      }

      if (!stat(v25, &v77))
      {
        sub_1AB613F48(&v60);
        v26 = std::string::append(&v60, "/", 1uLL);
        v27 = *&v26->__r_.__value_.__l.__data_;
        v61.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v61.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        v28 = std::string::append(&v61, "userinfo", 8uLL);
        v29 = *&v28->__r_.__value_.__l.__data_;
        v62.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
        *&v62.__r_.__value_.__l.__data_ = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        v30 = std::string::append(&v62, ".log", 4uLL);
        v31 = *&v30->__r_.__value_.__l.__data_;
        *&v77.st_uid = *(&v30->__r_.__value_.__l + 2);
        *&v77.st_dev = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        if (v64 >= 0)
        {
          v32 = v63;
        }

        else
        {
          v32 = v63[0];
        }

        if ((v77.st_gid & 0x80000000) == 0)
        {
          v33 = &v77;
        }

        else
        {
          v33 = *&v77.st_dev;
        }

        sub_1AB611BE8(v32, v33);
        if ((v77.st_gid & 0x80000000) == 0)
        {
          v34 = &v77;
        }

        else
        {
          v34 = *&v77.st_dev;
        }

        sub_1AB611A98(v34);
        if (SHIBYTE(v77.st_gid) < 0)
        {
          operator delete(*&v77.st_dev);
        }
      }

      sub_1AB616070(0, &v61);
      v35 = std::string::append(&v61, "cache", 5uLL);
      v36 = *&v35->__r_.__value_.__l.__data_;
      *&v77.st_uid = *(&v35->__r_.__value_.__l + 2);
      *&v77.st_dev = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      v37 = std::string::append(&v77, ".plist", 6uLL);
      v38 = *&v37->__r_.__value_.__l.__data_;
      v62.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
      *&v62.__r_.__value_.__l.__data_ = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v77.st_gid) < 0)
      {
        operator delete(*&v77.st_dev);
      }

      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = &v62;
      }

      else
      {
        v39 = v62.__r_.__value_.__r.__words[0];
      }

      if (!stat(v39, &v77))
      {
        sub_1AB613F48(&v59);
        v40 = std::string::append(&v59, "/", 1uLL);
        v41 = *&v40->__r_.__value_.__l.__data_;
        v60.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
        *&v60.__r_.__value_.__l.__data_ = v41;
        v40->__r_.__value_.__l.__size_ = 0;
        v40->__r_.__value_.__r.__words[2] = 0;
        v40->__r_.__value_.__r.__words[0] = 0;
        v42 = std::string::append(&v60, "cache", 5uLL);
        v43 = *&v42->__r_.__value_.__l.__data_;
        v61.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
        *&v61.__r_.__value_.__l.__data_ = v43;
        v42->__r_.__value_.__l.__size_ = 0;
        v42->__r_.__value_.__r.__words[2] = 0;
        v42->__r_.__value_.__r.__words[0] = 0;
        v44 = std::string::append(&v61, ".log", 4uLL);
        v45 = *&v44->__r_.__value_.__l.__data_;
        *&v77.st_uid = *(&v44->__r_.__value_.__l + 2);
        *&v77.st_dev = v45;
        v44->__r_.__value_.__l.__size_ = 0;
        v44->__r_.__value_.__r.__words[2] = 0;
        v44->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = &v62;
        }

        else
        {
          v46 = v62.__r_.__value_.__r.__words[0];
        }

        if ((v77.st_gid & 0x80000000) == 0)
        {
          v47 = &v77;
        }

        else
        {
          v47 = *&v77.st_dev;
        }

        sub_1AB611BE8(v46, v47);
        if ((v77.st_gid & 0x80000000) == 0)
        {
          v48 = &v77;
        }

        else
        {
          v48 = *&v77.st_dev;
        }

        sub_1AB611A98(v48);
        if (SHIBYTE(v77.st_gid) < 0)
        {
          operator delete(*&v77.st_dev);
        }
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v64) < 0)
      {
        operator delete(v63[0]);
      }
    }
  }

  else
  {
    v65 = 0;
  }

  sub_1AB613D70(&v61);
  v49 = std::string::append(&v61, "/", 1uLL);
  v50 = *&v49->__r_.__value_.__l.__data_;
  v62.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
  *&v62.__r_.__value_.__l.__data_ = v50;
  v49->__r_.__value_.__l.__size_ = 0;
  v49->__r_.__value_.__r.__words[2] = 0;
  v49->__r_.__value_.__r.__words[0] = 0;
  v51 = std::string::append(&v62, "com.apple.timed", 0xFuLL);
  v52 = *&v51->__r_.__value_.__l.__data_;
  *&v77.st_uid = *(&v51->__r_.__value_.__l + 2);
  *&v77.st_dev = v52;
  v51->__r_.__value_.__l.__size_ = 0;
  v51->__r_.__value_.__r.__words[2] = 0;
  v51->__r_.__value_.__r.__words[0] = 0;
  v53 = std::string::append(&v77, ".plist", 6uLL);
  v54 = *&v53->__r_.__value_.__l.__data_;
  v64 = v53->__r_.__value_.__r.__words[2];
  *v63 = v54;
  v53->__r_.__value_.__l.__size_ = 0;
  v53->__r_.__value_.__r.__words[2] = 0;
  v53->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v77.st_gid) < 0)
  {
    operator delete(*&v77.st_dev);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (v64 >= 0)
  {
    v55 = v63;
  }

  else
  {
    v55 = v63[0];
  }

  if (stat(v55, &v77))
  {
    goto LABEL_137;
  }

  sub_1AB613C70(&v62);
  sub_1AB60FD88(&v61, "com.apple.timed");
  sub_1AB60FD88(&v60, ".plist.log");
  sub_1AB614120(&v62.__r_.__value_.__l.__data_, &v61, &v60, v6, &v77);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (v64 >= 0)
  {
    v56 = v63;
  }

  else
  {
    v56 = v63[0];
  }

  if ((v77.st_gid & 0x80000000) == 0)
  {
    v57 = &v77;
  }

  else
  {
    v57 = *&v77.st_dev;
  }

  if (sub_1AB611BE8(v56, v57) == 1)
  {
    syslog(5, "%s,%s,could not copy %s log\n", "WARNING", "CLLog", "com.apple.timed");
  }

  if ((SHIBYTE(v77.st_gid) & 0x80000000) == 0)
  {
LABEL_137:
    if (v10)
    {
      goto LABEL_139;
    }

    goto LABEL_138;
  }

  operator delete(*&v77.st_dev);
  if ((v10 & 1) == 0)
  {
LABEL_138:
    syslog(5, "%s,%s,could not dump log file\n", "WARNING", "CLLog");
  }

LABEL_139:
  if (SHIBYTE(v64) < 0)
  {
    operator delete(v63[0]);
  }

  if (SHIBYTE(v72) < 0)
  {
    operator delete(v71);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(__dst);
  }

  return (*(*v3 + 24))(v3);
}

void sub_1AB610DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (*(v63 - 233) < 0)
  {
    operator delete(*(v63 - 256));
  }

  sub_1AB611664(v63 - 232);
  _Unwind_Resume(a1);
}

uint64_t sub_1AB61108C(uint64_t a1, char *a2)
{
  v4 = *(a1 + 32);
  sub_1AB60FD88(&v33, a2);
  if (*(a1 + 63) >= 0)
  {
    v5 = *(a1 + 63);
  }

  else
  {
    v5 = *(a1 + 48);
  }

  v6 = &v32;
  sub_1AB611708(&v32, v5 + 1);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v32.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    if (*(a1 + 63) >= 0)
    {
      v7 = (a1 + 40);
    }

    else
    {
      v7 = *(a1 + 40);
    }

    memmove(v6, v7, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 95;
  if (sub_1AB614498(v4, &v33, &v32))
  {
    sub_1AB60FD88(&v31, a2);
    sub_1AB60FD88(v29, ".log.bz2");
    if (sub_1AB614564(v4, &v31, v29))
    {
      v8 = 1;
    }

    else
    {
      sub_1AB60FD88(v27, a2);
      sub_1AB60FD88(__p, ".log");
      v8 = sub_1AB614564(v4, v27, __p);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v8 = 0;
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
    if (!v8)
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  sub_1AB613F48(&v31);
  v9 = std::string::append(&v31, "/", 1uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = strlen(a2);
  v12 = std::string::append(&v32, a2, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v34 = v12->__r_.__value_.__r.__words[2];
  v33 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 87) >= 0)
  {
    v14 = *(a1 + 87);
  }

  else
  {
    v14 = *(a1 + 72);
  }

  v15 = &v31;
  sub_1AB611708(&v31, v14 + 1);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v15 = v31.__r_.__value_.__r.__words[0];
  }

  if (v14)
  {
    if (*(a1 + 87) >= 0)
    {
      v16 = (a1 + 64);
    }

    else
    {
      v16 = *(a1 + 64);
    }

    memmove(v15, v16, v14);
  }

  *(&v15->__r_.__value_.__l.__data_ + v14) = 47;
  v17 = strlen(a2);
  v18 = std::string::append(&v31, a2, v17);
  v32 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v20 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
  v21 = v32.__r_.__value_.__r.__words[0];
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v32;
  }

  else
  {
    v22 = v32.__r_.__value_.__r.__words[0];
  }

  if (v34 >= 0)
  {
    v23 = &v33;
  }

  else
  {
    v23 = v33;
  }

  rename(v22, v23, v19);
  sub_1AB611A98(v23);
  if (v20 < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  return 1;
}

void sub_1AB6113A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 57) < 0)
  {
    operator delete(*(v35 - 80));
  }

  _Unwind_Resume(exception_object);
}

char *sub_1AB611478(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 63) < 0)
  {
    result = sub_1AB60C84C(result + 40, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(result + 7) = *(a2 + 56);
    *(result + 40) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    return sub_1AB60C84C(v3 + 64, *(a2 + 64), *(a2 + 72));
  }

  v5 = *(a2 + 64);
  *(v3 + 10) = *(a2 + 80);
  *(v3 + 4) = v5;
  return result;
}

void sub_1AB6114EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1AB611508(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

std::string *sub_1AB611560(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_1AB61161C(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_1AB611560(a1, __s, v4);
}

uint64_t sub_1AB611664(uint64_t a1)
{
  if (*(a1 + 17) == 1)
  {
    if (*(a1 + 16))
    {
      pthread_mutex_unlock(*(a1 + 8));
    }

    else
    {
      (*(**a1 + 24))();
    }

    *(a1 + 17) = 0;
  }

  return a1;
}

os_log_t sub_1AB6116D8()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1EB46D710 = result;
  return result;
}

uint64_t sub_1AB611708(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AB60C7A4();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

void sub_1AB611794(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

FILE ***sub_1AB611800(FILE ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_1AB61582C(v2);
    MEMORY[0x1AC5A03A0](v3, 0x10B0C403E4C181ELL);
  }

  return a1;
}

void sub_1AB61184C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC5A03A0);
}

FILE **sub_1AB611884(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1AB61582C(result);

    JUMPOUT(0x1AC5A03A0);
  }

  return result;
}

uint64_t sub_1AB6118C8(uint64_t a1, uint64_t a2)
{
  if (sub_1AB611908(a2, &unk_1F2038700))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1AB611908(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t sub_1AB61195C(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1AB61331C(a1, a2);
  }

  else
  {
    sub_1AB6132BC(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

double sub_1AB61199C(double *a1, double *a2, double a3)
{
  v6 = *a1;
  v7 = sin(*a1 * 0.0174532925);
  v8 = sqrt(v7 * -0.00669437999 * v7 + 1.0);
  v9 = (6335439.33 / (v8 * (v8 * v8)) * 0.0174532925);
  v10 = a3;
  if (v9 >= 1)
  {
    v10 = a3 / v9;
  }

  v11 = v10 * floor(v6 / v10);
  *a1 = v11;
  v12 = __sincos_stret(v11 * 0.0174532925);
  v13 = (v12.__cosval * 0.0174532925 * (6378137.0 / sqrt(v12.__sinval * -0.00669437999 * v12.__sinval + 1.0)));
  if (v13 >= 1)
  {
    a3 = a3 / v13;
  }

  result = a3 * floor(*a2 / a3);
  *a2 = result;
  return result;
}

uint64_t sub_1AB611A98(const char *a1)
{
  v2 = getpwnam("mobile");
  if (v2)
  {
    pw_uid = v2->pw_uid;
    pw_gid = v2->pw_gid;
  }

  else
  {
    pw_gid = 501;
    pw_uid = 501;
  }

  return lchown(a1, pw_uid, pw_gid);
}

uint64_t sub_1AB611AEC(_BYTE *a1, uid_t a2, gid_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  bzero(v11, 0x400uLL);
  v6 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v7 = 0;
  v8 = a1 + 1;
  while (1)
  {
    v11[v7] = v6;
    if (v6 != 47 || !stat(v11, &v10))
    {
      goto LABEL_7;
    }

    if (mkdir(v11, 0x1FFu))
    {
      return 0;
    }

    lchown(v11, a2, a3);
    lchmod(v11, 0x1C0u);
LABEL_7:
    result = 1;
    if (v7 <= 0x3FD)
    {
      v6 = v8[v7++];
      if (v6)
      {
        continue;
      }
    }

    return result;
  }
}

uint64_t sub_1AB611BE8(const char *a1, const char *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  if (!v4)
  {
LABEL_41:
    v25 = 0;
    goto LABEL_57;
  }

  v5 = fopen(a1, "rb");
  if (!v5)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038718);
    }

    v13 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      v14 = *__error();
      *buf = 136446466;
      v32 = a1;
      v33 = 1026;
      v34 = v14;
      _os_log_impl(&dword_1AB607000, v13, OS_LOG_TYPE_FAULT, "cannot open source file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    v15 = sub_1AB60902C();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2038718);
      }

      v16 = off_1EB46D730;
      v17 = *__error();
      *v30 = 136446466;
      *&v30[4] = a1;
      *&v30[12] = 1026;
      *&v30[14] = v17;
      v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v16, 17, "cannot open source file: %{public}s, errno %{public}d", v30, 18);
      sub_1AB60C944("Generic", 1, 0, 0, "int CLCommonCopyFile(const char *, const char *)", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    goto LABEL_41;
  }

  v6 = v5;
  v7 = fopen(a2, "wb");
  if (!v7)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038718);
    }

    v19 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      v20 = *__error();
      *buf = 136446466;
      v32 = a2;
      v33 = 1026;
      v34 = v20;
      _os_log_impl(&dword_1AB607000, v19, OS_LOG_TYPE_FAULT, "cannot open target file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    v21 = sub_1AB60902C();
    if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2038718);
      }

      v22 = off_1EB46D730;
      v23 = *__error();
      *v30 = 136446466;
      *&v30[4] = a2;
      *&v30[12] = 1026;
      *&v30[14] = v23;
      v24 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v22, 17, "cannot open target file: %{public}s, errno %{public}d", v30, 18);
      sub_1AB60C944("Generic", 1, 0, 0, "int CLCommonCopyFile(const char *, const char *)", "CoreLocation: %s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }

    fclose(v6);
    goto LABEL_41;
  }

  v8 = v7;
  while (1)
  {
    if (feof(v6))
    {
      v25 = 1;
      goto LABEL_56;
    }

    v9 = fread(v4, 1uLL, 0x400uLL, v6);
    if (v9 == -1)
    {
      break;
    }

    if (v9 != fwrite(v4, 1uLL, v9, v8))
    {
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2038718);
      }

      v10 = off_1EB46D730;
      if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        v32 = a2;
        _os_log_impl(&dword_1AB607000, v10, OS_LOG_TYPE_FAULT, "error writing target file: %{public}s", buf, 0xCu);
      }

      v11 = sub_1AB60902C();
      if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EB46D728 != -1)
        {
          dispatch_once(&qword_1EB46D728, &unk_1F2038718);
        }

        *v30 = 136446210;
        *&v30[4] = a2;
        v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "error writing target file: %{public}s", v30, 12, *v30, *&v30[8]);
LABEL_53:
        v28 = v12;
        sub_1AB60C944("Generic", 1, 0, 0, "int CLCommonCopyFile(const char *, const char *)", "CoreLocation: %s\n", v12);
        if (v28 != buf)
        {
          free(v28);
        }

        goto LABEL_55;
      }

      goto LABEL_55;
    }
  }

  if (qword_1EB46D728 != -1)
  {
    dispatch_once(&qword_1EB46D728, &unk_1F2038718);
  }

  v26 = off_1EB46D730;
  if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446210;
    v32 = a1;
    _os_log_impl(&dword_1AB607000, v26, OS_LOG_TYPE_FAULT, "error reading source file: %{public}s", buf, 0xCu);
  }

  v27 = sub_1AB60902C();
  if ((*(v27 + 160) & 0x80000000) == 0 || (*(v27 + 164) & 0x80000000) == 0 || (*(v27 + 168) & 0x80000000) == 0 || *(v27 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038718);
    }

    *v30 = 136446210;
    *&v30[4] = a1;
    v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "error reading source file: %{public}s", v30, 12, *v30, *&v30[8]);
    goto LABEL_53;
  }

LABEL_55:
  v25 = 0;
LABEL_56:
  fclose(v6);
  fclose(v8);
LABEL_57:
  free(v4);
  return v25;
}

uint64_t sub_1AB61229C(const char *a1, const char *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, a2);
  PathComponent = objc_msgSend_lastPathComponent(v5, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v4, v9, @"compress:%@", PathComponent);
  v13 = objc_msgSend_UTF8String(v10, v11, v12);
  sub_1AB613594(v44, v13, 0);
  bzerror = 0;
  v14 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  if (!v14)
  {
LABEL_59:
    v21 = 0;
    goto LABEL_60;
  }

  v15 = fopen(a1, "rb");
  if (!v15)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038718);
    }

    v26 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      v27 = *__error();
      *buf = 136446466;
      v51 = a1;
      v52 = 1026;
      v53 = v27;
      _os_log_impl(&dword_1AB607000, v26, OS_LOG_TYPE_FAULT, "cannot open source file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    v28 = sub_1AB60902C();
    if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2038718);
      }

      v29 = off_1EB46D730;
      v30 = *__error();
      v46 = 136446466;
      v47 = a1;
      v48 = 1026;
      v49 = v30;
      v31 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v29, 17, "cannot open source file: %{public}s, errno %{public}d", &v46, 18);
      sub_1AB60C944("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }
    }

    goto LABEL_59;
  }

  v16 = fopen(a2, "wb");
  if (!v16)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038718);
    }

    v32 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      v33 = *__error();
      *buf = 136446466;
      v51 = a1;
      v52 = 1026;
      v53 = v33;
      _os_log_impl(&dword_1AB607000, v32, OS_LOG_TYPE_FAULT, "cannot open target file: %{public}s, errno %{public}d", buf, 0x12u);
    }

    v34 = sub_1AB60902C();
    if ((*(v34 + 160) & 0x80000000) == 0 || (*(v34 + 164) & 0x80000000) == 0 || (*(v34 + 168) & 0x80000000) == 0 || *(v34 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2038718);
      }

      v35 = off_1EB46D730;
      v36 = *__error();
      v46 = 136446466;
      v47 = a1;
      v48 = 1026;
      v49 = v36;
      v37 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v35, 17, "cannot open target file: %{public}s, errno %{public}d", &v46, 18);
      sub_1AB60C944("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v37);
      if (v37 != buf)
      {
        free(v37);
      }
    }

    fclose(v15);
    goto LABEL_59;
  }

  v17 = BZ2_bzWriteOpen(&bzerror, v16, 1, 0, 0);
  if (bzerror)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038718);
    }

    v18 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v51 = a2;
      v52 = 1026;
      v53 = bzerror;
      _os_log_impl(&dword_1AB607000, v18, OS_LOG_TYPE_FAULT, "cannot open compression stream: %{public}s, bzerror %{public}d", buf, 0x12u);
    }

    v19 = sub_1AB60902C();
    if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2038718);
      }

      v46 = 136446466;
      v47 = a2;
      v48 = 1026;
      v49 = bzerror;
      v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "cannot open compression stream: %{public}s, bzerror %{public}d", &v46, 18);
      sub_1AB60C944("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v20);
LABEL_15:
      if (v20 != buf)
      {
        free(v20);
      }
    }
  }

  else
  {
    while (1)
    {
      if (feof(v15))
      {
        v21 = 1;
        goto LABEL_18;
      }

      v25 = fread(v14, 1uLL, 0x400uLL, v15);
      if (v25 == -1)
      {
        break;
      }

      BZ2_bzWrite(&bzerror, v17, v14, v25);
      if (bzerror)
      {
        if (qword_1EB46D728 != -1)
        {
          dispatch_once(&qword_1EB46D728, &unk_1F2038718);
        }

        v41 = off_1EB46D730;
        if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446466;
          v51 = a2;
          v52 = 1026;
          v53 = bzerror;
          _os_log_impl(&dword_1AB607000, v41, OS_LOG_TYPE_FAULT, "error writing target file: %{public}s, bzerror: %{public}d", buf, 0x12u);
        }

        v42 = sub_1AB60902C();
        if ((*(v42 + 160) & 0x80000000) == 0 || (*(v42 + 164) & 0x80000000) == 0 || (*(v42 + 168) & 0x80000000) == 0 || *(v42 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EB46D728 != -1)
          {
            dispatch_once(&qword_1EB46D728, &unk_1F2038718);
          }

          v46 = 136446466;
          v47 = a2;
          v48 = 1026;
          v49 = bzerror;
          v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "error writing target file: %{public}s, bzerror: %{public}d", &v46, 18);
          sub_1AB60C944("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v20);
          goto LABEL_15;
        }

        goto LABEL_17;
      }
    }

    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038718);
    }

    v39 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v51 = a1;
      _os_log_impl(&dword_1AB607000, v39, OS_LOG_TYPE_FAULT, "error reading source file: %{public}s", buf, 0xCu);
    }

    v40 = sub_1AB60902C();
    if ((*(v40 + 160) & 0x80000000) == 0 || (*(v40 + 164) & 0x80000000) == 0 || (*(v40 + 168) & 0x80000000) == 0 || *(v40 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2038718);
      }

      v46 = 136446210;
      v47 = a1;
      v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "error reading source file: %{public}s", &v46, 12);
      sub_1AB60C944("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v20);
      goto LABEL_15;
    }
  }

LABEL_17:
  v21 = 0;
LABEL_18:
  fclose(v15);
  if (v17)
  {
    BZ2_bzWriteClose(&bzerror, v17, 0, 0, 0);
    if (bzerror)
    {
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2038718);
      }

      v22 = off_1EB46D730;
      if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446466;
        v51 = a2;
        v52 = 1026;
        v53 = bzerror;
        _os_log_impl(&dword_1AB607000, v22, OS_LOG_TYPE_FAULT, "error closing target file: %{public}s, bzerror: %{public}d", buf, 0x12u);
      }

      v23 = sub_1AB60902C();
      if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EB46D728 != -1)
        {
          dispatch_once(&qword_1EB46D728, &unk_1F2038718);
        }

        v46 = 136446466;
        v47 = a2;
        v48 = 1026;
        v49 = bzerror;
        LODWORD(v43) = 18;
        v24 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "error closing target file: %{public}s, bzerror: %{public}d", &v46, v43);
        sub_1AB60C944("Generic", 1, 0, 0, "int CLCommonBzipFile(const char *, const char *)", "CoreLocation: %s\n", v24);
        if (v24 != buf)
        {
          free(v24);
        }
      }
    }
  }

  fclose(v16);
LABEL_60:
  free(v14);
  sub_1AB6137DC(v44);
  return v21;
}

void sub_1AB612D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1AB6137DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AB612D40(char *a1, size_t a2, double a3)
{
  if (a3 < 0.0)
  {
    return snprintf(a1, a2, "%.1f", a3);
  }

  v4 = ((a3 + 22.5) / 45.0);
  if (v4 <= 3)
  {
    if (v4 > 1)
    {
      a2 = a2;
      if (v4 == 2)
      {
        v5 = "E";
      }

      else
      {
        v5 = "SE";
      }
    }

    else
    {
      if (!v4)
      {
LABEL_17:
        a2 = a2;
        v5 = "N";
        goto LABEL_22;
      }

      if (v4 != 1)
      {
        return snprintf(a1, a2, "%.1f", a3);
      }

      a2 = a2;
      v5 = "NE";
    }
  }

  else
  {
    if (v4 > 5)
    {
      if (v4 == 6)
      {
        a2 = a2;
        v5 = "W";
        goto LABEL_22;
      }

      if (v4 == 7)
      {
        a2 = a2;
        v5 = "NW";
        goto LABEL_22;
      }

      if (v4 != 8)
      {
        return snprintf(a1, a2, "%.1f", a3);
      }

      goto LABEL_17;
    }

    a2 = a2;
    if (v4 == 4)
    {
      v5 = "S";
    }

    else
    {
      v5 = "SW";
    }
  }

LABEL_22:

  return snprintf(a1, a2, v5);
}

void sub_1AB612E8C(double *a1, double *a2, double a3, double a4, double a5, double a6, double a7)
{
  v9 = a1;
  v12 = a5;
  if ((atomic_load_explicit(&qword_1EB46D898, memory_order_acquire) & 1) == 0)
  {
    v17 = a2;
    v18 = a7;
    v15 = a6;
    v16 = a4;
    v20 = a3;
    v13 = __cxa_guard_acquire(&qword_1EB46D898);
    v12 = a5;
    a3 = v20;
    a6 = v15;
    a4 = v16;
    a7 = v18;
    v9 = a1;
    a2 = v17;
    if (v13)
    {
      qword_1EB46D880 = 0;
      unk_1EB46D888 = 0;
      xmmword_1EB46D870 = xmmword_1AB62A580;
      qword_1EB46D890 = 0x3FF0000000000000;
      __cxa_guard_release(&qword_1EB46D898);
      v12 = a5;
      a3 = v20;
      a6 = v15;
      a4 = v16;
      a7 = v18;
      v9 = a1;
      a2 = v17;
    }
  }

  sub_1AB6099E8(&xmmword_1EB46D870, v9, a2, a3, a4, 0.0, v12, a6, a7);
}

void sub_1AB612F6C(FILE *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = _dyld_image_count();
  v3 = v2;
  v4 = malloc_type_calloc(v2, 0x38uLL, 0x105004076241286uLL);
  v5 = v4;
  v31 = v4;
  if (v2 && v4)
  {
    v6 = 0;
    do
    {
      image_name = _dyld_get_image_name(v6);
      v8 = &image_name[strlen(image_name) + 1];
      do
      {
        v9 = *(v8 - 2);
        --v8;
      }

      while (v9 != 47);
      image_header = _dyld_get_image_header(v6);
      v11 = image_header;
      v12 = *&image_header->cputype;
      ncmds = image_header->ncmds;
      if (ncmds)
      {
        v14 = 0;
        p_cputype = &image_header[1].cputype;
        do
        {
          if (*p_cputype == 1)
          {
            if (!strncmp(p_cputype + 8, "__TEXT", 6uLL))
            {
              v14 = (v14 + p_cputype[7]);
            }
          }

          else if (*p_cputype == 27)
          {
            v32[0] = *(p_cputype + 2);
          }

          p_cputype = (p_cputype + p_cputype[1]);
          --ncmds;
        }

        while (ncmds);
      }

      else
      {
        v14 = 0;
      }

      v16 = 0;
      v5 = v31;
      v17 = v31;
      while (1)
      {
        v19 = *v17;
        v17 += 7;
        v18 = v19;
        if (v19 >= v11 || v18 == 0)
        {
          break;
        }

        if (v3 == ++v16)
        {
          v16 = v3;
          v21 = v3;
          goto LABEL_24;
        }
      }

      v21 = v16;
LABEL_24:
      v22 = &v31[56 * v16];
      memmove(v22 + 7, v22, 56 * (v3 + ~v21));
      *v22 = v11;
      v22[1] = v14;
      *(v22 + 1) = v32[0];
      v22[4] = image_name;
      v22[5] = v8;
      v22[6] = v12;
      ++v6;
    }

    while (v6 != v3);
    fwrite("Binary Images:\n", 0xFuLL, 1uLL, a1);
  }

  else
  {
    fwrite("Binary Images:\n", 0xFuLL, 1uLL, a1);
    if (!v2)
    {
      goto LABEL_39;
    }
  }

  v23 = 0;
  do
  {
    v24 = &v5[56 * v23];
    v25 = *(v24 + 1);
    v32[0] = *v24;
    v32[1] = v25;
    v33 = *(v24 + 2);
    v34 = *(v24 + 6);
    v26 = "other";
    if (v34 != 16777228)
    {
      v27 = "unknown";
      if (HIDWORD(v34) == 9)
      {
        v27 = "armv7";
      }

      v26 = "armv6";
      if (HIDWORD(v34) != 6)
      {
        v26 = v27;
      }
    }

    v30 = v26;
    if (v23)
    {
      v28 = 32;
    }

    else
    {
      v28 = 43;
    }

    fprintf(a1, "%16p - %lld %c%s %s <", *&v32[0], ((v32[0] + __PAIR128__(-1, 0)) >> 64), v28, *(&v33 + 1), v30);
    for (i = 16; i != 32; ++i)
    {
      fprintf(a1, "%02X", *(v32 + i));
    }

    fprintf(a1, "> %s\n", v33);
    ++v23;
    v5 = v31;
  }

  while (v23 != v3);
LABEL_39:

  free(v5);
}

os_log_t sub_1AB61328C()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1EB46D730 = result;
  return result;
}

void *sub_1AB6132BC(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_1AB60C84C(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_1AB61331C(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1AB61345C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_1AB613474(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = 24 * v2;
  v8 = 0;
  v19 = 24 * v2;
  v20 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_1AB60C84C(v7, *a2, *(a2 + 1));
    v7 = v18;
    v10 = v19;
    v8 = v20;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v9;
    v10 = 24 * v2;
  }

  v11 = v10 + 24;
  v12 = *(a1 + 8) - *a1;
  v13 = v7 - v12;
  memcpy((v7 - v12), *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = v8;
  v19 = v14;
  v20 = v15;
  v17 = v14;
  v18 = v14;
  sub_1AB613500(&v17);
  return v11;
}

void sub_1AB613448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AB613500(va);
  _Unwind_Resume(a1);
}

void sub_1AB613474(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1AB6134CC();
}

void sub_1AB6134CC()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t sub_1AB613500(uint64_t a1)
{
  sub_1AB613538(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AB613538(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t *sub_1AB613594(uint64_t *a1, uint64_t a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  *a1 = os_transaction_create();
  a1[1] = 0;
  if (!a3)
  {
    a1[1] = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, a2);
    if (qword_1EB46D718 != -1)
    {
      dispatch_once(&qword_1EB46D718, &unk_1F2038738);
    }

    v7 = qword_1EB46D720;
    if (os_log_type_enabled(qword_1EB46D720, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[1];
      *buf = 134349314;
      v18 = a1;
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&dword_1AB607000, v7, OS_LOG_TYPE_DEFAULT, "os_transaction created: (%{public}p) %{public}@", buf, 0x16u);
    }

    v9 = sub_1AB60902C();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D718 != -1)
      {
        dispatch_once(&qword_1EB46D718, &unk_1F2038738);
      }

      v10 = a1[1];
      v13 = 134349314;
      v14 = a1;
      v15 = 2114;
      v16 = v10;
      v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, qword_1EB46D720, 0, "os_transaction created: (%{public}p) %{public}@", &v13, 22);
      sub_1AB60C944("Generic", 1, 0, 2, "CLAutoOSTransaction::CLAutoOSTransaction(const char *, LoggingPolicy)", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  return a1;
}

os_log_t sub_1AB6137AC()
{
  result = os_log_create("com.apple.locationd.Utility", "QA");
  qword_1EB46D720 = result;
  return result;
}

id *sub_1AB6137DC(id *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1[1])
  {
    if (qword_1EB46D718 != -1)
    {
      dispatch_once(&qword_1EB46D718, &unk_1F2038738);
    }

    v2 = qword_1EB46D720;
    if (os_log_type_enabled(qword_1EB46D720, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[1];
      *buf = 134349314;
      v13 = a1;
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&dword_1AB607000, v2, OS_LOG_TYPE_DEFAULT, "os_transaction releasing: (%{public}p) %{public}@", buf, 0x16u);
    }

    v4 = sub_1AB60902C();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D718 != -1)
      {
        dispatch_once(&qword_1EB46D718, &unk_1F2038738);
      }

      v5 = a1[1];
      v8 = 134349314;
      v9 = a1;
      v10 = 2114;
      v11 = v5;
      v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, qword_1EB46D720, 0, "os_transaction releasing: (%{public}p) %{public}@", &v8, 22);
      sub_1AB60C944("Generic", 1, 0, 2, "CLAutoOSTransaction::~CLAutoOSTransaction()", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    a1[1] = 0;
  }

  *a1 = 0;
  return a1;
}

void sub_1AB6139E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1AB60A4F4(a1);
}

void sub_1AB6139F0(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_1AB613A40(char *a1)
{
  *a1 = &unk_1F2038768;
  *(a1 + 4) = 0;
  *(a1 + 12) = 0xFFFFFFFF00000000;
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  sub_1AB614748(a1 + 5, "CLLogBase", 1, 0);
}

void sub_1AB613AF4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_1AB611794(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1AB613B84(void *a1)
{
  *a1 = &unk_1F2038768;
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, a1);
  if (*(a1 + 151) < 0)
  {
    operator delete(a1[16]);
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(a1[13]);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(a1[10]);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(a1[7]);
  }

  sub_1AB6148A0((a1 + 5));
  v3 = a1[4];
  if (v3)
  {
    sub_1AB611794(v3);
  }

  return a1;
}

uint64_t sub_1AB613C30()
{
  v0 = objc_opt_new();
  qword_1ED4B7DB0 = v0;

  return MEMORY[0x1EEE66B58](v0, sel_setDateFormat_, @"yyyy-MM-dd_HH-mm-ss");
}

void sub_1AB613C70(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED4B7DC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED4B7DC0))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED4B7DF0, &dword_1AB607000);
    __cxa_guard_release(&qword_1ED4B7DC0);
  }

  if (qword_1ED4B7DC8 != -1)
  {
    dispatch_once(&qword_1ED4B7DC8, &unk_1F20387A8);
  }

  if (byte_1ED4B7E07 < 0)
  {
    v2 = xmmword_1ED4B7DF0;

    sub_1AB60C84C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED4B7DF0;
    *(a1 + 16) = unk_1ED4B7E00;
  }
}

void sub_1AB613D70(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED4B7DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED4B7DD0))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED4B7E08, &dword_1AB607000);
    __cxa_guard_release(&qword_1ED4B7DD0);
  }

  if (qword_1ED4B7DD8 != -1)
  {
    dispatch_once(&qword_1ED4B7DD8, &unk_1F20387C8);
  }

  if (byte_1ED4B7E1F < 0)
  {
    v2 = xmmword_1ED4B7E08;

    sub_1AB60C84C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED4B7E08;
    *(a1 + 16) = unk_1ED4B7E18;
  }
}

void sub_1AB613E58()
{
  v0 = MEMORY[0x1E696AEC0];
  sub_1AB60FD88(v11, "mobile");
  sub_1AB615CEC(v11, __p);
  if (v14 >= 0)
  {
    v2 = objc_msgSend_stringWithUTF8String_(v0, v1, __p);
  }

  else
  {
    v2 = objc_msgSend_stringWithUTF8String_(v0, v1, __p[0]);
  }

  v4 = v2;
  v5 = objc_msgSend_componentsJoinedByString_(&unk_1F203BA38, v3, @"/");
  v7 = objc_msgSend_stringByAppendingPathComponent_(v4, v6, v5);
  v10 = objc_msgSend_UTF8String(v7, v8, v9);
  sub_1AB61161C(&xmmword_1ED4B7E08, v10);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }
}

void sub_1AB613F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AB613F48(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED4B7DE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED4B7DE0))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED4B7E20, &dword_1AB607000);
    __cxa_guard_release(&qword_1ED4B7DE0);
  }

  if (qword_1ED4B7DE8 != -1)
  {
    dispatch_once(&qword_1ED4B7DE8, &unk_1F20387E8);
  }

  if (byte_1ED4B7E37 < 0)
  {
    v2 = xmmword_1ED4B7E20;

    sub_1AB60C84C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED4B7E20;
    *(a1 + 16) = unk_1ED4B7E30;
  }
}

void sub_1AB614030()
{
  v0 = MEMORY[0x1E696AEC0];
  sub_1AB60FD88(v11, "mobile");
  sub_1AB615CEC(v11, __p);
  if (v14 >= 0)
  {
    v2 = objc_msgSend_stringWithUTF8String_(v0, v1, __p);
  }

  else
  {
    v2 = objc_msgSend_stringWithUTF8String_(v0, v1, __p[0]);
  }

  v4 = v2;
  v5 = objc_msgSend_componentsJoinedByString_(&unk_1F203BA50, v3, @"/");
  v7 = objc_msgSend_stringByAppendingPathComponent_(v4, v6, v5);
  v10 = objc_msgSend_UTF8String(v7, v8, v9);
  sub_1AB61161C(&xmmword_1ED4B7E20, v10);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }
}

void sub_1AB6140EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AB614120(const void **a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, std::string *a5@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = a1[1];
  }

  v11 = &v35;
  sub_1AB611708(&v35, v10 + 1);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v35.__r_.__value_.__r.__words[0];
  }

  if (v10)
  {
    if (*(a1 + 23) >= 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    memmove(v11, v12, v10);
  }

  *(&v11->__r_.__value_.__l.__data_ + v10) = 47;
  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 8);
  }

  v16 = std::string::append(&v35, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v36, "_", 1uLL);
  v20 = *&v18->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v20;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (qword_1ED4B7DB8 != -1)
  {
    dispatch_once(&qword_1ED4B7DB8, &unk_1F2038788);
  }

  v21 = objc_msgSend_stringFromDate_(qword_1ED4B7DB0, v19, a4);
  v24 = objc_msgSend_UTF8String(v21, v22, v23);
  sub_1AB60FD88(__p, v24);
  if ((v34 & 0x80u) == 0)
  {
    v25 = __p;
  }

  else
  {
    v25 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v26 = v34;
  }

  else
  {
    v26 = __p[1];
  }

  v27 = std::string::append(&v37, v25, v26);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  v29 = *(a3 + 23);
  if (v29 >= 0)
  {
    v30 = a3;
  }

  else
  {
    v30 = *a3;
  }

  if (v29 >= 0)
  {
    v31 = *(a3 + 23);
  }

  else
  {
    v31 = *(a3 + 8);
  }

  v32 = std::string::append(&v38, v30, v31);
  *a5 = *v32;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }
}

void sub_1AB614340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AB6143BC(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_1AB613F48(v8);
  if (v9 >= 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = v8[0];
  }

  sub_1AB60FD88(__p, v4);
  v7 = objc_msgSend_date(MEMORY[0x1E695DF00], v5, v6);
  sub_1AB614120(__p, a1 + 80, a1 + 104, v7, a2);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_1AB614458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1AB614498(uint64_t a1, char **a2, char *a3)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 < 0)
  {
    v3 = a2[1];
  }

  v5 = a3[23];
  if (v5 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (v5 >= 0)
  {
    v7 = a3[23];
  }

  else
  {
    v7 = *(a3 + 1);
  }

  if (!v7)
  {
    return 1;
  }

  v8 = &v3[v4];
  if (v3 >= v7)
  {
    v12 = *v6;
    v13 = v4;
    do
    {
      v14 = &v3[-v7];
      if (v14 == -1)
      {
        break;
      }

      v15 = memchr(v13, v12, (v14 + 1));
      if (!v15)
      {
        break;
      }

      v9 = v15;
      if (!memcmp(v15, v6, v7))
      {
        return v9 != v8 && v9 == v4;
      }

      v13 = (v9 + 1);
      v3 = (v8 - (v9 + 1));
    }

    while (v3 >= v7);
  }

  v9 = v8;
  return v9 != v8 && v9 == v4;
}

BOOL sub_1AB614564(uint64_t a1, uint64_t *a2, char *a3)
{
  v3 = *(a2 + 23);
  v4 = a3[23];
  if (v4 >= 0)
  {
    v5 = a3[23];
  }

  else
  {
    v5 = *(a3 + 1);
  }

  if (v4 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  if (v3 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v3 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = v7 == v5;
  v10 = v7 - v9;
  if (v7 < v9)
  {
    return 1;
  }

  if (v5)
  {
    if (v10 >= v5)
    {
      v12 = v8 + v7;
      v13 = v8 + v9;
      v14 = *v6;
      while (1)
      {
        v15 = v10 - v5;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v13, v14, v15 + 1);
        if (!v16)
        {
          break;
        }

        v17 = v16;
        if (!memcmp(v16, v6, v5))
        {
          if (v17 == v12)
          {
            return 1;
          }

          v9 = v17 - v8;
          return v9 != 0;
        }

        v13 = v17 + 1;
        v10 = v12 - (v17 + 1);
        if (v10 < v5)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  return v9 != 0;
}

float sub_1AB614644(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], a2, a3);
  v6 = objc_msgSend_currentCalendar(MEMORY[0x1E695DEE8], v4, v5);
  v8 = objc_msgSend_components_fromDate_(v6, v7, 252, v3);
  v11 = objc_msgSend_copy(v8, v9, v10);
  objc_msgSend_setDay_(v11, v12, 1);
  objc_msgSend_setMonth_(v11, v13, 1);
  v14 = objc_alloc(MEMORY[0x1E695DEE8]);
  v16 = objc_msgSend_initWithCalendarIdentifier_(v14, v15, *MEMORY[0x1E695D850]);
  v18 = objc_msgSend_dateFromComponents_(v16, v17, v11);
  v20 = objc_msgSend_components_fromDate_toDate_options_(v16, v19, 16, v18, v3, 0);
  v23 = objc_msgSend_year(v8, v21, v22);
  v26 = fabs((objc_msgSend_day(v20, v24, v25) + 1));
  return v26 / dbl_1AB62A780[(objc_msgSend_year(v8, v27, v28) & 3) == 0] + v23;
}

void sub_1AB614748(void *a1, const char *a2, int a3, char a4)
{
  v4 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F2038850;
  operator new();
}

uint64_t sub_1AB6148A0(uint64_t a1)
{
  *a1 = &unk_1F2038850;
  pthread_mutex_destroy(*(a1 + 8));
  v4 = *(a1 + 8);
  v5 = *(v4 + 104);
  if (v5)
  {
    free(v5);
    v4 = *(a1 + 8);
    *(v4 + 104) = 0;
  }

  objc_msgSend_assertInside(*(v4 + 64), v2, v3);

  v6 = *(a1 + 8);
  if (v6)
  {
    MEMORY[0x1AC5A03A0](v6, 0x10B0C4016A090D5);
  }

  return a1;
}

void sub_1AB614938(uint64_t a1)
{
  sub_1AB6148A0(a1);

  JUMPOUT(0x1AC5A03A0);
}

pthread_t sub_1AB614970(uint64_t a1, const char *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(*(*(a1 + 8) + 64), a2, a3);
  if (pthread_mutex_lock(*(a1 + 8)))
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
    }

    v11 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = &unk_1AB62CB23;
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "error == 0";
      _os_log_impl(&dword_1AB607000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
      }
    }

    v12 = off_1EB46D730;
    if (os_signpost_enabled(off_1EB46D730))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = &unk_1AB62CB23;
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "error == 0";
      _os_signpost_emit_with_name_impl(&dword_1AB607000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
      }
    }

    v13 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = &unk_1AB62CB23;
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "error == 0";
      _os_log_impl(&dword_1AB607000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/LocationEssentials/Daemon/Core/CSI/CLMachThreadSupport.mm", 184, "lock");
    goto LABEL_51;
  }

  result = pthread_self();
  v5 = *(a1 + 8);
  v6 = *(v5 + 72);
  if (v6 < 0)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
    }

    v14 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = &unk_1AB62CB23;
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "info->fCount >= 0";
      _os_log_impl(&dword_1AB607000, v14, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
      }
    }

    v15 = off_1EB46D730;
    if (os_signpost_enabled(off_1EB46D730))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = &unk_1AB62CB23;
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "info->fCount >= 0";
      _os_signpost_emit_with_name_impl(&dword_1AB607000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
      }
    }

    v16 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = &unk_1AB62CB23;
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "info->fCount >= 0";
      _os_log_impl(&dword_1AB607000, v16, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/LocationEssentials/Daemon/Core/CSI/CLMachThreadSupport.mm", 199, "lock");
    goto LABEL_51;
  }

  v7 = *(v5 + 80);
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_17;
    }

    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
    }

    v17 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = &unk_1AB62CB23;
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "(info->fCount > 0) || (info->fOwner == __null)";
      _os_log_impl(&dword_1AB607000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
      }
    }

    v18 = off_1EB46D730;
    if (os_signpost_enabled(off_1EB46D730))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = &unk_1AB62CB23;
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "(info->fCount > 0) || (info->fOwner == __null)";
      _os_signpost_emit_with_name_impl(&dword_1AB607000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
      }
    }

    v19 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = &unk_1AB62CB23;
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "(info->fCount > 0) || (info->fOwner == __null)";
      _os_log_impl(&dword_1AB607000, v19, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/LocationEssentials/Daemon/Core/CSI/CLMachThreadSupport.mm", 201, "lock");
LABEL_51:
    __asm { BL              ___stack_chk_fail }
  }

  if (v7 != result)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
    }

    v8 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = &unk_1AB62CB23;
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "(info->fCount == 0) || (info->fOwner == curThread)";
      _os_log_impl(&dword_1AB607000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
      }
    }

    v9 = off_1EB46D730;
    if (os_signpost_enabled(off_1EB46D730))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = &unk_1AB62CB23;
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "(info->fCount == 0) || (info->fOwner == curThread)";
      _os_signpost_emit_with_name_impl(&dword_1AB607000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
      }
    }

    v10 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v21 = 0;
      v22 = 2082;
      v23 = &unk_1AB62CB23;
      v24 = 2082;
      v25 = "assert";
      v26 = 2081;
      v27 = "(info->fCount == 0) || (info->fOwner == curThread)";
      _os_log_impl(&dword_1AB607000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/LocationEssentials/Daemon/Core/CSI/CLMachThreadSupport.mm", 200, "lock");
    goto LABEL_51;
  }

LABEL_17:
  *(v5 + 72) = v6 + 1;
  *(v5 + 80) = result;
  return result;
}

uint64_t sub_1AB615268(uint64_t a1, const char *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  objc_msgSend_assertInside(*(*(a1 + 8) + 64), a2, a3);
  v4 = *(a1 + 8);
  v5 = *(v4 + 72);
  if (v5 <= 0)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
    }

    v8 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = &unk_1AB62CB23;
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "info->fCount > 0";
      _os_log_impl(&dword_1AB607000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
      }
    }

    v9 = off_1EB46D730;
    if (os_signpost_enabled(off_1EB46D730))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = &unk_1AB62CB23;
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "info->fCount > 0";
      _os_signpost_emit_with_name_impl(&dword_1AB607000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
      }
    }

    v10 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = &unk_1AB62CB23;
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "info->fCount > 0";
      _os_log_impl(&dword_1AB607000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/LocationEssentials/Daemon/Core/CSI/CLMachThreadSupport.mm", 222, "unlock");
LABEL_28:
    __asm { BL              ___stack_chk_fail }
  }

  v6 = v5 - 1;
  *(v4 + 72) = v6;
  if (!v6)
  {
    *(v4 + 80) = 0;
  }

  result = pthread_mutex_unlock(v4);
  if (result)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
    }

    v11 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = &unk_1AB62CB23;
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "error == 0";
      _os_log_impl(&dword_1AB607000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
      }
    }

    v12 = off_1EB46D730;
    if (os_signpost_enabled(off_1EB46D730))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = &unk_1AB62CB23;
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "error == 0";
      _os_signpost_emit_with_name_impl(&dword_1AB607000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSI assertion failed", "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F20388D8);
      }
    }

    v13 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = &unk_1AB62CB23;
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "error == 0";
      _os_log_impl(&dword_1AB607000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CSI assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/LocationEssentials/Daemon/Core/CSI/CLMachThreadSupport.mm", 228, "unlock");
    goto LABEL_28;
  }

  return result;
}

BOOL sub_1AB615734(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a2;
  objc_msgSend_assertInside(*(*(a1 + 8) + 64), a2, a3);
  return *(*(a1 + 8) + 72) == v3;
}

BOOL sub_1AB615774(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_assertInside(*(*(a1 + 8) + 64), a2, a3);
  v4 = *(*(a1 + 8) + 80);
  return v4 == pthread_self();
}

BOOL sub_1AB6157B4(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_assertInside(*(*(a1 + 8) + 64), a2, a3);
  v4 = *(*(a1 + 8) + 80);
  return v4 != pthread_self();
}

os_log_t sub_1AB6157FC()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1EB46D730 = result;
  return result;
}

FILE **sub_1AB61582C(FILE **a1)
{
  sub_1AB615860(a1);
  sub_1AB6148A0((a1 + 4));
  return a1;
}

uint64_t sub_1AB615860(FILE **a1)
{
  v2 = a1 + 4;
  (*&a1[4]->_flags)(a1 + 4);
  v3 = *a1;
  if (*a1)
  {
    *a1 = 0;
    fclose(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    free(v4);
    a1[1] = 0;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  sub_1AB615B3C(a1);
  (*(*v2 + 24))(v2);
  return v5;
}

void sub_1AB61592C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AB611664(va);
  _Unwind_Resume(a1);
}

FILE *sub_1AB615940(FILE **a1)
{
  v2 = a1 + 4;
  (*&a1[4]->_flags)(a1 + 4);
  if (!*a1)
  {
    v3 = malloc_type_malloc(*(a1 + 4), 0x100004077774924uLL);
    a1[1] = v3;
    if (v3)
    {
      *a1 = funopen(a1, 0, sub_1AB615A54, 0, sub_1AB615B38);
      sub_1AB615B3C(a1);
    }
  }

  v4 = *a1;
  (a1[4]->_bf._base)(v2);
  return v4;
}

void sub_1AB615A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AB611664(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AB615A54(uint64_t a1, const void *a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = a1 + 32;
  (*(*(a1 + 32) + 16))(a1 + 32);
  v7 = *(v6 - 24);
  if (v7)
  {
    v8 = *(a1 + 20);
    v9 = *(a1 + 16) - v8;
    if (v9 >= v3)
    {
      v3 = v3;
    }

    else
    {
      v3 = v9;
    }

    memcpy((v7 + v8), a2, v3);
    v10 = *(a1 + 16);
    v11 = (*(a1 + 20) + v3) % v10;
    if (*(a1 + 24) + v3 < v10)
    {
      v10 = *(a1 + 24) + v3;
    }

    *(a1 + 20) = v11;
    *(a1 + 24) = v10;
  }

  else
  {
    v3 = 0;
  }

  (*(*v6 + 24))(v6);
  return v3;
}

uint64_t sub_1AB615B3C(uint64_t a1)
{
  v1 = a1 + 32;
  (*(*(a1 + 32) + 16))(a1 + 32);
  *(v1 - 12) = 0;
  return (*(*v1 + 24))(v1);
}

uint64_t sub_1AB615BB4(uint64_t a1, FILE *a2)
{
  v4 = a1 + 32;
  (*(*(a1 + 32) + 16))(a1 + 32);
  v5 = *(v4 - 24);
  if (v5)
  {
    if (*a1)
    {
      fflush(*a1);
      v5 = *(a1 + 8);
    }

    v6 = *(a1 + 24);
    v7 = *(a1 + 16);
    if (v6 >= v7)
    {
      v8 = v5 + v7;
      v9 = *(v8 - 1);
      *(v8 - 1) = 0;
      fputs((*(a1 + 8) + *(a1 + 20)), a2);
      fputc(v9, a2);
      v5 = *(a1 + 8);
    }

    *(v5 + *(a1 + 20)) = 0;
    fputs(*(a1 + 8), a2);
    sub_1AB615B3C(a1);
  }

  else
  {
    v6 = 0;
  }

  (*(*v4 + 24))(v4);
  return v6;
}

void sub_1AB615CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AB611664(va);
  _Unwind_Resume(a1);
}

void sub_1AB615CEC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v22[2] = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(a1 + 23) < 0)
  {
    if (!*(a1 + 8))
    {
LABEL_7:
      v4 = CFCopyUserName();
      goto LABEL_8;
    }

    v2 = *a1;
  }

  else if (!*(a1 + 23))
  {
    goto LABEL_7;
  }

  v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v2, 0x8000100u);
LABEL_8:
  v5 = v4;
  sub_1AB616634();
  if (sub_1AB6171E8() && (v6 = getenv("_SET_CLPERSISTENTSTORE_TEST_PATH")) != 0)
  {
    v8 = MEMORY[0x1E696AEC0];
    v22[0] = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, v6);
    v22[1] = v5;
    v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v9, v22, 2);
    v12 = objc_msgSend_pathWithComponents_(v8, v11, v10);
    v15 = objc_msgSend_UTF8String(v12, v13, v14);
    sub_1AB60FD88(&v20, v15);
    *a2 = v20;
    a2[2] = v21;
  }

  else if (v5)
  {
    v16 = CFCopyHomeDirectoryURLForUser();
    v17 = v16;
    if (v16)
    {
      v18 = CFURLCopyFileSystemPath(v16, kCFURLPOSIXPathStyle);
      v19 = v18;
      if (v18)
      {
        sub_1AB6195C0(v18, &v20);
        *a2 = v20;
        a2[2] = v21;
        CFRelease(v19);
      }

      CFRelease(v17);
    }

    CFRelease(v5);
  }
}

void sub_1AB615E68(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AB615E98(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    if (*(a1 + 8))
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if (*(a1 + 23))
  {
    goto LABEL_3;
  }

  v5 = CFCopyUserName();
  sub_1AB6195C0(v5, &v16);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = *&v16.__r_.__value_.__l.__data_;
  v6 = v16.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v16.__r_.__value_.__l + 2);
  v4 = HIBYTE(v6);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    if (!v4)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_10:
  if (!*(a1 + 8))
  {
    return;
  }

LABEL_11:
  sub_1AB615FF4(&v15);
  v7 = std::string::append(&v15, "/private/var/Managed Preferences/", 0x21uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = *(a1 + 8);
  }

  v12 = std::string::append(&v16, v10, v11);
  size = v12->__r_.__value_.__l.__size_;
  *a2 = v12->__r_.__value_.__r.__words[0];
  *(a2 + 8) = size;
  *(a2 + 15) = *(&v12->__r_.__value_.__r.__words[1] + 7);
  LOBYTE(size) = *(&v12->__r_.__value_.__s + 23);
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
  *(a2 + 23) = size;
  if (v14 < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1AB615FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

const __CFString *sub_1AB615FF4@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (qword_1ED4B7E40 != -1)
  {
    dispatch_once(&qword_1ED4B7E40, &unk_1F20388F8);
  }

  result = qword_1ED4B7E38;
  if (qword_1ED4B7E38)
  {

    return sub_1AB6195C0(result, a1);
  }

  return result;
}

void sub_1AB616070(int a1@<W0>, std::string *a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1 == 3)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038918);
    }

    v7 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_DEFAULT))
    {
      v14.__r_.__value_.__r.__words[0] = 0x304020100;
      _os_log_impl(&dword_1AB607000, v7, OS_LOG_TYPE_DEFAULT, "no mutable store path for type, %{public}d", &v14, 8u);
    }

    v8 = sub_1AB60902C();
    if (*(v8 + 160) <= 1 && *(v8 + 164) <= 1 && *(v8 + 168) <= 1 && !*(v8 + 152))
    {
      goto LABEL_38;
    }

    bzero(&v14, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038918);
    }

    v15[0] = 0x304020100;
    v9 = _os_log_send_and_compose_impl(2, 0, &v14, 1628, &dword_1AB607000, off_1EB46D730, 0, "no mutable store path for type, %{public}d", v15, 8);
    sub_1AB60C944("Generic", 1, 0, 2, "static std::string CLPersistentStore::getMutableStorePath(CLPersistentStoreType)", "CoreLocation: %s\n", v9);
    goto LABEL_36;
  }

  if (a1)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038918);
    }

    v10 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v14.__r_.__value_.__l.__data_) = 67240192;
      HIDWORD(v14.__r_.__value_.__r.__words[0]) = a1;
      _os_log_impl(&dword_1AB607000, v10, OS_LOG_TYPE_FAULT, "could not get mutable store path for type, %{public}d", &v14, 8u);
    }

    v11 = sub_1AB60902C();
    if ((*(v11 + 160) & 0x80000000) != 0 && (*(v11 + 164) & 0x80000000) != 0 && (*(v11 + 168) & 0x80000000) != 0 && !*(v11 + 152))
    {
      goto LABEL_38;
    }

    bzero(&v14, 0x65CuLL);
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2038918);
    }

    LODWORD(v15[0]) = 67240192;
    HIDWORD(v15[0]) = a1;
    v9 = _os_log_send_and_compose_impl(2, 0, &v14, 1628, &dword_1AB607000, off_1EB46D730, 17, "could not get mutable store path for type, %{public}d", v15, 8);
    sub_1AB60C944("Generic", 1, 0, 0, "static std::string CLPersistentStore::getMutableStorePath(CLPersistentStoreType)", "CoreLocation: %s\n", v9);
LABEL_36:
    if (v9 != &v14)
    {
      free(v9);
    }

LABEL_38:
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    return;
  }

  sub_1AB60FD88(__p, "root");
  sub_1AB615CEC(__p, &v14);
  sub_1AB60FD88(v15, "/Library/Caches/locationd/");
  if ((v16 & 0x80u) == 0)
  {
    v4 = v15;
  }

  else
  {
    v4 = v15[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = v15[1];
  }

  v6 = std::string::append(&v14, v4, v5);
  *a2 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1AB616448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 73) < 0)
  {
    operator delete(*(v23 - 96));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AB61649C(std::string *a1@<X8>)
{
  sub_1AB615FF4(&v3);
  v2 = std::string::append(&v3, "/System/Library/Frameworks/CoreLocation.framework", 0x31uLL);
  *a1 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }
}

void sub_1AB616508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1AB616538@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = sub_1AB611708(a3, v6 + v5);
  if (result[23] >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

os_log_t sub_1AB616604()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  off_1EB46D730 = result;
  return result;
}

uint64_t sub_1AB616634()
{
  if (qword_1ED4B7E58[0] != -1)
  {
    dispatch_once(qword_1ED4B7E58, &unk_1F2038938);
  }

  return qword_1ED4B7E50;
}

void sub_1AB6166E4(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED4B7E68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED4B7E68))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED4B7EB8, &dword_1AB607000);
    __cxa_guard_release(&qword_1ED4B7E68);
  }

  if (qword_1ED4B7E70 != -1)
  {
    dispatch_once(&qword_1ED4B7E70, &unk_1F2038988);
  }

  if (byte_1ED4B7ECF < 0)
  {
    v2 = xmmword_1ED4B7EB8;

    sub_1AB60C84C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED4B7EB8;
    *(a1 + 16) = unk_1ED4B7EC8;
  }
}

const __CFDictionary *sub_1AB6167CC()
{
  v19[2] = *MEMORY[0x1E69E9840];
  result = _CFCopyServerVersionDictionary();
  if (result || (result = _CFCopySystemVersionDictionary()) != 0)
  {
    v1 = result;
    sub_1AB617ADC(v18, result);
    CFRelease(v1);
    memset(&v17, 0, sizeof(v17));
    memset(&v16, 0, sizeof(v16));
    memset(&__p, 0, sizeof(__p));
    if ((sub_1AB61B6F0(v18, *MEMORY[0x1E695E1F0], &v16) & 1) == 0)
    {
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        v16.__r_.__value_.__l.__size_ = 6;
        v2 = v16.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v16.__r_.__value_.__s + 23) = 6;
        v2 = &v16;
      }

      strcpy(v2, "<name>");
    }

    if ((sub_1AB61B6F0(v18, *MEMORY[0x1E695E208], &v17) & 1) == 0)
    {
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        v17.__r_.__value_.__l.__size_ = 9;
        v3 = v17.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v17.__r_.__value_.__s + 23) = 9;
        v3 = &v17;
      }

      strcpy(v3, "<version>");
    }

    if ((sub_1AB61B6F0(v18, *MEMORY[0x1E695E1E8], &__p) & 1) == 0)
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        __p.__r_.__value_.__l.__size_ = 7;
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&__p.__r_.__value_.__s + 23) = 7;
        p_p = &__p;
      }

      strcpy(p_p, "<build>");
    }

    sub_1AB616538(&v16.__r_.__value_.__l.__data_, &v17.__r_.__value_.__l.__data_, &v13);
    v5 = std::string::append(&v13, "/", 1uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &__p;
    }

    else
    {
      v7 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v9 = std::string::append(&v14, v7, size);
    v10 = v9->__r_.__value_.__r.__words[0];
    v19[0] = v9->__r_.__value_.__l.__size_;
    *(v19 + 7) = *(&v9->__r_.__value_.__r.__words[1] + 7);
    v11 = HIBYTE(v9->__r_.__value_.__r.__words[2]);
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (byte_1ED4B7ECF < 0)
    {
      operator delete(xmmword_1ED4B7EB8);
    }

    *&xmmword_1ED4B7EB8 = v10;
    *(&xmmword_1ED4B7EB8 + 1) = v19[0];
    *(&xmmword_1ED4B7EB8 + 15) = *(v19 + 7);
    byte_1ED4B7ECF = v11;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    return sub_1AB617CE0(v18);
  }

  else
  {
    if (byte_1ED4B7ECF < 0)
    {
      *(&xmmword_1ED4B7EB8 + 1) = 6;
      v12 = xmmword_1ED4B7EB8;
    }

    else
    {
      v12 = &xmmword_1ED4B7EB8;
      byte_1ED4B7ECF = 6;
    }

    strcpy(v12, "<null>");
  }

  return result;
}

void sub_1AB616AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (*(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  sub_1AB617CE0((v34 - 72));
  _Unwind_Resume(a1);
}

void sub_1AB616B60(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED4B7E78, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    v4 = __cxa_guard_acquire(&qword_1ED4B7E78);
    a1 = v3;
    if (v4)
    {
      __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED4B7ED0, &dword_1AB607000);
      __cxa_guard_release(&qword_1ED4B7E78);
      a1 = v3;
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AB616C98;
  block[3] = &unk_1E7952148;
  block[4] = a1;
  if (qword_1ED4B7E80 != -1)
  {
    dispatch_once(&qword_1ED4B7E80, block);
  }

  if (byte_1ED4B7EE7 < 0)
  {
    sub_1AB60C84C(a2, xmmword_1ED4B7ED0, *(&xmmword_1ED4B7ED0 + 1));
  }

  else
  {
    *a2 = xmmword_1ED4B7ED0;
    *(a2 + 16) = unk_1ED4B7EE0;
  }
}

double sub_1AB616C98()
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 128;
  if (sysctlbyname("hw.model", v5, &v4, 0, 0))
  {
    v0 = &unk_1AB62CB23;
  }

  else
  {
    v0 = v5;
  }

  sub_1AB60FD88(&v2, v0);
  if (byte_1ED4B7EE7 < 0)
  {
    operator delete(xmmword_1ED4B7ED0);
  }

  result = *&v2;
  xmmword_1ED4B7ED0 = v2;
  unk_1ED4B7EE0 = v3;
  return result;
}

void sub_1AB616D58(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED4B7E88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED4B7E88))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], byte_1ED4B7EE8, &dword_1AB607000);
    __cxa_guard_release(&qword_1ED4B7E88);
  }

  if (qword_1ED4B7E90 != -1)
  {
    dispatch_once(&qword_1ED4B7E90, &unk_1F20389A8);
  }

  if (byte_1ED4B7EE8[23] < 0)
  {
    v2 = *byte_1ED4B7EE8;
    v3 = *&byte_1ED4B7EE8[8];

    sub_1AB60C84C(a1, v2, v3);
  }

  else
  {
    *a1 = *byte_1ED4B7EE8;
    *(a1 + 16) = *&byte_1ED4B7EE8[16];
  }
}

void sub_1AB616E40()
{
  sub_1AB61649C(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v1 = *MEMORY[0x1E695E480];
  v2 = CFStringCreateWithCString(*MEMORY[0x1E695E480], p_p, 0x8000100u);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v2)
  {
    v3 = CFGetTypeID(v2);
    if (v3 == CFStringGetTypeID())
    {
      v4 = CFURLCreateWithFileSystemPath(v1, v2, kCFURLPOSIXPathStyle, 0);
      if (v4)
      {
        v5 = v4;
        v6 = CFBundleCreate(v1, v4);
        if (v6)
        {
          v7 = v6;
          ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v6, *MEMORY[0x1E695E500]);
          if (ValueForInfoDictionaryKey)
          {
            v9 = ValueForInfoDictionaryKey;
            v10 = CFGetTypeID(ValueForInfoDictionaryKey);
            if (v10 == CFStringGetTypeID())
            {
              sub_1AB6195C0(v9, &__p);
              if (byte_1ED4B7EE8[23] < 0)
              {
                operator delete(*byte_1ED4B7EE8);
              }

              *byte_1ED4B7EE8 = __p;
            }
          }

          CFRelease(v2);
          v2 = v5;
        }

        else
        {
          v7 = v5;
        }

        CFRelease(v2);
        v2 = v7;
      }
    }

    CFRelease(v2);
  }
}

void sub_1AB616F9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AB616FB8(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED4B7E98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED4B7E98))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED4B7F00, &dword_1AB607000);
    __cxa_guard_release(&qword_1ED4B7E98);
  }

  if (qword_1ED4B7EA0 != -1)
  {
    dispatch_once(&qword_1ED4B7EA0, &unk_1F20389C8);
  }

  if (byte_1ED4B7F17 < 0)
  {
    v2 = xmmword_1ED4B7F00;

    sub_1AB60C84C(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED4B7F00;
    *(a1 + 16) = unk_1ED4B7F10;
  }
}

uint64_t sub_1AB6170A0()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching("IOPlatformExpertDevice");
  result = IOServiceGetMatchingService(v0, v1);
  if (result)
  {
    v3 = result;
    CFProperty = IORegistryEntryCreateCFProperty(result, @"IOPlatformSerialNumber", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v5 = CFProperty;
      sub_1AB6195C0(CFProperty, &v6);
      if (byte_1ED4B7F17 < 0)
      {
        operator delete(xmmword_1ED4B7F00);
      }

      xmmword_1ED4B7F00 = v6;
      unk_1ED4B7F10 = v7;
      CFRelease(v5);
    }

    return IOObjectRelease(v3);
  }

  return result;
}

BOOL sub_1AB61715C()
{
  if (MGGetBoolAnswer())
  {
    return 1;
  }

  if (qword_1ED4B7EB0 != -1)
  {
    dispatch_once(&qword_1ED4B7EB0, &unk_1F2038A18);
  }

  return byte_1ED4B7E49 == 1;
}

uint64_t sub_1AB6171E8()
{
  if (qword_1ED4B7EA8 != -1)
  {
    dispatch_once(&qword_1ED4B7EA8, &unk_1F20389E8);
  }

  return byte_1ED4B7E48;
}

void sub_1AB617230()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) == 1)
    {
      byte_1ED4B7E48 = 1;
    }

    CFRelease(v1);
  }
}

void sub_1AB6172B4()
{
  v0 = objc_autoreleasePoolPush();
  byte_1ED4B7E49 = 0;
  v1 = *MEMORY[0x1E695E898];
  v2 = CFPreferencesCopyValue(@"StoreDemoMode", @"com.apple.demo-settings", @"mobile", *MEMORY[0x1E695E898]);
  if (v2)
  {
    v3 = v2;
    CFAutorelease(v2);
    v4 = CFGetTypeID(v3);
    if (v4 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v3))
      {
        v5 = CFPreferencesCopyValue(@"FProgramNumber", @"com.apple.demo-settings", @"mobile", v1);
        if (v5)
        {
          v6 = v5;
          CFAutorelease(v5);
          v7 = CFGetTypeID(v6);
          if (v7 == CFNumberGetTypeID())
          {
            valuePtr = 0;
            if (CFNumberGetValue(v6, kCFNumberIntType, &valuePtr))
            {
              byte_1ED4B7E49 = valuePtr == 5;
            }
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1AB61752C(void *a1@<X8>)
{
  if (qword_1ED4B7F18 != -1)
  {
    dispatch_once_f(&qword_1ED4B7F18, 0, sub_1AB6173C8);
  }

  v2 = *(qword_1ED4B7F20 + 144);
  *a1 = *(qword_1ED4B7F20 + 136);
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void *sub_1AB6175A0(void *a1)
{
  *a1 = &unk_1F2038A48;
  v2 = a1[18];
  if (v2)
  {
    sub_1AB611794(v2);
  }

  return sub_1AB60A460(a1);
}

void sub_1AB617600(void *a1)
{
  sub_1AB6175A0(a1);

  JUMPOUT(0x1AC5A03A0);
}

void sub_1AB61763C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC5A03A0);
}

uint64_t sub_1AB617678(uint64_t a1, uint64_t a2)
{
  if (sub_1AB611908(a2, &unk_1F2038E68))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1AB6176B8(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, a1);
  v8 = objc_msgSend_contentsOfDirectoryAtPath_error_(v4, v7, v6, 0);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = objc_msgSend_reverseObjectEnumerator(v8, v9, v10, 0);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v20, v24, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v21;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v21 != v17)
      {
        objc_enumerationMutation(v11);
      }

      v19 = objc_msgSend_UTF8String(*(*(&v20 + 1) + 8 * v18), v14, v15);
      if (!(*(a2 + 16))(a2, v19))
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v20, v24, 16);
        if (v16)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

char *sub_1AB6177F8(char *a1, const __CFString *a2, char a3)
{
  v4 = sub_1AB609BE8(a1, a2, a3, 0x1F2039780);
  *v4 = &unk_1F2038E88;
  if (*(v4 + 16) == 1)
  {
    sub_1AB60A544(a1, 1);
  }

  return a1;
}

void sub_1AB617874(uint64_t a1)
{
  sub_1AB60A460(a1);

  JUMPOUT(0x1AC5A03A0);
}

BOOL sub_1AB6178B0(uint64_t a1, const __CFString *a2, const void *a3)
{
  sub_1AB60C010(a1, a2, a3);

  return sub_1AB60A3A4(a1);
}

void *sub_1AB6178E8(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F2039268;
  a1[1] = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  a1[1] = Mutable;
  if (!Mutable)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v3 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AB607000, v3, OS_LOG_TYPE_FAULT, "could not create new mutable dictionary", buf, 2u);
    }

    v4 = sub_1AB60902C();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v7[0] = 0;
      v5 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "could not create new mutable dictionary", v7, 2);
      sub_1AB60C944("Generic", 1, 0, 0, "CLNameValuePair::CLNameValuePair()", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  return a1;
}

void *sub_1AB617ADC(void *a1, CFDictionaryRef theDict)
{
  v11 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F2039268;
  a1[1] = 0;
  v3 = *MEMORY[0x1E695E480];
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v3, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  a1[1] = MutableCopy;
  if (!MutableCopy)
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v5 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AB607000, v5, OS_LOG_TYPE_FAULT, "could not create new mutable dictionary", buf, 2u);
    }

    v6 = sub_1AB60902C();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v9[0] = 0;
      v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "could not create new mutable dictionary", v9, 2);
      sub_1AB60C944("Generic", 1, 0, 0, "CLNameValuePair::CLNameValuePair(CFDictionaryRef)", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  return a1;
}

void *sub_1AB617CE0(void *a1)
{
  *a1 = &unk_1F2039268;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1AB617D34(void *a1)
{
  sub_1AB617CE0(a1);

  JUMPOUT(0x1AC5A03A0);
}

uint64_t sub_1AB617DF4(void *context, uint64_t a2, int a3)
{
  v4 = *(a2 + 8);
  if (a3)
  {
    v5 = sub_1AB617DB8;
  }

  else
  {
    v5 = sub_1AB617D7C;
  }

  CFDictionaryApplyFunction(v4, v5, context);
  v6 = *(*context + 848);

  return v6(context);
}

uint64_t sub_1AB617E8C(uint64_t *a1, const char *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFF8];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, a2);
  isDirectory = objc_msgSend_fileURLWithPath_isDirectory_(v4, v6, v5, 0);
  if (isDirectory)
  {
    v52 = 0;
    if (objc_opt_respondsToSelector())
    {
      v9 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x1E695DEF0], v8, isDirectory, 0, &v52);
    }

    else
    {
      v9 = objc_msgSend_dataWithContentsOfURL_(MEMORY[0x1E695DEF0], v8, isDirectory);
    }

    v15 = *a1;
    if (!v9)
    {
      (*(v15 + 872))(a1);
      result = v52;
      if (!v52)
      {
        return result;
      }

      v18 = objc_msgSend_domain(v52, v16, v17);
      if (objc_msgSend_isEqual_(v18, v19, *MEMORY[0x1E696A250]) && objc_msgSend_code(v52, v20, v21) == 260)
      {
        if (qword_1EB46D708 != -1)
        {
          dispatch_once(&qword_1EB46D708, &unk_1F2039640);
        }

        v22 = qword_1EB46D710;
        if (os_log_type_enabled(qword_1EB46D710, OS_LOG_TYPE_ERROR))
        {
          v25 = objc_msgSend_description(v52, v23, v24);
          v28 = objc_msgSend_UTF8String(v25, v26, v27);
          *buf = 68289538;
          v54 = 0;
          v55 = 2082;
          v56 = &unk_1AB62CB23;
          v57 = 2082;
          v58 = a2;
          v59 = 2082;
          v60 = v28;
          _os_log_impl(&dword_1AB607000, v22, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:file does not exist... clearing, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}", buf, 0x26u);
          if (qword_1EB46D708 != -1)
          {
            dispatch_once(&qword_1EB46D708, &unk_1F2039640);
          }
        }

        v29 = qword_1EB46D710;
        result = os_signpost_enabled(qword_1EB46D710);
        if (!result)
        {
          return result;
        }

        v32 = objc_msgSend_description(v52, v30, v31);
        v35 = objc_msgSend_UTF8String(v32, v33, v34);
        *buf = 68289538;
        v54 = 0;
        v55 = 2082;
        v56 = &unk_1AB62CB23;
        v57 = 2082;
        v58 = a2;
        v59 = 2082;
        v60 = v35;
        v13 = "file does not exist... clearing";
        v14 = "{msg%{public}.0s:file does not exist... clearing, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}";
      }

      else
      {
        if (qword_1EB46D708 != -1)
        {
          dispatch_once(&qword_1EB46D708, &unk_1F2039640);
        }

        v39 = qword_1EB46D710;
        if (os_log_type_enabled(qword_1EB46D710, OS_LOG_TYPE_ERROR))
        {
          v42 = objc_msgSend_description(v52, v40, v41);
          v45 = objc_msgSend_UTF8String(v42, v43, v44);
          *buf = 68289538;
          v54 = 0;
          v55 = 2082;
          v56 = &unk_1AB62CB23;
          v57 = 2082;
          v58 = a2;
          v59 = 2082;
          v60 = v45;
          _os_log_impl(&dword_1AB607000, v39, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Warning Error reading file, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}", buf, 0x26u);
          if (qword_1EB46D708 != -1)
          {
            dispatch_once(&qword_1EB46D708, &unk_1F2039640);
          }
        }

        v29 = qword_1EB46D710;
        result = os_signpost_enabled(qword_1EB46D710);
        if (!result)
        {
          return result;
        }

        v48 = objc_msgSend_description(v52, v46, v47);
        v51 = objc_msgSend_UTF8String(v48, v49, v50);
        *buf = 68289538;
        v54 = 0;
        v55 = 2082;
        v56 = &unk_1AB62CB23;
        v57 = 2082;
        v58 = a2;
        v59 = 2082;
        v60 = v51;
        v13 = "#Warning Error reading file";
        v14 = "{msg%{public}.0s:#Warning Error reading file, file:%{public, location:escape_only}s, error:%{public, location:escape_only}s}";
      }

      v37 = v29;
      v38 = 38;
      goto LABEL_41;
    }

    if ((*(v15 + 784))(a1))
    {
      return 1;
    }

    if (qword_1EB46D708 != -1)
    {
      dispatch_once(&qword_1EB46D708, &unk_1F2039640);
    }

    v36 = qword_1EB46D710;
    if (os_log_type_enabled(qword_1EB46D710, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v54 = 0;
      v55 = 2082;
      v56 = &unk_1AB62CB23;
      v57 = 2082;
      v58 = a2;
      _os_log_impl(&dword_1AB607000, v36, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:could not deserialize property list, file:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1EB46D708 != -1)
      {
        dispatch_once(&qword_1EB46D708, &unk_1F2039640);
      }
    }

    v11 = qword_1EB46D710;
    result = os_signpost_enabled(qword_1EB46D710);
    if (result)
    {
      *buf = 68289282;
      v54 = 0;
      v55 = 2082;
      v56 = &unk_1AB62CB23;
      v57 = 2082;
      v58 = a2;
      v13 = "could not deserialize property list";
      v14 = "{msg%{public}.0s:could not deserialize property list, file:%{public, location:escape_only}s}";
      goto LABEL_32;
    }
  }

  else
  {
    if (qword_1EB46D708 != -1)
    {
      dispatch_once(&qword_1EB46D708, &unk_1F2039640);
    }

    v10 = qword_1EB46D710;
    if (os_log_type_enabled(qword_1EB46D710, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v54 = 0;
      v55 = 2082;
      v56 = &unk_1AB62CB23;
      v57 = 2082;
      v58 = a2;
      _os_log_impl(&dword_1AB607000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Invalid fileURL, filename:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1EB46D708 != -1)
      {
        dispatch_once(&qword_1EB46D708, &unk_1F2039640);
      }
    }

    v11 = qword_1EB46D710;
    result = os_signpost_enabled(qword_1EB46D710);
    if (result)
    {
      *buf = 68289282;
      v54 = 0;
      v55 = 2082;
      v56 = &unk_1AB62CB23;
      v57 = 2082;
      v58 = a2;
      v13 = "Invalid fileURL";
      v14 = "{msg%{public}.0s:Invalid fileURL, filename:%{public, location:escape_only}s}";
LABEL_32:
      v37 = v11;
      v38 = 28;
LABEL_41:
      _os_signpost_emit_with_name_impl(&dword_1AB607000, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v13, v14, buf, v38);
      return 0;
    }
  }

  return result;
}

void sub_1AB6184C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int buf, int a12, __int128 a13, __int128 a14, __int16 a15, uint64_t a16)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(a1);
    if (qword_1EB46D708 != -1)
    {
      dispatch_once(&qword_1EB46D708, &unk_1F2039640);
    }

    v17 = qword_1EB46D710;
    if (os_log_type_enabled(qword_1EB46D710, OS_LOG_TYPE_ERROR))
    {
      buf = 68289538;
      a12 = 0;
      LOWORD(a13) = 2082;
      *(&a13 + 2) = &unk_1AB62CB23;
      WORD5(a13) = 2082;
      WORD2(a14) = 2114;
      *(&a14 + 6) = v16;
      _os_log_impl(&dword_1AB607000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Can't load data from file, filename:%{public, location:escape_only}s, exception:%{public, location:escape_only}@}", &buf, 0x26u);
      if (qword_1EB46D708 != -1)
      {
        dispatch_once(&qword_1EB46D708, &unk_1F2039640);
      }
    }

    v18 = qword_1EB46D710;
    if (os_signpost_enabled(qword_1EB46D710))
    {
      buf = 68289538;
      a12 = 0;
      LOWORD(a13) = 2082;
      *(&a13 + 2) = &unk_1AB62CB23;
      WORD5(a13) = 2082;
      WORD2(a14) = 2114;
      *(&a14 + 6) = v16;
      _os_signpost_emit_with_name_impl(&dword_1AB607000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Can't load data from file", "{msg%{public}.0s:Can't load data from file, filename:%{public, location:escape_only}s, exception:%{public, location:escape_only}@}", &buf, 0x26u);
    }

    objc_end_catch();
    JUMPOUT(0x1AB6183C8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AB618654(uint64_t a1, void *a2, int a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  v7 = MEMORY[0x1E695DFF8];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v8, a1);
  isDirectory = objc_msgSend_fileURLWithPath_isDirectory_(v7, v10, v9, 0);
  if (isDirectory)
  {
    v13 = 536870913;
    if (a3)
    {
      v13 = 1;
    }

    if (a3 == 1)
    {
      v14 = 1073741825;
    }

    else
    {
      v14 = v13;
    }

    v36 = 0;
    v15 = objc_msgSend_writeToURL_options_error_(a2, v12, isDirectory, v14, &v36);
    if ((v15 & 1) == 0)
    {
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v16 = off_1EB46D730;
      if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_msgSend_description(v36, v17, v18);
        v22 = objc_msgSend_UTF8String(v19, v20, v21);
        *buf = 136446466;
        v42 = a1;
        v43 = 2082;
        v44 = v22;
        _os_log_impl(&dword_1AB607000, v16, OS_LOG_TYPE_ERROR, "Could not write data to disk %{public}s, %{public}s", buf, 0x16u);
      }

      v23 = sub_1AB60902C();
      if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EB46D728 != -1)
        {
          dispatch_once(&qword_1EB46D728, &unk_1F2039620);
        }

        v26 = off_1EB46D730;
        v27 = objc_msgSend_description(v36, v24, v25);
        v30 = objc_msgSend_UTF8String(v27, v28, v29);
        v37 = 136446466;
        v38 = a1;
        v39 = 2082;
        v40 = v30;
        v31 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, v26, 16, "Could not write data to disk %{public}s, %{public}s", &v37, 22);
        sub_1AB60C944("Generic", 1, 0, 0, "BOOL CLNameValuePair::writeDataToFile(const char *, CFDataRef, CLNVPDataProtection) const", "CoreLocation: %s\n", v31);
        if (v31 != buf)
        {
          free(v31);
        }
      }
    }
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v32 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v42 = a1;
      _os_log_impl(&dword_1AB607000, v32, OS_LOG_TYPE_FAULT, "Could not create NSURL for file: %{public}s", buf, 0xCu);
    }

    v33 = sub_1AB60902C();
    if ((*(v33 + 160) & 0x80000000) == 0 || (*(v33 + 164) & 0x80000000) == 0 || (*(v33 + 168) & 0x80000000) == 0 || *(v33 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v37 = 136446210;
      v38 = a1;
      v34 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "Could not create NSURL for file: %{public}s", &v37, 12);
      sub_1AB60C944("Generic", 1, 0, 0, "BOOL CLNameValuePair::writeDataToFile(const char *, CFDataRef, CLNVPDataProtection) const", "CoreLocation: %s\n", v34);
      if (v34 != buf)
      {
        free(v34);
      }
    }

    v15 = 0;
  }

  objc_autoreleasePoolPop(v6);
  return v15;
}

uint64_t sub_1AB618A30(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  cf = 0;
  if ((*(*a1 + 768))(a1, &cf))
  {
    v3 = sub_1AB618654(a2, cf, 2);
  }

  else
  {
    if (qword_1EB46D728 != -1)
    {
      dispatch_once(&qword_1EB46D728, &unk_1F2039620);
    }

    v4 = off_1EB46D730;
    if (os_log_type_enabled(off_1EB46D730, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v12 = a2;
      _os_log_impl(&dword_1AB607000, v4, OS_LOG_TYPE_FAULT, "Could not serialize data for file %{public}s", buf, 0xCu);
    }

    v5 = sub_1AB60902C();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EB46D728 != -1)
      {
        dispatch_once(&qword_1EB46D728, &unk_1F2039620);
      }

      v9 = 136446210;
      v10 = a2;
      v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_1AB607000, off_1EB46D730, 17, "Could not serialize data for file %{public}s", &v9, 12);
      sub_1AB60C944("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::saveToFile(const char *) const", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    v3 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t sub_1AB618C50(uint64_t a1, uint64_t a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  cf = 0;
  sub_1AB613594(v11, "CLNameValuePair.SaveToBinaryFile", 0);
  v6 = objc_autoreleasePoolPush();
  if ((*(*a1 + 776))(a1, &cf))
  {
    v7 = sub_1AB618654(a2, cf, a3);
  }

  else
  {
    if (qword_1EB46D708 != -1)
    {
      dispatch_once(&qword_1EB46D708, &unk_1F2039640);
    }

    v8 = qword_1EB46D710;
    if (os_log_type_enabled(qword_1EB46D710, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v14 = 0;
      v15 = 2082;
      v16 = &unk_1AB62CB23;
      v17 = 2082;
      v18 = a2;
      _os_log_impl(&dword_1AB607000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not serialize data, file:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1EB46D708 != -1)
      {
        dispatch_once(&qword_1EB46D708, &unk_1F2039640);
      }
    }

    v9 = qword_1EB46D710;
    if (os_signpost_enabled(qword_1EB46D710))
    {
      *buf = 68289282;
      v14 = 0;
      v15 = 2082;
      v16 = &unk_1AB62CB23;
      v17 = 2082;
      v18 = a2;
      _os_signpost_emit_with_name_impl(&dword_1AB607000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not serialize data", "{msg%{public}.0s:Could not serialize data, file:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v7 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  objc_autoreleasePoolPop(v6);
  sub_1AB6137DC(v11);
  return v7;
}

void sub_1AB618E94(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  (*(*a1 + 880))(a1, v5, a3);

  CFRelease(v5);
}