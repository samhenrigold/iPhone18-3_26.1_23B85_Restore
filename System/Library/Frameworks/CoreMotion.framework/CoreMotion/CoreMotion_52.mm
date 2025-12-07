void sub_19B729D9C(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (CFStringCompare(*(a1 + 48), @"com.apple.springboard.HasSeenACaseLatchCoverNotification", 0) == kCFCompareEqualTo)
  {
    *(v1 + 34) = 1;
    if (*(v1 + 384))
    {
      sub_19B453A10(v1);
    }
  }

  if (qword_1ED71C7B0 != -1)
  {
    dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
  }

  v2 = off_1ED71C7C0;
  if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 34);
    *buf = 67240192;
    v10 = v3;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "fHasSeenACaseLatchCoverOnce, %{public}d", buf, 8u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v5 = *(v1 + 34);
    v8[0] = 67240192;
    v8[1] = v5;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 0, "fHasSeenACaseLatchCoverOnce, %{public}d", v8, 8);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationNotifier::onCoverNotification(CFNotificationCenterRef, CFStringRef, const void *, CFDictionaryRef)", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }
}

void sub_19B729F98(uint64_t a1, unint64_t a2, unsigned int a3, double a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 402) >= a2)
  {
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v11 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240448;
      v19 = a3;
      v20 = 2050;
      v21 = a2;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEFAULT, "Skipping stale orientation (%{public}u @ %{public}llu)", buf, 0x12u);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      LODWORD(v16) = 67240448;
      HIDWORD(v16) = a3;
      LOWORD(v17[0]) = 2050;
      *(v17 + 2) = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 0, "Skipping stale orientation (%{public}u @ %{public}llu)", &v16, 18);
      v14 = v13;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationNotifier::notifyAOO(const uint64_t, const uint8_t, const CLMotionTypeTimestamp)", "CoreLocation: %s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }

  else
  {
    *(a1 + 401) = a3;
    *(a1 + 402) = a2;
    v16 = a4;
    v17[0] = a3;
    if (qword_1ED71C7B0 != -1)
    {
      dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
    }

    v7 = off_1ED71C7C0;
    if (os_log_type_enabled(off_1ED71C7C0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v19 = a3;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "AOO update: %u", buf, 8u);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B0 != -1)
      {
        dispatch_once(&qword_1ED71C7B0, &unk_1F0E27EA0);
      }

      v15[0] = 67109120;
      v15[1] = a3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C7C0, 2, "AOO update: %u", v15);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLOrientationNotifier::notifyAOO(const uint64_t, const uint8_t, const CLMotionTypeTimestamp)", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    sub_19B4455DC(a1, 0, &v16, 16);
    sub_19B4455DC(a1, 1, &v16, 16);
  }
}

os_log_t sub_19B72A334()
{
  result = os_log_create("com.apple.locationd.Motion", "Orientation");
  off_1ED71C7C0 = result;
  return result;
}

double sub_19B72A398(unsigned __int8 *a1, int a2)
{
  v2 = *a1;
  *a1 = v2 & ~a2;
  if ((v2 & (a2 ^ 0xFF)) == 0)
  {
    *(a1 + 2) = CFAbsoluteTimeGetCurrent();
    sub_19B454944(a1);
    result = 2.22507386e-308;
    *(a1 + 8) = xmmword_19B7BD300;
  }

  return result;
}

unsigned __int8 *sub_19B72A3F0(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      return (*(*a2 + 32))(a2, result);
    }

    else if (v2 == 4)
    {
      return (*(*a2 + 40))(a2, result);
    }
  }

  else if (v2 == 1)
  {
    return (*(*a2 + 16))(a2, result);
  }

  else if (v2 == 2)
  {
    return (*(*a2 + 24))(a2, result);
  }

  return result;
}

uint64_t sub_19B72A4D4(float32x2_t *a1, float32x2_t *a2, double a3)
{
  sub_19B6931F4(a1 + 3, a2);
  v5 = *&a1[7] - 1;
  a1[7] = v5;
  if (!v5)
  {
    a1[7] = a1[6];
    v6 = a1[5].i32[0];
    v8 = a1[4];
    v9 = v6;
    sub_19B5BE720(&a1[8], &v8);
    sub_19B72A554(a1, a3);
  }

  return a1->u8[1];
}

void sub_19B72A554(unsigned __int8 *a1, double a2)
{
  v129 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 33);
  if (*(a1 + 17) != v2)
  {
    return;
  }

  v5 = sub_19B5BF0D0(a1 + 32, 0, v2);
  v7 = v6;
  v9 = v8;
  v10 = 0;
  *(&v123 + 1) = v5;
  v124 = __PAIR64__(LODWORD(v8), LODWORD(v6));
  v11 = 0.0;
  do
  {
    v11 = v11 + (*(&v123 + v10 + 4) * *(&v123 + v10 + 4));
    v10 += 4;
  }

  while (v10 != 12);
  v12 = sqrtf(v11);
  sub_19B5E9EFC(a1 + 32, 0, *(a1 + 33));
  v14 = v13;
  v16 = v15;
  v17 = -(v12 + -1.0);
  if ((v12 + -1.0) > 0.0)
  {
    v17 = v12 + -1.0;
  }

  if (v17 <= 0.25)
  {
    v18 = v13 <= v16 ? v16 : v13;
    if (v18 <= 0.25)
    {
      v19 = -v5;
      if (v5 > 0.0)
      {
        v19 = v5;
      }

      if (v19 <= 1.1)
      {
        v26 = sqrtf((v7 * v7) + (v5 * v5));
        if (v26 > 1.1)
        {
          if (qword_1EAFE27A8 != -1)
          {
            dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
          }

          v27 = qword_1EAFE27E0;
          if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *v128 = v26;
            _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_DEBUG, "Invalid xyNorm, %.2f", buf, 0xCu);
          }

          v28 = sub_19B420058();
          if (*(v28 + 160) <= 1 && *(v28 + 164) <= 1 && *(v28 + 168) <= 1 && !*(v28 + 152))
          {
            return;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE27A8 != -1)
          {
            dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
          }

          v125 = 134217984;
          *v126 = v26;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27E0, 2, "Invalid xyNorm, %.2f");
          goto LABEL_31;
        }

        v29 = v18;
        v30 = (atan2f(v26, -v9) * -57.296) + 90.0;
        if (v30 <= 0.0)
        {
          v31 = -v30;
        }

        else
        {
          v31 = v30;
        }

        if (v31 > 55.0 || ((v32 = *a1, v31 > 30.0) ? (v33 = v32 == 0) : (v33 = 1), !v33))
        {
          if (qword_1EAFE27A8 != -1)
          {
            dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
          }

          v96 = qword_1EAFE27E0;
          if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *v128 = v31;
            _os_log_impl(&dword_19B41C000, v96, OS_LOG_TYPE_DEBUG, "Invalid tilt, %.2f", buf, 0xCu);
          }

          v97 = sub_19B420058();
          if (*(v97 + 160) <= 1 && *(v97 + 164) <= 1 && *(v97 + 168) <= 1 && !*(v97 + 152))
          {
            return;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE27A8 != -1)
          {
            dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
          }

          v125 = 134217984;
          *v126 = v31;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27E0, 2, "Invalid tilt, %.2f");
          goto LABEL_31;
        }

        if (v7 <= 0.0)
        {
          v34 = -v7;
        }

        else
        {
          v34 = v7;
        }

        v35 = atan2f(v5, v34) * 57.296;
        v36 = -v35;
        if (v35 > 0.0)
        {
          v36 = v35;
        }

        if (v36 < 25.0 || (v35 <= 0.0 ? (v37 = 1) : (v37 = 2), v31 > 45.0 ? (v38 = v36 < 37.5) : (v38 = 0), v38))
        {
          if (qword_1EAFE27A8 != -1)
          {
            dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
          }

          v98 = qword_1EAFE27E0;
          v99 = v35;
          if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *v128 = v99;
            _os_log_impl(&dword_19B41C000, v98, OS_LOG_TYPE_DEBUG, "Invalid swivel, %.2f", buf, 0xCu);
          }

          v100 = sub_19B420058();
          if (*(v100 + 160) > 1 || *(v100 + 164) > 1 || *(v100 + 168) > 1 || *(v100 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE27A8 != -1)
            {
              dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
            }

            v125 = 134217984;
            *v126 = v99;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27E0, 2, "Invalid swivel, %.2f", COERCE_DOUBLE(&v125));
            v102 = v101;
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CMCallHandednessDetector::detect(double)", "CoreLocation: %s\n", v101);
            if (v102 != buf)
            {
              free(v102);
            }
          }

          if (*a1)
          {
            return;
          }

          v37 = 0;
        }

        else if (v32)
        {
          v39 = sub_19B5BC7B8(a1 + 32);
          if (v39 <= 0.0)
          {
            v39 = -v39;
          }

          if (v29 > 0.075 || v39 > 1.1)
          {
            goto LABEL_84;
          }

          v40 = sub_19B5BC7B8(a1 + 32);
          v41 = v40 - sub_19B72B3C4(a1 + 32);
          if (v41 <= 0.0)
          {
            v42 = -v41;
          }

          else
          {
            v42 = v41;
          }

          sub_19B5BC7B8(a1 + 32);
          v44 = v43;
          sub_19B72B3C4(a1 + 32);
          v46 = v44 - v45;
          v47 = -(v44 - v45);
          if (v46 <= 0.0)
          {
            v48 = v47;
          }

          else
          {
            v48 = v46;
          }

          v49 = sub_19B5BC7B8(a1 + 32);
          v51 = v50;
          v52 = sub_19B72B3C4(a1 + 32);
          v54 = v51 - v53;
          v55 = v49 - v52;
          if (v42 <= v48)
          {
            v55 = v54;
          }

          if (v55 <= 0.0)
          {
            v55 = -v55;
          }

          if (v55 > 0.6)
          {
LABEL_84:
            if (qword_1EAFE27A8 != -1)
            {
              dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
            }

            v56 = qword_1EAFE27E0;
            if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
            {
              v57 = sub_19B5BC7B8(a1 + 32);
              if (v57 <= 0.0)
              {
                v57 = -v57;
              }

              v58 = v57;
              v59 = sub_19B5BC7B8(a1 + 32);
              v60 = v59 - sub_19B72B3C4(a1 + 32);
              if (v60 <= 0.0)
              {
                v61 = -v60;
              }

              else
              {
                v61 = v60;
              }

              sub_19B5BC7B8(a1 + 32);
              v63 = v62;
              sub_19B72B3C4(a1 + 32);
              v65 = v63 - v64;
              v66 = -(v63 - v64);
              if (v65 <= 0.0)
              {
                v67 = v66;
              }

              else
              {
                v67 = v65;
              }

              v68 = sub_19B5BC7B8(a1 + 32);
              v70 = v69;
              v71 = sub_19B72B3C4(a1 + 32);
              v73 = v70 - v72;
              v74 = v68 - v71;
              if (v61 <= v67)
              {
                v74 = v73;
              }

              if (v74 <= 0.0)
              {
                v74 = -v74;
              }

              *buf = 134218496;
              *v128 = v58;
              *&v128[8] = 2048;
              *&v128[10] = v29;
              *&v128[18] = 2048;
              *&v128[20] = v74;
              _os_log_impl(&dword_19B41C000, v56, OS_LOG_TYPE_DEBUG, "Swing1. xMag, %.2f, maxXYVar, %.2f, swingX, %.2f", buf, 0x20u);
            }

            v75 = sub_19B420058();
            if (*(v75 + 160) > 1 || *(v75 + 164) > 1 || *(v75 + 168) > 1 || *(v75 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE27A8 != -1)
              {
                dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
              }

              v76 = qword_1EAFE27E0;
              v77 = sub_19B5BC7B8(a1 + 32);
              if (v77 <= 0.0)
              {
                v77 = -v77;
              }

              v78 = v77;
              v79 = sub_19B5BC7B8(a1 + 32);
              v80 = v79 - sub_19B72B3C4(a1 + 32);
              if (v80 <= 0.0)
              {
                v81 = -v80;
              }

              else
              {
                v81 = v80;
              }

              sub_19B5BC7B8(a1 + 32);
              v83 = v82;
              sub_19B72B3C4(a1 + 32);
              v85 = v83 - v84;
              v86 = -(v83 - v84);
              if (v85 <= 0.0)
              {
                v87 = v86;
              }

              else
              {
                v87 = v85;
              }

              v88 = sub_19B5BC7B8(a1 + 32);
              v90 = v89;
              v91 = sub_19B72B3C4(a1 + 32);
              v93 = v90 - v92;
              v94 = v88 - v91;
              if (v81 <= v87)
              {
                v94 = v93;
              }

              if (v94 <= 0.0)
              {
                v94 = -v94;
              }

              v125 = 134218496;
              *v126 = v78;
              *&v126[8] = 2048;
              *&v126[10] = v29;
              *&v126[18] = 2048;
              *&v126[20] = v94;
              LODWORD(v122) = 32;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v76, 2, "Swing1. xMag, %.2f, maxXYVar, %.2f, swingX, %.2f", COERCE_DOUBLE(&v125), v122, v123);
              v25 = v95;
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CMCallHandednessDetector::detect(double)", "CoreLocation: %s\n", v95);
              if (v25 != buf)
              {
LABEL_32:
                free(v25);
                return;
              }
            }

            return;
          }

          v106 = sub_19B72B3C4(a1 + 32);
          if ((v106 * sub_19B5BC7B8(a1 + 32)) < 0.0)
          {
            if (qword_1EAFE27A8 != -1)
            {
              dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
            }

            v107 = qword_1EAFE27E0;
            if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_19B41C000, v107, OS_LOG_TYPE_DEBUG, "Swing2. X sign flipping.", buf, 2u);
            }

            v108 = sub_19B420058();
            if (*(v108 + 160) <= 1 && *(v108 + 164) <= 1 && *(v108 + 168) <= 1 && !*(v108 + 152))
            {
              return;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1EAFE27A8 != -1)
            {
              dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
            }

            LOWORD(v125) = 0;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27E0, 2, "Swing2. X sign flipping.");
LABEL_31:
            v25 = v24;
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CMCallHandednessDetector::detect(double)", "CoreLocation: %s\n", v24);
            if (v25 == buf)
            {
              return;
            }

            goto LABEL_32;
          }

          if (qword_1EAFE27A8 != -1)
          {
            dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
          }

          v109 = qword_1EAFE27E0;
          if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
          {
            v110 = sub_19B5BC7B8(a1 + 32);
            if (v110 <= 0.0)
            {
              v110 = -v110;
            }

            v111 = v110;
            v112 = sub_19B5BC7B8(a1 + 32);
            v113 = v112 - sub_19B72B3C4(a1 + 32);
            *buf = 67109888;
            *v128 = v37;
            if (v113 <= 0.0)
            {
              v113 = -v113;
            }

            *&v128[4] = 2048;
            *&v128[6] = v111;
            *&v128[14] = 2048;
            *&v128[16] = v29;
            *&v128[24] = 2048;
            *&v128[26] = v113;
            _os_log_impl(&dword_19B41C000, v109, OS_LOG_TYPE_DEBUG, "Passed swing-detect. hand, %d, xMag, %.2f, maxXYVar, %.3f, swingX, %.3f", buf, 0x26u);
          }

          v114 = sub_19B420058();
          if (*(v114 + 160) > 1 || *(v114 + 164) > 1 || *(v114 + 168) > 1 || *(v114 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE27A8 != -1)
            {
              dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
            }

            v115 = qword_1EAFE27E0;
            v116 = sub_19B5BC7B8(a1 + 32);
            if (v116 <= 0.0)
            {
              v116 = -v116;
            }

            v117 = v116;
            v118 = sub_19B5BC7B8(a1 + 32);
            v119 = v118 - sub_19B72B3C4(a1 + 32);
            v125 = 67109888;
            *v126 = v37;
            if (v119 <= 0.0)
            {
              v119 = -v119;
            }

            *&v126[4] = 2048;
            *&v126[6] = v117;
            *&v126[14] = 2048;
            *&v126[16] = v29;
            *&v126[24] = 2048;
            *&v126[26] = v119;
            LODWORD(v122) = 38;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v115, 2, "Passed swing-detect. hand, %d, xMag, %.2f, maxXYVar, %.3f, swingX, %.3f", &v125, v122, v123, *&v124);
            v121 = v120;
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CMCallHandednessDetector::detect(double)", "CoreLocation: %s\n", v120);
            if (v121 != buf)
            {
              free(v121);
            }
          }
        }

        if (a1[1] == v37)
        {
LABEL_146:
          a1[8] = 3;
          *(a1 + 2) = 0;
          return;
        }

        v103 = *a1;
        v104 = a1[8];
        if (v104 == 3 || (v105 = (a1 + 16), a2 - *(a1 + 2) > 2.0))
        {
          a1[8] = v37;
          v105 = (a1 + 16);
        }

        else
        {
          if (v104 == v37)
          {
            a1[1] = v37;
            *a1 = 0;
            goto LABEL_146;
          }

          a1[8] = v37;
        }

        *v105 = a2;
        if ((v103 & 1) == 0)
        {
          *(a1 + 16) = 0;
        }

        return;
      }
    }
  }

  if (qword_1EAFE27A8 != -1)
  {
    dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
  }

  v20 = qword_1EAFE27E0;
  if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
  {
    if (v14 <= v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = v14;
    }

    *buf = 134218496;
    *v128 = v12;
    *&v128[8] = 2048;
    *&v128[10] = v21;
    *&v128[18] = 2048;
    *&v128[20] = v5;
    _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_DEBUG, "Invalid dynamics, mag, %.2f, xyVarMax, %.2f, xMean, %.2f", buf, 0x20u);
  }

  v22 = sub_19B420058();
  if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A040);
    }

    if (v14 <= v16)
    {
      v23 = v16;
    }

    else
    {
      v23 = v14;
    }

    v125 = 134218496;
    *v126 = v12;
    *&v126[8] = 2048;
    *&v126[10] = v23;
    *&v126[18] = 2048;
    *&v126[20] = v5;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27E0, 2, "Invalid dynamics, mag, %.2f, xyVarMax, %.2f, xMean, %.2f");
    goto LABEL_31;
  }
}

float sub_19B72B3C4(unsigned __int16 *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1[1])
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28760);
    }

    v3 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 139,front() on empty buffer.", buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28760);
      }

      v7[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: !empty(), file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMVectorBuffer.h, line 139,front() on empty buffer.", v7, 2);
      v6 = v5;
      sub_19B6BB7CC("Generic", 1, 0, 0, "Element CMVectorBufferBase<float, 3>::front() const [T = float, N = 3]", "CoreLocation: %s\n", v5);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  return *sub_19B5BEC4C(a1, 0);
}

os_log_t sub_19B72B58C()
{
  result = os_log_create("com.apple.locationd.Motion", "Gesture");
  qword_1EAFE27E0 = result;
  return result;
}

void sub_19B72B908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B72BC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B72BDF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  v21 = *(v19 - 40);
  if (v21)
  {
    sub_19B41FFEC(v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B72C020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_19B41FFEC(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B72C230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  if (a20)
  {
    sub_19B41FFEC(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B72C268(uint64_t a1, void *a2)
{
  v4 = objc_msgSend_objectForKeyedSubscript_(a2, a2, @"CMErrorMessage");
  v6 = objc_msgSend_objectForKeyedSubscript_(a2, v5, @"CMReturnCode");
  v9 = objc_msgSend_BOOLValue(v6, v7, v8);
  if (v4 || (v9 & 1) == 0)
  {
    v12 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v10, v11);
    objc_msgSend_removeItemAtURL_error_(v12, v13, *(a1 + 32), 0);
  }

  v14 = *(*(a1 + 40) + 16);

  return v14();
}

void sub_19B72C478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  sub_19B41FFEC(v18);
  _Unwind_Resume(a1);
}

void sub_19B72C5F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B72C630()
{
  result = os_log_create("com.apple.locationd.Motion", "Fall");
  qword_1EAFE29B0 = result;
  return result;
}

void sub_19B72CA2C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_19B72CA5C(uint64_t a1, CLConnectionMessage **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2798 != -1)
  {
    dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
  }

  v3 = qword_1EAFE27D0;
  if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_DEBUG))
  {
    v4 = CLConnectionMessage::name(*a2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    *buf = 136446210;
    v15 = v5;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Default handler received message %{public}s", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v7 = qword_1EAFE27D0;
    v8 = CLConnectionMessage::name(*a2);
    if (*(v8 + 23) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *v8;
    }

    v12 = 136446210;
    v13 = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v7, 2, "Default handler received message %{public}s", &v12, 12);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPedestrianFenceManagerInternal init]_block_invoke", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }
}

void *sub_19B72CC54(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v7 = ExecutablePathFromPid;
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v8 = qword_1EAFE27D0;
    if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = getpid();
      v10 = *(a1 + 32);
      *buf = 138478339;
      v33 = v7;
      v34 = 1025;
      v35 = v9;
      v36 = 2049;
      v37 = v10;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEFAULT, "Client connection interrupt, %{private}@, %{private}d, %{private}p", buf, 0x1Cu);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2798 != -1)
      {
        dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
      }

      v12 = qword_1EAFE27D0;
      v13 = getpid();
      v14 = *(a1 + 32);
      v26 = 138478339;
      v27 = v7;
      v28 = 1025;
      v29 = v13;
      v30 = 2049;
      v31 = v14;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v12, 0, "Client connection interrupt, %{private}@, %{private}d, %{private}p", &v26, 28);
      v16 = v15;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMPedestrianFenceManagerInternal init]_block_invoke", "CoreLocation: %s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  result = *(*(a1 + 32) + 24);
  if (result)
  {
    v18 = objc_msgSend_copy(result, v5, v6);
    v19 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v25 = @"Session and fences lost due to disconnection";
    v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v20, &v25, &v24, 1);
    v23 = objc_msgSend_errorWithDomain_code_userInfo_(v19, v22, @"CMPedestrianFenceErrorDomain", 5, v21);
    return v18[2](v18, 0, v23);
  }

  return result;
}

void sub_19B72D008(uint64_t a1)
{
  v16[2] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 48) & 1) == 0)
  {

    *(*(a1 + 32) + 24) = 0;
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 24);
    if (v3 != v2)
    {

      *(*(a1 + 32) + 24) = objc_msgSend_copy(*(a1 + 40), v4, v5);
    }
  }

  sub_19B428B50(&__p, "PedestrianFence/kCLConnectionMessagePedestrianFenceStatus");
  CLConnectionClient::setHandlerForMessage();
  if (v14 < 0)
  {
    operator delete(__p);
  }

  v15[0] = @"kCLConnectionMessageSubscribeKey";
  v16[0] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v6, *(a1 + 48));
  v15[1] = @"CMPedestrianFenceClientIdentifier";
  v9 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v7, v8);
  v16[1] = objc_msgSend_processName(v9, v10, v11);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v16, v15, 2);
  sub_19B5B9C88();
}

void sub_19B72D1F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B72D238(uint64_t a1, CLConnectionMessage **a2, uint64_t a3)
{
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    v5 = objc_msgSend_copy(result, a2, a3);
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v10 = objc_msgSend_setWithObjects_(v6, v9, v7, v8, 0);
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v10);
    v13 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v12, @"CMPedestrianFenceStatus");
    v14 = v5[2];

    return v14(v5, v13, 0);
  }

  return result;
}

void sub_19B72D378(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 16);
  if (v2 != *(a1 + 64))
  {

    *(*(a1 + 32) + 16) = objc_msgSend_copy(*(a1 + 64), v3, v4);
  }

  sub_19B428B50(__p, "PedestrianFence/kCLConnectionMessagePedestrianFence");
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = sub_19B72D798;
  v26 = &unk_1E7532DC8;
  v27 = *(a1 + 32);
  CLConnectionClient::setHandlerForMessage();
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  memset(&__dst, 0, sizeof(__dst));
  v7 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v5, v6);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v8, *(a1 + 40), @"CMPedestrianFenceIdentifier");
  v10 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v9, *(a1 + 72));
  objc_msgSend_setObject_forKeyedSubscript_(v7, v11, v10, @"CMPedestrianFenceShouldWake");
  if (*(a1 + 48))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v7, v12, MEMORY[0x1E695E118], @"kCLConnectionMessageSubscribeKey");
    objc_msgSend_setObject_forKeyedSubscript_(v7, v13, *(a1 + 48), @"CMPedestrianFenceRadius");
    v14 = "PedestrianFence/kCLConnectionMessagePedestrianFence";
    v15 = 51;
    goto LABEL_9;
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v7, v12, v16, @"CMPedestrianFenceDelay");
    v14 = "PedestrianFence/kCLConnectionMessagePedestrianFenceSimulation";
    v15 = 61;
LABEL_9:
    sub_19B432174(&__dst, v14, v15);
    operator new();
  }

  if (qword_1EAFE2798 != -1)
  {
    dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
  }

  v17 = qword_1EAFE27D0;
  if (os_log_type_enabled(qword_1EAFE27D0, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_ERROR, "Bad parameters given ", __p, 2u);
  }

  v18 = sub_19B420058();
  if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1EAFE2798 != -1)
    {
      dispatch_once(&qword_1EAFE2798, &unk_1F0E3B328);
    }

    v21[0] = 0;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, &dword_19B41C000, qword_1EAFE27D0, 16, "Bad parameters given ", v21, 2);
    v20 = v19;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMPedestrianFenceManagerInternal _setFence:withRadius:wake:delay:withCompletion:]_block_invoke", "CoreLocation: %s\n", v19);
    if (v20 != __p)
    {
      free(v20);
    }
  }
}

void sub_19B72D728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B72D798(uint64_t a1, CLConnectionMessage **a2, uint64_t a3)
{
  v27[1] = *MEMORY[0x1E69E9840];
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    v5 = objc_msgSend_copy(result, a2, a3);
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v10 = objc_msgSend_setWithObjects_(v6, v9, v7, v8, 0);
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v10);
    v13 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v12, @"CMErrorMessage");
    if (v13)
    {
      v16 = objc_msgSend_integerValue(v13, v14, v15);
      if (v16 > 4)
      {
        v19 = @"Unknown error";
        v18 = 103;
      }

      else
      {
        v18 = qword_19B7BD318[v16];
        v19 = off_1E7535940[v16];
      }

      v22 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A578];
      v27[0] = v19;
      v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v17, v27, &v26, 1);
      v25 = objc_msgSend_errorWithDomain_code_userInfo_(v22, v24, @"CMErrorDomain", v18, v23);
      return v5[2](v5, 0, v25);
    }

    else
    {
      v20 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMPedestrianFenceIdentifier");
      v21 = v5[2];

      return v21(v5, v20, 0);
    }
  }

  return result;
}

void sub_19B72D9DC(uint64_t a1, const char *a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v8[0] = MEMORY[0x1E695E110];
  v7[0] = @"kCLConnectionMessageSubscribeKey";
  v7[1] = @"CMPedestrianFenceForceClear";
  v8[1] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, *(a1 + 48));
  v7[2] = @"CMPedestrianFenceForceClearAll";
  v4 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v3, *(a1 + 32) == 0);
  v7[3] = @"CMPedestrianFenceIdentifier";
  v6 = *(a1 + 32);
  if (!v6)
  {
    v6 = &stru_1F0E3D7A0;
  }

  v8[2] = v4;
  v8[3] = v6;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, v8, v7, 4);
  sub_19B72F4D0();
}

void sub_19B72DB2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B72F4A0()
{
  result = os_log_create("com.apple.locationd.Motion", "PedestrianFence");
  qword_1EAFE27D0 = result;
  return result;
}

void *sub_19B72F544(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B72F5A0((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B72F5A0(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B72F5F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B72F614(void *a1)
{
  *a1 = &unk_1F0E344B8;
  sub_19B72F6E4(a1);
  v2 = a1[37];
  a1[37] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[22];
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  v4 = a1[20];
  if (v4)
  {
    sub_19B41FFEC(v4);
  }

  v5 = a1[18];
  a1[18] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return sub_19B70B29C(a1);
}

void sub_19B72F6E4(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    CFRunLoopTimerInvalidate(v2);
    CFRelease(*(a1 + 192));
    *(a1 + 192) = 0;
  }
}

void sub_19B72F720(void *a1)
{
  sub_19B72F614(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B72F758(uint64_t result, double *a2)
{
  v2 = a2[7];
  if (v2 == -1.0)
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    v3 = 0u;
    v2 = -1.0;
  }

  else
  {
    v3 = *a2;
    v4 = *(a2 + 1);
    v5 = *(a2 + 2);
    v6 = *(a2 + 6);
  }

  *(result + 200) = v3;
  *(result + 216) = v4;
  *(result + 232) = v5;
  *(result + 248) = v6;
  *(result + 256) = v2;
  return result;
}

void sub_19B72F7C4(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E2A0A0);
  }

  v4 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v10 = a2;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Compass for AOP started. CoverAttached %{public}d", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E2A0A0);
    }

    v8[0] = 67240192;
    v8[1] = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 0, "Compass for AOP started. CoverAttached %{public}d", v8, 8);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLCompass7::start(BOOL)", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  *(a1 + 272) = a2;
}

void sub_19B72F998()
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E2A0A0);
  }

  v0 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_DEFAULT, "Compass for AOP stopped.", buf, 2u);
  }

  v1 = sub_19B420058();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E2A0A0);
    }

    v4[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 0, "Compass for AOP stopped.", v4, 2);
    v3 = v2;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLCompass7::stop()", "CoreLocation: %s\n", v2);
    if (v3 != buf)
    {
      free(v3);
    }
  }
}

double sub_19B72FB3C(uint64_t a1, int a2, double *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  sub_19B70B4A4(a1, a2, a3);
  if (!a2)
  {
    if (*a3 <= 0.0)
    {
      if (*(a1 + 184) == 1)
      {
        *(a1 + 184) = 0;
        sub_19B72F6E4(a1);
        context.version = 0;
        context.info = a1;
        memset(&context.retain, 0, 24);
        v8 = *MEMORY[0x1E695E480];
        Current = CFAbsoluteTimeGetCurrent();
        v10 = CFRunLoopTimerCreate(v8, Current + 600.0, 0.0, 0, 0, sub_19B731228, &context);
        *(a1 + 192) = v10;
        if (v10)
        {
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E2A0A0);
          }

          v11 = qword_1EAFE2888;
          if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            v24 = 0x4082C00000000000;
            _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEBUG, "Keeping compass on for %{public}.0f seconds", buf, 0xCu);
          }

          v12 = sub_19B420058();
          if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E2A0A0);
            }

            v21 = 134349056;
            v22 = 0x4082C00000000000;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 2, "Keeping compass on for %{public}.0f seconds", &v21, 12);
            v14 = v13;
            sub_19B6BB7CC("Generic", 1, 0, 2, "void CLCompass7::startTurnOffTimer()", "CoreLocation: %s\n", v13);
            if (v14 != buf)
            {
              free(v14);
            }
          }

          sub_19B420D84();
          CFRunLoopAddTimer(*qword_1ED71C908, *(a1 + 192), *MEMORY[0x1E695E8D0]);
        }

        else
        {
          if (qword_1EAFE2880 != -1)
          {
            dispatch_once(&qword_1EAFE2880, &unk_1F0E2A0A0);
          }

          v15 = qword_1EAFE2888;
          if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_FAULT, "Could not create turn-off timer", buf, 2u);
          }

          v16 = sub_19B420058();
          if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2880 != -1)
            {
              dispatch_once(&qword_1EAFE2880, &unk_1F0E2A0A0);
            }

            LOWORD(v21) = 0;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 17, "Could not create turn-off timer", &v21, 2);
            v18 = v17;
            sub_19B6BB7CC("Generic", 1, 0, 0, "void CLCompass7::startTurnOffTimer()", "CoreLocation: %s\n", v17);
            if (v18 != buf)
            {
              free(v18);
            }
          }

          sub_19B72FF38(a1, (a1 + 264));
        }
      }

      if (*(a1 + 192))
      {
        v7 = &unk_19B7BD348;
      }

      else
      {
        v7 = a3;
      }

      v6 = a1;
    }

    else
    {
      v6 = a1;
      v7 = a3;
    }

    sub_19B72FF38(v6, v7);
  }

  result = *a3;
  *(a1 + 264) = *a3;
  return result;
}

uint64_t sub_19B72FF38(uint64_t a1, double *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E2A0A0);
  }

  v4 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    *buf = 134349056;
    *&buf[4] = v5;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Setting compass update interval to %{public}f", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E2A0A0);
    }

    v7 = *a2;
    v17 = 134349056;
    v18 = v7;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 0, "Setting compass update interval to %{public}f", &v17, 12);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLCompass7::setDeviceMotionServiceUpdateInterval(const CFTimeInterval &)", "CoreLocation: %s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  if (*(a1 + 136))
  {
    v10 = sub_19B421620();
    v11 = (a1 + 168);
    if ((v10 & 0x20) != 0)
    {
      v12 = (a1 + 168);
      v11 = (a1 + 152);
    }

    else
    {
      v12 = (a1 + 152);
    }
  }

  else
  {
    v11 = (a1 + 168);
    v12 = (a1 + 152);
  }

  if (*v11)
  {
    sub_19B4238F4(*v11, rint(0.0));
  }

  if (!*v12)
  {
    v13 = sub_19B42CAAC();
    sub_19B42C428(v13);
  }

  v14 = rint(*a2 * 1000000.0);
  if (*a2 < 0.0)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  return sub_19B4238F4(*v12, v15);
}

void sub_19B7301FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3);
  v8[39] = *MEMORY[0x1E69E9840];
  IOHIDEventGetVendorDefinedData();
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28440);
  }

  v3 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Empty payload, returning", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28440);
    }

    LOWORD(v8[0]) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C838, 2, "Empty payload, returning", v8, 2);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLCompass7::onDeviceMotionServiceIohidEvent(void *, void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }
}

void sub_19B73120C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, ...)
{
  va_start(va, a58);
  sub_19B51DBD4(va);
  _Unwind_Resume(a1);
}

void sub_19B731228(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 264) <= 0.0)
  {
    sub_19B72FF38(a2, (a2 + 264));
  }

  sub_19B72F6E4(a2);
}

__n128 sub_19B731290(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *(a1 + 40) = a2[2];
  *(a1 + 24) = v3;
  *(a1 + 8) = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 104) = *(a2 + 24);
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 56) = result;
  return result;
}

void sub_19B73140C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_19B73143C(uint64_t a1, CLConnectionMessage **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0 && (v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage")) != 0)
  {
    v13 = objc_msgSend_intValue(v10, v11, v12);
  }

  else
  {
    v13 = 103;
  }

  if (qword_1EAFE2790 != -1)
  {
    dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
  }

  v14 = qword_1EAFE27C8;
  if (os_log_type_enabled(qword_1EAFE27C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v21 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Failed with CMError code %{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2790 != -1)
    {
      dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
    }

    v19[0] = 67240192;
    v19[1] = v13;
    LODWORD(v18) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27C8, 17, "Failed with CMError code %{public}d", v19, v18);
    v17 = v16;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSkiTrackerInternal init]_block_invoke", "CoreLocation: %s\n", v16);
    if (v17 != buf)
    {
      free(v17);
    }
  }
}

void sub_19B731664(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE2790 != -1)
    {
      dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
    }

    v6 = qword_1EAFE27C8;
    if (os_log_type_enabled(qword_1EAFE27C8, OS_LOG_TYPE_INFO))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      v9 = *(v8 + 24);
      *buf = 138413058;
      v26 = v5;
      v27 = 1024;
      v28 = v7;
      v29 = 1024;
      v30 = v9;
      v31 = 2048;
      v32 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "CMSkiTracker client connection interrupt, %@, %d, %d, %p", buf, 0x22u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2790 != -1)
      {
        dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
      }

      v11 = qword_1EAFE27C8;
      v12 = getpid();
      v13 = *(a1 + 32);
      v14 = *(v13 + 24);
      v17 = 138413058;
      v18 = v5;
      v19 = 1024;
      v20 = v12;
      v21 = 1024;
      v22 = v14;
      v23 = 2048;
      v24 = v13;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v11, 1, "CMSkiTracker client connection interrupt, %@, %d, %d, %p", &v17, 34);
      v16 = v15;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSkiTrackerInternal init]_block_invoke", "CoreLocation: %s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }
}

void sub_19B7319D8(uint64_t a1)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3 != *(a1 + 48) || (*(v2 + 24) & 1) == 0)
  {

    *(*(a1 + 32) + 40) = *(a1 + 48);
    *(*(a1 + 32) + 32) = *(a1 + 40);
    *(*(a1 + 32) + 56) = 0xBFF0000000000000;
    v5 = *(a1 + 40);
    if (v5)
    {
      v25 = @"CMSkiKeyDataRecord";
      v26[0] = v5;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v26, &v25, 1);
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x1E696AFB0]);
      v8 = objc_msgSend_initWithUUIDString_(v6, v7, @"00000000-0000-0000-0000-000000000000");
      v9 = [CMSkiData alloc];
      v11 = objc_msgSend_initWithSessionId_(v9, v10, v8);
      v23 = @"CMSkiKeyDataRecord";
      v24 = v11;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, &v24, &v23, 1);
    }

    if (qword_1EAFE2790 != -1)
    {
      dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
    }

    v13 = qword_1EAFE27C8;
    if (os_log_type_enabled(qword_1EAFE27C8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 40);
      buf = 138412290;
      *buf_4 = v14;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEFAULT, "Querying data to anchor updates from %@", &buf, 0xCu);
    }

    v15 = sub_19B420058();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE2790 != -1)
      {
        dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
      }

      v16 = *(a1 + 40);
      v19 = 138412290;
      v20 = v16;
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, qword_1EAFE27C8, 0, "Querying data to anchor updates from %@", &v19, 12);
      v18 = v17;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSkiTrackerInternal _startUpdatesFromRecord:handler:]_block_invoke", "CoreLocation: %s\n", v17);
      if (v18 != &buf)
      {
        free(v18);
      }
    }

    sub_19B6A2040();
  }
}

void sub_19B731E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, void *__p, std::__shared_weak_count *a34, int a35, __int16 a36, char a37, char a38)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  if (a34)
  {
    sub_19B41FFEC(a34);
  }

  if (a32)
  {
    sub_19B41FFEC(a32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B731ECC(uint64_t result, uint64_t *a2)
{
  if (*(*(result + 32) + 40))
  {
    v3 = result;
    v4 = MEMORY[0x1E695DFD8];
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v10 = objc_msgSend_setWithObjects_(v4, v9, v5, v6, v7, v8, 0);
    result = *a2;
    if (*a2)
    {
      result = CLConnectionMessage::getDictionaryOfClasses(result, v10);
      if (result)
      {
        v11 = result;
        v12 = *(v3 + 32);

        return MEMORY[0x1EEE66B58](v12, sel__handleUpdates_, v11);
      }
    }
  }

  return result;
}

void sub_19B731FB0(uint64_t a1, CLConnectionMessage **a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 40);
  if (v4)
  {
    v6 = objc_msgSend_copy(v4, a2, a3);
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v13 = objc_msgSend_setWithObjects_(v7, v12, v8, v9, v10, v11, 0);
    if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v13)) != 0)
    {
      v15 = DictionaryOfClasses;
      v16 = *(a1 + 32);

      MEMORY[0x1EEE66B58](v16, sel__handleUpdates_, v15);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B732104;
      block[3] = &unk_1E7532B40;
      block[4] = v6;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

uint64_t sub_19B732104(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

void sub_19B7321DC(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 24))
  {
    v7 = @"kCLConnectionMessageSubscribeKey";
    v8 = MEMORY[0x1E695E110];
    v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, &v8, &v7, 1);
    sub_19B66451C();
  }

  if (qword_1EAFE2790 != -1)
  {
    dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
  }

  v2 = qword_1EAFE27C8;
  if (os_log_type_enabled(qword_1EAFE27C8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "Unable to stop Ski data updates as we are are not receiving updates.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2790 != -1)
    {
      dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
    }

    LOWORD(v6) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27C8, 1, "Unable to stop Ski data updates as we are are not receiving updates.", &v6, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSkiTrackerInternal _stopUpdates]_block_invoke", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }
}

void sub_19B73242C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B7324D0(void *a1, const char *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    v12 = @"CMSkiKeyDataRecord";
    v13[0] = v2;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v13, &v12, 1);
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x1E696AFB0]);
    v5 = objc_msgSend_initWithUUIDString_(v3, v4, @"00000000-0000-0000-0000-000000000000");
    v6 = [CMSkiData alloc];
    v8 = objc_msgSend_initWithSessionId_(v6, v7, v5);
    v10 = @"CMSkiKeyDataRecord";
    v11 = v8;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, &v11, &v10, 1);
  }

  sub_19B6A2040();
}

void sub_19B732674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B7326A0(uint64_t a1, CLConnectionMessage **a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_copy(*(a1 + 32), a2, a3);
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v11 = objc_msgSend_setWithObjects_(v5, v10, v6, v7, v8, v9, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v11)) != 0)
  {
    v14 = DictionaryOfClasses;
    v15 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v13, @"CMErrorMessage");
    v17 = objc_msgSend_objectForKeyedSubscript_(v14, v16, @"CMSkiKeyDataArray");
    if (v15)
    {
      v18 = v27;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_19B732AA0;
      v27[3] = &unk_1E7532B90;
      v27[5] = v4;
      v4 = v15;
    }

    else if (v17)
    {
      v18 = v26;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_19B732B18;
      v26[3] = &unk_1E7532B90;
      v26[5] = v4;
      v4 = v17;
    }

    else
    {
      if (qword_1EAFE2790 != -1)
      {
        dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
      }

      v19 = qword_1EAFE27C8;
      if (os_log_type_enabled(qword_1EAFE27C8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_FAULT, "Unable to parse kCLConnectionMessageSkiDataQuery message.", buf, 2u);
      }

      v20 = sub_19B420058();
      if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2790 != -1)
        {
          dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
        }

        v25 = 0;
        LODWORD(v23) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27C8, 17, "Unable to parse kCLConnectionMessageSkiDataQuery message.", &v25, v23);
        v22 = v21;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSkiTrackerInternal _queryUpdatesFromRecord:handler:]_block_invoke", "CoreLocation: %s\n", v21);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      v18 = v24;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_19B732B30;
      v24[3] = &unk_1E7532B40;
    }
  }

  else
  {
    v18 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B732A3C;
    block[3] = &unk_1E7532B40;
  }

  v18[4] = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v18);
}

uint64_t sub_19B732A3C(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B732AA0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B732B30(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B7332C0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B733350(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

void sub_19B733428(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2790 != -1)
  {
    dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
  }

  v2 = qword_1EAFE27C8;
  if (os_log_type_enabled(qword_1EAFE27C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[live data] starting updates", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2790 != -1)
    {
      dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
    }

    LOWORD(v7[0]) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27C8, 0, "[live data] starting updates", v7, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSkiTrackerInternal _startLiveUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  *(*(a1 + 32) + 48) = *(a1 + 40);
  sub_19B428B50(buf, "kCLConnectionMessageSkiDataLiveUpdate");
  v7[2] = MEMORY[0x1E69E9820];
  v7[3] = 3221225472;
  v7[4] = sub_19B733750;
  v7[5] = &unk_1E7532DC8;
  v7[6] = *(a1 + 32);
  CLConnectionClient::setHandlerForMessage();
  if (v11 < 0)
  {
    operator delete(*buf);
  }

  v8 = @"kCLConnectionMessageSubscribeKey";
  v9 = MEMORY[0x1E695E118];
  v7[0] = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, &v9, &v8, 1);
  sub_19B686B90();
}

void sub_19B73370C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, std::__shared_weak_count *a24, int a25, __int16 a26, char a27, char a28)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  if (a24)
  {
    sub_19B41FFEC(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B733750(uint64_t a1, CLConnectionMessage **a2, uint64_t a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 48);
  if (v3)
  {
    v5 = objc_msgSend_copy(v3, a2, a3);
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v6, v10, v7, v8, v9, 0);
    if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v11), *a2) && (v14 = DictionaryOfClasses) != 0)
    {
      if (objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v13, @"CMErrorMessage"))
      {
        if (qword_1EAFE2790 != -1)
        {
          dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
        }

        v16 = qword_1EAFE27C8;
        if (os_log_type_enabled(qword_1EAFE27C8, OS_LOG_TYPE_ERROR))
        {
          v18 = objc_msgSend_objectForKeyedSubscript_(v14, v17, @"CMErrorMessage");
          *buf = 67109120;
          LODWORD(v54) = objc_msgSend_intValue(v18, v19, v20);
          _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_ERROR, "[live data] encountered error while trying to stream, %d", buf, 8u);
        }

        v21 = sub_19B420058();
        if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2790 != -1)
          {
            dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
          }

          v24 = qword_1EAFE27C8;
          v25 = objc_msgSend_objectForKeyedSubscript_(v14, v23, @"CMErrorMessage");
          v51 = 67109120;
          LODWORD(v52) = objc_msgSend_intValue(v25, v26, v27);
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v24, 16, "[live data] encountered error while trying to stream, %d", &v51);
          v29 = v28;
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSkiTrackerInternal _startLiveUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v28);
          if (v29 != buf)
          {
            free(v29);
          }
        }

        v30 = MEMORY[0x1E696ABC0];
        v31 = objc_msgSend_objectForKeyedSubscript_(v14, v22, @"CMErrorMessage");
        v34 = objc_msgSend_integerValue(v31, v32, v33);
        v36 = objc_msgSend_errorWithDomain_code_userInfo_(v30, v35, @"CMErrorDomain", v34, 0);
        v37 = v49;
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[5] = v5;
        v49[2] = sub_19B733E24;
        v49[3] = &unk_1E7532B90;
        v5 = v36;
      }

      else
      {
        v42 = objc_msgSend_objectForKeyedSubscript_(v14, v15, @"CMSkiKeyDataRecord");
        if (qword_1EAFE2790 != -1)
        {
          dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
        }

        v43 = qword_1EAFE27C8;
        if (os_log_type_enabled(qword_1EAFE27C8, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v54 = v42;
          _os_log_impl(&dword_19B41C000, v43, OS_LOG_TYPE_INFO, "[live data] delivering live update %@", buf, 0xCu);
        }

        v44 = sub_19B420058();
        if (*(v44 + 160) > 1 || *(v44 + 164) > 1 || *(v44 + 168) > 1 || *(v44 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2790 != -1)
          {
            dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
          }

          v51 = 138412290;
          v52 = v42;
          LODWORD(v47) = 12;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27C8, 1, "[live data] delivering live update %@", &v51, v47);
          v46 = v45;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMSkiTrackerInternal _startLiveUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v45);
          if (v46 != buf)
          {
            free(v46);
          }
        }

        v37 = v48;
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = sub_19B733E3C;
        v48[3] = &unk_1E7532B90;
        v48[5] = v5;
        v5 = v42;
      }
    }

    else
    {
      if (qword_1EAFE2790 != -1)
      {
        dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
      }

      v38 = qword_1EAFE27C8;
      if (os_log_type_enabled(qword_1EAFE27C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v38, OS_LOG_TYPE_ERROR, "[live data] malformed payload while trying to stream", buf, 2u);
      }

      v39 = sub_19B420058();
      if ((*(v39 + 160) & 0x80000000) == 0 || (*(v39 + 164) & 0x80000000) == 0 || (*(v39 + 168) & 0x80000000) == 0 || *(v39 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2790 != -1)
        {
          dispatch_once(&qword_1EAFE2790, &unk_1F0E28BE0);
        }

        LOWORD(v51) = 0;
        LODWORD(v47) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27C8, 16, "[live data] malformed payload while trying to stream", &v51, v47);
        v41 = v40;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSkiTrackerInternal _startLiveUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v40);
        if (v41 != buf)
        {
          free(v41);
        }
      }

      v37 = block;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B733DC0;
      block[3] = &unk_1E7532B40;
    }

    v37[4] = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v37);
  }
}

uint64_t sub_19B733DC0(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

void sub_19B734058(uint64_t a1, const char *a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"kCLConnectionMessageSubscribeKey";
  v3[0] = MEMORY[0x1E695E110];
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v3, &v2, 1);
  sub_19B686B90();
}

void sub_19B73413C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B734368(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);

  return objc_msgSend__startUpdatesFromRecord_handler_(v4, v5, v6, v7);
}

uint64_t sub_19B73441C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend__internal(*(a1 + 32), a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel__stopUpdates, v4);
}

int64_t sub_19B734530(uint64_t a1, const char *a2)
{
  result = objc_msgSend_isAuthorizedForEntitlement_(CMMotionUtils, a2, @"com.apple.locationd.activity");
  qword_1ED71D620 = result;
  return result;
}

uint64_t sub_19B734630(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__internal(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__startLiveUpdatesWithHandler_, v5);
}

uint64_t sub_19B7346E4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend__internal(*(a1 + 32), a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel__stopLiveUpdates, v4);
}

os_log_t sub_19B734718()
{
  result = os_log_create("com.apple.locationd.Motion", "Skiing");
  qword_1EAFE27C8 = result;
  return result;
}

void sub_19B73480C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v16, v15, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_19B734910(uint64_t a1, CLConnectionMessage **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0 && (v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage")) != 0)
  {
    v13 = objc_msgSend_intValue(v10, v11, v12);
  }

  else
  {
    v13 = 103;
  }

  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E3B348);
  }

  v14 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v21 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Failed with CMError code %{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E3B348);
    }

    v19[0] = 67240192;
    v19[1] = v13;
    LODWORD(v18) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Failed with CMError code %{public}d", v19, v18);
    v17 = v16;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMCatherineFeederInternal _startDaemonConnection]_block_invoke", "CoreLocation: %s\n", v16);
    if (v17 != buf)
    {
      free(v17);
    }
  }
}

void sub_19B734C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B734FD0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_internal(*(a1 + 32), a2, a3);
  v4 = mach_absolute_time();
  sub_19B41E070(v4);

  return MEMORY[0x1EEE66B58](v3, sel__feedCatherine_confidence_timestamp_, v5);
}

os_log_t sub_19B735038()
{
  result = os_log_create("com.apple.locationd.Motion", "HeartRate");
  qword_1EAFE29F0 = result;
  return result;
}

uint64_t *sub_19B735CF8(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    result = *(a2 + 160);
    if (result)
    {
      return sub_19B5E7F7C(result, v2);
    }
  }

  return result;
}

uint64_t *sub_19B735D14(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    result = *(a2 + 160);
    if (result)
    {
      return sub_19B5E8118(result, v2);
    }
  }

  return result;
}

void sub_19B735D3C(char *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B388);
  }

  v4 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
  {
    v5 = *a1;
    v6 = *(a1 + 25);
    *buf = 67240963;
    v21 = v5;
    v22 = 2081;
    v23 = a1 + 4;
    v24 = 2081;
    v25 = a1 + 68;
    v26 = 1026;
    v27 = v6;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CMHeadphoneActivityManager] Config,side,%{public}d,configuration,%{private}s,serialNumber,%{private}s,hardwareModel,%{public}d", buf, 0x22u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E3B388);
    }

    v8 = *a1;
    v9 = *(a1 + 25);
    v13[0] = 67240963;
    v13[1] = v8;
    v14 = 2081;
    v15 = a1 + 4;
    v16 = 2081;
    v17 = a1 + 68;
    v18 = 1026;
    v19 = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C7C8, 1, "[CMHeadphoneActivityManager] Config,side,%{public}d,configuration,%{private}s,serialNumber,%{private}s,hardwareModel,%{public}d", v13, 34);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void onHeadphoneDeviceMotionConfig(const CLAccessoryDeviceMotion::Config *, void *)", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  if (a2)
  {
    v12 = *(a2 + 160);
    if (v12)
    {
      sub_19B5E73F0(v12, a1);
    }
  }
}

void sub_19B735F80(double *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 160);
    if (v3)
    {
      sub_19B5E5DB4(v3, a1);
    }
  }
}

void sub_19B7365AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B736898(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_pauseActivityStreamingPrivate(*(a1 + 32), a2, a3);
  objc_msgSend_pauseStatusStreamingPrivate(*(a1 + 32), v4, v5);
  v8 = *(*(a1 + 32) + 8);

  return objc_msgSend_stopMslLoggingPrivate(v8, v6, v7);
}

uint64_t sub_19B736934()
{
  if (sub_19B43B6EC() & 1) != 0 || (sub_19B4426E4() & 1) != 0 || (sub_19B4215D8())
  {
    result = 1;
  }

  else
  {
    result = objc_msgSend_isMotionActivityEntitled(CMMotionUtils, v0, v1);
  }

  byte_1ED71D630 = result;
  return result;
}

__n128 sub_19B736A14(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 32) + 8) + 8);
  block[1] = 3221225472;
  block[2] = sub_19B736A9C;
  block[3] = &unk_1E7532C08;
  v5 = v1;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
  return result;
}

void sub_19B736B24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(v1 + 8) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B736B9C;
  block[3] = &unk_1E7532988;
  block[4] = v1;
  dispatch_sync(v2, block);
}

void *sub_19B736D60(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_mslLoggingEnabledPrivate(*(*(a1 + 32) + 8), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_19B73710C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_19B737128(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return result;
  }

  v3 = result;
  v4 = MEMORY[0x1E696ACD0];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v11 = objc_msgSend_setWithObjects_(v5, v10, v6, v7, v8, v9, 0);
  v13 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v4, v12, v11, a2, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    Weak = objc_loadWeak((v3 + 32));
    v15 = v13;
LABEL_4:

    return MEMORY[0x1EEE66B58](Weak, sel_onActivityPrivate_error_, v15);
  }

  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    return result;
  }

  v17 = objc_msgSend_objectForKeyedSubscript_(v13, v16, @"EventType");
  isEqualToString = objc_msgSend_isEqualToString_(v17, v18, @"Activity");
  v20 = objc_loadWeak((v3 + 32));
  v22 = v20;
  if (isEqualToString)
  {
    v23 = objc_msgSend_objectForKeyedSubscript_(v13, v21, @"PayloadData");
    objc_msgSend_objectForKeyedSubscript_(v13, v24, @"PayloadError");
    Weak = v22;
    v15 = v23;
    goto LABEL_4;
  }

  return MEMORY[0x1EEE66B58](v20, sel_onStatusEventPrivate_, v13);
}

uint64_t sub_19B737454(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E3B3A8);
  }

  v2 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[4];
    v4 = a1[5];
    *buf = 138543618;
    v16 = v3;
    v17 = 2114;
    v18 = v4;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "[CMHeadphoneActivityManager] motion activity: %{public}@ error: %{public}@", buf, 0x16u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3B3A8);
    }

    v6 = a1[4];
    v7 = a1[5];
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "[CMHeadphoneActivityManager] motion activity: %{public}@ error: %{public}@", &v11, 22);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHeadphoneActivityManager onActivityPrivate:error:]_block_invoke", "CoreLocation: %s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  return (*(a1[6] + 16))();
}

void sub_19B7378E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_19B73790C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = MEMORY[0x1E696ACD0];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v9 = objc_msgSend_setWithObjects_(v5, v8, v6, v7, 0);
    v11 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v4, v10, v9, a2, 0);
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      Weak = objc_loadWeak((v3 + 32));

      return MEMORY[0x1EEE66B58](Weak, sel_onStatusEventPrivate_, v11);
    }
  }

  return result;
}

uint64_t sub_19B737F5C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E3B3A8);
  }

  v2 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "[CMHeadphoneActivityManager] notifying client of connection", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3B3A8);
    }

    v7[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "[CMHeadphoneActivityManager] notifying client of connection", v7, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHeadphoneActivityManager notifyDeviceConnectedEventToClientPrivate]_block_invoke", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_19B738358(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E3B3A8);
  }

  v2 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "[CMHeadphoneActivityManager] notifying client of disconnection", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3B3A8);
    }

    v7[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "[CMHeadphoneActivityManager] notifying client of disconnection", v7, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHeadphoneActivityManager notifyDeviceDisconnectedEventToClientPrivate]_block_invoke", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

os_log_t sub_19B738520()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

void sub_19B7385C4(void *a1)
{
  sub_19B718268(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B738600(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  bzero(&v9, 0x12uLL);
  v9 = *(a1 + 126);
  v10 = *(a1 + 134);
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E2A120);
  }

  v2 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 64);
    *buf = 67110656;
    v26 = v9;
    v27 = 1024;
    v28 = SWORD1(v9);
    v29 = 1024;
    v30 = SWORD2(v9);
    v31 = 1024;
    v32 = SHIWORD(v9);
    v33 = 1024;
    v34 = v10;
    v35 = 1024;
    v36 = SHIWORD(v10);
    v37 = 1024;
    v38 = v3;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "Setting calibration data %d, %d, %d, %d, %d, %d from sensor mode %d", buf, 0x2Cu);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E2A120);
    }

    v5 = *(a1 + 64);
    v13 = 1024;
    v14 = SWORD1(v9);
    v15 = 1024;
    v16 = SWORD2(v9);
    v17 = 1024;
    v18 = SHIWORD(v9);
    v19 = 1024;
    v20 = v10;
    v21 = 1024;
    v22 = SHIWORD(v10);
    v23 = 1024;
    v24 = v5;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2888, 1, "Setting calibration data %d, %d, %d, %d, %d, %d from sensor mode %d", &v12, 44, v8, v9, v10, v11, 67110656);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLMagnetometerCoexistenceNotifierCpasV11::chooseOffsetData()", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  sub_19B71913C(a1, &v9);
}

float sub_19B73888C(float *a1)
{
  v1 = 0;
  v2 = 0.0;
  do
  {
    v2 = v2 + (a1[v1] * a1[v1]);
    ++v1;
  }

  while (v1 != 3);
  v3 = sqrtf(v2);
  if (v3 < 0.001)
  {
    return 0.0;
  }

  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  if ((atomic_load_explicit(&qword_1EAFE3B38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EAFE3B38))
  {
    v11 = sub_19B69A550();
    HIDWORD(v11) = v12;
    qword_1EAFE3B28 = vadd_f32(*&v11, *&v11);
    *&dword_1EAFE3B30 = v13 + v13;
    __cxa_guard_release(&qword_1EAFE3B38);
  }

  v8 = (v7 / v3) * *&dword_1EAFE3B30;
  v9 = (v8 + ((v6 / v3) * *(&qword_1EAFE3B28 + 1))) + ((v5 / v3) * *&qword_1EAFE3B28);
  v10 = 1.0;
  if (v9 <= 1.0)
  {
    v10 = -1.0;
    if (v9 >= -1.0)
    {
      v10 = (v8 + ((v6 / v3) * *(&qword_1EAFE3B28 + 1))) + ((v5 / v3) * *&qword_1EAFE3B28);
    }
  }

  return acosf(v10);
}

uint64_t sub_19B7389C0(uint64_t a1, uint64_t *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x3F80000000000000;
  sub_19B41E130((a1 + 24), 0);
  *(a1 + 40) = xmmword_19B7B7E30;
  sub_19B41E130((a1 + 40), xmmword_19B7B7E30);
  if (a2 != a1)
  {
    v4 = *a2;
    *(a1 + 8) = *(a2 + 2);
    *a1 = v4;
    v5 = *(a2 + 12);
    *(a1 + 20) = *(a2 + 5);
    *(a1 + 12) = v5;
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 40) = *(a2 + 5);
  }

  return a1;
}

void sub_19B738A58(uint64_t a1, uint64_t a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 40) * 1000000.0;
  v5 = v4;
  v6 = *a2;
  v7 = (*a2 < 0xCu) & (6u >> *a2);
  v8 = *a1;
  v9 = 1;
  if (*a1 > 0xBu)
  {
LABEL_4:
    if ((v7 & v9) == 1 && !*(a1 + 16))
    {
      *(a1 + 8) = 0;
      *(a1 + 16) = v5;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
      }

      v17 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        v18 = *(a1 + 16);
        *buf = 134349056;
        v60 = v18;
        _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_INFO, "[RelDM] Activity: detected moving to static. staticStartTime, %{public}llu", buf, 0xCu);
      }

      v19 = sub_19B420058();
      if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
        }

        v20 = *(a1 + 16);
        *v54 = 134349056;
        *&v54[4] = v20;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[RelDM] Activity: detected moving to static. staticStartTime, %{public}llu", v54, 12, *v54, *&v54[8]);
        goto LABEL_35;
      }
    }

    else if (v8 <= 0xB && ((1 << v8) & 0xC06) != 0 && (v8 & 0xFFFFFFFE) != 10 && ((*a2 > 0xBu) | (0xFF8u >> *a2) & 1) != 0)
    {
      *(a1 + 8) = v5;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
      }

      v10 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 8);
        *buf = 134349056;
        v60 = v11;
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "[RelDM] Activity: detected static to moving. movingStartTime, %{public}llu", buf, 0xCu);
      }

      v12 = sub_19B420058();
      if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
        }

        v13 = *(a1 + 8);
        *v54 = 134349056;
        *&v54[4] = v13;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[RelDM] Activity: detected static to moving. movingStartTime, %{public}llu", v54, 12, *v54, *&v54[8]);
LABEL_35:
        v21 = v14;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDM::ActivityState::feedActivity(const CLMotionActivity &)", "CoreLocation: %s\n", v14);
        if (v21 != buf)
        {
          free(v21);
        }
      }
    }

    v22 = *a1;
    if (*a2 == 1)
    {
      if (v22 == 1)
      {
        goto LABEL_99;
      }

      *(a1 + 32) = -1;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
      }

      v23 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v60 = v5;
        _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_INFO, "[RelDM] Activity: entered frozen state, %{public}llu", buf, 0xCu);
      }

      v24 = sub_19B420058();
      if (*(v24 + 160) <= 1 && *(v24 + 164) <= 1 && *(v24 + 168) <= 1 && !*(v24 + 152))
      {
        goto LABEL_64;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
      }

      *v54 = 134349056;
      *&v54[4] = v5;
      LODWORD(v53) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[RelDM] Activity: entered frozen state, %{public}llu", v54, v53, *v54, *&v54[8]);
    }

    else
    {
      if (v22 != 1)
      {
LABEL_65:
        if (v22 == 41 || v22 == 4)
        {
          if (*a2 != 4 && *a2 != 41)
          {
            *(a1 + 24) = v5;
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
            }

            v29 = off_1EAFE29A0;
            if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
            {
              *buf = 134349056;
              v60 = v5;
              _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_INFO, "[RelDM] Activity: walking stopped, %{public}llu", buf, 0xCu);
            }

            v30 = sub_19B420058();
            if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
              }

              *v54 = 134349056;
              *&v54[4] = v5;
              LODWORD(v53) = 12;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[RelDM] Activity: walking stopped, %{public}llu", v54, v53, *v54, *&v54[8]);
LABEL_97:
              v39 = v31;
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDM::ActivityState::feedActivity(const CLMotionActivity &)", "CoreLocation: %s\n", v31);
              if (v39 != buf)
              {
                free(v39);
              }

              goto LABEL_99;
            }
          }
        }

        else if (*a2 == 41 || *a2 == 4)
        {
          *(a1 + 24) = -1;
        }

        goto LABEL_99;
      }

      *(a1 + 32) = v5;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
      }

      v26 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v60 = v5;
        _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_INFO, "[RelDM] Activity: exited frozen state, %{public}llu", buf, 0xCu);
      }

      v27 = sub_19B420058();
      if (*(v27 + 160) <= 1 && *(v27 + 164) <= 1 && *(v27 + 168) <= 1 && !*(v27 + 152))
      {
LABEL_64:
        v22 = *a1;
        goto LABEL_65;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
      }

      *v54 = 134349056;
      *&v54[4] = v5;
      LODWORD(v53) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[RelDM] Activity: exited frozen state, %{public}llu", v54, v53, *v54, *&v54[8]);
    }

    v28 = v25;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDM::ActivityState::feedActivity(const CLMotionActivity &)", "CoreLocation: %s\n", v25);
    if (v28 != buf)
    {
      free(v28);
    }

    goto LABEL_64;
  }

  if (((1 << v8) & 0xC06) != 0)
  {
    v9 = (v8 & 0xFFFFFFFE) == 10;
    goto LABEL_4;
  }

  if (v8)
  {
    goto LABEL_4;
  }

  if (v7)
  {
    *(a1 + 16) = v5;
    if (v6 != 1)
    {
      goto LABEL_86;
    }

    v15 = -1;
    v16 = 32;
  }

  else
  {
    if (!((*a2 > 0xBu) | (0xFF8u >> *a2) & 1))
    {
      goto LABEL_86;
    }

    v16 = 8;
    v15 = v4;
  }

  *(a1 + v16) = v15;
LABEL_86:
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
  }

  v32 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
  {
    v33 = CLMotionActivity::activityTypeToString(*a2);
    v34 = *(a2 + 40);
    *buf = 136446466;
    v60 = v33;
    v61 = 2050;
    *v62 = v34;
    _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_DEFAULT, "[RelDM] Activity: initialize srcMotionState. type %{public}s, timestamp, %{public}f", buf, 0x16u);
  }

  v35 = sub_19B420058();
  if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
    }

    v36 = off_1EAFE29A0;
    v37 = CLMotionActivity::activityTypeToString(*a2);
    v38 = *(a2 + 40);
    *v54 = 136446466;
    *&v54[4] = v37;
    *&v54[12] = 2050;
    *&v54[14] = v38;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v36, 0, "[RelDM] Activity: initialize srcMotionState. type %{public}s, timestamp, %{public}f", v54, 22, *v54, *&v54[8]);
    goto LABEL_97;
  }

LABEL_99:
  *a1 = *a2;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
  }

  v40 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
  {
    v41 = CLMotionActivity::activityTypeToString(*a1);
    v42 = *(a1 + 4);
    v44 = *(a1 + 8);
    v43 = *(a1 + 16);
    *buf = 136447234;
    v60 = v41;
    v61 = 1026;
    *v62 = v42;
    *&v62[4] = 2050;
    *&v62[6] = v5;
    v63 = 2050;
    v64 = v43;
    v65 = 2050;
    v66 = v44;
    _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_INFO, "[RelDM] ActivityType, %{public}s, confidence, %{public}d, timestamp, %{public}llu, lastStaticTS, %{public}llu, lastMovingTS, %{public}llu", buf, 0x30u);
  }

  v45 = sub_19B420058();
  if (*(v45 + 160) > 1 || *(v45 + 164) > 1 || *(v45 + 168) > 1 || *(v45 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
    }

    v46 = off_1EAFE29A0;
    v47 = CLMotionActivity::activityTypeToString(*a1);
    v48 = *(a1 + 4);
    v50 = *(a1 + 8);
    v49 = *(a1 + 16);
    *v54 = 136447234;
    *&v54[4] = v47;
    *&v54[12] = 1026;
    *&v54[14] = v48;
    *&v54[18] = 2050;
    *&v54[20] = v5;
    v55 = 2050;
    v56 = v49;
    v57 = 2050;
    v58 = v50;
    LODWORD(v53) = 48;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v46, 1, "[RelDM] ActivityType, %{public}s, confidence, %{public}d, timestamp, %{public}llu, lastStaticTS, %{public}llu, lastMovingTS, %{public}llu", v54, v53);
    v52 = v51;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDM::ActivityState::feedActivity(const CLMotionActivity &)", "CoreLocation: %s\n", v51);
    if (v52 != buf)
    {
      free(v52);
    }
  }
}

void sub_19B739578(int *a1, unint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (*a1 <= 0xB)
  {
    if (((1 << v4) & 0xC06) != 0)
    {
      if ((v4 & 0xFFFFFFFE) != 0xA)
      {
        return;
      }
    }

    else if (!v4)
    {
      return;
    }
  }

  v5 = *(a1 + 1);
  v7 = a2 >= v5;
  v6 = a2 - v5;
  v7 = v6 != 0 && v7 && v6 >= 0x30D41;
  if (v7 && *(a1 + 2))
  {
    *(a1 + 2) = 0;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
    }

    v8 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 1);
      *buf = 134349312;
      v19 = a2;
      v20 = 2050;
      v21 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "[RelDM] Activity: Reseting static startTime. Curr %{public}llu, lastMoving, %{public}llu", buf, 0x16u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
      }

      v11 = *(a1 + 1);
      v14 = 134349312;
      v15 = a2;
      v16 = 2050;
      v17 = v11;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[RelDM] Activity: Reseting static startTime. Curr %{public}llu, lastMoving, %{public}llu", &v14, 22);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDM::ActivityState::feedWatchdogTimestamp(uint64_t)", "CoreLocation: %s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }
}

float sub_19B7397C0(uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = 0.0;
  if (v2)
  {
    v5 = a2 >= v2;
    v6 = a2 - v2;
    if (v6 != 0 && v5)
    {
      return v6 * 0.000001;
    }

    else
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
      }

      v8 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 16);
        *buf = 134349312;
        v20 = a2;
        v21 = 2050;
        v22 = v9;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "[RelDM] Activity:timestamp error: current %{public}llu, lastStatic, %{public}llu", buf, 0x16u);
      }

      v10 = sub_19B420058();
      if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
        }

        v11 = *(a1 + 16);
        v15 = 134349312;
        v16 = a2;
        v17 = 2050;
        v18 = v11;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[RelDM] Activity:timestamp error: current %{public}llu, lastStatic, %{public}llu", &v15, 22);
        v13 = v12;
        sub_19B6BB7CC("Generic", 1, 0, 2, "float CMRelDM::ActivityState::getStaticDuration(uint64_t) const", "CoreLocation: %s\n", v12);
        if (v13 != buf)
        {
          free(v13);
        }
      }
    }
  }

  return v3;
}

float sub_19B7399E4(uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = 0.0;
  if (v2)
  {
    v5 = a2 >= v2;
    v6 = a2 - v2;
    if (v6 != 0 && v5)
    {
      return v6 * 0.000001;
    }

    else
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
      }

      v8 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 8);
        *buf = 134349312;
        v20 = a2;
        v21 = 2050;
        v22 = v9;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "[RelDM] Activity:timestamp error: current %{public}llu, lastMoving, %{public}llu", buf, 0x16u);
      }

      v10 = sub_19B420058();
      if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
        }

        v11 = *(a1 + 8);
        v15 = 134349312;
        v16 = a2;
        v17 = 2050;
        v18 = v11;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[RelDM] Activity:timestamp error: current %{public}llu, lastMoving, %{public}llu", &v15, 22);
        v13 = v12;
        sub_19B6BB7CC("Generic", 1, 0, 2, "float CMRelDM::ActivityState::getMovingDuration(uint64_t) const", "CoreLocation: %s\n", v12);
        if (v13 != buf)
        {
          free(v13);
        }
      }
    }
  }

  return v3;
}

double sub_19B739C08(uint64_t a1, unint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  if (!v2)
  {
    LODWORD(result) = 2139095039;
    return result;
  }

  if (v2 == -1)
  {
    return 0.0;
  }

  v4 = a2 >= v2;
  v5 = a2 - v2;
  if (v5 != 0 && v4)
  {
    *&result = v5 * 0.000001;
    return result;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
  }

  v8 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 24);
    *buf = 134349312;
    v19 = a2;
    v20 = 2050;
    v21 = v9;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "[RelDM] Activity:timestamp error: current %{public}llu, lastWalkStop, %{public}llu", buf, 0x16u);
  }

  v10 = sub_19B420058();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || (result = 0.0, *(v10 + 152)))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
    }

    v11 = *(a1 + 24);
    v14 = 134349312;
    v15 = a2;
    v16 = 2050;
    v17 = v11;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[RelDM] Activity:timestamp error: current %{public}llu, lastWalkStop, %{public}llu", &v14, 22);
    v13 = v12;
    sub_19B6BB7CC("Generic", 1, 0, 2, "float CMRelDM::ActivityState::getTimeSinceWalkingStopped(uint64_t) const", "CoreLocation: %s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }

    return 0.0;
  }

  return result;
}

double sub_19B739E38(uint64_t a1, unint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2)
  {
    LODWORD(result) = 2139095039;
    return result;
  }

  if (v2 == -1)
  {
    return 0.0;
  }

  v4 = a2 >= v2;
  v5 = a2 - v2;
  if (v5 != 0 && v4)
  {
    *&result = v5 * 0.000001;
    return result;
  }

  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
  }

  v8 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    *buf = 134349312;
    v19 = a2;
    v20 = 2050;
    v21 = v9;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_INFO, "[RelDM] Activity:timestamp error: current %{public}llu, lastFrozenStopTimestamp, %{public}llu", buf, 0x16u);
  }

  v10 = sub_19B420058();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || (result = 0.0, *(v10 + 152)))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
    }

    v11 = *(a1 + 32);
    v14 = 134349312;
    v15 = a2;
    v16 = 2050;
    v17 = v11;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 1, "[RelDM] Activity:timestamp error: current %{public}llu, lastFrozenStopTimestamp, %{public}llu", &v14, 22);
    v13 = v12;
    sub_19B6BB7CC("Generic", 1, 0, 2, "float CMRelDM::ActivityState::getTimeSinceLastFrozenState(uint64_t) const", "CoreLocation: %s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }

    return 0.0;
  }

  return result;
}

unint64_t sub_19B73A068(int *a1, uint64_t a2, unint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  ++*a1;
  if (*(a1 + 1) == 0.0)
  {
    v6 = *(a1 + 9);
    if (*(a1 + 9))
    {
      if (v6 > 2)
      {
        memset(__p, 0, 24);
        sub_19B4C50B4(__p, v6);
      }

      v7 = v6 + *(a1 + 8) - 1;
      v8 = a1[5];
      if (v7 < v8)
      {
        v8 = 0;
      }

      v9 = *&a1[2 * (v7 - v8) + 6];
    }

    else
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
      }

      v10 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_ERROR, "[RelDM][UnTimesyncedAuxSampleHelper] Buffer is empty.", &buf, 2u);
      }

      v11 = sub_19B420058();
      if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || (v9 = 0, *(v11 + 152)))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
        }

        LOWORD(__p[0]) = 0;
        _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[RelDM][UnTimesyncedAuxSampleHelper] Buffer is empty.", __p, 2);
        v13 = v12;
        sub_19B6BB7CC("Generic", 1, 0, 0, "double CMRelDM::UnTimesyncedAuxSampleHelper::getMedianOffset() const", "CoreLocation: %s\n", v12);
        if (v13 != &buf)
        {
          free(v13);
        }

        v9 = 0;
      }
    }

    *(a1 + 1) = v9;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
    }

    v14 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 1);
      buf = 134217984;
      buf_4 = v15;
      _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEFAULT, "[RelDM] Using auxTimeOfArrival. Offset, %f", &buf, 0xCu);
    }

    v16 = sub_19B420058();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
      }

      v17 = *(a1 + 1);
      LODWORD(__p[0]) = 134217984;
      *(__p + 4) = v17;
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, off_1EAFE29A0, 0, "[RelDM] Using auxTimeOfArrival. Offset, %f", COERCE_DOUBLE(__p));
      v19 = v18;
      sub_19B6BB7CC("Generic", 1, 0, 2, "uint64_t CMRelDM::UnTimesyncedAuxSampleHelper::constructAuxTimestampFromUntimesyncedAuxSample(uint64_t, uint64_t)", "CoreLocation: %s\n", v18);
      if (v19 != &buf)
      {
        free(v19);
      }
    }
  }

  result = (*(a1 + 1) * 1000000.0) + a2;
  v21 = result - a3;
  if (result > a3)
  {
    ++a1[1];
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
    }

    v22 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_ERROR))
    {
      v23 = *a1;
      v24 = a1[1];
      buf = 134218496;
      buf_4 = (v21 * 0.001);
      v33 = 1024;
      v34 = v23;
      v35 = 1024;
      v36 = v24;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_ERROR, "[RelDM] fake auxTimestamp is ahead of src, diffMS: %f, totalUnsynced: %u, totalOutlier, %u", &buf, 0x18u);
    }

    v25 = sub_19B420058();
    if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A140);
      }

      v26 = *a1;
      v27 = a1[1];
      LODWORD(__p[0]) = 134218496;
      *(__p + 4) = (v21 * 0.001);
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = v26;
      WORD1(__p[2]) = 1024;
      HIDWORD(__p[2]) = v27;
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, &dword_19B41C000, off_1EAFE29A0, 16, "[RelDM] fake auxTimestamp is ahead of src, diffMS: %f, totalUnsynced: %u, totalOutlier, %u", COERCE_DOUBLE(__p), 24);
      v29 = v28;
      sub_19B6BB7CC("Generic", 1, 0, 0, "uint64_t CMRelDM::UnTimesyncedAuxSampleHelper::constructAuxTimestampFromUntimesyncedAuxSample(uint64_t, uint64_t)", "CoreLocation: %s\n", v28);
      if (v29 != &buf)
      {
        free(v29);
      }
    }

    if (*a1 >= 0x15 && (*a1 * 0.15) < a1[1])
    {
      sub_19B644550(a1, 0);
    }

    return a3;
  }

  return result;
}

void sub_19B73A6D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B73A714()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

void sub_19B73A8BC(float *a1@<X0>, float *a2@<X1>, void *a3@<X2>, void *a4@<X3>, float *a5@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  __p[3] = a3;
  __p[4] = a4;
  *(a5 + 1) = 0;
  *(a5 + 2) = 0;
  *a5 = 0;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v5 < 0x42)
  {
    memset(__p, 0, 24);
    v6 = (v5 - 1) * v5;
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    if (!(v6 >> 62))
    {
      sub_19B4C4FA8(__p, v7);
    }

    sub_19B5BE690();
  }

  if (qword_1ED71C810 != -1)
  {
    dispatch_once(&qword_1ED71C810, &unk_1F0E2A160);
  }

  v8 = qword_1ED71C818;
  if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289539;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "assert";
    v18 = 2081;
    v19 = "n <= 65";
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E2A160);
    }
  }

  v9 = qword_1ED71C818;
  if (os_signpost_enabled(qword_1ED71C818))
  {
    *buf = 68289539;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "assert";
    v18 = 2081;
    v19 = "n <= 65";
    _os_signpost_emit_with_name_impl(&dword_19B41C000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E2A160);
    }
  }

  v10 = qword_1ED71C818;
  if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_INFO))
  {
    *buf = 68289539;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "assert";
    v18 = 2081;
    v19 = "n <= 65";
    _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Daemon/Motion/GyroBiasEstimator/CLGyroBiasFitter.cpp", 26, "computeLinearFit");
  __break(1u);
}

void sub_19B73B060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B73B1DC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v20, v19, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_19B73B20C(uint64_t a1, CLConnectionMessage **a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a2 && (Dictionary = CLConnectionMessage::getDictionary(*a2)) != 0 && (v4 = objc_msgSend_objectForKeyedSubscript_(Dictionary, v3, @"CMErrorMessage")) != 0)
  {
    v7 = objc_msgSend_intValue(v4, v5, v6);
  }

  else
  {
    v7 = 103;
  }

  if (qword_1EAFE2808 != -1)
  {
    dispatch_once(&qword_1EAFE2808, &unk_1F0E3B3C8);
  }

  v8 = qword_1EAFE2830;
  if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v14 = v7;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "CMWorkoutMets, Failed with CMError code %{public}d", buf, 8u);
  }

  v9 = sub_19B420058();
  if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3B3C8);
    }

    v12[0] = 67240192;
    v12[1] = v7;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2830, 17, "CMWorkoutMets, Failed with CMError code %{public}d", v12, 8);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWorkoutMetsInternal init]_block_invoke", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }
}

void sub_19B73B3F8(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E3B3C8);
    }

    v6 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_INFO))
    {
      v9 = objc_msgSend_UTF8String(v5, v7, v8);
      v10 = getpid();
      v11 = *(a1 + 32);
      *buf = 136446722;
      v28 = v9;
      v29 = 1026;
      v30 = v10;
      v31 = 2050;
      v32 = v11;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "CMWorkoutMets, Client connection interrupt, %{public}s, %{public}d, %{public}p", buf, 0x1Cu);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E3B3C8);
      }

      v15 = qword_1EAFE2830;
      v16 = objc_msgSend_UTF8String(v5, v13, v14);
      v17 = getpid();
      v18 = *(a1 + 32);
      v21 = 136446722;
      v22 = v16;
      v23 = 1026;
      v24 = v17;
      v25 = 2050;
      v26 = v18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v15, 1, "CMWorkoutMets, Client connection interrupt, %{public}s, %{public}d, %{public}p", &v21, 28);
      v20 = v19;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWorkoutMetsInternal init]_block_invoke", "CoreLocation: %s\n", v19);
      if (v20 != buf)
      {
        free(v20);
      }
    }
  }
}

void sub_19B73B914(uint64_t a1, const char *a2, uint64_t a3)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3)
  {
    v6 = @"CMWorkoutSessionIdKey";
    v7[0] = v3;
    block[5] = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v7, &v6, 1);
    sub_19B686A4C();
  }

  v4 = objc_msgSend_copy(*(a1 + 48), a2, a3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B73BAD8;
  block[3] = &unk_1E7532B40;
  block[4] = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void sub_19B73BAAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  if (a18)
  {
    sub_19B41FFEC(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B73BAD8(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 107, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

void sub_19B73BB3C(uint64_t a1, CLConnectionMessage **a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_copy(*(a1 + 32), a2, a3);
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v10 = objc_msgSend_setWithObjects_(v5, v9, v6, v7, v8, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v10)) != 0)
  {
    v13 = DictionaryOfClasses;
    v14 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v12, @"CMErrorMessage");
    v16 = objc_msgSend_objectForKeyedSubscript_(v13, v15, @"CMWorkoutMetsQueryResult");
    if (v14)
    {
      v17 = v26;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_19B73BF24;
      v26[3] = &unk_1E7532B90;
      v26[5] = v4;
      v4 = v14;
    }

    else if (v16)
    {
      v17 = v25;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = sub_19B73BF9C;
      v25[3] = &unk_1E7532B90;
      v25[5] = v4;
      v4 = v16;
    }

    else
    {
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E3B3C8);
      }

      v18 = qword_1EAFE2830;
      if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "Unable to parse kCLConnectionMessageWorkoutMetsQuery message.", buf, 2u);
      }

      v19 = sub_19B420058();
      if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2808 != -1)
        {
          dispatch_once(&qword_1EAFE2808, &unk_1F0E3B3C8);
        }

        v24 = 0;
        LODWORD(v22) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2830, 17, "Unable to parse kCLConnectionMessageWorkoutMetsQuery message.", &v24, v22);
        v21 = v20;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWorkoutMetsInternal _queryWorkoutMetsWithSessionId:handler:]_block_invoke", "CoreLocation: %s\n", v20);
        if (v21 != buf)
        {
          free(v21);
        }
      }

      v17 = v23;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_19B73BFB4;
      v23[3] = &unk_1E7532B40;
    }
  }

  else
  {
    v17 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B73BEC0;
    block[3] = &unk_1E7532B40;
  }

  v17[4] = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v17);
}

uint64_t sub_19B73BEC0(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B73BF24(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_intValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

uint64_t sub_19B73BFB4(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

int64_t sub_19B73C288(uint64_t a1, const char *a2)
{
  result = objc_msgSend_isAuthorizedForEntitlement_(CMMotionUtils, a2, @"com.apple.locationd.activity");
  qword_1ED71D640 = result;
  return result;
}

os_log_t sub_19B73C2C0()
{
  result = os_log_create("com.apple.locationd.Motion", "Calorimetry");
  qword_1EAFE2830 = result;
  return result;
}

uint64_t sub_19B73C2F0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  *a1 = 1;
  *(a1 + 20) = 0;
  *(a1 + 12) = 0;
  *(a1 + 28) = 0x1900000000;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x7FF8000000000000;
  *(a1 + 152) = 0;
  *(a1 + 156) = 0x7FC0000000000000;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A1A0);
  }

  v2 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "Constructing CMTNBDoTEstimatorBase.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A1A0);
    }

    v7[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 0, "Constructing CMTNBDoTEstimatorBase.", v7, 2);
    v5 = v4;
    sub_19B6BB7CC("Generic", 1, 0, 2, "CMTNBDoTEstimatorBase::CMTNBDoTEstimatorBase()", "CoreLocation: %s\n", v4);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  return a1;
}

void sub_19B73C4DC(_Unwind_Exception *exception_object)
{
  v3 = 0;
  v4 = v1 + 176;
  while (1)
  {
    v5 = *(v4 + v3);
    *(v4 + v3) = 0;
    if (v5)
    {
      MEMORY[0x19EAE76F0](v5, 0x1000C40FF89C88ELL);
    }

    v3 -= 8;
    if (v3 == -16)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_19B73C524(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  if (*(a2 + 68) == 1)
  {
    v4 = atan2f(*(a2 + 48), *(a2 + 44));
    v5 = (v4 + 1.5708) + floor(((v4 + 1.5708) + 3.14159265) / 6.28318531) * -6.28318531;
    *(&v37 + 1) = v5;
    if (*(a1 + 30))
    {
      v6 = *(a1 + 30) + *(a1 + 28) - 1;
      v7 = *(a1 + 32);
      if (v6 < v7)
      {
        v7 = 0;
      }

      v8 = *(a1 + 4 * (v6 - v7) + 36);
      v9 = (v5 - v8);
      if (v9 <= 3.14159265)
      {
        if (v9 < -3.14159265)
        {
          v9 = v9 + 6.28318531;
        }
      }

      else
      {
        v9 = v9 + -6.28318531;
      }

      v10 = v9;
      *(&v37 + 1) = v8 + v10;
    }

    sub_19B5BC034(a1, &v37 + 1);
    v11 = __sincosf_stret(*(&v37 + 1));
    *(a1 + 136) = v11.__cosval;
    *(a1 + 140) = v11.__sinval;
    v12 = *(a2 + 72);
    v13 = *(a1 + 144);
    if (*a1 == 1)
    {
      sub_19B5BE7E0(a1);
    }

    v14 = *(a1 + 8);
    if (v14 < 0.0)
    {
      v14 = 0.0;
    }

    v15 = sqrtf(v14);
    if (v15 <= 2.0944)
    {
      v16 = 1.0;
    }

    else
    {
      v16 = 2.0944 / v15;
    }

    if (v12 - v13 > 1.75)
    {
      v16 = exp((v12 - v13 + -1.75) * -0.5) * v16;
    }

    *(a1 + 156) = v16;
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A1A0);
    }

    v17 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 144);
      *buf = 134218240;
      v49 = v12;
      v50 = 2048;
      v51 = v18;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEBUG, "[CMTNBDoTEstimatorBase] timestamp, %.4f, timeOfLastStep, %.4f\n", buf, 0x16u);
    }

    v19 = sub_19B420058();
    if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A1A0);
      }

      v20 = *(a1 + 144);
      v38 = 134218240;
      v39 = v12;
      v40 = 2048;
      v41 = v20;
      LODWORD(v37) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 2, "[CMTNBDoTEstimatorBase] timestamp, %.4f, timeOfLastStep, %.4f\n", COERCE_DOUBLE(&v38), v37);
      v22 = v21;
      sub_19B6BB7CC("Generic", 1, 0, 2, "CMTNBDoTEstimatorBase::TNBDoT CMTNBDoTEstimatorBase::directionFromTNB(const CMPdrInputs &)", "CoreLocation: %s\n", v21);
      if (v22 != buf)
      {
        free(v22);
      }
    }

    v23 = *(a1 + 144);
    v24 = sub_19B5C0034((a1 + 28), sub_19B5C0258, 0);
    v25 = sub_19B5C0034((a1 + 28), sub_19B5C024C, 0);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A1A0);
    }

    v26 = v12 - v23;
    v27 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
    {
      if (*a1 == 1)
      {
        sub_19B5BE7E0(a1);
      }

      v28 = *(a1 + 8);
      if (v28 < 0.0)
      {
        v28 = 0.0;
      }

      v29 = *(a1 + 156);
      *buf = 134219008;
      v49 = (sqrtf(v28) * 57.296);
      v50 = 2048;
      v51 = (v24 * 57.296);
      v52 = 2048;
      v53 = (v25 * 57.296);
      v54 = 2048;
      v55 = v26;
      v56 = 2048;
      v57 = v29;
      _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_DEBUG, "[CMTNBDoTEstimatorBase] Sway std %f, min, %f, max, %f, timeSinceStep, %f, quality, %.2f\n", buf, 0x34u);
    }

    v30 = sub_19B420058();
    if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A1A0);
      }

      v31 = qword_1EAFE2A60;
      if (*a1 == 1)
      {
        sub_19B5BE7E0(a1);
      }

      v32 = *(a1 + 8);
      if (v32 < 0.0)
      {
        v32 = 0.0;
      }

      v38 = 134219008;
      v33 = *(a1 + 156);
      v39 = (sqrtf(v32) * 57.296);
      v40 = 2048;
      v41 = (v24 * 57.296);
      v42 = 2048;
      v43 = (v25 * 57.296);
      v44 = 2048;
      v45 = v26;
      v46 = 2048;
      v47 = v33;
      LODWORD(v37) = 52;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v31, 2, "[CMTNBDoTEstimatorBase] Sway std %f, min, %f, max, %f, timeSinceStep, %f, quality, %.2f\n", COERCE_DOUBLE(&v38), v37);
      v35 = v34;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMTNBDoTEstimatorBase::printDebugInfo(double) const", "CoreLocation: %s\n", v34);
      if (v35 != buf)
      {
        free(v35);
      }
    }
  }

  return *(a1 + 136);
}

double sub_19B73CB1C(uint64_t a1, double a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 160);
  *(a1 + 152) = 0;
  result = v2 * 0.5 + a2;
  *(a1 + 144) = result;
  return result;
}

float sub_19B73CDFC(uint64_t a1, float *a2)
{
  v4 = 0;
  v6 = *a2;
  v5 = a2[1];
  v7 = a1 + 168;
  v8 = 1;
  v9 = 1;
  do
  {
    v10 = v8;
    v11 = *(v7 + 8 * v4);
    v12 = sub_19B6E4AE4(a2, v4);
    v13 = sub_19B5BE1A8(v11, v12);
    v8 = 0;
    v9 &= v13;
    v4 = 1;
  }

  while ((v10 & 1) != 0);
  if (v9)
  {
    v14 = *(*(a1 + 168) + 4 * *(*(a1 + 168) + 8) + 16);
    v15 = *(*(a1 + 176) + 4 * *(*(a1 + 176) + 8) + 16);
  }

  else
  {
    v14 = v6;
    v15 = v5;
  }

  return v14 / sqrtf((v15 * v15) + (v14 * v14));
}

unsigned __int16 *sub_19B73CEB8(unsigned __int16 *result, float a2, float a3, float a4, double a5)
{
  v8 = result;
  v13 = a2;
  v11 = 0.0;
  v12 = 0.0;
  *(result + 200) = 0;
  if (a5 - *result >= 0.5)
  {
    v9 = (a3 - *(result + 48)) + floor(((a3 - *(result + 48)) + 3.14159265) / 6.28318531) * -6.28318531;
    v10 = (a4 - *(result + 49)) + floor(((a4 - *(result + 49)) + 3.14159265) / 6.28318531) * -6.28318531;
    v11 = v10;
    v12 = v9;
    *(result + 200) = 1;
    sub_19B5BC034((result + 36), &v11);
    sub_19B5BC034((v8 + 6), &v12);
    result = sub_19B5BC034((v8 + 66), &v13);
    *(v8 + 48) = a3;
    *(v8 + 49) = a4;
    *v8 = a5;
  }

  return result;
}

BOOL sub_19B73CFB0(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  if (*(a1 + 200) != 1 || *(a1 + 44) != *(a1 + 42) || sub_19B5C0034((a1 + 160), sub_19B5C0258, 0) <= 0.0)
  {
    v24 = *(a1 + 160) + *(a1 + 162) - 1;
    v25 = *(a1 + 164);
    if (v24 < v25)
    {
      v25 = 0;
    }

    if (*(a1 + 4 * (v24 - v25) + 168) == 0.0)
    {
      v26 = *(a1 + 204);
      v27 = __OFSUB__(v26, 1);
      v28 = v26 - 1;
      if (v28 < 0 == v27)
      {
        v15 = 0;
        *(a1 + 204) = v28;
        return v15;
      }
    }

    return 0;
  }

  if (*(a1 + 12) == 1)
  {
    sub_19B5BE7E0(a1 + 12);
  }

  v2 = *(a1 + 20);
  if (v2 < 0.0)
  {
    v2 = 0.0;
  }

  v3 = sqrtf(v2);
  v4 = *(a1 + 24) + floor((*(a1 + 24) + 3.14159265) / 6.28318531) * -6.28318531;
  if (v4 <= 0.0)
  {
    v5 = -v4;
  }

  else
  {
    v5 = v4;
  }

  if (v3 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (v6 >= 0.2618)
  {
    return 0;
  }

  if (*(a1 + 72) == 1)
  {
    sub_19B5BE7E0(a1 + 72);
  }

  v7 = *(a1 + 80);
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v8 = *(a1 + 84) + floor((*(a1 + 84) + 3.14159265) / 6.28318531) * -6.28318531;
  if (v8 <= 0.0)
  {
    v9 = -v8;
  }

  else
  {
    v9 = v8;
  }

  if (qword_1EAFE2A58 != -1)
  {
    v34 = v7;
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A1A0);
    v7 = v34;
  }

  v10 = qword_1EAFE2A60;
  v11 = sqrtf(v7);
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v47 = (v11 * 57.296);
    v48 = 2048;
    v49 = (v9 * 57.296);
    _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "[CMTNBDoTEstimatorBase::AnomalySteppingDetect] dotStd, %.2f, dotDeltaSum, %.2f", buf, 0x16u);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A1A0);
    }

    v36 = 134218240;
    v37 = (v11 * 57.296);
    v38 = 2048;
    v39 = (v9 * 57.296);
    LODWORD(v35) = 22;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 0, "[CMTNBDoTEstimatorBase::AnomalySteppingDetect] dotStd, %.2f, dotDeltaSum, %.2f", COERCE_DOUBLE(&v36), v35);
    v14 = v13;
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL AnomalySteppingDetect::checkForAnomaly()", "CoreLocation: %s\n", v13);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  v15 = v9 > 1.1345 || v11 > 0.87266;
  v16 = *(a1 + 204);
  if (v15)
  {
    *(a1 + 204) = v16 + 1;
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A1A0);
    }

    v17 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 204);
      *buf = 134219008;
      v47 = (v3 * 57.296);
      v48 = 2048;
      v49 = (v5 * 57.296);
      v50 = 2048;
      v51 = (v11 * 57.296);
      v52 = 2048;
      v53 = (v9 * 57.296);
      v54 = 1024;
      v55 = v18;
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEBUG, "[CMTNBDoTEstimatorBase::AnomalySteppingDetect] headingStd, %.2f, headingDelta, %.2f, dotStd, %.2f, dotDelta, %.2f, count, %d", buf, 0x30u);
    }

    v19 = sub_19B420058();
    if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A1A0);
      }

      v20 = *(a1 + 204);
      v36 = 134219008;
      v37 = (v3 * 57.296);
      v38 = 2048;
      v39 = (v5 * 57.296);
      v40 = 2048;
      v41 = (v11 * 57.296);
      v42 = 2048;
      v43 = (v9 * 57.296);
      v44 = 1024;
      v45 = v20;
      LODWORD(v35) = 48;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 2, "[CMTNBDoTEstimatorBase::AnomalySteppingDetect] headingStd, %.2f, headingDelta, %.2f, dotStd, %.2f, dotDelta, %.2f, count, %d", COERCE_DOUBLE(&v36), v35);
      v22 = v21;
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL AnomalySteppingDetect::checkForAnomaly()", "CoreLocation: %s\n", v21);
      if (v22 != buf)
      {
        free(v22);
      }
    }

    v23 = *(a1 + 204);
    goto LABEL_58;
  }

  v27 = __OFSUB__(v16, 1);
  v23 = v16 - 1;
  if (v23 < 0 != v27)
  {
    return 0;
  }

  *(a1 + 204) = v23;
LABEL_58:
  if (v23 >= 4)
  {
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A1A0);
    }

    v29 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_DEFAULT, "[CMTNBDoTEstimatorBase::AnomalySteppingDetect] TNB degenerate scenario detected! Switch to heading.", buf, 2u);
    }

    v30 = sub_19B420058();
    if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A1A0);
      }

      LOWORD(v36) = 0;
      LODWORD(v35) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 0, "[CMTNBDoTEstimatorBase::AnomalySteppingDetect] TNB degenerate scenario detected! Switch to heading.", &v36, *&v35);
      v32 = v31;
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL AnomalySteppingDetect::checkForAnomaly()", "CoreLocation: %s\n", v31);
      if (v32 != buf)
      {
        free(v32);
      }
    }

    *(a1 + 8) = 1;
  }

  return v15;
}

os_log_t sub_19B73D6D0()
{
  result = os_log_create("com.apple.locationd.Motion", "MotionContext");
  qword_1EAFE2A60 = result;
  return result;
}

uint64_t sub_19B73E2C8(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_pauseDeviceMotionStreamingPrivate(*(a1 + 32), a2, a3);
  v6 = *(a1 + 32);

  return objc_msgSend_pauseStatusStreamingPrivate(v6, v4, v5);
}

uint64_t sub_19B73E358()
{
  if (sub_19B43B6EC() & 1) != 0 || (sub_19B4426E4() & 1) != 0 || (sub_19B4215D8())
  {
    result = 1;
  }

  else
  {
    result = objc_msgSend_isMotionActivityEntitled(CMMotionUtils, v0, v1);
  }

  byte_1ED71D650 = result;
  return result;
}

void sub_19B73E438(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(v1 + 8) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B73E4B0;
  block[3] = &unk_1E7532988;
  block[4] = v1;
  dispatch_async(v2, block);
}

__n128 sub_19B73E53C(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 32) + 8) + 8);
  block[1] = 3221225472;
  block[2] = sub_19B73E5C4;
  block[3] = &unk_1E7532C08;
  v5 = v1;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
  return result;
}

void sub_19B73E64C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(v1 + 8) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B73E6C4;
  block[3] = &unk_1E7532988;
  block[4] = v1;
  dispatch_sync(v2, block);
}

void sub_19B73EA7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_19B73EA98(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = MEMORY[0x1E696ACD0];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v10 = objc_msgSend_setWithObjects_(v5, v9, v6, v7, v8, 0);
    v12 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v4, v11, v10, a2, 0);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      Weak = objc_loadWeak((v3 + 32));

      return MEMORY[0x1EEE66B58](Weak, sel_onDeviceMotionPrivate_, v12);
    }

    else
    {
      objc_opt_class();
      result = objc_opt_isKindOfClass();
      if (result)
      {
        v14 = objc_loadWeak((v3 + 32));

        return MEMORY[0x1EEE66B58](v14, sel_onStatusEventPrivate_, v12);
      }
    }
  }

  return result;
}

uint64_t sub_19B73ECE0(uint64_t a1, const char *a2)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17[0] = @"logTimestamp";
  v3 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], a2, *(a1 + 32));
  v17[1] = @"timeBetweenDeviceConnectAndFirstValidDeviceMotion";
  v18[0] = v3;
  v18[1] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v4, v5, *(a1 + 40));
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v18, v17, 2);
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E3B408);
  }

  v8 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v16 = v7;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "[CMHeadphoneMotionManager] Sending analytics: \n%{private}@", buf, 0xCu);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3B408);
    }

    v13 = 138477827;
    v14 = v7;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "[CMHeadphoneMotionManager] Sending analytics: \n%{private}@", &v13, 12);
    v11 = v10;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHeadphoneMotionManager pauseDeviceMotionStreamingPrivate]_block_invoke", "CoreLocation: %s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  return v7;
}

uint64_t sub_19B73EFBC(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E3B408);
  }

  v2 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    *buf = 138477827;
    v12 = v3;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "[CMHeadphoneMotionManager] deviceMotion: %{private}@", buf, 0xCu);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3B408);
    }

    v5 = *(a1 + 32);
    v9 = 138477827;
    v10 = v5;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 2, "[CMHeadphoneMotionManager] deviceMotion: %{private}@", &v9, 12);
    v7 = v6;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHeadphoneMotionManager onDeviceMotionPrivate:]_block_invoke", "CoreLocation: %s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_19B73F638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_19B73F654(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = MEMORY[0x1E696ACD0];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v9 = objc_msgSend_setWithObjects_(v5, v8, v6, v7, 0);
    v11 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v4, v10, v9, a2, 0);
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      Weak = objc_loadWeak((v3 + 32));

      return MEMORY[0x1EEE66B58](Weak, sel_onStatusEventPrivate_, v11);
    }
  }

  return result;
}

uint64_t sub_19B73FAE0(uint64_t result)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((*(*(*(result + 32) + 8) + 42) & 1) == 0)
  {
    v1 = result;
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3B408);
    }

    v2 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[CMHeadphoneMotionManager] Device connected", buf, 2u);
    }

    v3 = sub_19B420058();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3B408);
      }

      v8[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 0, "[CMHeadphoneMotionManager] Device connected", v8, 2);
      v5 = v4;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHeadphoneMotionManager notifyDeviceConnectedEventToClientPrivate]_block_invoke", "CoreLocation: %s\n", v4);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    *(*(*(v1 + 32) + 8) + 42) = 1;
    objc_loadWeak((*(v1 + 32) + 16));
    result = objc_opt_respondsToSelector();
    if (result)
    {
      Weak = objc_loadWeak((*(v1 + 32) + 16));
      return objc_msgSend_headphoneMotionManagerDidConnect_(Weak, v7, *(v1 + 32));
    }
  }

  return result;
}

uint64_t sub_19B73FD5C(uint64_t result)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(*(*(result + 32) + 8) + 42) == 1)
  {
    v1 = result;
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3B408);
    }

    v2 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[CMHeadphoneMotionManager] Device disconnected", buf, 2u);
    }

    v3 = sub_19B420058();
    if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3B408);
      }

      v8[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C808, 0, "[CMHeadphoneMotionManager] Device disconnected", v8, 2);
      v5 = v4;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMHeadphoneMotionManager notifyDeviceDisconnectedEventToClientPrivate]_block_invoke", "CoreLocation: %s\n", v4);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    *(*(*(v1 + 32) + 8) + 42) = 0;
    objc_loadWeak((*(v1 + 32) + 16));
    result = objc_opt_respondsToSelector();
    if (result)
    {
      Weak = objc_loadWeak((*(v1 + 32) + 16));
      return objc_msgSend_headphoneMotionManagerDidDisconnect_(Weak, v7, *(v1 + 32));
    }
  }

  return result;
}

float sub_19B73FF78(float *a1, int a2)
{
  v3 = (&unk_19B7BD41C + 20 * *a1);
  v4 = a1[5];
  if (v4 >= 18.0)
  {
    v5 = (((*v3 + ((v3[2] * a1[2]) * 100.0)) + (v3[1] * a1[3])) + (v3[3] * v4)) / (a1[3] * 24.0);
  }

  else
  {
    v5 = ((((*v3 + ((v3[2] * a1[2]) * 100.0)) + (v3[1] * a1[3])) + (v3[3] * v4)) / (a1[3] * 24.0)) + 0.001;
  }

  sub_19B421798();
  v6 = fminf(v5, 2.1);
  if (v6 > 1.3)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2;
  }

  if (!v7)
  {
    v6 = 1.3;
  }

  return fmaxf(v6, 0.0);
}

void *sub_19B740058(void *a1)
{
  *a1 = &unk_1F0E317E8;
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

  sub_19B5F4684((a1 + 5));
  v3 = a1[4];
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  return a1;
}

uint64_t sub_19B740104()
{
  v0 = objc_opt_new();
  qword_1ED71D660 = v0;

  return objc_msgSend_setDateFormat_(v0, v1, @"yyyy-MM-dd_HH-mm-ss");
}

void sub_19B740144(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED71D670, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D670))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED71D6A0, &dword_19B41C000);
    __cxa_guard_release(&qword_1ED71D670);
  }

  if (qword_1ED71D678 != -1)
  {
    dispatch_once(&qword_1ED71D678, &unk_1F0E27D40);
  }

  if (byte_1ED71D6B7 < 0)
  {
    v2 = xmmword_1ED71D6A0;

    sub_19B4C5138(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED71D6A0;
    *(a1 + 16) = unk_1ED71D6B0;
  }
}

void sub_19B740244(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED71D680, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D680))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED71D6B8, &dword_19B41C000);
    __cxa_guard_release(&qword_1ED71D680);
  }

  if (qword_1ED71D688 != -1)
  {
    dispatch_once(&qword_1ED71D688, &unk_1F0E28B60);
  }

  if (byte_1ED71D6CF < 0)
  {
    v2 = xmmword_1ED71D6B8;

    sub_19B4C5138(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED71D6B8;
    *(a1 + 16) = unk_1ED71D6C8;
  }
}

void sub_19B74032C()
{
  v0 = MEMORY[0x1E696AEC0];
  sub_19B428B50(v11, "mobile");
  sub_19B432230(v11, __p);
  if (v14 >= 0)
  {
    v2 = objc_msgSend_stringWithUTF8String_(v0, v1, __p);
  }

  else
  {
    v2 = objc_msgSend_stringWithUTF8String_(v0, v1, __p[0]);
  }

  v4 = v2;
  v5 = objc_msgSend_componentsJoinedByString_(&unk_1F0E6A1D0, v3, @"/");
  v7 = objc_msgSend_stringByAppendingPathComponent_(v4, v6, v5);
  v10 = objc_msgSend_UTF8String(v7, v8, v9);
  sub_19B43212C(&xmmword_1ED71D6B8, v10);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }
}

void sub_19B7403E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B74041C(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED71D690, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D690))
  {
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED71D6D0, &dword_19B41C000);
    __cxa_guard_release(&qword_1ED71D690);
  }

  if (qword_1ED71D698 != -1)
  {
    dispatch_once(&qword_1ED71D698, &unk_1F0E28580);
  }

  if (byte_1ED71D6E7 < 0)
  {
    v2 = xmmword_1ED71D6D0;

    sub_19B4C5138(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1ED71D6D0;
    *(a1 + 16) = unk_1ED71D6E0;
  }
}

void sub_19B740504()
{
  v0 = MEMORY[0x1E696AEC0];
  sub_19B428B50(v11, "mobile");
  sub_19B432230(v11, __p);
  if (v14 >= 0)
  {
    v2 = objc_msgSend_stringWithUTF8String_(v0, v1, __p);
  }

  else
  {
    v2 = objc_msgSend_stringWithUTF8String_(v0, v1, __p[0]);
  }

  v4 = v2;
  v5 = objc_msgSend_componentsJoinedByString_(&unk_1F0E6A1E8, v3, @"/");
  v7 = objc_msgSend_stringByAppendingPathComponent_(v4, v6, v5);
  v10 = objc_msgSend_UTF8String(v7, v8, v9);
  sub_19B43212C(&xmmword_1ED71D6D0, v10);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }
}

void sub_19B7405C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B7405F4(const void **a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, std::string *a5@<X8>)
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
  sub_19B50FF5C(&v35, v10 + 1);
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
  if (qword_1ED71D668 != -1)
  {
    dispatch_once(&qword_1ED71D668, &unk_1F0E2A1E0);
  }

  v21 = objc_msgSend_stringFromDate_(qword_1ED71D660, v19, a4);
  v24 = objc_msgSend_UTF8String(v21, v22, v23);
  sub_19B428B50(__p, v24);
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

void sub_19B740814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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

void sub_19B740890(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  sub_19B740144(v9);
  if (v10 >= 0)
  {
    v8 = v9;
  }

  else
  {
    v8 = v9[0];
  }

  sub_19B428B50(__p, v8);
  sub_19B7405F4(__p, a2, a1 + 104, a3, a4);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_19B740930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B740964(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_19B74041C(v8);
  if (v9 >= 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = v8[0];
  }

  sub_19B428B50(__p, v4);
  v7 = objc_msgSend_date(MEMORY[0x1E695DF00], v5, v6);
  sub_19B7405F4(__p, a1 + 80, a1 + 104, v7, a2);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_19B740A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B740A40(uint64_t a1, char **a2, char *a3)
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

BOOL sub_19B740B0C(uint64_t a1, uint64_t *a2, char *a3)
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

void sub_19B740BEC(uint64_t a1, uint64_t a2, char a3, unint64_t a4, float a5, float a6)
{
  v42 = *MEMORY[0x1E69E9840];
  *(a1 + 12) = 0;
  v7 = *(a1 + 24);
  if (a4 >= v7)
  {
    v8 = (a4 - v7) * 0.000001;
  }

  else
  {
    v8 = 0.0;
  }

  if (*a1 == 1)
  {
    v9 = 1.5;
    if (*(a1 + 1) == 1)
    {
      v9 = *(a1 + 4);
    }

    v11 = v9 >= v8 || *(a1 + 16) != 1;
LABEL_13:
    *a1 = v11;
    return;
  }

  if (*(a1 + 16) == 1)
  {
    return;
  }

  if ((a3 & 1) == 0)
  {
    *a1 = 1;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A200);
    }

    v16 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEBUG, "[CMRelDMCameraController] Requesting anchor on initialization.", buf, 2u);
    }

    v17 = sub_19B420058();
    if (*(v17 + 160) <= 1 && *(v17 + 164) <= 1 && *(v17 + 168) <= 1 && !*(v17 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A200);
    }

    LOWORD(v31) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMRelDMCameraController] Requesting anchor on initialization.", &v31, 2, v31, v32, v33);
LABEL_42:
    v19 = v18;
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMCameraController::updateCameraRequest(const CMBleedToZero &, BOOL, float, float, uint64_t)", "CoreLocation: %s\n", v18);
    if (v19 != buf)
    {
      free(v19);
    }

    return;
  }

  if (*(a1 + 1) == 1)
  {
    if (v8 > *(a1 + 8))
    {
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A200);
      }

      v12 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEBUG, "[CMRelDMCameraController] Requesting anchor periodically.", buf, 2u);
      }

      v13 = sub_19B420058();
      if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E2A200);
        }

        LOWORD(v31) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMRelDMCameraController] Requesting anchor periodically.", &v31, 2);
        v15 = v14;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMCameraController::updateCameraRequest(const CMBleedToZero &, BOOL, float, float, uint64_t)", "CoreLocation: %s\n", v14);
        if (v15 != buf)
        {
          free(v15);
        }
      }

      v11 = 1;
      goto LABEL_13;
    }

    return;
  }

  v20 = *(a2 + 80);
  v21 = a5;
  if (v8 <= v21)
  {
    v21 = v8;
  }

  if (v21 > 12.0 && v20 < 12.0)
  {
    *a1 = 1;
    *(a1 + 12) = 1;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A200);
    }

    v29 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v29, OS_LOG_TYPE_DEBUG, "[CMRelDMCameraController] Request anchor after long moving duration.", buf, 2u);
    }

    v30 = sub_19B420058();
    if (*(v30 + 160) <= 1 && *(v30 + 164) <= 1 && *(v30 + 168) <= 1 && !*(v30 + 152))
    {
      return;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A200);
    }

    LOWORD(v31) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMRelDMCameraController] Request anchor after long moving duration.", &v31, 2, v31, v32, v33);
    goto LABEL_42;
  }

  if (v8 <= 5.0 || (*(a2 + 41) & 1) == 0 || v20 <= 1.0)
  {
    *a1 = 0;
    return;
  }

  v23 = v20;
  v24 = a6;
  if (v8 <= a6)
  {
    v25 = v8;
  }

  else
  {
    v25 = a6;
  }

  v26 = v8 > 17.5;
  *(a1 + 13) = v8 > 17.5;
  if (v25 > v23)
  {
    v26 = 1;
  }

  *a1 = v26;
  if (qword_1EAFE2998 != -1)
  {
    dispatch_once(&qword_1EAFE2998, &unk_1F0E2A200);
  }

  v27 = off_1EAFE29A0;
  if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109888;
    v35 = v25 > v23;
    v36 = 2048;
    v37 = v24;
    v38 = 1024;
    v39 = v8 > 17.5;
    v40 = 2048;
    v41 = v23;
    _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_DEBUG, "[CMRelDMCameraController] hasMovementSinceLastAnchorOrRequest, %d, timeSinceLastConsumedCamAnchor, %.3f, reachedExtendedDutyCycleStatic, %d, staticPoseDurationAfterDisturbance, %.3f", buf, 0x22u);
  }

  v28 = sub_19B420058();
  if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E2A200);
    }

    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMRelDMCameraController] hasMovementSinceLastAnchorOrRequest, %d, timeSinceLastConsumedCamAnchor, %.3f, reachedExtendedDutyCycleStatic, %d, staticPoseDurationAfterDisturbance, %.3f", &v31);
    goto LABEL_42;
  }
}

void sub_19B741280(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 24);
  v6 = (a3 - v5) * 0.000001;
  if (a3 < v5)
  {
    v6 = 0.0;
  }

  if (*a1 == 1)
  {
    v7 = 1.5;
    if (*(a1 + 1) == 1)
    {
      v7 = *(a1 + 4);
    }

    v9 = v7 >= v6 || *(a1 + 16) != 1;
LABEL_12:
    *a1 = v9;
    return;
  }

  if (*(a1 + 16) != 1)
  {
    if (*(a1 + 1) == 1)
    {
      if (v6 > *(a1 + 8))
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E2A200);
        }

        v10 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEBUG, "[CMRelDMCameraController] Requesting anchor periodically during DV.", buf, 2u);
        }

        v11 = sub_19B420058();
        if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E2A200);
          }

          v21[0] = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMRelDMCameraController] Requesting anchor periodically during DV.", v21, 2);
          v13 = v12;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMCameraController::updateCameraRequestDV(uint64_t, uint64_t, BOOL)", "CoreLocation: %s\n", v12);
          if (v13 != buf)
          {
            free(v13);
          }
        }

        v9 = 1;
        goto LABEL_12;
      }
    }

    else
    {
      if (!a4)
      {
        v18 = a3 <= a2 || a2 == 0;
        v19 = (a3 - a2) * 0.000001;
        if (v18)
        {
          v19 = 0.0;
        }

        v9 = v6 > v19 && v19 > 1.0;
        goto LABEL_12;
      }

      *a1 = 0;
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E2A200);
      }

      v14 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_DEBUG, "[CMRelDMCameraController] Not requesting anchor during DV because of walking detection.", buf, 2u);
      }

      v15 = sub_19B420058();
      if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E2A200);
        }

        v21[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE29A0, 2, "[CMRelDMCameraController] Not requesting anchor during DV because of walking detection.", v21, 2);
        v17 = v16;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMRelDMCameraController::updateCameraRequestDV(uint64_t, uint64_t, BOOL)", "CoreLocation: %s\n", v16);
        if (v17 != buf)
        {
          free(v17);
        }
      }
    }
  }
}

os_log_t sub_19B74164C()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

double sub_19B74167C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v150 = *MEMORY[0x1E69E9840];
  LODWORD(v147) = sub_19B66BFF4(v6 + 4, v9);
  HIDWORD(v147) = v10;
  v148 = v11;
  v149 = v12;
  v13.f32[0] = sub_19B66C1A4(&v147, -v7[2].f32[1], -v7[3].f32[0], -v7[3].f32[1]);
  v16 = *(v8 + 42);
  if (*(v8 + 42))
  {
    v17 = *(v8 + 40);
    v18 = v16 + v17 - 1;
    v19 = *(v8 + 44);
    if (v18 >= v19)
    {
      v20 = *(v8 + 44);
    }

    else
    {
      v20 = 0;
    }

    v21 = (v8 + 24 * (v18 - v20));
    v22 = v21[7];
    v23 = v21[8].f32[0];
  }

  else
  {
    v19 = *(v8 + 44);
    v17 = *(v8 + 40);
    v22 = 0;
    v23 = 0.0;
  }

  v13.i32[1] = v14;
  v24 = vadd_f32(v13, v22);
  v25 = v17 + v16;
  if (v25 >= v19)
  {
    v26 = v19;
  }

  else
  {
    v26 = 0;
  }

  v27 = (v8 + 24 * (v25 - v26));
  v27[6] = *v7;
  v27[7] = v24;
  v27[8].f32[0] = v15 + v23;
  v28 = *(v8 + 42);
  if (v19 <= v28)
  {
    v29 = *(v8 + 40) + 1;
    if (v29 < v19)
    {
      LOWORD(v19) = 0;
    }

    *(v8 + 40) = v29 - v19;
  }

  else
  {
    LOWORD(v28) = v28 + 1;
    *(v8 + 42) = v28;
  }

  v30 = v5[1];
  if (v30 > 0.0)
  {
    v31 = *v5;
    if (vabdd_f64(v30, *(v8 + 8)) > 0.0001 && v31 < v30)
    {
      *(v8 + 8) = v30;
      v147 = 0xC800000000;
      if (v28)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0.0;
        do
        {
          v36 = *sub_19B742188((v8 + 40), v33);
          v37 = *sub_19B742188((v8 + 40), v33);
          if (v31 <= v36 && v37 <= v30)
          {
            v39 = sub_19B742188((v8 + 40), v33);
            sub_19B5BE720(&v147, (v39 + 4));
            v40 = sub_19B742188((v8 + 40), v33);
            v34 = vadd_f32(v34, v40[1]);
            v35 = v35 + v40[2].f32[0];
          }

          ++v33;
        }

        while (v33 < *(v8 + 42));
        *v132 = 0;
        v41.i32[1] = 0;
        memset(v131, 0, sizeof(v131));
        if (WORD1(v147))
        {
          v42 = 0;
          *v41.i32 = WORD1(v147);
          v43 = vdiv_f32(v34, vdup_lane_s32(v41, 0));
          v44 = v35 / *v41.i32;
          do
          {
            v45 = sub_19B5BEC4C(&v147, v42);
            v46 = v45[1].f32[0] - v44;
            v119 = COERCE_DOUBLE(vsub_f32(*v45, v43));
            *&v120 = v46;
            sub_19B5DB70C(&v119, buf);
            for (i = 0; i != 9; ++i)
            {
              *(v131 + i) = sub_19B5DB794(buf, i) + *(v131 + i);
            }

            ++v42;
          }

          while (v42 < WORD1(v147));
        }
      }

      else
      {
        *v132 = 0;
        memset(v131, 0, sizeof(v131));
      }

      *buf = v131[0];
      *&buf[16] = v131[1];
      *v140 = *v132;
      LODWORD(v119) = sub_19B5DB98C(buf, v121);
      HIDWORD(v119) = v48;
      LODWORD(v120) = v49;
      *buf = &v119;
      *&buf[8] = v121;
      sub_19B5DBFAC(buf, 0, 1uLL);
      sub_19B5DBFAC(buf, 0, 2uLL);
      sub_19B5DBFAC(buf, 1uLL, 2uLL);
      v50 = v125;
      v51 = *v126;
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A220);
      }

      v52 = qword_1EAFE2A60;
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
      {
        v53 = *v7;
        *buf = 134219520;
        *&buf[4] = v53;
        *&buf[12] = 2048;
        *&buf[14] = v31;
        *&buf[22] = 2048;
        *&buf[24] = v30;
        *v140 = 2048;
        *&v140[2] = WORD1(v147);
        v141 = 2048;
        v142 = *&v50;
        v143 = 2048;
        v144 = *(&v50 + 1);
        v145 = 2048;
        v146 = v51;
        _os_log_impl(&dword_19B41C000, v52, OS_LOG_TYPE_DEBUG, "[CMPdr] pdrdir,time,%f,startImpulse,%f,endImpulse,%f,velBufferSize,%zu,planeNormal,%f,%f,%f\n", buf, 0x48u);
      }

      v54 = sub_19B420058();
      if (*(v54 + 160) > 1 || *(v54 + 164) > 1 || *(v54 + 168) > 1 || *(v54 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A220);
        }

        v55 = *v7;
        LODWORD(v131[0]) = 134219520;
        *(v131 + 4) = v55;
        WORD6(v131[0]) = 2048;
        *(v131 + 14) = v31;
        WORD3(v131[1]) = 2048;
        *(&v131[1] + 1) = v30;
        *v132 = 2048;
        *&v132[2] = WORD1(v147);
        v133 = 2048;
        v134 = *&v50;
        v135 = 2048;
        v136 = *(&v50 + 1);
        v137 = 2048;
        v138 = v51;
        LODWORD(v116) = 72;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 2, "[CMPdr] pdrdir,time,%f,startImpulse,%f,endImpulse,%f,velBufferSize,%zu,planeNormal,%f,%f,%f\n", COERCE_DOUBLE(v131), v116, v117, *&v118, v119, v120, *v121);
        v57 = v56;
        sub_19B6BB7CC("Generic", 1, 0, 2, "Pdr::PdrOutput CMPdrDirectionality::feedImuData(const AccessoryActivity::ImuData *const, const CMAccessoryStepDetector::Impulse *const)", "CoreLocation: %s\n", v56);
        if (v57 != buf)
        {
          free(v57);
        }
      }

      *&v131[0] = 0x3200000000;
      if (WORD1(v147))
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        do
        {
          v61 = *sub_19B5BEC4C(&v147, v60);
          v62 = *(sub_19B5BEC4C(&v147, v60) + 1);
          v63 = (((*&v50 * v62) + (v61 * *(&v50 + 1))) + (*(sub_19B5BEC4C(&v147, v60) + 2) * 0.0));
          v64 = v59 + v58;
          if (v64 >= 0x32)
          {
            v65 = -392;
          }

          else
          {
            v65 = 8;
          }

          *(v131 + 8 * v64 + v65) = v63;
          if (v59 > 0x31)
          {
            if (v58 >= 0x31u)
            {
              v66 = -50;
            }

            else
            {
              v66 = 0;
            }

            v67 = v58 + v66;
            v58 = v67 + 1;
            LOWORD(v131[0]) = v67 + 1;
          }

          else
          {
            WORD1(v131[0]) = ++v59;
          }

          ++v60;
        }

        while (v60 < WORD1(v147));
      }

      v68 = sub_19B7423A4(v131, sub_19B7425BC);
      *v69.i64 = sub_19B7423A4(v131, sub_19B7425C8);
      if (WORD1(v131[0]))
      {
        v71 = 0;
        v72 = (v68 + *v69.i64) * 0.5;
        do
        {
          v73 = *sub_19B5D6C98(v131, v71);
          *sub_19B5D6C98(v131, v71++) = v73 - v72;
        }

        while (v71 < WORD1(v131[0]));
        v74 = WORD1(v131[0]) - 1;
      }

      else
      {
        v74 = -1;
      }

      v75 = *(v131 + LOWORD(v131[0]) + 1);
      v76 = v74 + LOWORD(v131[0]);
      v77 = DWORD1(v131[0]);
      if (v76 < DWORD1(v131[0]))
      {
        v77 = 0;
      }

      if (((*(v131 + v76 - v77 + 1) ^ *(v131 + LOWORD(v131[0]) + 1)) & 0x8000000000000000) != 0)
      {
        v78 = sub_19B7423A4(v131, sub_19B7425BC);
        v79 = *(v131 + LOWORD(v131[0]) + 1);
        v80 = sub_19B7423A4(v131, sub_19B7425C8);
        v81 = vabdd_f64(v75, v78);
        v82 = vabdd_f64(v79, v80);
        if (v82 >= v81)
        {
          v83 = v81;
        }

        else
        {
          v83 = v82;
        }

        v84 = LOWORD(v131[0]) + WORD1(v131[0]) - 1;
        v85 = DWORD1(v131[0]);
        if (v84 < DWORD1(v131[0]))
        {
          v85 = 0;
        }

        v86 = *(v131 + v84 - v85 + 1);
        v87 = sub_19B7423A4(v131, sub_19B7425BC);
        v88 = LOWORD(v131[0]) + WORD1(v131[0]) - 1;
        v89 = DWORD1(v131[0]);
        if (v88 < DWORD1(v131[0]))
        {
          v89 = 0;
        }

        v90 = *(v131 + v88 - v89 + 1);
        *v69.i64 = sub_19B7423A4(v131, sub_19B7425C8);
        v91 = vabdd_f64(v86, v87);
        *v69.i64 = vabdd_f64(v90, *v69.i64);
        if (*v69.i64 < v91)
        {
          v91 = *v69.i64;
        }

        if (v83 <= v91)
        {
          v94 = LOWORD(v131[0]) + WORD1(v131[0]) - 1;
          v95 = DWORD1(v131[0]);
          if (v94 < DWORD1(v131[0]))
          {
            v95 = 0;
          }

          v69.i64[0] = *(v131 + v94 - v95 + 1);
          if (v83 < v91)
          {
            *v69.i64 = *v69.i64 - *(v131 + LOWORD(v131[0]) + 1);
          }
        }

        else
        {
          v92 = LOWORD(v131[0]) + WORD1(v131[0]) - 1;
          v93 = DWORD1(v131[0]);
          if (v92 < DWORD1(v131[0]))
          {
            v93 = 0;
          }

          *v69.i64 = *(v131 + LOWORD(v131[0]) + 1) - *(v131 + v92 - v93 + 1);
        }
      }

      else
      {
        *v69.i64 = -v75;
      }

      v70.i64[0] = 1.0;
      v96.f64[0] = NAN;
      v96.f64[1] = NAN;
      v96.f64[0] = *vbslq_s8(vnegq_f64(v96), v70, v69).i64;
      v97 = atan2(v96.f64[0] * *&v50, v96.f64[0] * -*(&v50 + 1));
      v98 = *(v8 + 16);
      if (v31 - *v8 <= 1.0)
      {
        v99 = __sincos_stret(v97);
        v100 = __sincos_stret(v98);
        v101 = atan2((v99.__sinval + v100.__sinval) * 0.5, (v99.__cosval + v100.__cosval) * 0.5);
        v102 = *(v8 + 24);
        v105 = __sincos_stret(v101);
        cosval = v105.__cosval;
        sinval = v105.__sinval;
        v106 = *(v8 + 32);
        if (qword_1EAFE2A58 != -1)
        {
          v118 = v105.__sinval;
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A220);
          cosval = v105.__cosval;
          sinval = v118;
        }

        v107 = v102 + cosval * 0.73787;
        v108 = v106 + sinval * 0.73787;
        v109 = qword_1EAFE2A60;
        if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
        {
          v110 = *v7;
          *buf = 134219264;
          *&buf[4] = v110;
          *&buf[12] = 2048;
          *&buf[14] = v97;
          *&buf[22] = 2048;
          *&buf[24] = v101;
          *v140 = 2048;
          *&v140[2] = v107;
          v141 = 2048;
          v142 = v108;
          v143 = 2048;
          *&v144 = WORD1(v131[0]);
          _os_log_impl(&dword_19B41C000, v109, OS_LOG_TYPE_DEBUG, "[CMPdr] directionResult,time,%f,directionRadians,%f,avgDirectionRadians,%f,x,%f,y,%f,scoreBufSize,%zu\n", buf, 0x3Eu);
        }

        v111 = sub_19B420058();
        if (*(v111 + 160) > 1 || *(v111 + 164) > 1 || *(v111 + 168) > 1 || *(v111 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2A58 != -1)
          {
            dispatch_once(&qword_1EAFE2A58, &unk_1F0E2A220);
          }

          v112 = *v7;
          *v121 = 134219264;
          *&v121[4] = v112;
          v122 = 2048;
          v123 = v97;
          v124 = 2048;
          v125 = v101;
          *v126 = 2048;
          *&v126[2] = v107;
          v127 = 2048;
          v128 = v108;
          v129 = 2048;
          v130 = WORD1(v131[0]);
          LODWORD(v116) = 62;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A60, 2, "[CMPdr] directionResult,time,%f,directionRadians,%f,avgDirectionRadians,%f,x,%f,y,%f,scoreBufSize,%zu\n", COERCE_DOUBLE(v121), v116, v117, v118, v119, *&v120);
          v114 = v113;
          sub_19B6BB7CC("Generic", 1, 0, 2, "Pdr::PdrOutput CMPdrDirectionality::feedImuData(const AccessoryActivity::ImuData *const, const CMAccessoryStepDetector::Impulse *const)", "CoreLocation: %s\n", v113);
          if (v114 != buf)
          {
            free(v114);
          }
        }

        *(v8 + 24) = v107;
        *(v8 + 32) = v108;
      }

      *(v8 + 16) = v97;
      *v8 = v31;
    }
  }

  return *(v8 + 16) * 57.2957802;
}

os_log_t sub_19B742158()
{
  result = os_log_create("com.apple.locationd.Motion", "MotionContext");
  qword_1EAFE2A60 = result;
  return result;
}

unsigned __int16 *sub_19B742188(unsigned __int16 *a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E289A0);
    }

    v7 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v18 = a2;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E289A0);
      }

      v10 = *(a1 + 1);
      v13 = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v13, 18);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<CMPdrDirectionality::AggAccelSample>::operator[](const size_t) const [T = CMPdrDirectionality::AggAccelSample]", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[12 * (v4 - v5) + 4];
}

double sub_19B7423A4(unsigned __int16 *a1, unsigned int (*a2)(double, double))
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  if (a1[1])
  {
    v5 = 0;
    v6 = *sub_19B5D6C98(a1, 0);
    do
    {
      v7 = sub_19B5D6C98(a1, v5);
      v8 = *v7;
      if (a2(*v7, v6))
      {
        v6 = v8;
      }

      ++v5;
    }

    while (v3 != v5);
  }

  else
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E289A0);
    }

    v10 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "Assertion failed: n > 0, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 179,.", buf, 2u);
    }

    v11 = sub_19B420058();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E289A0);
      }

      v14[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1ED71C828, 17, "Assertion failed: n > 0, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 179,.", v14, 2);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMQueue<double>::getComparison(int (*)(const T, const T), size_t) const [T = double]", "CoreLocation: %s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    return *sub_19B5D6C98(a1, 0);
  }

  return v6;
}

uint64_t sub_19B7425F4()
{
  result = sub_19B421620();
  if ((result & 0x2000000000000000) != 0)
  {
    operator new();
  }

  return result;
}

void sub_19B74269C(_Unwind_Exception *a1)
{
  sub_19B674784(v1);
  MEMORY[0x19EAE76F0](v1, v2);
  _Unwind_Resume(a1);
}

void sub_19B7426C4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2968 != -1)
  {
    dispatch_once(&qword_1EAFE2968, &unk_1F0E28C40);
  }

  v6 = off_1EAFE2970;
  if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240448;
    v20 = a2;
    v21 = 2050;
    v22 = a3;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEBUG, "NumberOfSpectatorsChanged,notification,%{public}d,num,%{public}zu", buf, 0x12u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E28C40);
    }

    v15 = 67240448;
    v16 = a2;
    v17 = 2050;
    v18 = a3;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2970, 2, "NumberOfSpectatorsChanged,notification,%{public}d,num,%{public}zu", &v15, 18);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLFlickGestureNotifier::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  if (a2 < 2)
  {
    if (sub_19B6B2D1C(a1 + 32))
    {
      sub_19B4238F4(*(a1 + 40), a3 != 0);
    }
  }

  else
  {
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E28C40);
    }

    v10 = off_1EAFE2970;
    if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      v20 = a2;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "Unrecognized notification,%{public}d", buf, 8u);
    }

    v11 = sub_19B420058();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2968 != -1)
      {
        dispatch_once(&qword_1EAFE2968, &unk_1F0E28C40);
      }

      v15 = 67240192;
      v16 = a2;
      LODWORD(v14) = 8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2970, 17, "Unrecognized notification,%{public}d", &v15, v14);
      v13 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLFlickGestureNotifier::numberOfSpectatorsChanged(int, size_t)", "CoreLocation: %s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }
}

void sub_19B742A28(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2968 != -1)
  {
    dispatch_once(&qword_1EAFE2968, &unk_1F0E28C40);
  }

  v3 = off_1EAFE2970;
  if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_INFO))
  {
    v4 = *(a2 + 1);
    *buf = 67240192;
    v11 = v4;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "pong,%{public}u", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E28C40);
    }

    v6 = *(a2 + 1);
    v9[0] = 67240192;
    v9[1] = v6;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, off_1EAFE2970, 1, "pong,%{public}u", v9, 8);
    v8 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLFlickGestureNotifier::visitPong(const CMFlickGestureReport::Pong *)", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }
}

uint64_t sub_19B742BF8(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2968 != -1)
  {
    dispatch_once(&qword_1EAFE2968, &unk_1F0E28C40);
  }

  v4 = off_1EAFE2970;
  if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 1);
    v6 = *(a2 + 2);
    v7 = *(a1 + 64);
    v8 = mach_absolute_time();
    *buf = 67240960;
    *&buf[4] = v5;
    LOWORD(v26) = 1026;
    *(&v26 + 2) = v6;
    HIWORD(v26) = 2050;
    v27 = v7;
    v28 = 2050;
    v29 = sub_19B41E070(v8);
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "Report,gestureState,%{public}u,isSimulated,%{public}u,timestamp,%{public}lf,now,%{public}lf", buf, 0x22u);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E28C40);
    }

    v10 = off_1EAFE2970;
    v11 = *(a2 + 1);
    v12 = *(a2 + 2);
    v13 = *(a1 + 64);
    v14 = mach_absolute_time();
    v18[0] = 67240960;
    v18[1] = v11;
    v19 = 1026;
    v20 = v12;
    v21 = 2050;
    v22 = v13;
    v23 = 2050;
    v24 = sub_19B41E070(v14);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v10, 2, "Report,gestureState,%{public}u,isSimulated,%{public}u,timestamp,%{public}lf,now,%{public}lf", v18, 34);
    v16 = v15;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLFlickGestureNotifier::visitFlickGestureState(const CMFlickGestureReport::FlickGestureState *)", "CoreLocation: %s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  v26 = 0;
  *buf = *(a1 + 64);
  LOWORD(v26) = *(a2 + 1);
  return sub_19B41DF08(a1, 0, buf, 16);
}

uint64_t sub_19B742E70(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2968 != -1)
  {
    dispatch_once(&qword_1EAFE2968, &unk_1F0E28C40);
  }

  v4 = off_1EAFE2970;
  if (os_log_type_enabled(off_1EAFE2970, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 1);
    v6 = mach_absolute_time();
    *buf = 67240448;
    *&buf[4] = v5;
    *v19 = 2050;
    *&v19[2] = sub_19B41E070(v6);
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "Report,Analytics,gestureDetected%{public}u,timestamp,%{public}lf", buf, 0x12u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2968 != -1)
    {
      dispatch_once(&qword_1EAFE2968, &unk_1F0E28C40);
    }

    v8 = off_1EAFE2970;
    v9 = *(a2 + 1);
    v10 = mach_absolute_time();
    v14 = 67240448;
    v15 = v9;
    v16 = 2050;
    v17 = sub_19B41E070(v10);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v8, 2, "Report,Analytics,gestureDetected%{public}u,timestamp,%{public}lf", &v14, 18);
    v12 = v11;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLFlickGestureNotifier::visitFlickAnalytics(const CMFlickGestureReport::FlickAnalytics *)", "CoreLocation: %s\n", v11);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  *buf = 0;
  sub_19B6241D0(&v14, "FlickMaxGestureLength", buf, 0);
  *buf = 0;
  *v19 = 0;
  buf[0] = *(a2 + 1);
  *&buf[1] = *(a2 + 2);
  *&buf[4] = *(a2 + 4);
  v19[0] = *(a2 + 8);
  *&v19[4] = *(a2 + 9);
  v20 = *(a2 + 25);
  v21 = *(a2 + 41);
  v22 = *(a2 + 57);
  v23 = v15;
  return sub_19B41DF08(a1, 1, buf, 72);
}

void *sub_19B743100(void *a1)
{
  sub_19B6B3EDC(a1 + 4);

  return sub_19B674784(a1);
}

void sub_19B74313C(void *a1)
{
  sub_19B6B3EDC(a1 + 4);
  sub_19B674784(a1);

  JUMPOUT(0x19EAE76F0);
}

void *sub_19B74318C(void *a1)
{
  v1 = a1 - 4;
  sub_19B6B3EDC(a1);

  return sub_19B674784(v1);
}

os_log_t sub_19B7431CC()
{
  result = os_log_create("com.apple.locationd.Motion", "Flick");
  off_1EAFE2970 = result;
  return result;
}

void *sub_19B7432B0()
{
  v0 = objc_alloc(MEMORY[0x1E69AD360]);
  result = objc_msgSend_initWithIdentifier_(v0, v1, @"CLGyroCalibrationDatabaseSilo");
  qword_1ED71D6F0 = result;
  return result;
}

uint64_t sub_19B743784()
{
  result = sub_19B42AD98();
  if (result)
  {
    byte_1ED71D6E8 = 1;
  }

  return result;
}

uint64_t sub_19B743CFC(uint64_t a1, char *a2, void *a3)
{
  *a1 = &unk_1F0E343B8;
  sub_19B428B50((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = objc_msgSend_silo(a3, v5, v6);
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_19B743D8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B743DA8(uint64_t a1, const char *a2, uint64_t a3)
{
  *a1 = &unk_1F0E343B8;
  objc_msgSend_invalidate(*(a1 + 48), a2, a3);

  sub_19B6F37F4(a1 + 80, *(a1 + 88));
  sub_19B6F3854(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_19B743E2C@<X0>(_DWORD *a1@<X1>, void *a2@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x20uLL, "%d", *a1);
  return sub_19B428B50(a2, __str);
}

uint64_t sub_19B743EC4()
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C810 != -1)
  {
    dispatch_once(&qword_1ED71C810, &unk_1F0E3B538);
  }

  v0 = qword_1ED71C818;
  if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_INFO, "Warning: Not implemented.", buf, 2u);
  }

  v1 = sub_19B420058();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3B538);
    }

    v5[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 1, "Warning: Not implemented.", v5, 2);
    v3 = v2;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLGyroCalibrationDatabase::getGyroStats(CLMotionTypeRotationRate &, CLMotionTypeRotationRate &, CLMotionTypeRotationRate &, BOOL)", "CoreLocation: %s\n", v2);
    if (v3 != buf)
    {
      free(v3);
    }
  }

  return 0;
}

uint64_t sub_19B74406C()
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C810 != -1)
  {
    dispatch_once(&qword_1ED71C810, &unk_1F0E3B538);
  }

  v0 = qword_1ED71C818;
  if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_INFO, "Warning: Not implemented.", buf, 2u);
  }

  v1 = sub_19B420058();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E3B538);
    }

    v5[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 1, "Warning: Not implemented.", v5, 2);
    v3 = v2;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual int CLGyroCalibrationDatabase::getMaxDynamicTemperature()", "CoreLocation: %s\n", v2);
    if (v3 != buf)
    {
      free(v3);
    }
  }

  return 0x80000000;
}

os_log_t sub_19B744214()
{
  result = os_log_create("com.apple.locationd.Core", "Notifier");
  qword_1EAFE2820 = result;
  return result;
}

void *sub_19B74424C(void *a1)
{
  a1[3] = 0;
  *a1 = &unk_1F0E32630;
  a1[1] = 0;
  a1[2] = 0;
  v2 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B744320;
  v4[3] = &unk_1E75327D8;
  v4[4] = a1;
  sub_19B420C9C(v2, v4);
  return a1;
}

void sub_19B7442FC(_Unwind_Exception *a1)
{
  sub_19B6B3E90(v2, 0);
  v4 = *(v1 + 16);
  if (v4)
  {
    sub_19B41FFEC(v4);
  }

  _Unwind_Resume(a1);
}

void sub_19B744454(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  MEMORY[0x19EAE76F0](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19B744484(void *a1)
{
  v2 = a1[3];
  sub_19B6B1BB4(v2);
  sub_19B6B1F70(v2);
  v3 = *(*a1 + 16);

  return v3(a1);
}

void *sub_19B7444EC(void *a1)
{
  *a1 = &unk_1F0E32630;
  sub_19B6B3E90(a1 + 3, 0);
  v2 = a1[2];
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return a1;
}

void sub_19B744544(void *a1)
{
  sub_19B7444EC(a1);

  JUMPOUT(0x19EAE76F0);
}

os_log_t sub_19B74457C()
{
  result = os_log_create("com.apple.locationd.Motion", "Eclipse");
  off_1EAFE2828 = result;
  return result;
}

uint64_t sub_19B7445AC(uint64_t a1)
{
  *a1 = &unk_1F0E32238;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0;
  v2 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B744688;
  v4[3] = &unk_1E75327D8;
  v4[4] = a1;
  sub_19B420C9C(v2, v4);
  return a1;
}

void sub_19B744664(_Unwind_Exception *a1)
{
  sub_19B6B3E90(v2, 0);
  v4 = *(v1 + 16);
  if (v4)
  {
    sub_19B41FFEC(v4);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_19B744690(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  v2 = sub_19B421620();
  if ((v2 & 0x400) != 0)
  {
    if (!*(a1 + 8))
    {
      v3 = sub_19B42CAAC();
      sub_19B42C428(v3);
    }
  }

  else
  {
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
    }

    v4 = qword_1EAFE2990;
    if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Service unavailable.", buf, 2u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
      }

      v9[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2990, 17, "Service unavailable.", v9, 2);
      v7 = v6;
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLSPUMagicMountInterface::openHidDevice()", "CoreLocation: %s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  return (v2 >> 10) & 1;
}

void sub_19B74497C(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  MEMORY[0x19EAE76F0](v1, v2);
  _Unwind_Resume(a1);
}

BOOL sub_19B7449B0(uint64_t a1, uint64_t a2, char *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  if ((sub_19B421620() & 0x400) == 0)
  {
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
    }

    v7 = qword_1EAFE2990;
    if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "isAvailable()";
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLMagicMountInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
      }
    }

    v8 = qword_1EAFE2990;
    if (os_signpost_enabled(qword_1EAFE2990))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "isAvailable()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLMagicMountInterface] Service required", "{msg%{public}.0s:[CLMagicMountInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
      }
    }

    v9 = qword_1EAFE2990;
    if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "assert";
      v16 = 2081;
      v17 = "isAvailable()";
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLMagicMountInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Motion/MagicMount/CLSPUMagicMountInterface.mm", 29, "sendCommand");
  }

  v10 = 0;
  *buf = 4;
  return sub_19B44CF80(*(a1 + 24), a2, a3, &v10, buf) == 0;
}

BOOL sub_19B744C54(uint64_t a1)
{
  v2 = *(a1 + 24);
  sub_19B6B1BB4(v2);
  sub_19B6B1F70(v2);

  return sub_19B744C9C(a1);
}

BOOL sub_19B744C9C(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  v14[0] = 2;
  v2 = *(a1 + 40);
  v14[1] = *(a1 + 40);
  v15 = 0;
  v16 = 0;
  if (qword_1EAFE2988 != -1)
  {
    dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
  }

  v3 = qword_1EAFE2990;
  if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_INFO))
  {
    *buf = 67240192;
    v19 = v2;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "[CLMagicMountInterface] Sending config shouldKeepRunning,%{public}u,", buf, 8u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
    }

    v17[0] = 67240192;
    v17[1] = v2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2990, 1, "[CLMagicMountInterface] Sending config shouldKeepRunning,%{public}u,", v17, 8);
    v6 = v5;
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLSPUMagicMountInterface::configure()", "CoreLocation: %s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = sub_19B7449B0(a1, v14, 0xE);
  if (!v7)
  {
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
    }

    v8 = qword_1EAFE2990;
    if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "[CLMagicMountInterface] Configure failed", buf, 2u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
      }

      LOWORD(v17[0]) = 0;
      LODWORD(v13) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2990, 16, "[CLMagicMountInterface] Configure failed", v17, v13);
      v11 = v10;
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLSPUMagicMountInterface::configure()", "CoreLocation: %s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  return v7;
}

void sub_19B744FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    IOHIDEventGetVendorDefinedData();
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
    }

    v4 = qword_1EAFE2990;
    if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "Empty payload, returning", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
      }

      LOWORD(v13) = 0;
      v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2990, 1, "Empty payload, returning", &v13, 2);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSPUMagicMountInterface::onIoHidEvent(IOHIDEventRef)", "CoreLocation: %s\n", v6);
LABEL_23:
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  else
  {
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
    }

    v9 = qword_1EAFE2990;
    if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "Event ref invalid", buf, 2u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
      }

      LOWORD(v13) = 0;
      v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2990, 17, "Event ref invalid", &v13, 2);
      v8 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLSPUMagicMountInterface::onIoHidEvent(IOHIDEventRef)", "CoreLocation: %s\n", v11);
      goto LABEL_23;
    }
  }
}

void sub_19B74570C(uint64_t a1, char a2, double a3)
{
  v6 = sub_19B420D84();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B7457A0;
  v7[3] = &unk_1E75342D8;
  v7[4] = a1;
  v8 = a2;
  *&v7[5] = a3;
  sub_19B420C9C(v6, v7);
}

void sub_19B7457A0(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (sub_19B744690(v2))
  {
    v16[0] = 3;
    v16[1] = *(a1 + 48);
    v17 = (*(a1 + 40) * 1000000.0);
    if (qword_1EAFE2988 != -1)
    {
      dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
    }

    v3 = qword_1EAFE2990;
    if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v5 = *(a1 + 40);
      *buf = 67240448;
      v22 = v4;
      v23 = 2050;
      v24 = v5;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[CLMagicMountInterface] Simulate,mountStatus,%{public}u,%{public}f", buf, 0x12u);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
      }

      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v18[0] = 67240448;
      v18[1] = v7;
      v19 = 2050;
      v20 = v8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2990, 0, "[CLMagicMountInterface] Simulate,mountStatus,%{public}u,%{public}f", v18, 18);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLSPUMagicMountInterface::simulateMagicMountEvent(uint8_t, CFTimeInterval)_block_invoke", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    if (!sub_19B7449B0(v2, v16, 0xA))
    {
      if (qword_1EAFE2988 != -1)
      {
        dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
      }

      v11 = qword_1EAFE2990;
      if (os_log_type_enabled(qword_1EAFE2990, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_ERROR, "[CLMagicMountInterface] Simulate failed", buf, 2u);
      }

      v12 = sub_19B420058();
      if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2988 != -1)
        {
          dispatch_once(&qword_1EAFE2988, &unk_1F0E2A2A0);
        }

        LOWORD(v18[0]) = 0;
        LODWORD(v15) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2990, 16, "[CLMagicMountInterface] Simulate failed", v18, v15);
        v14 = v13;
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CLSPUMagicMountInterface::simulateMagicMountEvent(uint8_t, CFTimeInterval)_block_invoke", "CoreLocation: %s\n", v13);
        if (v14 != buf)
        {
          free(v14);
        }
      }
    }
  }
}

os_log_t sub_19B745B1C()
{
  result = os_log_create("com.apple.locationd.Motion", "MagicMount");
  qword_1EAFE2990 = result;
  return result;
}

uint64_t sub_19B746CF4(void *a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E695DF70];
  v5 = objc_msgSend_count(a1, a2, a3);
  v7 = objc_msgSend_arrayWithCapacity_(v4, v6, v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B747364;
  v10[3] = &unk_1E7535A70;
  v10[4] = v7;
  objc_msgSend_enumerateObjectsUsingBlock_(a1, v8, v10);
  return v7;
}

os_log_t sub_19B747334()
{
  result = os_log_create("com.apple.locationd.Motion", "HealthColdStorage");
  qword_1EAFE2AB0 = result;
  return result;
}

void sub_19B747364(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    v6 = *(a1 + 32);
    v8 = objc_msgSend_sr_dictionaryRepresentation(a2, v4, v5);

    objc_msgSend_addObject_(v6, v7, v8);
  }

  else
  {
    if (qword_1EAFE2AA8 != -1)
    {
      dispatch_once(&qword_1EAFE2AA8, &unk_1F0E2A2C0);
    }

    v9 = qword_1EAFE2AB0;
    if (os_log_type_enabled(qword_1EAFE2AB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = a2;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_ERROR, " sr_dictionaryRepresentation not available for %{public}@", buf, 0xCu);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AA8 != -1)
      {
        dispatch_once(&qword_1EAFE2AA8, &unk_1F0E2A2C0);
      }

      v13 = 138543362;
      v14 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AB0, 16, " sr_dictionaryRepresentation not available for %{public}@", &v13, 12);
      v12 = v11;
      sub_19B6BB7CC("Generic", 1, 0, 0, "NSArray *convertedSRDictArrayFromContainer(NSArray *)_block_invoke", "CoreLocation: %s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }
}

BOOL sub_19B747778(void *a1, char *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_length(a1, a2, a3) > 1)
  {
    v12 = *objc_msgSend_bytes(a1, v5, v6);
    if (a2)
    {
      *a2 = v12;
    }

    else
    {
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
      }

      v13 = qword_1ED71C818;
      if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_ERROR, "Invalid version parameter.", buf, 2u);
      }

      v14 = sub_19B420058();
      if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C810 != -1)
        {
          dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
        }

        v17[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 16, "Invalid version parameter.", v17, 2);
        v16 = v15;
        sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLGyroCalibrationUtils::isGYTTVersionValid(NSData *, UInt16 *)", "CoreLocation: %s\n", v15);
        if (v16 != buf)
        {
          free(v16);
        }
      }
    }

    return v12 == 2;
  }

  else
  {
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
    }

    v7 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "GYTT data not long enough to get version properly", buf, 2u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
      }

      v17[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 17, "GYTT data not long enough to get version properly", v17, 2);
      v10 = v9;
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLGyroCalibrationUtils::isGYTTVersionValid(NSData *, UInt16 *)", "CoreLocation: %s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    return 0;
  }
}

void sub_19B747A9C(uint64_t a1, void *a2)
{
  v184[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  v3 = sub_19B420D84();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = sub_19B5EB694(v4, "GYTTOverride", &cf, 0xFFFFFFFFLL);
  if (v5)
  {
    sub_19B41FFEC(v5);
  }

  p_vtable = CMDeviceOrientationManager.vtable;
  if (v7)
  {
    CFRetain(cf);
  }

  else
  {
    v183 = @"name";
    v184[0] = @"gyro";
    v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v184, &v183, 1);
    v181 = @"IOPropertyMatch";
    v182 = v9;
    v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, &v182, &v181, 1);
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v11);
    v13 = MatchingService;
    if (!MatchingService)
    {
      if (qword_1EAFE2810 != -1)
      {
        dispatch_once(&qword_1EAFE2810, &unk_1F0E27F80);
      }

      v72 = qword_1EAFE2838;
      if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v72, OS_LOG_TYPE_FAULT, "Service doesn't exist", buf, 2u);
      }

      v73 = sub_19B420058();
      if ((*(v73 + 160) & 0x80000000) == 0 || (*(v73 + 164) & 0x80000000) == 0 || (*(v73 + 168) & 0x80000000) == 0 || *(v73 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2810 != -1)
        {
          dispatch_once(&qword_1EAFE2810, &unk_1F0E27F80);
        }

        LOWORD(v153) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2838, 17, "Service doesn't exist", &v153, 2);
        v75 = v74;
        sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLGyroCalibrationUtils::copyGYTTData(NSData **)", "CoreLocation: %s\n", v74);
        if (v75 != buf)
        {
          free(v75);
        }
      }

      goto LABEL_122;
    }

    cf = IORegistryEntryCreateCFProperty(MatchingService, @"gyro-temp-table", *MEMORY[0x1E695E480], 0);
    IOObjectRelease(v13);
  }

  if (cf)
  {
    v14 = CFGetTypeID(cf);
    if (v14 == CFDataGetTypeID())
    {
      v147 = cf;
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
      }

      v15 = qword_1ED71C818;
      if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v172 = v147;
        _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEBUG, "GYTT data %@", buf, 0xCu);
      }

      v16 = sub_19B420058();
      if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C810 != -1)
        {
          dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
        }

        v153 = 138412290;
        v154 = v147;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 2, "GYTT data %@", &v153, 12);
        v19 = v18;
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLGyroCalibrationUtils::copyGYTTData(NSData **)", "CoreLocation: %s\n", v18);
        if (v19 != buf)
        {
          free(v19);
        }
      }

      LOWORD(cf) = -1;
      if (sub_19B747778(v147, &cf, v17))
      {
        v22 = objc_msgSend_bytes(v147, v20, v21);
      }

      else
      {
        sub_19B421798();
        if ((sub_19B439CEC() & 0xFFFFFFFE) != 0xC6)
        {
          v124 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v84, @"GYTT version (%u) does not match expected version (%u)", cf, 2);
          if (a2)
          {
            v125 = objc_alloc(MEMORY[0x1E696ABC0]);
            v167 = *MEMORY[0x1E696A578];
            v168 = v124;
            v127 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v126, &v168, &v167, 1);
            *a2 = objc_msgSend_initWithDomain_code_userInfo_(v125, v128, @"CMErrorDomainFactory", 5, v127);
          }

          if (qword_1ED71C810 != -1)
          {
            dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
          }

          v129 = qword_1ED71C818;
          if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v172 = v124;
            _os_log_impl(&dword_19B41C000, v129, OS_LOG_TYPE_FAULT, "%{public}@", buf, 0xCu);
          }

          v130 = sub_19B420058();
          if ((*(v130 + 160) & 0x80000000) != 0 && (*(v130 + 164) & 0x80000000) != 0 && (*(v130 + 168) & 0x80000000) != 0 && !*(v130 + 152))
          {
            goto LABEL_212;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1ED71C810 != -1)
          {
            dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
          }

          v153 = 138543362;
          v154 = v124;
          LODWORD(v142) = 12;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 17, "%{public}@", &v153, v142);
          v123 = v131;
          sub_19B6BB7CC("Generic", 1, 0, 0, "void CLGyroCalibrationUtils::readFactoryGYTTWithError(std::vector<std::pair<float, CLMotionTypeRotationRate>> &, NSError **)", "CoreLocation: %s\n", v131);
          goto LABEL_194;
        }

        if (qword_1ED71C810 != -1)
        {
          dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
        }

        v85 = qword_1ED71C818;
        if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v85, OS_LOG_TYPE_DEFAULT, "Attempting GYTT recovery!", buf, 2u);
        }

        v86 = sub_19B420058();
        if (*(v86 + 160) > 1 || *(v86 + 164) > 1 || *(v86 + 168) > 1 || *(v86 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C810 != -1)
          {
            dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
          }

          LOWORD(v153) = 0;
          LODWORD(v141) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 0, "Attempting GYTT recovery!", &v153, *&v141);
          v90 = v89;
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLGyroCalibrationUtils::readFactoryGYTTWithError(std::vector<std::pair<float, CLMotionTypeRotationRate>> &, NSError **)", "CoreLocation: %s\n", v89);
          if (v90 != buf)
          {
            free(v90);
          }
        }

        v91 = objc_msgSend_mutableCopy(v147, v87, v88);

        v94 = objc_msgSend_bytes(v91, v92, v93);
        v99 = objc_msgSend_length(v91, v95, v96);
        if (v99 >= 4)
        {
          v100 = 0;
          do
          {
            *buf = bswap32(*(v94 + v100));
            objc_msgSend_replaceBytesInRange_withBytes_length_(v91, v97, v100, 4, buf, 4);
            v100 += 4;
            v99 -= 4;
          }

          while (v99 > 3);
        }

        if (!sub_19B747778(v91, &cf, v98))
        {
          v132 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v101, @"After recovery, GYTT version (%u) still does not match expected version (%u)", cf, 2);
          if (a2)
          {
            v133 = objc_alloc(MEMORY[0x1E696ABC0]);
            v165 = *MEMORY[0x1E696A578];
            v166 = v132;
            v135 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v134, &v166, &v165, 1);
            *a2 = objc_msgSend_initWithDomain_code_userInfo_(v133, v136, @"CMErrorDomainFactory", 5, v135);
          }

          if (qword_1ED71C810 != -1)
          {
            dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
          }

          v137 = qword_1ED71C818;
          if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v172 = v132;
            _os_log_impl(&dword_19B41C000, v137, OS_LOG_TYPE_FAULT, "%{public}@", buf, 0xCu);
          }

          v138 = sub_19B420058();
          if ((*(v138 + 160) & 0x80000000) == 0 || (*(v138 + 164) & 0x80000000) == 0 || (*(v138 + 168) & 0x80000000) == 0 || *(v138 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C810 != -1)
            {
              dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
            }

            v153 = 138543362;
            v154 = v132;
            LODWORD(v143) = 12;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 17, "%{public}@", &v153, v143);
            v140 = v139;
            sub_19B6BB7CC("Generic", 1, 0, 0, "void CLGyroCalibrationUtils::readFactoryGYTTWithError(std::vector<std::pair<float, CLMotionTypeRotationRate>> &, NSError **)", "CoreLocation: %s\n", v139);
            if (v140 != buf)
            {
              free(v140);
            }
          }

          v147 = v91;
          goto LABEL_212;
        }

        sub_19B421798();
        if ((sub_19B439CEC() & 0xFFFFFFFE) == 0xC6)
        {
          v104 = objc_msgSend_bytes(v91, v102, v103);
          v105 = *(v104 + 4);
          *buf = -*(v104 + 6);
          LOWORD(v153) = v105;
          objc_msgSend_replaceBytesInRange_withBytes_length_(v91, v106, 4, 2, buf, 2);
          objc_msgSend_replaceBytesInRange_withBytes_length_(v91, v107, 6, 2, &v153, 2);
        }

        v147 = v91;
        v22 = objc_msgSend_bytes(v91, v102, v103);
      }

      v25 = v22;
      v26 = objc_msgSend_length(v147, v23, v24);
      if ((v26 - 10) > 0xFFFFFFFFFFFFFFF7)
      {
        v28 = 0;
      }

      else
      {
        v28 = 0;
        v29 = v26 - 2;
        v30 = (v25 + 2);
        v145 = @"CMErrorDomainFactory";
        v146 = *MEMORY[0x1E696A578];
        do
        {
          v149 = *v30;
          v31 = vcvts_n_f32_s32(*v30, 8uLL);
          if (v31 > 100.0)
          {
            v32 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v27, @"Invalid GYTT temperature %f", v31);
            if (a2)
            {
              v33 = objc_alloc(MEMORY[0x1E696ABC0]);
              v163 = v146;
              v164 = v32;
              v35 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v34, &v164, &v163, 1);
              *a2 = objc_msgSend_initWithDomain_code_userInfo_(v33, v36, v145, 6, v35);
            }

            if (qword_1ED71C810 != -1)
            {
              dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
            }

            v37 = p_vtable[259];
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v172 = v32;
              _os_log_impl(&dword_19B41C000, v37, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            v38 = sub_19B420058();
            if ((*(v38 + 160) & 0x80000000) == 0 || (*(v38 + 164) & 0x80000000) == 0 || (*(v38 + 168) & 0x80000000) == 0 || *(v38 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C810 != -1)
              {
                dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
              }

              v39 = p_vtable[259];
              v153 = 138543362;
              v154 = v32;
              LODWORD(v141) = 12;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v39, 16, "%{public}@", &v153, *&v141);
              v41 = v40;
              sub_19B6BB7CC("Generic", 1, 0, 0, "void CLGyroCalibrationUtils::readFactoryGYTTWithError(std::vector<std::pair<float, CLMotionTypeRotationRate>> &, NSError **)", "CoreLocation: %s\n", v40);
              if (v41 != buf)
              {
                free(v41);
              }
            }
          }

          v42 = vcvts_n_f32_s32(SWORD1(v149), 8uLL);
          v43 = vcvts_n_f32_s32(SWORD2(v149), 8uLL);
          v44 = vcvts_n_f32_s32(SHIWORD(v149), 8uLL);
          if (v149)
          {
            if (qword_1ED71C810 != -1)
            {
              dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
            }

            v45 = p_vtable[259];
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134219008;
              v172 = v28;
              v173 = 2048;
              v174 = v31;
              v175 = 2048;
              v176 = v42;
              v177 = 2048;
              v178 = v43;
              v179 = 2048;
              v180 = v44;
              _os_log_impl(&dword_19B41C000, v45, OS_LOG_TYPE_DEBUG, "Reading GYTT point %zu: %f,%f,%f,%f", buf, 0x34u);
            }

            v46 = sub_19B420058();
            if (*(v46 + 160) > 1 || *(v46 + 164) > 1 || *(v46 + 168) > 1 || *(v46 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C810 != -1)
              {
                dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
              }

              v47 = p_vtable[259];
              v153 = 134219008;
              v154 = v28;
              v155 = 2048;
              v156 = v31;
              v157 = 2048;
              v158 = v42;
              v159 = 2048;
              v160 = v43;
              v161 = 2048;
              v162 = v44;
              LODWORD(v141) = 52;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v47, 2, "Reading GYTT point %zu: %f,%f,%f,%f", &v153, v141, v144, *&v145, v146);
              v49 = v48;
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CLGyroCalibrationUtils::readFactoryGYTTWithError(std::vector<std::pair<float, CLMotionTypeRotationRate>> &, NSError **)", "CoreLocation: %s\n", v48);
              if (v49 != buf)
              {
                free(v49);
              }
            }

            v50 = *(a1 + 8);
            v51 = *(a1 + 16);
            if (v50 >= v51)
            {
              v58 = *a1;
              v59 = v50 - *a1;
              v60 = v59 >> 4;
              v61 = (v59 >> 4) + 1;
              if (v61 >> 60)
              {
                sub_19B5BE690();
              }

              v62 = v51 - v58;
              if (v62 >> 3 > v61)
              {
                v61 = v62 >> 3;
              }

              if (v62 >= 0x7FFFFFFFFFFFFFF0)
              {
                v63 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v63 = v61;
              }

              if (v63)
              {
                if (!(v63 >> 60))
                {
                  operator new();
                }

                sub_19B4C5080();
              }

              v64 = (16 * v60);
              *v64 = v31;
              v64[1] = v42;
              v64[2] = v43;
              v64[3] = v44;
              v52 = 16 * v60 + 16;
              memcpy(0, v58, v59);
              *a1 = 0;
              *(a1 + 8) = v52;
              *(a1 + 16) = 0;
              if (v58)
              {
                operator delete(v58);
              }

              p_vtable = (CMDeviceOrientationManager + 24);
            }

            else
            {
              *v50 = v31;
              v50[1] = v42;
              v52 = (v50 + 4);
              v50[2] = v43;
              v50[3] = v44;
            }

            *(a1 + 8) = v52;
            v28 = (v28 + 1);
          }

          else
          {
            if (qword_1ED71C810 != -1)
            {
              dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
            }

            v53 = p_vtable[259];
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134219008;
              v172 = v28;
              v173 = 2048;
              v174 = v31;
              v175 = 2048;
              v176 = v42;
              v177 = 2048;
              v178 = v43;
              v179 = 2048;
              v180 = v44;
              _os_log_impl(&dword_19B41C000, v53, OS_LOG_TYPE_DEBUG, "Skipping GYTT point %zu: %f,%f,%f,%f", buf, 0x34u);
            }

            v54 = sub_19B420058();
            if (*(v54 + 160) > 1 || *(v54 + 164) > 1 || *(v54 + 168) > 1 || *(v54 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C810 != -1)
              {
                dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
              }

              v55 = p_vtable[259];
              v153 = 134219008;
              v154 = v28;
              v155 = 2048;
              v156 = v31;
              v157 = 2048;
              v158 = v42;
              v159 = 2048;
              v160 = v43;
              v161 = 2048;
              v162 = v44;
              LODWORD(v141) = 52;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v55, 2, "Skipping GYTT point %zu: %f,%f,%f,%f", &v153, v141, v144, *&v145, v146);
              v57 = v56;
              sub_19B6BB7CC("Generic", 1, 0, 2, "void CLGyroCalibrationUtils::readFactoryGYTTWithError(std::vector<std::pair<float, CLMotionTypeRotationRate>> &, NSError **)", "CoreLocation: %s\n", v56);
              if (v57 != buf)
              {
                free(v57);
              }
            }
          }

          v29 -= 8;
          ++v30;
        }

        while (v29 > 7);
      }

      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
      }

      v108 = p_vtable[259];
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v172 = v28;
        _os_log_impl(&dword_19B41C000, v108, OS_LOG_TYPE_DEBUG, "%zu GYTT points found", buf, 0xCu);
      }

      v109 = sub_19B420058();
      if (*(v109 + 160) > 1 || *(v109 + 164) > 1 || *(v109 + 168) > 1 || *(v109 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C810 != -1)
        {
          dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
        }

        v111 = p_vtable[259];
        v153 = 134217984;
        v154 = v28;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v111, 2, "%zu GYTT points found", &v153);
        v113 = v112;
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLGyroCalibrationUtils::readFactoryGYTTWithError(std::vector<std::pair<float, CLMotionTypeRotationRate>> &, NSError **)", "CoreLocation: %s\n", v112);
        if (v113 != buf)
        {
          free(v113);
        }
      }

      if (v28)
      {
        goto LABEL_212;
      }

      v114 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v110, @"Insufficent GYTT points. Found: %zu", 0);
      if (a2)
      {
        v115 = objc_alloc(MEMORY[0x1E696ABC0]);
        v151 = *MEMORY[0x1E696A578];
        v152 = v114;
        v117 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v116, &v152, &v151, 1);
        *a2 = objc_msgSend_initWithDomain_code_userInfo_(v115, v118, @"CMErrorDomainFactory", 7, v117);
      }

      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
      }

      v119 = p_vtable[259];
      if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v172 = v114;
        _os_log_impl(&dword_19B41C000, v119, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      v120 = sub_19B420058();
      if ((*(v120 + 160) & 0x80000000) != 0 && (*(v120 + 164) & 0x80000000) != 0 && (*(v120 + 168) & 0x80000000) != 0 && !*(v120 + 152))
      {
        goto LABEL_212;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C810 != -1)
      {
        dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
      }

      v121 = p_vtable[259];
      v153 = 138543362;
      v154 = v114;
      LODWORD(v141) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v121, 16, "%{public}@", &v153, *&v141);
      v123 = v122;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLGyroCalibrationUtils::readFactoryGYTTWithError(std::vector<std::pair<float, CLMotionTypeRotationRate>> &, NSError **)", "CoreLocation: %s\n", v122);
LABEL_194:
      if (v123 != buf)
      {
        free(v123);
      }

LABEL_212:

      return;
    }
  }

  if ((sub_19B421620() & 0x100000) != 0)
  {
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
    }

    v69 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v69, OS_LOG_TYPE_DEFAULT, "No optional GYTT data found", buf, 2u);
    }

    v70 = sub_19B420058();
    if (*(v70 + 160) <= 1 && *(v70 + 164) <= 1 && *(v70 + 168) <= 1 && !*(v70 + 152))
    {
      goto LABEL_109;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
    }

    LOWORD(v153) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 0, "No optional GYTT data found", &v153, 2);
    v68 = v71;
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLGyroCalibrationUtils::copyGYTTData(NSData **)", "CoreLocation: %s\n", v71);
  }

  else
  {
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
    }

    v65 = qword_1ED71C818;
    if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v65, OS_LOG_TYPE_FAULT, "Cannot get GYTT property", buf, 2u);
    }

    v66 = sub_19B420058();
    if ((*(v66 + 160) & 0x80000000) != 0 && (*(v66 + 164) & 0x80000000) != 0 && (*(v66 + 168) & 0x80000000) != 0 && !*(v66 + 152))
    {
      goto LABEL_109;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
    }

    LOWORD(v153) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 17, "Cannot get GYTT property", &v153, 2);
    v68 = v67;
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLGyroCalibrationUtils::copyGYTTData(NSData **)", "CoreLocation: %s\n", v67);
  }

  if (v68 != buf)
  {
    free(v68);
  }

LABEL_109:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_122:
  if (a2)
  {
    v76 = objc_alloc(MEMORY[0x1E696ABC0]);
    v169 = *MEMORY[0x1E696A578];
    v170 = @"Failed to read GYTT key from gyro service";
    v78 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v77, &v170, &v169, 1);
    *a2 = objc_msgSend_initWithDomain_code_userInfo_(v76, v79, @"CMErrorDomainFactory", 3, v78);
  }

  if (qword_1ED71C810 != -1)
  {
    dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
  }

  v80 = qword_1ED71C818;
  if (os_log_type_enabled(qword_1ED71C818, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v172 = @"Failed to read GYTT key from gyro service";
    _os_log_impl(&dword_19B41C000, v80, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  v81 = sub_19B420058();
  if ((*(v81 + 160) & 0x80000000) == 0 || (*(v81 + 164) & 0x80000000) == 0 || (*(v81 + 168) & 0x80000000) == 0 || *(v81 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C810 != -1)
    {
      dispatch_once(&qword_1ED71C810, &unk_1F0E2A2E0);
    }

    v153 = 138543362;
    v154 = @"Failed to read GYTT key from gyro service";
    LODWORD(v141) = 12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1ED71C818, 16, "%{public}@", &v153, *&v141);
    v83 = v82;
    sub_19B6BB7CC("Generic", 1, 0, 0, "void CLGyroCalibrationUtils::readFactoryGYTTWithError(std::vector<std::pair<float, CLMotionTypeRotationRate>> &, NSError **)", "CoreLocation: %s\n", v82);
    if (v83 != buf)
    {
      free(v83);
    }
  }
}

void sub_19B7493AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B41FFEC(v1);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B7493CC()
{
  result = os_log_create("com.apple.locationd.Motion", "AOP");
  qword_1EAFE2838 = result;
  return result;
}

void sub_19B7497F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 736);
  if (v4)
  {
    v5 = (*(a2 + 8) - v4) / 1000000.0;
    *(a1 + 28) = v5;
    if (v5 >= 0.08)
    {
      if (*(a1 + 4))
      {
        *(a1 + 4) = 0;
        *(a1 + 52) = 0;
        *(a1 + 824) = 0;
        *(a1 + 752) = 0;
        *(a1 + 732) = 0;
        *(a1 + 716) = 0u;
      }

      goto LABEL_9;
    }
  }

  else
  {
    *(a1 + 28) = 1025758986;
  }

  sub_19B749924(a1, a2);
  if (*(a1 + 4) != 2)
  {
LABEL_9:
    sub_19B749C40(a1, a2);
    goto LABEL_10;
  }

  if (*a1)
  {
    *a1 = 0;
    *(a1 + 36) = 0;
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
  }

LABEL_10:
  v6 = *(a1 + 736);
  if (v6)
  {
    v7 = *(a2 + 8) - v6;
    v8 = *(a1 + 794);
    v9 = *(a1 + 796);
    v10 = *(a1 + 792);
    if (v10 + v8 >= v9)
    {
      v11 = *(a1 + 796);
    }

    else
    {
      v11 = 0;
    }

    *(a1 + 8 * (v10 + v8 - v11) + 800) = v7;
    if (v9 <= v8)
    {
      if (v10 + 1 < v9)
      {
        LOWORD(v9) = 0;
      }

      *(a1 + 792) = v10 + 1 - v9;
    }

    else
    {
      *(a1 + 794) = v8 + 1;
    }
  }

  *(a1 + 736) = *(a2 + 8);
}

void sub_19B749924(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 54))
  {
    *(a1 + 728) = *(a2 + 8);
    *(a1 + 4) = 1;
  }

  sub_19B5BE78C((a1 + 824), a2);
  if (*(a1 + 4) == 2 && *(a1 + 756) <= 22.5)
  {
    v13 = *sub_19B5BFE1C((a1 + 824), 0);
    v14 = *sub_19B5BFE1C((a1 + 824), 1uLL);
    v15 = *sub_19B5BFE1C((a1 + 824), 2uLL);
    if (v13 >= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v13;
    }

    if (v13 <= v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v13;
    }

    if (v17 < v15)
    {
      v15 = v17;
    }

    if (v16 > v15)
    {
      v15 = v16;
    }

    v4 = *(a1 + 54);
    v5 = *(a1 + 56);
    v18 = *(a1 + 52);
    if (v18 + v4 >= v5)
    {
      v19 = *(a1 + 56);
    }

    else
    {
      v19 = 0;
    }

    *(a1 + 4 * (v18 + v4 - v19) + 60) = v15;
    if (v5 <= v4)
    {
      v24 = v18 + 1;
      if (v24 >= v5)
      {
        v25 = v5;
      }

      else
      {
        v25 = 0;
      }

      *(a1 + 52) = v24 - v25;
    }

    else
    {
      LOWORD(v4) = v4 + 1;
      *(a1 + 54) = v4;
    }
  }

  else
  {
    sub_19B5BE78C((a1 + 52), a2);
    LOWORD(v4) = *(a1 + 54);
    LODWORD(v5) = *(a1 + 56);
  }

  v6 = *(a1 + 752);
  *(a1 + 752) = v6 + 1;
  if (v5 == v4 && v6 >= 163)
  {
    if (*(a1 + 4) == 2)
    {
      v7 = *(a1 + 716);
      v8 = *(a1 + 764);
      v9 = *(a1 + 760);
      if ((*(a1 + 768) & 1) == 0)
      {
LABEL_10:
        v10 = &unk_19B7BBBC8;
        v11 = (a1 + 52);
        v12 = 6;
LABEL_40:
        v28 = sub_19B749DC4(v11, v7, v8, v9, v10, v12);
        *(a1 + 772) = v28;
        v29 = sub_19B5C0034((a1 + 52), sub_19B5C024C, 0x8EuLL);
        v30 = sub_19B5C0034((a1 + 52), sub_19B5C0258, 0x8EuLL);
        v31 = *(a2 + 8) - *(a1 + 724);
        *(a1 + 8) = v28;
        *(a1 + 12) = v29 - v30;
        *(a1 + 16) = v31;
        *(a1 + 752) -= *(a1 + 720);
        *(a1 + 744) = *(a2 + 8);
        return;
      }

LABEL_39:
      v10 = &unk_19B7BBBE0;
      v11 = (a1 + 52);
      v12 = 7;
      goto LABEL_40;
    }

    v20 = 163000000.0 / (*(a2 + 8) - *(a1 + 728));
    *(a1 + 756) = v20;
    v21 = *(a1 + 768);
    if (v21 == 1)
    {
      v7 = 150;
      *(a1 + 716) = 150;
      v9 = v20;
      *(a1 + 760) = v20;
      v8 = 14;
      *(a1 + 764) = 14;
      v22 = v20;
      v23 = 14.0;
      goto LABEL_38;
    }

    if (v20 <= 28.5)
    {
      if (v20 > 22.5)
      {
        v7 = 36;
        *(a1 + 716) = 36;
        *(a1 + 760) = 0x8000000019;
        v22 = 25.0;
        v8 = 128;
        v9 = 25;
        v23 = 128.0;
        goto LABEL_38;
      }

      v7 = 60;
      *(a1 + 716) = 60;
      *(a1 + 760) = 0x6800000014;
      v22 = 20.0;
      v8 = 104;
      v9 = 20;
      *&v26 = 104.0;
    }

    else
    {
      v7 = 0;
      *(a1 + 716) = 0;
      *(a1 + 760) = 0xA400000020;
      v8 = 164;
      v9 = 32;
      v22 = 32.0;
      *&v26 = 164.0;
    }

    v23 = *&v26;
LABEL_38:
    v27.i32[0] = *(a1 + 24);
    v27.f32[1] = (1000000.0 / v20) * v23;
    *(a1 + 720) = vcvt_s32_f32(vmul_f32((LODWORD(v22) | 0x3F00000000000000), v27));
    *(a1 + 4) = 2;
    if (!v21)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }
}

void sub_19B749C40(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = (v4 - *(a1 + 744)) / 1000000.0;
  if (*a1)
  {
    v6 = *(a1 + 776);
    v7 = 1.0;
    if (v6 != 0.0)
    {
      v7 = 1.0 - expf(-*(a1 + 28) / v6);
    }

    *(a1 + 40) = v7;
    *(a1 + 48) = 0;
    *(a1 + 36) = 3;
LABEL_9:
    v10 = *a2;
    *(a1 + 36) = 4;
    v11 = *(a1 + 44) - (v7 * (*(a1 + 44) - v10));
    goto LABEL_10;
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 776);
  if (v8 > -1.0)
  {
    v7 = 1.0;
    if (v9 != 0.0)
    {
      v7 = 1.0 - expf(-v5 / v9);
    }

    *(a1 + 48) = 0;
    *(a1 + 40) = v7;
    *(a1 + 44) = v8;
    *(a1 + 36) = 3;
    *a1 = 1;
    goto LABEL_9;
  }

  v13 = 1.0;
  if (v9 != 0.0)
  {
    v13 = 1.0 - expf(-*(a1 + 28) / v9);
  }

  *(a1 + 36) = 0;
  *(a1 + 40) = v13;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 744) = v4;
  *a1 = 1;
  v14 = *a2;
  *(a1 + 36) = 1;
  v5 = 0.0;
  v11 = v14 + (0.0 * 0.0);
LABEL_10:
  *(a1 + 44) = v11;
  if (v5 > *(a1 + 24))
  {
    *a1 = 2;
    v12 = v4 - *(a1 + 784);
    *(a1 + 8) = v11;
    *(a1 + 12) = -1082130432;
    *(a1 + 16) = v12;
    *(a1 + 744) = *(a2 + 8);
  }
}

float sub_19B749DC4(unsigned __int16 *a1, int a2, int a3, int a4, float *a5, unsigned int a6)
{
  if ((a4 + 1) >= 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4;
  }

  v8 = (a3 / 2);
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  if (a3 >= 2)
  {
    v13 = 0;
    v14 = v7;
    v15 = (a3 + 1) >> 1;
    v27 = a3;
    v16 = a3 + a2;
    v28 = a2;
    v17 = a2;
    v18 = a6 - 1;
    v19 = a5 + 1;
    v20 = 0.0;
    do
    {
      v21 = *a5;
      v22 = v19;
      v23 = v18;
      do
      {
        v24 = *v22++;
        v21 = v24 + (v21 * (v14 * (v15 + ~v13)));
        --v23;
      }

      while (v23);
      v20 = v20 + v21;
      v25 = *sub_19B5BFE1C(a1, v13 + v17);
      v9 = v9 + ((v25 + *sub_19B5BFE1C(a1, v16 + ~v13)) * v21);
      if (!v13)
      {
        v10 = v21;
      }

      ++v13;
    }

    while (v13 != v8);
    v11 = v20 + v20;
    a2 = v28;
    LOBYTE(a3) = v27;
  }

  if (a3)
  {
    v9 = v9 + (*sub_19B5BFE1C(a1, v8 + a2) * v10);
  }

  return v9 / v11;
}

void sub_19B74A808(uint64_t a1)
{
  sub_19B74A854(a1);
  sub_19B4238F4(*(a1 + 56), 1);
  *(a1 + 80) = 1;

  sub_19B74A9C0(a1);
}

void sub_19B74A854(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    v1 = sub_19B42CAAC();
    sub_19B42C428(v1);
  }
}

void sub_19B74A990(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  MEMORY[0x19EAE76F0](v2, v1);
  _Unwind_Resume(a1);
}

void sub_19B74A9C0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  HIWORD(v6) = 1;
  HIBYTE(v6) = *(a1 + 80);
  sub_19B420D84();
  sub_19B44B9A0();
  v7[0] = 0;
  *buf = 4;
  if (sub_19B44CF80(*(a1 + 72), &v6 + 6, 2, v7, buf))
  {
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A300);
    }

    v2 = qword_1EAFE27E0;
    if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_ERROR, "[PickupDetection] Configure failed", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A300);
      }

      LOWORD(v7[0]) = 0;
      LODWORD(v6) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27E0, 16, "[PickupDetection] Configure failed", v7, v6);
      v5 = v4;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMPickupServiceMotionCoprocessor::configure()", "CoreLocation: %s\n", v4);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }
}

void sub_19B74ABA0(uint64_t a1)
{
  sub_19B74A854(a1);
  sub_19B4238F4(*(a1 + 56), 0);
  *(a1 + 80) = 0;

  sub_19B74A9C0(a1);
}

void sub_19B74ABE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    IOHIDEventGetVendorDefinedData();
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A300);
    }

    v4 = qword_1EAFE27E0;
    if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "Empty payload, returning", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A300);
      }

      LOWORD(v13) = 0;
      v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27E0, 1, "Empty payload, returning", &v13, 2);
      v8 = v7;
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMPickupServiceMotionCoprocessor::onIoHidEvent(IOHIDEventRef)", "CoreLocation: %s\n", v6);
LABEL_23:
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  else
  {
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A300);
    }

    v9 = qword_1EAFE27E0;
    if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "Event ref invalid", buf, 2u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27A8 != -1)
      {
        dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A300);
      }

      LOWORD(v13) = 0;
      v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE27E0, 17, "Event ref invalid", &v13, 2);
      v8 = v12;
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMPickupServiceMotionCoprocessor::onIoHidEvent(IOHIDEventRef)", "CoreLocation: %s\n", v11);
      goto LABEL_23;
    }
  }
}

void sub_19B74B230(uint64_t a1)
{
  v2 = *(a1 + 72);
  sub_19B6B1BB4(v2);
  sub_19B6B1F70(v2);

  sub_19B74A9C0(a1);
}

uint64_t sub_19B74B278(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE27A8 != -1)
  {
    dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A300);
  }

  v4 = qword_1EAFE27E0;
  if (os_log_type_enabled(qword_1EAFE27E0, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 1);
    v6 = *(a1 + 48);
    v7 = mach_absolute_time();
    *buf = 67240704;
    *&buf[4] = v5;
    *v22 = 2050;
    *&v22[2] = v6;
    v23 = 2050;
    v24 = sub_19B41E070(v7);
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "Report,pickupState,%{public}u,timestamp,%{public}lf,now,%{public}lf", buf, 0x1Cu);
  }

  v8 = sub_19B420058();
  if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE27A8 != -1)
    {
      dispatch_once(&qword_1EAFE27A8, &unk_1F0E2A300);
    }

    v9 = qword_1EAFE27E0;
    v10 = *(a2 + 1);
    v11 = *(a1 + 48);
    v12 = mach_absolute_time();
    v16[0] = 67240704;
    v16[1] = v10;
    v17 = 2050;
    v18 = v11;
    v19 = 2050;
    v20 = sub_19B41E070(v12);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v9, 2, "Report,pickupState,%{public}u,timestamp,%{public}lf,now,%{public}lf", v16, 28);
    v14 = v13;
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CMPickupServiceMotionCoprocessor::visitPickupState(const CMAudioAccessoryReport::PickupState *)", "CoreLocation: %s\n", v13);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  *buf = 0;
  buf[0] = *(a2 + 1);
  *v22 = *(a1 + 48);
  result = sub_19B41DF08(a1, 0, buf, 16);
  *(a1 + 32) = buf[0];
  return result;
}

void *sub_19B74B4D8(void *a1)
{
  *a1 = &unk_1F0E31B88;
  a1[5] = &unk_1F0E31BE0;
  sub_19B6B3E90(a1 + 9, 0);
  v2 = a1[8];
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return sub_19B661DD8(a1);
}

void sub_19B74B560(void *a1)
{
  *a1 = &unk_1F0E31B88;
  a1[5] = &unk_1F0E31BE0;
  sub_19B6B3E90(a1 + 9, 0);
  v2 = a1[8];
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  sub_19B661DD8(a1);

  JUMPOUT(0x19EAE76F0);
}

void *sub_19B74B5FC(void *a1)
{
  v2 = a1 - 5;
  *(a1 - 5) = &unk_1F0E31B88;
  *a1 = &unk_1F0E31BE0;
  sub_19B6B3E90(a1 + 4, 0);
  v3 = a1[3];
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  return sub_19B661DD8(v2);
}

void sub_19B74B680(void *a1)
{
  v2 = a1 - 5;
  *(a1 - 5) = &unk_1F0E31B88;
  *a1 = &unk_1F0E31BE0;
  sub_19B6B3E90(a1 + 4, 0);
  v3 = a1[3];
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  sub_19B661DD8(v2);

  JUMPOUT(0x19EAE76F0);
}

os_log_t sub_19B74B718()
{
  result = os_log_create("com.apple.locationd.Motion", "Gesture");
  qword_1EAFE27E0 = result;
  return result;
}

void sub_19B74E310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B74E3D0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v16, v15, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B74E400(uint64_t a1, CLConnectionMessage **a2)
{
  v2 = *(a1 + 40);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, *(a1 + 32));
  }

  else
  {
    DictionaryOfClasses = 0;
  }

  v4 = *(v2 + 16);

  return v4(v2, DictionaryOfClasses);
}

void sub_19B74E50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B74E770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *(v14 + 8);
  if (v16)
  {
    sub_19B41FFEC(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B74E858(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v16, v15, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B74EC78(uint64_t a1, const char *a2, uint64_t a3)
{
  keys[1] = *MEMORY[0x1E69E9840];
  result = objc_msgSend_isMotionActivityEntitled(CMMotionUtils, a2, a3);
  if ((result & 1) == 0)
  {
    values = *MEMORY[0x1E695E4D0];
    keys[0] = @"_kTCCAccessRequestOptionSyncCallback";
    if ((atomic_load_explicit(&qword_1ED71D738, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_1ED71D738))
      {
        qword_1ED71D730 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        __cxa_guard_release(&qword_1ED71D738);
      }
    }

    return TCCAccessRequest();
  }

  return result;
}

uint64_t sub_19B74F06C(uint64_t a1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  values = *MEMORY[0x1E695E4D0];
  keys[0] = @"_kTCCAccessRequestOptionSyncCallback";
  if ((atomic_load_explicit(&qword_1ED71D758, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D758))
  {
    qword_1ED71D750 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    __cxa_guard_release(&qword_1ED71D758);
  }

  if ((byte_1ED71D708 & 1) == 0)
  {
    TCCAccessRequest();
    byte_1ED71D708 = 1;
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_19B74F2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  sub_19B41FFEC(v19);
  _Unwind_Resume(a1);
}

os_log_t sub_19B74FAB8()
{
  result = os_log_create("com.apple.locationd.Motion", "Fall");
  qword_1EAFE29B0 = result;
  return result;
}

void *sub_19B74FAE8(void *a1)
{
  *a1 = &unk_1F0E32908;
  v2 = a1[9];
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  return sub_19B674784(a1);
}

__CFString *sub_19B74FB58(int a1)
{
  if ((a1 - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1E7535B00 + (a1 - 1));
  }
}

__CFString *sub_19B74FB80(unsigned int a1)
{
  if (a1 > 5)
  {
    return @"?";
  }

  else
  {
    return *(&off_1E7535B50 + a1);
  }
}

__CFString *sub_19B74FBA4(int a1)
{
  v1 = @"?";
  if (a1 == 1)
  {
    v1 = @"Disconnected";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Connected";
  }
}