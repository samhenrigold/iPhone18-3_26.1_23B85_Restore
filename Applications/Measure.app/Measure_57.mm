void sub_100379C40(void *a1, uint64_t *a2, int a3, int a4)
{
  v8 = 8 - a3;
  v9 = (1 << (8 - a3));
  v10 = ~(-1 << (16 - a3));
  v11 = sub_10037BAD4(a1, 8 * v9);
  *a2 = v11;
  if ((a4 - 95000) >= 0x2711)
  {
    v17 = 0;
    v18 = a4 * 0.00001;
    v97 = 1.0 / v10;
    v99 = vdupq_n_s32(v8);
    __asm { FMOV            V0.2D, #0.5 }

    v93 = _Q0;
    v95 = vdupq_n_s64(0x40EFFFE000000000uLL);
    do
    {
      v24 = sub_10037BB44(a1, 0x200uLL);
      v25 = 0;
      v11[v17] = v24;
      v101 = vdupq_n_s32(v17);
      v26 = xmmword_1003E3950;
      v27 = xmmword_1003EB2C0;
      do
      {
        v119 = v27;
        v121 = v26;
        v28 = vaddq_s32(vshlq_u32(v27, v99), v101);
        v29 = vaddq_s32(vshlq_u32(v26, v99), v101);
        v30.i64[0] = v29.u32[0];
        v30.i64[1] = v29.u32[1];
        v31 = vcvtq_f64_u64(v30);
        v30.i64[0] = v29.u32[2];
        v30.i64[1] = v29.u32[3];
        v32 = vcvtq_f64_u64(v30);
        v30.i64[0] = v28.u32[0];
        v30.i64[1] = v28.u32[1];
        v33 = vcvtq_f64_u64(v30);
        v30.i64[0] = v28.u32[2];
        v30.i64[1] = v28.u32[3];
        v115 = vmulq_n_f64(v33, v97);
        v117 = vmulq_n_f64(vcvtq_f64_u64(v30), v97);
        v113 = vmulq_n_f64(v32, v97);
        v109 = vmulq_n_f64(v31, v97);
        v111 = pow(v109.f64[0], v18);
        v107 = pow(v109.f64[1], v18);
        v109.f64[0] = pow(v113.f64[0], v18);
        v113.f64[0] = pow(v113.f64[1], v18);
        v105 = pow(v115.f64[0], v18);
        v103 = pow(v115.f64[1], v18);
        v115.f64[0] = pow(v117.f64[0], v18);
        v34 = pow(v117.f64[1], v18);
        *v123.val[2].i64 = v105;
        *&v123.val[2].i64[1] = v103;
        *v123.val[1].i64 = v111;
        v35.f64[0] = v109.f64[0];
        *&v123.val[1].i64[1] = v107;
        v36.f64[0] = v115.f64[0];
        v36.f64[1] = v34;
        v35.f64[1] = v113.f64[0];
        v123.val[0].i64[1] = *&v95.f64[1];
        v37 = vmlaq_f64(v93, v95, v35);
        v38 = vmlaq_f64(v93, v95, v36);
        v39 = vrndmq_f64(vmlaq_f64(v93, v95, v123.val[1]));
        *v123.val[1].i8 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(v37)));
        *v123.val[3].i8 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(v38)));
        *v123.val[0].i8 = vmovn_s64(vcvtq_s64_f64(v39));
        *v123.val[2].i8 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vmlaq_f64(v93, v95, v123.val[2]))));
        *&v24[v25] = vqtbl4q_s8(v123, xmmword_1003EB2D0);
        *&v39.f64[0] = 0x800000008;
        *&v39.f64[1] = 0x800000008;
        v26 = vaddq_s32(v121, v39);
        v27 = vaddq_s32(v119, v39);
        v25 += 2;
      }

      while (v25 != 64);
      ++v17;
    }

    while (v17 != v9);
  }

  else if (a3)
  {
    v12 = 0;
    v13 = 1 << (15 - a3);
    do
    {
      v14 = sub_10037BB44(a1, 0x200uLL);
      v15 = 0;
      v11[v12] = v14;
      v16 = v14 + 1;
      do
      {
        *(v16 - 1) = (v13 - ((v15 << v8) + v12) + (((v15 << v8) + v12) << 16)) / v10;
        *v16 = (v13 - (((v15 + 1) << v8) + v12) + ((((v15 + 1) << v8) + v12) << 16)) / v10;
        v16 += 2;
        v15 += 2;
      }

      while (v15 != 256);
      ++v12;
    }

    while (v12 != v9);
  }

  else
  {
    v40 = 0;
    v41 = vdupq_n_s32(v8);
    v122 = vshlq_u32(xmmword_1003EB2C0, v41);
    v120 = vshlq_u32(xmmword_1003E3950, v41);
    v118 = vshlq_u32(xmmword_1003EB2E0, v41);
    v116 = vshlq_u32(xmmword_1003EB2F0, v41);
    v114 = vshlq_u32(xmmword_1003EB300, v41);
    v112 = vshlq_u32(xmmword_1003EB310, v41);
    v110 = vshlq_u32(xmmword_1003EB320, v41);
    v108 = vshlq_u32(xmmword_1003EB330, v41);
    v106 = vshlq_u32(xmmword_1003EB340, v41);
    v104 = vshlq_u32(xmmword_1003EB350, v41);
    v102 = vshlq_u32(xmmword_1003EB360, v41);
    v100 = vshlq_u32(xmmword_1003EB370, v41);
    v98 = vshlq_u32(xmmword_1003EB380, v41);
    v96 = vshlq_u32(xmmword_1003EB390, v41);
    v94 = vshlq_u32(xmmword_1003EB3A0, v41);
    v92 = vshlq_u32(xmmword_1003EB3B0, v41);
    v91 = vshlq_u32(xmmword_1003EB3C0, v41);
    v90 = vshlq_u32(xmmword_1003EB3D0, v41);
    v89 = vshlq_u32(xmmword_1003EB3E0, v41);
    v88 = vshlq_u32(xmmword_1003EB3F0, v41);
    v87 = vshlq_u32(xmmword_1003EB400, v41);
    v86 = vshlq_u32(xmmword_1003EB410, v41);
    v85 = vshlq_u32(xmmword_1003EB420, v41);
    v84 = vshlq_u32(xmmword_1003EB430, v41);
    v83 = vshlq_u32(xmmword_1003EB440, v41);
    v82 = vshlq_u32(xmmword_1003EB450, v41);
    v81 = vshlq_u32(xmmword_1003EB460, v41);
    v80 = vshlq_u32(xmmword_1003EB470, v41);
    v79 = vshlq_u32(xmmword_1003EB480, v41);
    v78 = vshlq_u32(xmmword_1003EB490, v41);
    v77 = vshlq_u32(xmmword_1003EB4A0, v41);
    v76 = vshlq_u32(xmmword_1003EB4B0, v41);
    v75 = vshlq_u32(xmmword_1003EB4C0, v41);
    v74 = vshlq_u32(xmmword_1003EB4D0, v41);
    v73 = vshlq_u32(xmmword_1003EB4E0, v41);
    v72 = vshlq_u32(xmmword_1003EB4F0, v41);
    v71 = vshlq_u32(xmmword_1003EB500, v41);
    v70 = vshlq_u32(xmmword_1003EB510, v41);
    v69 = vshlq_u32(xmmword_1003EB520, v41);
    v68 = vshlq_u32(xmmword_1003EB530, v41);
    v67 = vshlq_u32(xmmword_1003EB540, v41);
    v66 = vshlq_u32(xmmword_1003EB550, v41);
    v65 = vshlq_u32(xmmword_1003EB560, v41);
    v64 = vshlq_u32(xmmword_1003EB570, v41);
    v63 = vshlq_u32(xmmword_1003EB580, v41);
    v62 = vshlq_u32(xmmword_1003EB590, v41);
    v61 = vshlq_u32(xmmword_1003EB5A0, v41);
    v60 = vshlq_u32(xmmword_1003EB5B0, v41);
    v59 = vshlq_u32(xmmword_1003EB5C0, v41);
    v58 = vshlq_u32(xmmword_1003EB5D0, v41);
    v57 = vshlq_u32(xmmword_1003EB5E0, v41);
    v56 = vshlq_u32(xmmword_1003EB5F0, v41);
    v55 = vshlq_u32(xmmword_1003EB600, v41);
    v54 = vshlq_u32(xmmword_1003EB610, v41);
    v53 = vshlq_u32(xmmword_1003EB620, v41);
    v52 = vshlq_u32(xmmword_1003EB630, v41);
    v51 = vshlq_u32(xmmword_1003EB640, v41);
    v50 = vshlq_u32(xmmword_1003EB650, v41);
    v49 = vshlq_u32(xmmword_1003EB660, v41);
    v48 = vshlq_u32(xmmword_1003EB670, v41);
    v47 = vshlq_u32(xmmword_1003EB680, v41);
    v46 = vshlq_u32(xmmword_1003EB690, v41);
    v45 = vshlq_u32(xmmword_1003EB6A0, v41);
    v44 = vshlq_u32(xmmword_1003EB6B0, v41);
    do
    {
      v42 = sub_10037BB44(a1, 0x200uLL);
      v43 = vdupq_n_s32(v40);
      *v42 = vuzp1q_s16(vaddq_s32(v120, v43), vaddq_s32(v122, v43));
      v42[1] = vuzp1q_s16(vaddq_s32(v116, v43), vaddq_s32(v118, v43));
      v42[2] = vuzp1q_s16(vaddq_s32(v112, v43), vaddq_s32(v114, v43));
      v42[3] = vuzp1q_s16(vaddq_s32(v108, v43), vaddq_s32(v110, v43));
      v42[4] = vuzp1q_s16(vaddq_s32(v104, v43), vaddq_s32(v106, v43));
      v42[5] = vuzp1q_s16(vaddq_s32(v100, v43), vaddq_s32(v102, v43));
      v42[6] = vuzp1q_s16(vaddq_s32(v96, v43), vaddq_s32(v98, v43));
      v42[7] = vuzp1q_s16(vaddq_s32(v92, v43), vaddq_s32(v94, v43));
      v42[8] = vuzp1q_s16(vaddq_s32(v90, v43), vaddq_s32(v91, v43));
      v42[9] = vuzp1q_s16(vaddq_s32(v88, v43), vaddq_s32(v89, v43));
      v42[10] = vuzp1q_s16(vaddq_s32(v86, v43), vaddq_s32(v87, v43));
      v42[11] = vuzp1q_s16(vaddq_s32(v84, v43), vaddq_s32(v85, v43));
      v42[12] = vuzp1q_s16(vaddq_s32(v82, v43), vaddq_s32(v83, v43));
      v42[13] = vuzp1q_s16(vaddq_s32(v80, v43), vaddq_s32(v81, v43));
      v42[14] = vuzp1q_s16(vaddq_s32(v78, v43), vaddq_s32(v79, v43));
      v42[15] = vuzp1q_s16(vaddq_s32(v76, v43), vaddq_s32(v77, v43));
      v42[16] = vuzp1q_s16(vaddq_s32(v74, v43), vaddq_s32(v75, v43));
      v42[17] = vuzp1q_s16(vaddq_s32(v72, v43), vaddq_s32(v73, v43));
      v42[18] = vuzp1q_s16(vaddq_s32(v70, v43), vaddq_s32(v71, v43));
      v42[19] = vuzp1q_s16(vaddq_s32(v68, v43), vaddq_s32(v69, v43));
      v42[20] = vuzp1q_s16(vaddq_s32(v66, v43), vaddq_s32(v67, v43));
      v42[21] = vuzp1q_s16(vaddq_s32(v64, v43), vaddq_s32(v65, v43));
      v42[22] = vuzp1q_s16(vaddq_s32(v62, v43), vaddq_s32(v63, v43));
      v42[23] = vuzp1q_s16(vaddq_s32(v60, v43), vaddq_s32(v61, v43));
      v42[24] = vuzp1q_s16(vaddq_s32(v58, v43), vaddq_s32(v59, v43));
      v42[25] = vuzp1q_s16(vaddq_s32(v56, v43), vaddq_s32(v57, v43));
      v42[26] = vuzp1q_s16(vaddq_s32(v54, v43), vaddq_s32(v55, v43));
      v42[27] = vuzp1q_s16(vaddq_s32(v52, v43), vaddq_s32(v53, v43));
      v42[28] = vuzp1q_s16(vaddq_s32(v50, v43), vaddq_s32(v51, v43));
      v42[29] = vuzp1q_s16(vaddq_s32(v48, v43), vaddq_s32(v49, v43));
      v42[30] = vuzp1q_s16(vaddq_s32(v46, v43), vaddq_s32(v47, v43));
      v42[31] = vuzp1q_s16(vaddq_s32(v44, v43), vaddq_s32(v45, v43));
      v11[v40++] = v42;
    }

    while (v9 != v40);
  }
}

uint64_t sub_10037A618(int *a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1] + *a2 + a2[2];
  if (!v3)
  {
    return 1;
  }

  if (v2)
  {
    v4 = floor(v2 * 100000.0 / v3 + 0.5);
    if (v4 > 2147483650.0 || v4 < -2147483650.0)
    {
      return 1;
    }

    v2 = v4;
  }

  *a1 = v2;
  v6 = a2[1];
  if (v6)
  {
    v7 = floor(v6 * 100000.0 / v3 + 0.5);
    if (v7 > 2147483650.0 || v7 < -2147483650.0)
    {
      return 1;
    }

    v6 = v7;
  }

  a1[1] = v6;
  v9 = a2[3];
  v10 = a2[4] + v9 + a2[5];
  if (!v10)
  {
    return 1;
  }

  v12 = *a2;
  v11 = a2[1];
  if (v9)
  {
    v13 = floor(v9 * 100000.0 / v10 + 0.5);
    if (v13 > 2147483650.0 || v13 < -2147483650.0)
    {
      return 1;
    }

    v9 = v13;
  }

  a1[2] = v9;
  v15 = a2[4];
  if (v15)
  {
    v16 = floor(v15 * 100000.0 / v10 + 0.5);
    if (v16 > 2147483650.0 || v16 < -2147483650.0)
    {
      return 1;
    }

    v15 = v16;
  }

  a1[3] = v15;
  v18 = a2[6];
  v19 = a2[7] + v18 + a2[8];
  if (!v19)
  {
    return 1;
  }

  v21 = a2[3];
  v20 = a2[4];
  if (v18)
  {
    v22 = floor(v18 * 100000.0 / v19 + 0.5);
    if (v22 > 2147483650.0 || v22 < -2147483650.0)
    {
      return 1;
    }

    v18 = v22;
  }

  a1[4] = v18;
  v24 = a2[7];
  if (v24)
  {
    v25 = floor(v24 * 100000.0 / v19 + 0.5);
    if (v25 > 2147483650.0 || v25 < -2147483650.0)
    {
      return 1;
    }

    v24 = v25;
  }

  a1[5] = v24;
  v27 = v10 + v3 + v19;
  if (!v27)
  {
    return 1;
  }

  v28 = v21 + v12;
  v29 = a2[7];
  v30 = v28 + a2[6];
  if (!v30)
  {
    goto LABEL_47;
  }

  v31 = floor(v30 * 100000.0 / v27 + 0.5);
  if (v31 > 2147483650.0 || v31 < -2147483650.0)
  {
    return 1;
  }

  v30 = v31;
LABEL_47:
  a1[6] = v30;
  v33 = v20 + v11 + v29;
  if (v33)
  {
    v34 = floor(v33 * 100000.0 / v27 + 0.5);
    if (v34 <= 2147483650.0 && v34 >= -2147483650.0)
    {
      a1[7] = v34;
      return 0;
    }

    return 1;
  }

  a1[7] = 0;
  return 0;
}

void sub_10037A948(uint64_t a1, const char *a2)
{
  if (a1)
  {
    v2 = *(a1 + 216);
    if (v2)
    {
      v3 = a1;
      v4 = a2;
      v2();
      a1 = v3;
      a2 = v4;
    }
  }

  sub_10037A97C(a1, a2);
}

void sub_10037A97C(uint64_t a1, const char *a2)
{
  v3 = "undefined";
  if (a2)
  {
    v3 = a2;
  }

  fprintf(__stderrp, "libpng error: %s", v3);
  fputc(10, __stderrp);
  sub_10037B8B0(a1);
}

unint64_t sub_10037A9D8(uint64_t a1, unint64_t a2, unint64_t a3, char *a4)
{
  if (a1 && a3 < a2)
  {
    if (a4 && (v4 = *a4) != 0 && a2 - 1 > a3)
    {
      v5 = a4 + 1;
      do
      {
        *(a1 + a3) = v4;
        v6 = a3 + 1;
        v7 = *v5++;
        v4 = v7;
        if (v7)
        {
          v8 = v6 >= a2 - 1;
        }

        else
        {
          v8 = 1;
        }

        ++a3;
      }

      while (!v8);
    }

    else
    {
      v6 = a3;
    }

    *(a1 + v6) = 0;
    return v6;
  }

  return a3;
}

unint64_t sub_10037AA34(unint64_t a1, uint64_t a2, int a3, unint64_t a4)
{
  *(a2 - 1) = 0;
  v4 = a2 - 1;
  if (v4 > a1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 1;
    do
    {
      if (!a4 && v6 >= v7)
      {
        return v4;
      }

      v8 = 0;
      if (a3 <= 2)
      {
        if (a3 != 1)
        {
          if (a3 != 2)
          {
            goto LABEL_22;
          }

          v7 = 2;
        }

        v8 = a4 / 0xA;
        *--v4 = a0123456789abcd[a4 % 0xA];
      }

      else
      {
        if (a3 != 3)
        {
          if (a3 != 4)
          {
            if (a3 == 5)
            {
              v8 = a4 / 0xA;
              v9 = a4 % 0xA;
              if (v5 || v9)
              {
                *--v4 = a0123456789abcd[v9];
                v5 = 1;
              }

              else
              {
                v5 = 0;
              }

              v7 = 5;
            }

LABEL_22:
            ++v6;
            if (a3 == 5 && v6 == 5 && v4 > a1)
            {
              if (v5)
              {
                *--v4 = 46;
              }

              else
              {
                v5 = 0;
                if (!v8)
                {
                  *--v4 = 48;
                }
              }

              v6 = 5;
            }

            goto LABEL_6;
          }

          v7 = 2;
        }

        *--v4 = a0123456789abcd[a4 & 0xF];
        v8 = a4 >> 4;
      }

      ++v6;
LABEL_6:
      a4 = v8;
    }

    while (v4 > a1);
  }

  return v4;
}

uint64_t sub_10037AB5C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  if (*a2 == 35)
  {
    if (*(a2 + 1) == 32)
    {
      v2 = 1;
    }

    else if (*(a2 + 2) == 32)
    {
      v2 = 2;
    }

    else if (*(a2 + 3) == 32)
    {
      v2 = 3;
    }

    else if (*(a2 + 4) == 32)
    {
      v2 = 4;
    }

    else if (*(a2 + 5) == 32)
    {
      v2 = 5;
    }

    else if (*(a2 + 6) == 32)
    {
      v2 = 6;
    }

    else if (*(a2 + 7) == 32)
    {
      v2 = 7;
    }

    else if (*(a2 + 8) == 32)
    {
      v2 = 8;
    }

    else if (*(a2 + 9) == 32)
    {
      v2 = 9;
    }

    else if (*(a2 + 10) == 32)
    {
      v2 = 10;
    }

    else if (*(a2 + 11) == 32)
    {
      v2 = 11;
    }

    else if (*(a2 + 12) == 32)
    {
      v2 = 12;
    }

    else if (*(a2 + 13) == 32)
    {
      v2 = 13;
    }

    else
    {
      v2 = 14;
      if (*(a2 + 14) != 32)
      {
        v2 = 15;
      }
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 224);
  a2 += v2;
  if (v3)
  {

    return v3();
  }

  else
  {
LABEL_10:
    fprintf(__stderrp, "libpng warning: %s", a2);
    v5 = __stderrp;

    return fputc(10, v5);
  }
}

uint64_t sub_10037AD0C(uint64_t result, unsigned int a2, _BYTE *a3)
{
  if (a2 - 1 <= 7)
  {
    v3 = result + 32 * a2 - 32;
    if (result + 32 * a2 != 32)
    {
      if (a3 && (LOBYTE(v4) = *a3) != 0)
      {
        v5 = 0;
        do
        {
          v6 = v5 + 1;
          *(v3 + v5) = v4;
          if (v5 > 0x1D)
          {
            break;
          }

          v4 = a3[++v5];
        }

        while (v4);
      }

      else
      {
        v6 = 0;
      }

      *(v3 + v6) = 0;
    }
  }

  return result;
}

uint64_t sub_10037AD68(uint64_t result, unsigned int a2, int a3, unsigned int a4)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  if ((a4 & 0x80000000) == 0)
  {
    v7 = a4;
  }

  else
  {
    v7 = -a4;
  }

  v8 = &v17;
  v17 = 0;
  v9 = 1;
  while (v7 || v6 < v9)
  {
    v10 = 0;
    if (a3 <= 2)
    {
      if (a3 != 1)
      {
        if (a3 != 2)
        {
          goto LABEL_24;
        }

        v9 = 2;
      }

      v10 = v7 / 0xA;
      v4 = a0123456789abcd[v7 % 0xA];
      *--v8 = v4;
    }

    else
    {
      if (a3 != 3)
      {
        if (a3 != 4)
        {
          if (a3 == 5)
          {
            v10 = v7 / 0xA;
            v11 = v7 % 0xA;
            if (v5 || v11)
            {
              v4 = a0123456789abcd[v11];
              *--v8 = v4;
              v5 = 1;
            }

            else
            {
              v5 = 0;
            }

            v9 = 5;
          }

LABEL_24:
          ++v6;
          if (a3 != 5 || v6 != 5 || v8 <= v16)
          {
            goto LABEL_8;
          }

          if (v5)
          {
            v4 = 46;
            goto LABEL_29;
          }

          v5 = 0;
          if (!v10)
          {
            v4 = 48;
LABEL_29:
            *--v8 = v4;
          }

          v6 = 5;
          goto LABEL_8;
        }

        v9 = 2;
      }

      v4 = a0123456789abcd[v7 & 0xF];
      *--v8 = v4;
      v10 = v7 >> 4;
    }

    ++v6;
LABEL_8:
    v7 = v10;
    if (v8 <= v16)
    {
      break;
    }
  }

  if ((a4 & 0x80000000) != 0 && v8 > v16)
  {
    v4 = 45;
    *--v8 = 45;
  }

  if (a2 - 1 <= 7)
  {
    v12 = result + 32 * a2 - 32;
    if (result + 32 * a2 != 32)
    {
      v13 = 0;
      if (v8 && v4)
      {
        v14 = 0;
        v15 = v8 + 1;
        do
        {
          v13 = v14 + 1;
          *(v12 + v14) = v4;
          if (v14 > 0x1D)
          {
            break;
          }

          v4 = v15[v14++];
        }

        while (v4);
      }

      *(v12 + v13) = 0;
    }
  }

  return result;
}

uint64_t sub_10037AF4C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = 0;
  if (a2)
  {
    while (1)
    {
      v5 = *a3;
      if (v5 != 64)
      {
        break;
      }

      v4 = a3 + 1;
      v5 = a3[1];
      if (a3[1])
      {
        v6 = 0;
        v7 = a2 - 32;
        do
        {
          v8 = v6 + 1;
          v7 += 32;
          if (v6 == 9)
          {
            break;
          }

          v9 = a123456789[v6++];
        }

        while (v9 != v5);
        if ((v8 - 1) > 7)
        {
LABEL_4:
          a3 = v4 + 1;
          v13[v3++] = v5;
          if (v3 >= 0xBF)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v10 = 0;
          while (*(v7 + v10) && v10 <= 0x1F)
          {
            v13[v3 + v10] = *(v7 + v10);
            ++v10;
            if (v3 + v10 == 191)
            {
              v3 = 191;
              goto LABEL_24;
            }
          }

          v3 += v10;
          a3 += 2;
          if (v3 >= 0xBF)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        ++a3;
        v13[v3++] = 64;
        if (v3 >= 0xBF)
        {
          goto LABEL_24;
        }
      }
    }

    v4 = a3;
    if (!*a3)
    {
      goto LABEL_24;
    }

    goto LABEL_4;
  }

  do
  {
    if (!a3[v3])
    {
      break;
    }

    v13[v3] = a3[v3];
    ++v3;
  }

  while (v3 != 191);
LABEL_24:
  v13[v3] = 0;
  return sub_10037AB5C(a1, v13);
}

uint64_t sub_10037B0C0(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 292);
  if ((*(a1 + 298) & 0x10) == 0)
  {
    if ((v2 & 0x8000) == 0 || !*(a1 + 528))
    {
      sub_10037A948(a1, a2);
    }

    sub_10037B274(a1, a2);
  }

  if ((v2 & 0x8000) != 0 && *(a1 + 528))
  {
    sub_10037B308(*(a1 + 528), v5, a2);
    return sub_10037AB5C(a1, v5);
  }

  else
  {

    return sub_10037AB5C(a1, a2);
  }
}

uint64_t sub_10037B1A0(uint64_t a1, const char *a2)
{
  if (a1)
  {
    sub_10037B308(*(a1 + 528), v5, a2);
    return sub_10037AB5C(a1, v5);
  }

  else
  {
    fprintf(__stderrp, "libpng warning: %s", a2);
    v4 = __stderrp;

    return fputc(10, v4);
  }
}

void sub_10037B274(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    sub_10037A948(0, a2);
  }

  sub_10037B308(*(a1 + 528), v3, a2);
  sub_10037A948(a1, v3);
}

uint64_t sub_10037B2B8(uint64_t a1, const char *a2)
{
  if ((*(a1 + 298) & 0x20) == 0)
  {
    sub_10037A948(a1, a2);
  }

  return sub_10037AB5C(a1, a2);
}

uint64_t sub_10037B2E0(uint64_t a1, const char *a2)
{
  if ((*(a1 + 298) & 0x40) == 0)
  {
    sub_10037A948(a1, a2);
  }

  return sub_10037AB5C(a1, a2);
}

unint64_t sub_10037B308(unint64_t result, _BYTE *a2, uint64_t a3)
{
  if (BYTE3(result) - 123 >= 0xFFFFFFC6 && BYTE3(result) - 91 > 5u)
  {
    v4 = 1;
    *a2 = BYTE3(result);
    v5 = BYTE2(result);
    if (BYTE2(result) - 123 < 0xFFFFFFC6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    a2[1] = a0123456789abcd_0[result >> 28];
    a2[2] = a0123456789abcd_0[(result >> 24) & 0xF];
    a2[3] = 93;
    v4 = 4;
    *a2 = 91;
    v5 = BYTE2(result);
    if (BYTE2(result) - 123 < 0xFFFFFFC6)
    {
      goto LABEL_11;
    }
  }

  if ((v5 - 91) >= 6)
  {
    v6 = v4 + 1;
    a2[v4] = BYTE2(result);
    v7 = BYTE1(result);
    if (BYTE1(result) - 123 < 0xFFFFFFC6)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

LABEL_11:
  v8 = &a2[v4];
  *v8 = 91;
  v8[1] = a0123456789abcd_0[(result >> 20) & 0xF];
  v8[2] = a0123456789abcd_0[(result >> 16) & 0xF];
  v6 = v4 + 4;
  v8[3] = 93;
  v7 = BYTE1(result);
  if (BYTE1(result) - 123 < 0xFFFFFFC6)
  {
    goto LABEL_15;
  }

LABEL_12:
  if ((v7 - 91) >= 6)
  {
    v9 = v6 + 1;
    a2[v6] = BYTE1(result);
    v10 = result;
    if (result - 123 < 0xFFFFFFC6)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

LABEL_15:
  v11 = &a2[v6];
  *v11 = 91;
  v11[1] = a0123456789abcd_0[result >> 12];
  v11[2] = a0123456789abcd_0[(result >> 8) & 0xF];
  v9 = v6 + 4;
  v11[3] = 93;
  v10 = result;
  if (result - 123 < 0xFFFFFFC6)
  {
    goto LABEL_19;
  }

LABEL_16:
  if ((v10 - 91) >= 6)
  {
    a2[v9] = result;
    v12 = (v9 + 1);
    v13 = &a2[v12];
    if (a3)
    {
      goto LABEL_20;
    }

LABEL_18:
    *v13 = 0;
    return result;
  }

LABEL_19:
  v14 = &a2[v9];
  *v14 = 91;
  v14[1] = a0123456789abcd_0[result >> 4];
  v14[2] = a0123456789abcd_0[result & 0xF];
  v14[3] = 93;
  v12 = (v9 + 4);
  v13 = &a2[v12];
  if (!a3)
  {
    goto LABEL_18;
  }

LABEL_20:
  v15 = 0;
  *v13 = 8250;
  v16 = v12 + 2;
  v17 = v12 + 197;
  while (1)
  {
    v18 = *(a3 + v15);
    if (!v18)
    {
      break;
    }

    ++v15;
    a2[v16++] = v18;
    if (v15 == 195)
    {
      a2[v17] = 0;
      return result;
    }
  }

  a2[v16] = 0;
  return result;
}

uint64_t sub_10037B50C(uint64_t a1, const char *a2)
{
  if ((*(a1 + 298) & 0x10) == 0)
  {
    sub_10037B274(a1, a2);
  }

  sub_10037B308(*(a1 + 528), v4, a2);
  return sub_10037AB5C(a1, v4);
}

uint64_t sub_10037B590(uint64_t a1, const char *a2, int a3)
{
  if ((*(a1 + 293) & 0x80) == 0)
  {
    v3 = *(a1 + 296);
    if (a3 <= 0)
    {
      if ((v3 & 0x200000) != 0)
      {
        goto LABEL_4;
      }
    }

    else if ((v3 & 0x400000) != 0)
    {
LABEL_4:

      return sub_10037AB5C(a1, a2);
    }

    sub_10037A948(a1, a2);
  }

  if (a3 > 1)
  {
    v6 = a2;
    if ((*(a1 + 298) & 0x10) == 0)
    {
      sub_10037B274(a1, a2);
    }

    v5 = *(a1 + 528);
  }

  else
  {
    v5 = *(a1 + 528);
    v6 = a2;
  }

  sub_10037B308(v5, v8, v6);
  return sub_10037AB5C(a1, v8);
}

void sub_10037B680(uint64_t a1, uint64_t a2)
{
  qmemcpy(v3, "fixed point overflow in ", sizeof(v3));
  if (!a2)
  {
    v4[0] = 0;
    sub_10037A948(a1, v3);
  }

  v2 = 0;
  do
  {
    if (!*(a2 + v2))
    {
      goto LABEL_7;
    }

    v4[v2] = *(a2 + v2);
    ++v2;
  }

  while (v2 != 195);
  LODWORD(v2) = 195;
LABEL_7:
  v3[(v2 + 24)] = 0;
  sub_10037A948(a1, v3);
}

void *sub_10037B6FC(void *a1, uint64_t a2, size_t __size)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1[25];
  if (v3)
  {
    v4 = a1[26];
    if (v4)
    {
      if (v4 == __size)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 != a1)
      {
        sub_10037A948(a1, "Libpng jmp_buf still allocated");
      }

      if (__size == 192)
      {
        goto LABEL_15;
      }
    }

    sub_10037AB5C(a1, "Application jmp_buf size changed");
    return 0;
  }

  a1[26] = 0;
  if (__size <= 0xC0)
  {
    a1[24] = a2;
    a1[25] = a1;
    return a1;
  }

  v6 = a2;
  v7 = a1;
  v3 = sub_10037BD48(a1, __size);
  v7[25] = v3;
  if (!v3)
  {
    return v3;
  }

  a1 = v7;
  v7[26] = __size;
  a2 = v6;
LABEL_15:
  a1[24] = a2;
  return v3;
}

void *sub_10037B7E0(void *result)
{
  if (result)
  {
    v1 = result[25];
    if (v1)
    {
      if (v1 != result && result[26] != 0)
      {
        v3 = result;
        memset(v4, 0, sizeof(v4));
        if (!setjmp(v4))
        {
          v3[25] = v4;
          v3[26] = 0;
          v3[24] = &_longjmp;
          sub_10037BAB4(v3, v1);
        }

        result = v3;
      }
    }

    result[24] = 0;
    result[25] = 0;
    result[26] = 0;
  }

  return result;
}

void sub_10037B8B0(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 192);
    if (v1)
    {
      if (*(a1 + 200))
      {
        v1();
      }
    }
  }

  abort();
}

void *sub_10037B8D8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    result[28] = a4;
    result[29] = a2;
    result[27] = a3;
  }

  return result;
}

uint64_t sub_10037B8E8(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, int *a7, _DWORD *a8, _DWORD *a9)
{
  v9 = 0;
  if (a1 && a2)
  {
    if (a3)
    {
      *a3 = *a2;
    }

    if (a4)
    {
      *a4 = *(a2 + 4);
    }

    if (a5)
    {
      *a5 = *(a2 + 36);
    }

    if (a6)
    {
      *a6 = *(a2 + 37);
    }

    if (a8)
    {
      *a8 = *(a2 + 38);
    }

    if (a9)
    {
      *a9 = *(a2 + 39);
    }

    v10 = *(a2 + 40);
    if (a7)
    {
      *a7 = v10;
    }

    sub_100378AB4(a1, *a2, *(a2 + 4), *(a2 + 36), *(a2 + 37), v10, *(a2 + 38), *(a2 + 39));
    return 1;
  }

  return v9;
}

uint64_t sub_10037B988(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, void *a5)
{
  result = 0;
  if (a1 && a2)
  {
    if ((*(a2 + 8) & 0x10) == 0)
    {
      return 0;
    }

    if (*(a2 + 37) == 3)
    {
      if (a3)
      {
        *a3 = *(a2 + 184);
        result = 16;
        if (!a5)
        {
          goto LABEL_16;
        }
      }

      else
      {
        result = 0;
        if (!a5)
        {
          goto LABEL_16;
        }
      }

      *a5 = a2 + 192;
      goto LABEL_16;
    }

    if (a5)
    {
      *a5 = a2 + 192;
      result = 16;
      if (!a3)
      {
LABEL_16:
        if (a4)
        {
          *a4 = *(a2 + 34);
          return 16;
        }

        return result;
      }
    }

    else
    {
      result = 0;
      if (!a3)
      {
        goto LABEL_16;
      }
    }

    *a3 = 0;
    goto LABEL_16;
  }

  return result;
}

void *sub_10037BA18(void *__src)
{
  if (__src)
  {
    v1 = __src;
    memcpy(__dst, __src, sizeof(__dst));
    bzero(v1, 0x4E0uLL);
    if (__dst[125])
    {
      (__dst[125])(__dst, v1);
    }

    else
    {
      free(v1);
    }

    return sub_10037B7E0(__dst);
  }

  return __src;
}

void sub_10037BAB4(uint64_t a1, void *a2)
{
  if (a1 && a2)
  {
    v2 = *(a1 + 1000);
    if (v2)
    {
      v2();
    }

    else
    {
      free(a2);
    }
  }
}

void *sub_10037BAD4(void *result, size_t __size)
{
  if (result)
  {
    v3 = result;
    if (__size)
    {
      v4 = result[124];
      if (v4)
      {
        v5 = v4(result, __size);
        if (v5)
        {
LABEL_5:
          v6 = v5;
          bzero(v5, __size);
          return v6;
        }
      }

      else
      {
        v5 = malloc(__size);
        if (v5)
        {
          goto LABEL_5;
        }
      }
    }

    sub_10037A948(v3, "Out of memory");
  }

  return result;
}

void *sub_10037BB44(void *result, size_t __size)
{
  if (result)
  {
    v2 = result;
    if (!__size)
    {
      goto LABEL_7;
    }

    v3 = result[124];
    if (v3)
    {
      result = v3(result);
      if (result)
      {
        return result;
      }

LABEL_7:
      sub_10037A948(v2, "Out of memory");
    }

    result = malloc(__size);
    if (!result)
    {
      goto LABEL_7;
    }
  }

  return result;
}

void *sub_10037BB9C(uint64_t a1, size_t __size)
{
  if (!__size)
  {
    return 0;
  }

  if (a1)
  {
    v2 = *(a1 + 992);
    if (v2)
    {
      return v2();
    }
  }

  return malloc(__size);
}

void *sub_10037BBC0(uint64_t a1, int a2, unint64_t a3)
{
  if (a2 < 1 || !a3)
  {
    sub_10037A948(a1, "internal error: array alloc");
  }

  v4 = a2;
  if (!is_mul_ok(a3, a2))
  {
    return 0;
  }

  v5 = a2 * a3;
  if (!(v4 * a3))
  {
    return 0;
  }

  if (a1 && (v6 = *(a1 + 992)) != 0)
  {

    return v6();
  }

  else
  {

    return malloc(v5);
  }
}

char *sub_10037BC34(uint64_t a1, const void *a2, unsigned int a3, signed int a4, unint64_t a5)
{
  if ((a3 & 0x80000000) != 0 || a4 < 1 || !a5 || !a2 && a3)
  {
    sub_10037A948(a1, "internal error: array realloc");
  }

  if ((a3 ^ 0x7FFFFFFF) < a4)
  {
    return 0;
  }

  if (!is_mul_ok(a5, a4 + a3) || !((a4 + a3) * a5))
  {
    return 0;
  }

  if (a1 && (v10 = *(a1 + 992)) != 0)
  {
    result = v10();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = malloc((a4 + a3) * a5);
    if (!result)
    {
      return result;
    }
  }

  v11 = a5;
  v12 = a3;
  v13 = result;
  if (v12)
  {
    v14 = a2;
    v15 = v12 * a5;
    memcpy(result, v14, v15);
    v11 = a5;
  }

  else
  {
    v15 = 0;
  }

  bzero(&v13[v15], a4 * v11);
  return v13;
}

void *sub_10037BD48(uint64_t a1, size_t __size)
{
  if (!a1)
  {
    return 0;
  }

  if (__size)
  {
    v2 = *(a1 + 992);
    if (v2)
    {
      v3 = a1;
      v4 = v2();
      a1 = v3;
      if (v4)
      {
        return v4;
      }
    }

    else
    {
      v6 = a1;
      v4 = malloc(__size);
      a1 = v6;
      if (v4)
      {
        return v4;
      }
    }
  }

  sub_10037AB5C(a1, "Out of memory");
  return 0;
}

void *sub_10037BDD4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    result[123] = a2;
    result[124] = a3;
    result[125] = a4;
  }

  return result;
}

_DWORD *sub_10037BDE8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_100376770(a1, a2, a3, a4, 0, 0, 0);
  if (result)
  {
    result[73] = 0x8000;
    result[280] = 0x2000;
    result[74] |= 0x300000u;
    v5 = result;
    sub_10037D010(result, 0, 0);
    return v5;
  }

  return result;
}

void sub_10037BE48(uint64_t result, uint64_t a2)
{
  if (!result || !a2)
  {
    return;
  }

  sub_100381488(result, a2);
  v4 = sub_100381550(result);
  for (i = *(result + 528); i != 1229209940; i = *(result + 528))
  {
    v8 = *(result + 292);
    if ((v8 & 4) != 0)
    {
      *(result + 292) = v8 | 0x2008;
    }

    if (i == 1229278788)
    {
      sub_100381D8C(result, a2, v4);
    }

    else if (i == 1229472850)
    {
      sub_1003818F0(result, a2, v4);
    }

    else
    {
      v9 = sub_100376ED8(result, i);
      if (v9)
      {
        sub_10038530C(result, a2, v4, v9);
        if (i == 1347179589)
        {
          *(result + 292) |= 2u;
        }

        goto LABEL_15;
      }

      if (i <= 1883455819)
      {
        if (i <= 1732332864)
        {
          if (i > 1665684044)
          {
            if (i == 1665684045)
            {
              sub_1003821C4(result, a2, v4);
            }

            else
            {
              if (i != 1700284774)
              {
                goto LABEL_69;
              }

              sub_100383914(result, a2, v4);
            }
          }

          else if (i == 1347179589)
          {
            sub_100381A98(result, a2, v4);
          }

          else
          {
            if (i != 1649100612)
            {
              goto LABEL_69;
            }

            sub_1003836D0(result, a2, v4);
          }
        }

        else if (i <= 1766015823)
        {
          if (i == 1732332865)
          {
            sub_100381E10(result, a2, v4);
          }

          else
          {
            if (i != 1749635924)
            {
              goto LABEL_69;
            }

            sub_100383B20(result, a2, v4);
          }
        }

        else
        {
          switch(i)
          {
            case 1766015824:
              sub_1003826FC(result, a2, v4);
              break;
            case 1767135348:
              sub_100384FA8(result, a2, v4);
              break;
            case 1866876531:
              sub_100383EB4(result, a2, v4);
              break;
            default:
              goto LABEL_69;
          }
        }
      }

      else if (i > 1934772033)
      {
        if (i <= 1950960964)
        {
          if (i == 1934772034)
          {
            sub_100382594(result, a2, v4);
          }

          else
          {
            if (i != 1950701684)
            {
LABEL_69:
              sub_10038530C(result, a2, v4, 0);
              goto LABEL_15;
            }

            sub_1003848F8(result, a2, v4);
          }
        }

        else
        {
          switch(i)
          {
            case 1950960965:
              sub_1003847B0(result, a2, v4);
              break;
            case 1951551059:
              sub_1003833AC(result, a2, v4);
              break;
            case 2052348020:
              sub_100384B14(result, a2, v4);
              break;
            default:
              goto LABEL_69;
          }
        }
      }

      else if (i <= 1933723987)
      {
        if (i == 1883455820)
        {
          sub_100384128(result, a2, v4);
        }

        else
        {
          if (i != 1883789683)
          {
            goto LABEL_69;
          }

          sub_100383CEC(result, a2, v4);
        }
      }

      else
      {
        switch(i)
        {
          case 1933723988:
            sub_100381F44(result, a2, v4);
            break;
          case 1933787468:
            sub_1003844D4(result, a2, v4);
            break;
          case 1934642260:
            sub_100383050(result, a2, v4);
            break;
          default:
            goto LABEL_69;
        }
      }
    }

LABEL_15:
    v4 = sub_100381550(result);
  }

  v6 = *(result + 292);
  if ((v6 & 1) == 0)
  {
    sub_10037B274(result, "Missing IHDR before IDAT");
  }

  if ((v6 & 2) == 0 && *(result + 607) == 3)
  {
    sub_10037B274(result, "Missing PLTE before IDAT");
  }

  if ((v6 & 8) != 0)
  {
    sub_10037B50C(result, "Too many IDATs found");
    v6 = *(result + 292);
  }

  *(result + 292) = v6 | 4;
  v7 = sub_100376ED8(result, 0x49444154u);
  if (v7)
  {
    sub_10038530C(result, a2, v4, v7);
    LODWORD(v4) = 0;
  }

  *(result + 576) = v4;
}

uint64_t sub_10037C320(uint64_t result, unsigned int *a2)
{
  if (result)
  {
    if ((*(result + 296) & 0x40) != 0)
    {

      return sub_10037B2E0(result, "png_read_update_info/png_start_read_image: duplicate call");
    }

    else
    {
      v3 = result;
      sub_1003868F8(result);

      return sub_10037E004(v3, a2);
    }
  }

  return result;
}

void sub_10037C388(uint64_t result, char *a2, char *__dst)
{
  if (!result)
  {
    return;
  }

  if ((*(result + 296) & 0x40) == 0)
  {
    sub_1003868F8(result);
  }

  v34 = 0;
  v35 = 0;
  LODWORD(v34) = *(result + 520);
  v6 = *(result + 610);
  v7 = (v6 * v34 + 7) >> 3;
  if (v6 >= 8)
  {
    v7 = (v6 >> 3) * v34;
  }

  v8 = *(result + 607);
  v35 = v7;
  v36 = v8;
  BYTE2(v36) = *(result + 611);
  BYTE3(v36) = v6;
  if (!*(result + 604) || (*(result + 300) & 2) == 0)
  {
LABEL_8:
    if ((*(result + 292) & 4) == 0)
    {
      sub_10037A948(result, "Invalid attempt to read row data");
    }

    **(result + 544) = -1;
    v9 = v35 + 1;
    sub_1003860F4(result, *(result + 544), v35 + 1);
    v10 = *(result + 544);
    v11 = *v10;
    if (*v10)
    {
      if (v11 > 4)
      {
        sub_10037A948(result, "bad adaptive filter value");
      }

      sub_100385FF8(result, &v34, (v10 + 1), *(result + 536) + 1, v11);
      v10 = *(result + 544);
      v9 = v35 + 1;
    }

    memcpy(*(result + 536), v10, v9);
    if ((*(result + 976) & 4) != 0 && *(result + 980) == 64 && (v36 & 2) != 0)
    {
      v15 = *(result + 544);
      v16 = v34;
      if (BYTE1(v36) == 16)
      {
        if (v36 == 2)
        {
          v20 = 6;
        }

        else
        {
          if (v36 != 6)
          {
            goto LABEL_64;
          }

          v20 = 8;
        }

        if (v34)
        {
          v23 = (v15 + 3);
          do
          {
            v24 = __rev16(*v23);
            v25 = v24 + (bswap32(*(v23 - 1)) >> 16);
            v26 = v24 + (bswap32(v23[1]) >> 16);
            *(v23 - 2) = BYTE1(v25);
            *(v23 - 1) = v25;
            *(v23 + 2) = BYTE1(v26);
            *(v23 + 3) = v26;
            v23 = (v23 + v20);
            --v16;
          }

          while (v16);
        }
      }

      else
      {
        if (BYTE1(v36) != 8)
        {
          goto LABEL_64;
        }

        if (v36 == 2)
        {
          v17 = 3;
        }

        else
        {
          if (v36 != 6)
          {
            goto LABEL_64;
          }

          v17 = 4;
        }

        if (v34)
        {
          v21 = (v15 + 3);
          do
          {
            v22 = *(v21 - 1);
            *(v21 - 2) += v22;
            *v21 += v22;
            v21 += v17;
            --v16;
          }

          while (v16);
        }
      }
    }

LABEL_64:
    if (*(result + 300))
    {
      sub_10037E248(result, &v34, v12, v13, v14);
    }

    v27 = BYTE3(v36);
    if (*(result + 615))
    {
      if (*(result + 615) != BYTE3(v36))
      {
        sub_10037A948(result, "internal sequential row size calculation error");
      }
    }

    else
    {
      *(result + 615) = BYTE3(v36);
      if (v27 > *(result + 614))
      {
        sub_10037A948(result, "sequential row overflow");
      }
    }

    if (*(result + 604) && (v28 = *(result + 300), (v28 & 2) != 0))
    {
      v32 = *(result + 605);
      if (v32 <= 5)
      {
        sub_100385C30(&v34, *(result + 544) + 1, v32, v28);
      }

      if (__dst)
      {
        sub_1003855D8(result, __dst, 1);
      }

      if (!a2)
      {
        goto LABEL_83;
      }

      v29 = result;
      v30 = a2;
      v31 = 0;
    }

    else
    {
      if (a2)
      {
        sub_1003855D8(result, a2, -1);
      }

      if (!__dst)
      {
        goto LABEL_83;
      }

      v29 = result;
      v30 = __dst;
      v31 = -1;
    }

    sub_1003855D8(v29, v30, v31);
LABEL_83:
    sub_1003864AC(result);
    v33 = *(result + 760);
    if (v33)
    {
      v33(result, *(result + 524), *(result + 605));
    }

    return;
  }

  v18 = *(result + 524);
  v19 = *(result + 605);
  if (v19 > 2)
  {
    switch(v19)
    {
      case 3u:
        if ((v18 & 3) == 0 && *(result + 496) > 2u)
        {
          goto LABEL_8;
        }

        break;
      case 4u:
        if ((*(result + 524) & 3) == 2)
        {
          goto LABEL_8;
        }

        if (!__dst || (v18 & 2) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      case 5u:
        if ((v18 & 1) == 0 && *(result + 496) > 1u)
        {
          goto LABEL_8;
        }

        break;
      default:
        goto LABEL_39;
    }
  }

  else if (*(result + 605))
  {
    if (v19 != 1)
    {
      if (v19 == 2)
      {
        if ((*(result + 524) & 7) == 4)
        {
          goto LABEL_8;
        }

        if (!__dst || (v18 & 4) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }

LABEL_39:
      if (v18)
      {
        goto LABEL_8;
      }

      goto LABEL_45;
    }

    if ((v18 & 7) == 0 && *(result + 496) > 4u)
    {
      goto LABEL_8;
    }
  }

  else if ((v18 & 7) == 0)
  {
    goto LABEL_8;
  }

  if (__dst)
  {
LABEL_44:
    sub_1003855D8(result, __dst, 1);
  }

LABEL_45:

  sub_1003864AC(result);
}

void sub_10037C7A0(_BYTE *result, char **a2)
{
  if (!result)
  {
    return;
  }

  if ((result[296] & 0x40) == 0)
  {
    v4 = sub_100388944(result);
    if ((result[296] & 0x40) != 0)
    {
      sub_10037B2E0(result, "png_start_read_image/png_read_update_info: duplicate call");
      if (v4 < 1)
      {
        return;
      }
    }

    else
    {
      sub_1003868F8(result);
      if (v4 < 1)
      {
        return;
      }
    }

    goto LABEL_12;
  }

  if (result[604] && (result[300] & 2) == 0)
  {
    sub_10037AB5C(result, "Interlace handling should be turned on when using png_read_image");
    *(result + 126) = *(result + 125);
  }

  v4 = sub_100388944(result);
  if (v4 >= 1)
  {
LABEL_12:
    v5 = *(result + 125);
    if (v5)
    {
      for (i = 0; i != v4; ++i)
      {
        v7 = v5;
        v8 = a2;
        do
        {
          v9 = *v8++;
          sub_10037C388(result, v9, 0);
          --v7;
        }

        while (v7);
      }
    }
  }
}

void sub_10037C8A4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (sub_100376ED8(result, 0x49444154u))
    {
      if (*(result + 607) != 3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_10038641C(result);
      if (*(result + 607) != 3)
      {
        goto LABEL_8;
      }
    }

    if (*(result + 596) > *(result + 592))
    {
      sub_10037B0C0(result, "Read palette index exceeding num_palette");
    }

LABEL_8:
    if (a2)
    {
      while (1)
      {
        v4 = sub_100381550(result);
        v5 = *(result + 528);
        if (v5 == 1229209940)
        {
          break;
        }

        *(result + 292) |= 0x2000u;
        if (v5 != 1229472850)
        {
          if (v5 == 1229278788)
          {
            sub_100381D8C(result, a2, v4);
            goto LABEL_11;
          }

          v12 = sub_100376ED8(result, v5);
          if (v12)
          {
            sub_10038530C(result, a2, v4, v12);
            if (v5 == 1347179589)
            {
              *(result + 292) |= 2u;
            }

            goto LABEL_11;
          }

LABEL_26:
          if (v5 > 1883455819)
          {
            if (v5 > 1934772033)
            {
              if (v5 <= 1950960964)
              {
                if (v5 == 1934772034)
                {
                  sub_100382594(result, a2, v4);
                  goto LABEL_11;
                }

                if (v5 == 1950701684)
                {
                  sub_1003848F8(result, a2, v4);
                  goto LABEL_11;
                }
              }

              else
              {
                switch(v5)
                {
                  case 1950960965:
                    sub_1003847B0(result, a2, v4);
                    goto LABEL_11;
                  case 1951551059:
                    sub_1003833AC(result, a2, v4);
                    goto LABEL_11;
                  case 2052348020:
                    sub_100384B14(result, a2, v4);
                    goto LABEL_11;
                }
              }
            }

            else if (v5 <= 1933723987)
            {
              if (v5 == 1883455820)
              {
                sub_100384128(result, a2, v4);
                goto LABEL_11;
              }

              if (v5 == 1883789683)
              {
                sub_100383CEC(result, a2, v4);
                goto LABEL_11;
              }
            }

            else
            {
              switch(v5)
              {
                case 1933723988:
                  sub_100381F44(result, a2, v4);
                  goto LABEL_11;
                case 1933787468:
                  sub_1003844D4(result, a2, v4);
                  goto LABEL_11;
                case 1934642260:
                  sub_100383050(result, a2, v4);
                  goto LABEL_11;
              }
            }
          }

          else if (v5 > 1732332864)
          {
            if (v5 <= 1766015823)
            {
              if (v5 == 1732332865)
              {
                sub_100381E10(result, a2, v4);
                goto LABEL_11;
              }

              if (v5 == 1749635924)
              {
                sub_100383B20(result, a2, v4);
                goto LABEL_11;
              }
            }

            else
            {
              switch(v5)
              {
                case 1766015824:
                  sub_1003826FC(result, a2, v4);
                  goto LABEL_11;
                case 1767135348:
                  sub_100384FA8(result, a2, v4);
                  goto LABEL_11;
                case 1866876531:
                  sub_100383EB4(result, a2, v4);
                  goto LABEL_11;
              }
            }
          }

          else if (v5 <= 1649100611)
          {
            if (v5 == 1229209940)
            {
              if (v4 && (*(result + 296) & 8) == 0 || (*(result + 293) & 0x20) != 0)
              {
                sub_10037B0C0(result, "..Too many IDATs found");
              }

              sub_100381760(result, v4);
              goto LABEL_11;
            }

            if (v5 == 1347179589)
            {
              sub_100381A98(result, a2, v4);
              goto LABEL_11;
            }
          }

          else
          {
            switch(v5)
            {
              case 1649100612:
                sub_1003836D0(result, a2, v4);
                goto LABEL_11;
              case 1665684045:
                sub_1003821C4(result, a2, v4);
                goto LABEL_11;
              case 1700284774:
                sub_100383914(result, a2, v4);
                goto LABEL_11;
            }
          }

          v8 = result;
          v9 = a2;
          v10 = v4;
          v11 = 0;
LABEL_19:
          sub_10038530C(v8, v9, v10, v11);
          goto LABEL_11;
        }

        sub_1003818F0(result, a2, v4);
LABEL_11:
        if ((*(result + 292) & 0x10) != 0)
        {
          return;
        }
      }

      v6 = sub_100376ED8(result, *(result + 528));
      if (!v6)
      {
        goto LABEL_26;
      }

      v7 = v6;
      if (v4 && (*(result + 296) & 8) == 0 || (*(result + 293) & 0x20) != 0)
      {
        sub_10037B0C0(result, ".Too many IDATs found");
      }

      v8 = result;
      v9 = a2;
      v10 = v4;
      v11 = v7;
      goto LABEL_19;
    }

    do
    {
      v13 = sub_100381550(result);
      v14 = *(result + 528);
      if (v14 == 1229209940)
      {
        goto LABEL_79;
      }

      *(result + 292) |= 0x2000u;
      if (v14 == 1229278788)
      {
        sub_100381D8C(result, 0, v13);
        continue;
      }

      if (v14 != 1229472850)
      {
LABEL_79:
        sub_100381760(result, v13);
      }

      else
      {
        sub_1003818F0(result, 0, v13);
      }
    }

    while ((*(result + 292) & 0x10) == 0);
  }
}

uint64_t *sub_10037CE44(uint64_t *result, void **a2, void **a3)
{
  if (result)
  {
    v3 = result;
    v4 = *result;
    if (*result)
    {
      sub_10037697C(*result, a3);
      sub_10037697C(v4, a2);
      *v3 = 0;
      sub_100379148(v4);
      sub_10037BAB4(v4, *(v4 + 1008));
      *(v4 + 1008) = 0;
      sub_10037BAB4(v4, *(v4 + 1128));
      *(v4 + 1128) = 0;
      sub_10037BAB4(v4, *(v4 + 1104));
      *(v4 + 1104) = 0;
      sub_10037BAB4(v4, *(v4 + 880));
      *(v4 + 880) = 0;
      sub_10037BAB4(v4, *(v4 + 888));
      *(v4 + 888) = 0;
      v6 = *(v4 + 932);
      if ((v6 & 0x1000) != 0)
      {
        sub_1003764B4(v4, *(v4 + 584));
        *(v4 + 584) = 0;
        v6 = *(v4 + 932);
      }

      v7 = v6 & 0xFFFFEFFF;
      *(v4 + 932) = v6 & 0xFFFFEFFF;
      if ((v6 & 0x2000) != 0)
      {
        sub_10037BAB4(v4, *(v4 + 736));
        *(v4 + 736) = 0;
        v7 = *(v4 + 932);
      }

      *(v4 + 932) = v7 & 0xFFFFDFFF;
      inflateEnd((v4 + 312));
      sub_10037BAB4(v4, *(v4 + 808));
      *(v4 + 808) = 0;
      sub_10037BAB4(v4, *(v4 + 1072));
      *(v4 + 1072) = 0;
      sub_10037BAB4(v4, *(v4 + 960));
      *(v4 + 960) = 0;

      return sub_10037BA18(v4);
    }
  }

  return result;
}

uint64_t sub_10037CF90(uint64_t a1)
{
  v2 = *(a1 + 248);
  if (!v2)
  {
    sub_10037A948(a1, "Call to NULL read function");
  }

  return v2();
}

size_t sub_10037CFC0(size_t result, void *__ptr, size_t a3)
{
  if (result)
  {
    v3 = result;
    result = fread(__ptr, 1uLL, a3, *(result + 256));
    if (result != a3)
    {
      sub_10037A948(v3, "Read Error");
    }
  }

  return result;
}

void *sub_10037D010(void *result, uint64_t a2, size_t (*a3)(size_t result, void *__ptr, size_t a3))
{
  if (result)
  {
    v3 = result;
    if (a3)
    {
      v4 = a3;
    }

    else
    {
      v4 = sub_10037CFC0;
    }

    result[31] = v4;
    result[32] = a2;
    if (result[30])
    {
      result[30] = 0;
      result = sub_10037AB5C(result, "Can't set both read_data_fn and write_data_fn in the same structure");
    }

    v3[81] = 0;
  }

  return result;
}

uint64_t sub_10037D070(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 296);
    if ((v1 & 0x40) != 0)
    {
      return sub_10037B2E0(result, "invalid after png_start_read_image or png_read_update_info");
    }

    else
    {
      *(result + 296) = v1 | 0x4000;
      *(result + 300) |= 0x400u;
    }
  }

  return result;
}

uint64_t sub_10037D0A0(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 296);
    if ((v1 & 0x40) != 0)
    {
      return sub_10037B2E0(result, "invalid after png_start_read_image or png_read_update_info");
    }

    else
    {
      *(result + 296) = v1 | 0x4000;
      *(result + 300) |= 0x40000u;
    }
  }

  return result;
}

uint64_t sub_10037D0D0(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 296);
    if ((v1 & 0x40) != 0)
    {
      return sub_10037B2E0(result, "invalid after png_start_read_image or png_read_update_info");
    }

    else
    {
      *(result + 296) = v1 | 0x4000;
      *(result + 300) |= 0x2001000u;
    }
  }

  return result;
}

uint64_t sub_10037D108(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 296);
    if ((v1 & 0x40) != 0)
    {
      return sub_10037B2E0(result, "invalid after png_start_read_image or png_read_update_info");
    }

    else
    {
      *(result + 296) = v1 | 0x4000;
      *(result + 300) |= 0x1000u;
    }
  }

  return result;
}

uint64_t sub_10037D138(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 296);
    if ((v1 & 0x40) != 0)
    {
      return sub_10037B2E0(result, "invalid after png_start_read_image or png_read_update_info");
    }

    else
    {
      *(result + 296) = v1 | 0x4000;
      *(result + 300) |= 0x5000u;
    }
  }

  return result;
}

uint64_t sub_10037D16C(uint64_t result, int a2, int a3, int a4)
{
  if (result)
  {
    v4 = *(result + 296);
    if ((v4 & 0x40) != 0)
    {
      v5 = "invalid after png_start_read_image or png_read_update_info";

      return sub_10037B2E0(result, v5);
    }

    if ((*(result + 292) & 1) == 0)
    {
      v5 = "invalid before the PNG header has been read";

      return sub_10037B2E0(result, v5);
    }

    *(result + 296) = v4 | 0x4000;
    if ((a2 - 1) >= 3)
    {
      sub_10037A948(result, "invalid error action to rgb_to_gray");
    }

    v6 = *(result + 300) | (6291456 - ((a2 - 1) << 21));
    *(result + 300) = v6;
    if (*(result + 607) == 3)
    {
      *(result + 300) = v6 | 0x1000;
    }

    if ((a4 | a3) < 0 || a4 + a3 > 100000)
    {
      if (((a4 | a3) & 0x80000000) == 0)
      {
        v7 = result;
        sub_10037B2B8(result, "ignoring out of range rgb_to_gray coefficients");
        result = v7;
      }

      if (!*(result + 970) && !*(result + 972))
      {
        *(result + 970) = 1535777592;
      }
    }

    else
    {
      *(result + 970) = (175921861 * ((a3 & 0x1FFFFu) << 10)) >> 39;
      *(result + 972) = (175921861 * ((a4 & 0x1FFFFu) << 10)) >> 39;
      *(result + 969) = 1;
    }
  }

  return result;
}

uint64_t sub_10037D2BC(uint64_t a1, int a2, double a3, double a4)
{
  v7 = sub_100378F1C(a1, "rgb to gray red coefficient", a3);
  v8 = sub_100378F1C(a1, "rgb to gray green coefficient", a4);

  return sub_10037D16C(a1, a2, v7, v8);
}

void sub_10037D338(uint64_t a1)
{
  v2 = *(a1 + 1168);
  v3 = *(a1 + 668);
  if (!v2)
  {
    if (v3)
    {
      *(a1 + 1168) = sub_100378F6C(*(a1 + 668));
    }

    else
    {
      *(a1 + 1168) = 100000;
      *(a1 + 668) = 100000;
    }

    goto LABEL_13;
  }

  if (!v3)
  {
    *(a1 + 668) = sub_100378F6C(*(a1 + 1168));
LABEL_13:
    *(a1 + 1242) |= 1u;
    goto LABEL_14;
  }

  v118 = 0;
  if (sub_100378A4C(&v118, v2, v3, 100000))
  {
    v4 = sub_100378FB0(v118);
    *(a1 + 1242) |= 1u;
    if (!v4)
    {
LABEL_14:
      v5 = *(a1 + 300) & 0xFFFFDFFF;
      *(a1 + 300) = v5;
      if ((v5 & 0x40080) != 0x40000)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    *(a1 + 1242) |= 1u;
  }

  v5 = *(a1 + 300) | 0x2000;
  *(a1 + 300) = v5;
  if ((v5 & 0x40080) == 0x40000)
  {
LABEL_15:
    *(a1 + 300) = v5 & 0xFD7FFE7F;
    *(a1 + 296) &= ~0x2000u;
    *(a1 + 600) = 0;
  }

LABEL_16:
  v6 = sub_100378FB0(*(a1 + 668));
  v9 = *(a1 + 300);
  if (v6)
  {
    if ((v9 & 0x600000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v9 &= ~0x800000u;
  *(a1 + 300) = v9;
  *(a1 + 296) &= ~0x2000u;
  if ((v9 & 0x600000) != 0)
  {
LABEL_18:
    sub_10037884C(a1);
    v9 = *(a1 + 300);
  }

LABEL_19:
  if ((v9 & 0x100) != 0)
  {
    if ((*(a1 + 607) & 2) == 0)
    {
      *(a1 + 292) |= 0x800u;
    }
  }

  else if ((~v9 & 0x4080) == 0)
  {
    v10 = *(a1 + 630);
    if (v10 == *(a1 + 632) && v10 == *(a1 + 634))
    {
      *(a1 + 292) |= 0x800u;
      *(a1 + 636) = v10;
    }
  }

  v11 = *(a1 + 607);
  if (v11 != 3)
  {
    if ((v11 & 4) != 0)
    {
      v19 = v9;
    }

    else
    {
      v18 = *(a1 + 600);
      v19 = v9 & 0xFF7FFFFF;
      *(a1 + 300) = v9 & 0xFF7FFFFF;
      *(a1 + 296) &= ~0x2000u;
      if (!v18)
      {
        v19 = v9 & 0xFF7FFE7F;
        *(a1 + 300) = v9 & 0xFF7FFE7F;
      }
    }

    if ((v11 & 2) != 0 || (v19 & 0x1100) != 0x1100)
    {
      v9 = v19;
      if ((v19 & 0x380) != 0x280)
      {
        goto LABEL_66;
      }

      goto LABEL_64;
    }

    v20 = *(a1 + 636);
    v21 = *(a1 + 752);
    v22 = *(a1 + 608);
    switch(v22)
    {
      case 4:
        v27 = 17 * v20;
        v21 *= 17;
        *(a1 + 634) = v27;
        *(a1 + 632) = v27;
        *(a1 + 630) = v27;
        if ((v19 & 0x2000000) == 0)
        {
          goto LABEL_59;
        }

        break;
      case 2:
        v20 *= 85;
        v21 *= 85;
        break;
      case 1:
        v23 = 255 * v20;
        v21 *= 255;
        *(a1 + 634) = v23;
        *(a1 + 632) = v23;
        *(a1 + 630) = v23;
        if ((v19 & 0x2000000) != 0)
        {
          break;
        }

LABEL_59:
        *(a1 + 750) = v21;
        *(a1 + 748) = v21;
        v9 = v19;
        *(a1 + 746) = v21;
        if ((v19 & 0x380) != 0x280)
        {
          goto LABEL_66;
        }

        goto LABEL_64;
      default:
        *(a1 + 634) = v20;
        *(a1 + 632) = v20;
        *(a1 + 630) = v20;
        if ((v19 & 0x2000000) == 0)
        {
          goto LABEL_59;
        }

        break;
    }

    v9 = v19;
    goto LABEL_63;
  }

  v12 = *(a1 + 600);
  if (!*(a1 + 600))
  {
    *(a1 + 296) &= ~0x2000u;
LABEL_52:
    v9 &= 0xFF7FFE7F;
    *(a1 + 300) = v9;
    if ((~v9 & 0x1100) == 0)
    {
      goto LABEL_53;
    }

LABEL_63:
    if ((v9 & 0x380) != 0x280)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  v13 = 0;
  v14 = *(a1 + 736);
  v15 = *(a1 + 600);
  do
  {
    v17 = *v14++;
    v16 = v17;
    if (v17 != 255)
    {
      if (v16)
      {
        goto LABEL_49;
      }

      v13 = 1;
    }

    --v15;
  }

  while (v15);
  v9 &= ~0x800000u;
  *(a1 + 300) = v9;
  *(a1 + 296) &= ~0x2000u;
  if (!v13)
  {
    goto LABEL_52;
  }

LABEL_49:
  if ((~v9 & 0x1100) != 0)
  {
    goto LABEL_63;
  }

LABEL_53:
  v24 = (*(a1 + 584) + 3 * *(a1 + 628));
  *(a1 + 630) = *v24;
  *(a1 + 632) = v24[1];
  *(a1 + 634) = v24[2];
  if (!v12 || (v9 & 0x2080000) != 0x80000)
  {
    goto LABEL_63;
  }

  v25 = *(a1 + 736);
  if (v12 < 8)
  {
    v26 = 0;
    goto LABEL_188;
  }

  if (v12 >= 0x20)
  {
    v26 = v12 & 0xFFE0;
    v110 = v25 + 1;
    v111 = v26;
    do
    {
      v112 = vmvnq_s8(*v110);
      v110[-1] = vmvnq_s8(v110[-1]);
      *v110 = v112;
      v110 += 2;
      v111 -= 32;
    }

    while (v111);
    if (v26 == v12)
    {
      goto LABEL_190;
    }

    if ((v12 & 0x18) == 0)
    {
LABEL_188:
      v116 = v12 - v26;
      v117 = &v25->i8[v26];
      do
      {
        *v117 = ~*v117;
        ++v117;
        --v116;
      }

      while (v116);
      goto LABEL_190;
    }
  }

  else
  {
    v26 = 0;
  }

  v113 = v26;
  v26 = v12 & 0xFFF8;
  v114 = &v25->i8[v113];
  v115 = v113 - v26;
  do
  {
    *v114 = vmvn_s8(*v114);
    ++v114;
    v115 += 8;
  }

  while (v115);
  if (v26 != v12)
  {
    goto LABEL_188;
  }

LABEL_190:
  v9 = *(a1 + 300);
  if ((v9 & 0x380) != 0x280)
  {
    goto LABEL_66;
  }

LABEL_64:
  if (*(a1 + 608) != 16)
  {
    *(a1 + 630) = vaddhn_s32(vmull_u16(*(a1 + 630), 0xFF00FF00FF00FFLL), vdupq_n_s32(0x807Fu));
  }

LABEL_66:
  if ((v9 & 0x4000400) != 0 && (v9 & 0x180) == 0x80 && *(a1 + 608) == 16)
  {
    *(a1 + 630) = vmul_s16(*(a1 + 630), 0x101010101010101);
  }

  *(a1 + 646) = *(a1 + 636);
  *(a1 + 638) = *(a1 + 628);
  if ((v9 & 0x2000) == 0)
  {
    if ((v9 & 0x600000) != 0)
    {
      if (sub_100378FB0(*(a1 + 1168)) || sub_100378FB0(*(a1 + 668)))
      {
        goto LABEL_90;
      }

      v9 = *(a1 + 300);
    }

    if ((v9 & 0x80) == 0 || !sub_100378FB0(*(a1 + 1168)) && !sub_100378FB0(*(a1 + 668)) && (*(a1 + 620) != 3 || !sub_100378FB0(*(a1 + 624))))
    {
      v28 = *(a1 + 300);
      if ((v28 & 0x800000) == 0)
      {
LABEL_79:
        if ((v28 & 0x80) != 0 && *(a1 + 607) == 3)
        {
          v29 = *(a1 + 600);
          if (*(a1 + 600))
          {
            v30 = 0;
            v31 = *(a1 + 630);
            v32 = *(a1 + 632);
            v33 = *(a1 + 634);
            v34 = (*(a1 + 584) + 2);
            do
            {
              v35 = *(a1 + 736);
              v36 = *(v35 + v30);
              if (v36 != 255)
              {
                if (*(v35 + v30))
                {
                  v37 = *(v34 - 2) * v36 + v31 * (v36 ^ 0xFF) + 128;
                  *(v34 - 2) = (v37 + ((v37 & 0xFF00) >> 8)) >> 8;
                  *(v34 - 1) = (*(v35 + v30) * *(v34 - 1) + v32 * (*(v35 + v30) ^ 0xFF) + 128 + (((*(v35 + v30) * *(v34 - 1) + v32 * (*(v35 + v30) ^ 0xFF) + 128) & 0xFF00) >> 8)) >> 8;
                  v38 = *(v35 + v30) * *v34 + v33 * (*(v35 + v30) ^ 0xFF) + 128;
                  *v34 = (v38 + ((v38 & 0xFF00) >> 8)) >> 8;
                }

                else
                {
                  *(v34 - 2) = v31;
                  *(v34 - 1) = v32;
                  *v34 = v33;
                }
              }

              ++v30;
              v34 += 3;
            }

            while (v29 != v30);
            v28 = *(a1 + 300);
          }

          v28 &= ~0x80u;
          *(a1 + 300) = v28;
          if ((v28 & 0x1008) != 8)
          {
            return;
          }

          goto LABEL_128;
        }

LABEL_127:
        if ((v28 & 0x1008) != 8)
        {
          return;
        }

        goto LABEL_128;
      }

      if (!sub_100378FB0(*(a1 + 668)))
      {
        v28 = *(a1 + 300);
        goto LABEL_79;
      }
    }
  }

LABEL_90:
  sub_1003792BC(a1, *(a1 + 608), v7, v8);
  v28 = *(a1 + 300);
  if ((v28 & 0x80) != 0)
  {
    if ((v28 & 0x600000) != 0)
    {
      sub_10037AB5C(a1, "libpng does not support gamma+background+rgb_to_gray");
    }

    if (*(a1 + 607) == 3)
    {
      v42 = 100000;
      v43 = *(a1 + 584);
      v44 = *(a1 + 592);
      v45 = *(a1 + 620);
      if (v45 == 1)
      {
        v46 = *(a1 + 668);
        v98 = sub_100378FB0(100000);
        v49 = *(a1 + 630);
        if (v98)
        {
          goto LABEL_165;
        }
      }

      else
      {
        if (v45 == 3)
        {
          v46 = sub_100378F6C(*(a1 + 624));
          v42 = sub_100378FC8(*(a1 + 624), *(a1 + 668));
        }

        else
        {
          v46 = 100000;
          if (v45 == 2)
          {
            v47 = *(a1 + 672);
            v48 = *(a1 + 630);
            LOBYTE(v49) = *(v47 + v48);
            v50 = *(a1 + 632);
            v51 = *(v47 + v50);
            v52 = *(a1 + 634);
            v53 = *(v47 + v52);
            v54 = *(a1 + 696);
            LOBYTE(v55) = *(v54 + v48);
            v56 = *(v54 + v50);
            v57 = *(v54 + v52);
            if (!*(a1 + 592))
            {
              goto LABEL_179;
            }

            goto LABEL_171;
          }
        }

        v96 = sub_100378FB0(v42);
        v49 = *(a1 + 630);
        if (v96)
        {
LABEL_165:
          LOBYTE(v49) = sub_100379024(v49, v42);
          v51 = sub_100379024(*(a1 + 632), v42);
          v53 = sub_100379024(*(a1 + 634), v42);
          v97 = sub_100378FB0(v46);
          v55 = *(a1 + 630);
          if (v97)
          {
            goto LABEL_166;
          }

          goto LABEL_170;
        }
      }

      v51 = *(a1 + 632);
      v53 = *(a1 + 634);
      v99 = sub_100378FB0(v46);
      v55 = *(a1 + 630);
      if (v99)
      {
LABEL_166:
        LOBYTE(v55) = sub_100379024(v55, v46);
        v56 = sub_100379024(*(a1 + 632), v46);
        v57 = sub_100379024(*(a1 + 634), v46);
        if (!v44)
        {
          goto LABEL_179;
        }

        goto LABEL_171;
      }

LABEL_170:
      v56 = *(a1 + 632);
      v57 = *(a1 + 634);
      if (!v44)
      {
        goto LABEL_179;
      }

LABEL_171:
      v100 = 0;
      v101 = (v43 + 2);
      do
      {
        while (1)
        {
          while (1)
          {
            if (v100 < *(a1 + 600))
            {
              v103 = *(a1 + 736);
              v104 = *(v103 + v100);
              if (v104 != 255)
              {
                break;
              }
            }

            v102 = *(a1 + 672);
            *(v101 - 2) = *(v102 + *(v101 - 2));
            *(v101 - 1) = *(v102 + *(v101 - 1));
            *v101 = *(v102 + *v101);
            v101 += 3;
            if (v44 == ++v100)
            {
              goto LABEL_179;
            }
          }

          if (*(v103 + v100))
          {
            break;
          }

          *(v101 - 2) = v49;
          *(v101 - 1) = v51;
          *v101 = v53;
          v101 += 3;
          if (v44 == ++v100)
          {
            goto LABEL_179;
          }
        }

        v105 = *(a1 + 696);
        v106 = *(v105 + *(v101 - 2)) * v104 + (v104 ^ 0xFF) * v55 + 128;
        v107 = *(a1 + 688);
        *(v101 - 2) = *(v107 + ((v106 + HIBYTE(v106)) >> 8));
        v108 = *(v103 + v100) * *(v105 + *(v101 - 1)) + (*(v103 + v100) ^ 0xFF) * v56 + 128;
        *(v101 - 1) = *(v107 + ((v108 + HIBYTE(v108)) >> 8));
        v109 = *(v103 + v100) * *(v105 + *v101) + (*(v103 + v100) ^ 0xFF) * v57 + 128;
        *v101 = *(v107 + ((v109 + HIBYTE(v109)) >> 8));
        v101 += 3;
        ++v100;
      }

      while (v44 != v100);
LABEL_179:
      v28 = *(a1 + 300) & 0xFFFFDF7F;
      *(a1 + 300) = v28;
      if ((v28 & 0x1008) != 8)
      {
        return;
      }

      goto LABEL_128;
    }

    v58 = *(a1 + 620);
    switch(v58)
    {
      case 3:
        v60 = sub_100378F6C(*(a1 + 624));
        v61 = *(a1 + 624);
        break;
      case 2:
        v60 = sub_100378F6C(*(a1 + 1168));
        v61 = *(a1 + 1168);
        break;
      case 1:
        v59 = 100000;
        v60 = *(a1 + 668);
        goto LABEL_114;
      default:
        sub_10037A948(a1, "invalid background gamma type");
    }

    v59 = sub_100378FC8(v61, *(a1 + 668));
LABEL_114:
    v62 = sub_100378FB0(v60);
    v63 = sub_100378FB0(v59);
    if (v62)
    {
      *(a1 + 646) = sub_100379088(a1, *(a1 + 636), v60);
    }

    if (v63)
    {
      *(a1 + 636) = sub_100379088(a1, *(a1 + 636), v59);
    }

    v64 = *(a1 + 630);
    if (v64 == *(a1 + 632) && v64 == *(a1 + 634) && v64 == *(a1 + 636))
    {
      v65 = *(a1 + 646);
      *(a1 + 644) = v65;
      *(a1 + 642) = v65;
      *(a1 + 640) = v65;
      *(a1 + 634) = v64;
      *(a1 + 632) = v64;
      *(a1 + 630) = v64;
    }

    else
    {
      if (v62)
      {
        *(a1 + 640) = sub_100379088(a1, v64, v60);
        *(a1 + 642) = sub_100379088(a1, *(a1 + 632), v60);
        *(a1 + 644) = sub_100379088(a1, *(a1 + 634), v60);
      }

      if (v63)
      {
        *(a1 + 630) = sub_100379088(a1, *(a1 + 630), v59);
        *(a1 + 632) = sub_100379088(a1, *(a1 + 632), v59);
        *(a1 + 634) = sub_100379088(a1, *(a1 + 634), v59);
      }
    }

    *(a1 + 620) = 1;
    v28 = *(a1 + 300);
    goto LABEL_127;
  }

  if (*(a1 + 607) != 3 || (v28 & 0x1000) != 0 && (v28 & 0x600000) != 0)
  {
    goto LABEL_127;
  }

  v39 = *(a1 + 592);
  if (*(a1 + 592))
  {
    v40 = *(a1 + 672);
    v41 = (*(a1 + 584) + 2);
    do
    {
      *(v41 - 2) = *(v40 + *(v41 - 2));
      *(v41 - 1) = *(v40 + *(v41 - 1));
      *v41 = *(v40 + *v41);
      v41 += 3;
      --v39;
    }

    while (v39);
  }

  v28 &= 0xFFFFDF7F;
  *(a1 + 300) = v28;
  if ((v28 & 0x1008) != 8)
  {
    return;
  }

LABEL_128:
  if (*(a1 + 607) != 3)
  {
    return;
  }

  v66 = *(a1 + 592);
  v67 = *(a1 + 720);
  *(a1 + 300) = v28 & 0xFFFFEFF7;
  if ((v67 - 1) <= 6 && v66)
  {
    v68 = 8 - v67;
    v69 = *(a1 + 584);
    if (v66 >= 2)
    {
      v70 = v66 & 0xFFFE;
      v71 = v70;
      v72 = *(a1 + 584);
      do
      {
        v73 = v72[3] >> v68;
        *v72 >>= v68;
        v72[3] = v73;
        v72 += 6;
        v71 -= 2;
      }

      while (v71);
      if (v70 == v66)
      {
        goto LABEL_140;
      }
    }

    else
    {
      v70 = 0;
    }

    v74 = (v69 + 3 * v70);
    v75 = v66 - v70;
    do
    {
      *v74 = *v74 >> v68;
      v74 += 3;
      --v75;
    }

    while (v75);
  }

LABEL_140:
  v76 = *(a1 + 721);
  if ((v76 - 1) <= 6 && v66 != 0)
  {
    v78 = 8 - v76;
    v79 = *(a1 + 584);
    if (v66 >= 2)
    {
      v80 = v66 & 0xFFFE;
      v81 = (v79 + 4);
      v82 = v80;
      do
      {
        v83 = *v81 >> v78;
        *(v81 - 3) = *(v81 - 3) >> v78;
        *v81 = v83;
        v81 += 6;
        v82 -= 2;
      }

      while (v82);
      if (v80 == v66)
      {
        goto LABEL_151;
      }
    }

    else
    {
      v80 = 0;
    }

    v84 = (3 * v80 + v79 + 1);
    v85 = v66 - v80;
    do
    {
      *v84 = *v84 >> v78;
      v84 += 3;
      --v85;
    }

    while (v85);
  }

LABEL_151:
  v86 = *(a1 + 722);
  if ((v86 - 1) <= 6 && v66 != 0)
  {
    v88 = 8 - v86;
    v89 = *(a1 + 584);
    if (v66 >= 2)
    {
      v90 = v66 & 0xFFFE;
      v91 = (v89 + 5);
      v92 = v90;
      do
      {
        v93 = *v91 >> v88;
        *(v91 - 3) = *(v91 - 3) >> v88;
        *v91 = v93;
        v91 += 6;
        v92 -= 2;
      }

      while (v92);
      if (v90 == v66)
      {
        return;
      }
    }

    else
    {
      v90 = 0;
    }

    v94 = (3 * v90 + v89 + 2);
    v95 = v66 - v90;
    do
    {
      *v94 = *v94 >> v88;
      v94 += 3;
      --v95;
    }

    while (v95);
  }
}

uint64_t sub_10037E004(uint64_t result, unsigned int *a2)
{
  v2 = *(result + 300);
  if ((v2 & 0x1000) == 0)
  {
    goto LABEL_7;
  }

  v3 = *(a2 + 37);
  if (v3 == 3)
  {
    if (*(result + 600))
    {
      v4 = 6;
    }

    else
    {
      v4 = 2;
    }

    *(a2 + 37) = v4;
    *(a2 + 36) = 8;
    *(a2 + 17) = 0;
    if (!*(result + 584))
    {
      sub_10037A948(result, "Palette is NULL in indexed image");
    }

LABEL_7:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ((v2 & 0x2000000) != 0 && *(result + 600))
  {
    *(a2 + 37) = v3 | 4;
  }

  if (*(a2 + 36) <= 7u)
  {
    *(a2 + 36) = 8;
  }

  *(a2 + 17) = 0;
  if ((v2 & 0x80) != 0)
  {
LABEL_8:
    *(a2 + 105) = *(result + 636);
    *(a2 + 202) = *(result + 628);
  }

LABEL_9:
  a2[13] = *(result + 1168);
  v5 = *(a2 + 36);
  if ((v2 & 0x4000400) == 0 || v5 != 16)
  {
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

LABEL_38:
    *(a2 + 37) |= 2u;
    if ((v2 & 0x600000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v5 = 8;
  *(a2 + 36) = 8;
  if ((v2 & 0x4000) != 0)
  {
    goto LABEL_38;
  }

LABEL_14:
  if ((v2 & 0x600000) != 0)
  {
LABEL_15:
    *(a2 + 37) &= ~2u;
  }

LABEL_16:
  if ((v2 & 0x40) != 0 && (*(a2 + 37) | 4) == 6 && *(result + 880) && v5 == 8)
  {
    *(a2 + 37) = 3;
    if ((v2 & 0x200) == 0)
    {
      v5 = 8;
      if ((v2 & 4) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }
  }

  else if ((v2 & 0x200) == 0 || v5 != 8)
  {
LABEL_27:
    if ((v2 & 4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (*(a2 + 37) == 3)
  {
    v5 = 8;
    goto LABEL_27;
  }

  v5 = 16;
  *(a2 + 36) = 16;
  if ((v2 & 4) == 0)
  {
    goto LABEL_30;
  }

LABEL_28:
  if (v5 <= 7)
  {
    LOBYTE(v5) = 8;
    *(a2 + 36) = 8;
  }

LABEL_30:
  v7 = *(a2 + 37);
  if (v7 == 3 || (v7 & 2) == 0)
  {
    v8 = 1;
    *(a2 + 41) = 1;
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v8 = 3;
  *(a2 + 41) = 3;
  if ((v2 & 0x40000) != 0)
  {
LABEL_33:
    v7 &= ~4u;
    *(a2 + 37) = v7;
    *(a2 + 17) = 0;
  }

LABEL_34:
  if ((v7 & 4) != 0)
  {
    *(a2 + 41) = ++v8;
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_44;
    }
  }

  else if ((v2 & 0x8000) == 0)
  {
    goto LABEL_44;
  }

  if ((v7 | 2) == 2)
  {
    *(a2 + 41) = ++v8;
    if ((v2 & 0x1000000) != 0)
    {
      *(a2 + 37) = v7 | 4;
    }
  }

LABEL_44:
  if ((v2 & 0x100000) != 0)
  {
    v9 = *(result + 288);
    if (v9)
    {
      *(a2 + 36) = v9;
      LOBYTE(v5) = v9;
    }

    v10 = *(result + 289);
    if (v10)
    {
      *(a2 + 41) = v10;
      v8 = v10;
    }
  }

  v11 = v5 * v8;
  *(a2 + 42) = v5 * v8;
  v12 = (v5 * v8) >= 8u;
  v13 = (*a2 * (v5 * v8) + 7) >> 3;
  v14 = *a2 * (v11 >> 3);
  if (!v12)
  {
    v14 = v13;
  }

  *(a2 + 2) = v14;
  *(result + 568) = v14;
  return result;
}

uint64_t sub_10037E248(uint64_t result, unsigned int *a2, __n128 a3, double a4, __n128 a5)
{
  v5 = result;
  v6 = *(result + 544);
  if (!v6)
  {
    sub_10037A948(result, "NULL row buffer");
  }

  if ((*(result + 296) & 0x4040) == 0x4000)
  {
    sub_10037A948(result, "Uninitialized row");
  }

  v8 = *(result + 300);
  if ((v8 & 0x1000) != 0)
  {
    if (*(a2 + 16) == 3)
    {
      v9 = v6 + 1;
      v10 = *(result + 584);
      v11 = *(result + 736);
      v12 = *(result + 600);
      v13 = *a2;
      v14 = *(a2 + 17);
      if (v14 <= 7)
      {
        if (v14 == 4)
        {
          if (v13)
          {
            v35 = 4 * (*a2 & 1);
            v36 = (v9 + ((v13 - 1) >> 1));
            v37 = (v6 + v13);
            v38 = *a2;
            do
            {
              *v37-- = (*v36 >> v35) & 0xF;
              v55 = v35 == 4;
              result = v35 == 4;
              v35 += 4;
              if (v55)
              {
                v35 = 0;
              }

              v36 -= result;
              --v38;
            }

            while (v38);
            goto LABEL_41;
          }
        }

        else if (v14 == 2)
        {
          if (v13)
          {
            v31 = ~(2 * v13 + 6) & 6;
            v32 = (v9 + ((v13 - 1) >> 2));
            v33 = (v6 + v13);
            v34 = *a2;
            do
            {
              *v33-- = (*v32 >> v31) & 3;
              v55 = v31 == 6;
              result = v31 == 6;
              v31 += 2;
              if (v55)
              {
                v31 = 0;
              }

              v32 -= result;
              --v34;
            }

            while (v34);
            goto LABEL_41;
          }
        }

        else
        {
          v15 = *a2;
          if (v14 != 1)
          {
            goto LABEL_42;
          }

          if (v13)
          {
            v16 = -v13 & 7;
            v17 = (v9 + ((v13 - 1) >> 3));
            v18 = (v6 + v13);
            v19 = *a2;
            do
            {
              *v18-- = (*v17 >> v16) & 1;
              result = v16 == 7;
              if (v16 == 7)
              {
                v16 = 0;
              }

              else
              {
                ++v16;
              }

              v17 -= result;
              --v19;
            }

            while (v19);
LABEL_41:
            v15 = v13;
LABEL_42:
            *(a2 + 17) = 8;
            *(a2 + 19) = 8;
            *(a2 + 1) = v15;
            if (!v12)
            {
              goto LABEL_43;
            }

            goto LABEL_23;
          }
        }

        *(a2 + 17) = 8;
        *(a2 + 19) = 8;
        *(a2 + 1) = 0;
        if (!v12)
        {
          goto LABEL_43;
        }

        goto LABEL_23;
      }

      if (v14 == 8)
      {
        if (!*(result + 600))
        {
LABEL_43:
          v28 = (3 * v13);
          if (v13)
          {
            v39 = (v6 + v28);
            v40 = (v6 + v13);
            do
            {
              *v39 = *(v10 + 3 * *v40 + 2);
              *(v39 - 1) = *(v10 + 3 * *v40 + 1);
              v41 = *v40--;
              *(v39 - 2) = *(v10 + 3 * v41);
              v39 -= 3;
              LODWORD(v13) = v13 - 1;
            }

            while (v13);
          }

          *(a2 + 17) = 8;
          *(a2 + 19) = 24;
          v29 = 3;
          v30 = 2;
LABEL_47:
          *(a2 + 1) = v28;
          *(a2 + 16) = v30;
          *(a2 + 18) = v29;
          goto LABEL_48;
        }

LABEL_23:
        if (v13)
        {
          v23 = (v6 + 4 * v13);
          v24 = (v6 + v13);
          v25 = v13;
          do
          {
            if (v12 > *v24)
            {
              v26 = *(v11 + *v24);
            }

            else
            {
              v26 = -1;
            }

            *v23 = v26;
            *(v23 - 1) = *(v10 + 3 * *v24 + 2);
            *(v23 - 2) = *(v10 + 3 * *v24 + 1);
            v27 = *v24--;
            *(v23 - 3) = *(v10 + 3 * v27);
            v23 -= 4;
            --v25;
          }

          while (v25);
        }

        *(a2 + 17) = 8;
        *(a2 + 19) = 32;
        v28 = (4 * v13);
        v29 = 4;
        v30 = 6;
        goto LABEL_47;
      }
    }

    else
    {
      if ((v8 & 0x2000000) != 0 && *(result + 600))
      {
        v20 = v6 + 1;
        v21 = (result + 744);
        v22 = a2;
      }

      else
      {
        v20 = v6 + 1;
        v22 = a2;
        v21 = 0;
      }

      result = sub_100380E98(v22, v20, v21);
    }
  }

LABEL_48:
  v42 = *(v5 + 300);
  if ((v42 & 0x40080) == 0x40000 && (*(a2 + 16) | 2) == 6)
  {
    result = sub_100388C5C(a2, (*(v5 + 544) + 1), 0);
    v42 = *(v5 + 300);
  }

  if ((v42 & 0x600000) != 0)
  {
    v43 = *(a2 + 16);
    if ((v43 & 3) == 2)
    {
      v44 = (*(v5 + 544) + 1);
      v45 = *(v5 + 970);
      v46 = *(v5 + 972);
      v47 = 0x8000 - (v45 + v46);
      v48 = *a2;
      v49 = *a2;
      if (*(a2 + 17) == 8)
      {
        v50 = *(v5 + 688);
        if (v50 && (v51 = *(v5 + 696)) != 0)
        {
          v52 = 0;
          if (v49)
          {
            result = *(v5 + 544) + 1;
            while (1)
            {
              v54 = *v44;
              v55 = v54 == v44[1] && v54 == v44[2];
              if (!v55)
              {
                break;
              }

              v56 = *(v5 + 672);
              if (v56)
              {
                v54 += v56;
                goto LABEL_66;
              }

LABEL_67:
              *result = v54;
              if ((v43 & 4) != 0)
              {
                v53 = v44[3];
                v44 += 4;
                *(result + 1) = v53;
                result += 2;
                if (!--v49)
                {
                  goto LABEL_105;
                }
              }

              else
              {
                v44 += 3;
                ++result;
                if (!--v49)
                {
                  goto LABEL_105;
                }
              }
            }

            v54 = (v50 + ((*(v51 + v44[1]) * v46 + v54[v51] * v45 + v47 * *(v51 + v44[2]) + 0x4000) >> 15));
            v52 = 1;
LABEL_66:
            LOBYTE(v54) = *v54;
            goto LABEL_67;
          }
        }

        else
        {
          v52 = 0;
          if (v49)
          {
            if ((a2[4] & 4) != 0)
            {
              v244 = (*(v5 + 544) + 1);
              do
              {
                v245 = *v44;
                v246 = v44[1];
                result = v44[2];
                if (v245 != v246 || v245 != result)
                {
                  LOBYTE(v245) = (v245 * v45 + v246 * v46 + v47 * result) >> 15;
                  v52 = 1;
                }

                *v244 = v245;
                v244[1] = v44[3];
                v244 += 2;
                v44 += 4;
                --v49;
              }

              while (v49);
            }

            else
            {
              v71 = (*(v5 + 544) + 1);
              do
              {
                v72 = *v44;
                v73 = v44[1];
                result = v44[2];
                if (v72 != v73 || v72 != result)
                {
                  LOBYTE(v72) = (v72 * v45 + v73 * v46 + v47 * result) >> 15;
                  v52 = 1;
                }

                *v71++ = v72;
                v44 += 3;
                --v49;
              }

              while (v49);
            }
          }
        }

        goto LABEL_105;
      }

      v57 = *(v5 + 712);
      if (v57 && (v58 = *(v5 + 704)) != 0)
      {
        v52 = 0;
        if (v49)
        {
          result = *(v5 + 544) + 1;
          while (1)
          {
            v60 = *result;
            LODWORD(v61) = *(result + 1);
            v62 = v61 | (v60 << 8);
            v63 = *(result + 2);
            v64 = *(result + 3);
            v65 = __rev16(*(result + 4));
            if ((v64 | (v63 << 8)) != v62 || v62 != v65)
            {
              break;
            }

            v69 = *(v5 + 680);
            if (v69)
            {
              v61 = *(v69 + 8 * (v64 >> *(v5 + 664))) + 2 * v63;
              goto LABEL_82;
            }

LABEL_83:
            *v44 = v60;
            v44[1] = v61;
            if ((v43 & 4) != 0)
            {
              v44[2] = *(result + 6);
              v59 = *(result + 7);
              result += 8;
              v44[3] = v59;
              v44 += 4;
              if (!--v49)
              {
                goto LABEL_105;
              }
            }

            else
            {
              result += 6;
              v44 += 2;
              if (!--v49)
              {
                goto LABEL_105;
              }
            }
          }

          v67 = *(v5 + 664);
          v68 = *(*(v57 + 8 * (v64 >> v67)) + 2 * v63) * v46 + *(*(v57 + 8 * (v62 >> v67)) + 2 * (v62 >> 8)) * v45 + v47 * *(*(v57 + 8 * (v65 >> v67)) + 2 * (v65 >> 8)) + 0x4000;
          v61 = *(v58 + 8 * ((v68 >> 15) >> v67)) + 2 * (v68 >> 23);
          v52 = 1;
LABEL_82:
          v70 = *v61;
          LOBYTE(v61) = *v61;
          v60 = v70 >> 8;
          goto LABEL_83;
        }
      }

      else
      {
        v52 = 0;
        if (v49)
        {
          v75 = (*(v5 + 544) + 1);
          do
          {
            while (1)
            {
              v77 = __rev16(*v75);
              v78 = __rev16(v75[1]);
              v79 = __rev16(v75[2]);
              if (v77 != v79 || v77 != v78)
              {
                v52 = 1;
              }

              v81 = v78 * v46 + v77 * v45 + v79 * v47 + 0x4000;
              result = v81 >> 15;
              *v44 = v81 >> 23;
              v44[1] = result;
              if ((v43 & 4) == 0)
              {
                break;
              }

              v44[2] = *(v75 + 6);
              v76 = *(v75 + 7);
              v75 += 4;
              v44[3] = v76;
              v44 += 4;
              if (!--v49)
              {
                goto LABEL_105;
              }
            }

            v75 += 3;
            v44 += 2;
            --v49;
          }

          while (v49);
        }
      }

LABEL_105:
      v82 = *(a2 + 18) - 2;
      *(a2 + 18) = v82;
      *(a2 + 16) &= ~2u;
      v83 = *(a2 + 17) * v82;
      *(a2 + 19) = v83;
      v84 = (v83 * v48 + 7) >> 3;
      v85 = v48 * (v83 >> 3);
      if (v83 < 8u)
      {
        v85 = v84;
      }

      *(a2 + 1) = v85;
      v42 = *(v5 + 300);
      if (v52)
      {
        *(v5 + 968) = 1;
        if ((v42 & 0x600000) == 0x400000)
        {
          result = sub_10037AB5C(v5, "png_do_rgb_to_gray found nongray pixel");
          v42 = *(v5 + 300);
        }

        if ((v42 & 0x600000) == 0x200000)
        {
          sub_10037A948(v5, "png_do_rgb_to_gray found nongray pixel");
        }
      }
    }
  }

  if ((v42 & 0x4000) != 0 && (*(v5 + 293) & 8) == 0)
  {
    result = sub_1003812D0(a2, *(v5 + 544) + 1);
    v42 = *(v5 + 300);
  }

  if ((v42 & 0x80) != 0)
  {
    result = *(v5 + 544);
    v96 = (result + 1);
    v97 = *(v5 + 672);
    v98 = *(v5 + 680);
    v99 = *(v5 + 664);
    v100 = *a2;
    v101 = *(a2 + 16);
    if (v101 > 3)
    {
      v113 = *(v5 + 688);
      v114 = *(v5 + 696);
      v115 = *(v5 + 704);
      v116 = *(v5 + 712);
      v117 = *(v5 + 296);
      if (v101 == 4)
      {
        if (*(a2 + 17) == 8)
        {
          if (v114 && v113 && v97)
          {
            for (; v100; --v100)
            {
              v133 = v96[1];
              if (v96[1])
              {
                if (v133 == 255)
                {
                  LOBYTE(v132) = *(v97 + *v96);
                }

                else
                {
                  v134 = (*(v114 + *v96) * v133 + *(v5 + 646) * (v133 ^ 0xFF) + 128);
                  v132 = v134 + (v134 >> 8);
                  if ((v117 & 0x2000) != 0)
                  {
                    v132 >>= 8;
                  }

                  else
                  {
                    LOBYTE(v132) = *(v113 + BYTE1(v132));
                  }
                }
              }

              else
              {
                LOBYTE(v132) = *(v5 + 636);
              }

              *v96 = v132;
              v96 += 2;
            }
          }

          else
          {
            for (; v100; --v100)
            {
              v316 = v96[1];
              if (v316 != 255)
              {
                if (v96[1])
                {
                  v314 = (*v96 * v316 + *(v5 + 636) * (v316 ^ 0xFF) + 128);
                  v315 = (v314 + (v314 >> 8)) >> 8;
                }

                else
                {
                  LOBYTE(v315) = *(v5 + 636);
                }

                *v96 = v315;
              }

              v96 += 2;
            }
          }
        }

        else if (v98 && v115 && v116)
        {
          if (v100)
          {
            v174 = (result + 2);
            do
            {
              while (1)
              {
                while (1)
                {
                  while (1)
                  {
                    v175 = __rev16(*(v174 + 1));
                    if (v175)
                    {
                      break;
                    }

                    *(v174 - 1) = bswap32(*(v5 + 636)) >> 16;
                    v174 += 4;
                    if (!--v100)
                    {
                      goto LABEL_115;
                    }
                  }

                  if (v175 != 0xFFFF)
                  {
                    break;
                  }

                  *(v174 - 1) = bswap32(*(*(v98 + 8 * (*v174 >> v99)) + 2 * *(v174 - 1))) >> 16;
                  v174 += 4;
                  if (!--v100)
                  {
                    goto LABEL_115;
                  }
                }

                result = (v175 ^ 0xFFFF) * *(v5 + 646);
                v176 = result + v175 * *(*(v116 + 8 * (*v174 >> v99)) + 2 * *(v174 - 1)) + 0x8000;
                v177 = v176 + HIWORD(v176);
                if ((v117 & 0x2000) != 0)
                {
                  break;
                }

                v178 = *(*(v115 + 8 * (BYTE2(v177) >> v99)) + 2 * HIBYTE(v177));
                *(v174 - 1) = HIBYTE(v178);
                *v174 = v178;
                v174 += 4;
                if (!--v100)
                {
                  goto LABEL_115;
                }
              }

              *(v174 - 1) = HIBYTE(v177);
              *v174 = BYTE2(v177);
              v174 += 4;
              --v100;
            }

            while (v100);
          }
        }

        else if (v100)
        {
          v317 = result + 2;
          do
          {
            v320 = __rev16(*(v317 + 1));
            if (v320 != 0xFFFF)
            {
              if (v320)
              {
                v318 = __rev16(*(v317 - 1)) * v320 + (v320 ^ 0xFFFF) * *(v5 + 636) + 0x8000;
                v319 = v318 + HIWORD(v318);
                *(v317 - 1) = HIBYTE(v319);
                *v317 = BYTE2(v319);
              }

              else
              {
                *(v317 - 1) = bswap32(*(v5 + 636)) >> 16;
              }
            }

            v317 += 4;
            --v100;
          }

          while (v100);
        }
      }

      else if (v101 == 6)
      {
        if (*(a2 + 17) == 8)
        {
          if (v114 && v113 && v97)
          {
            if (v100)
            {
              v118 = (result + 2);
              do
              {
                v120 = v118[2];
                if (v118[2])
                {
                  if (v120 == 255)
                  {
                    *(v118 - 1) = *(v97 + *(v118 - 1));
                    *v118 = *(v97 + *v118);
                    LOBYTE(v119) = *(v97 + v118[1]);
                  }

                  else
                  {
                    v121 = v120 ^ 0xFF;
                    v122 = *(v5 + 640) * (v120 ^ 0xFF) + *(v114 + *(v118 - 1)) * v120 + 128;
                    v123 = v122 + BYTE1(v122);
                    if ((v117 & 0x2000) != 0)
                    {
                      v123 >>= 8;
                    }

                    else
                    {
                      LOBYTE(v123) = *(v113 + BYTE1(v123));
                    }

                    *(v118 - 1) = v123;
                    v124 = *(v5 + 642) * v121 + *(v114 + *v118) * v120 + 128;
                    v125 = v124 + BYTE1(v124);
                    if ((v117 & 0x2000) != 0)
                    {
                      v125 >>= 8;
                    }

                    else
                    {
                      LOBYTE(v125) = *(v113 + BYTE1(v125));
                    }

                    *v118 = v125;
                    v126 = *(v5 + 644) * v121 + *(v114 + v118[1]) * v120 + 128;
                    v119 = v126 + BYTE1(v126);
                    if ((v117 & 0x2000) != 0)
                    {
                      v119 >>= 8;
                    }

                    else
                    {
                      LOBYTE(v119) = *(v113 + BYTE1(v119));
                    }
                  }
                }

                else
                {
                  *(v118 - 1) = *(v5 + 630);
                  *v118 = *(v5 + 632);
                  LOBYTE(v119) = *(v5 + 634);
                }

                v118[1] = v119;
                v118 += 4;
                --v100;
              }

              while (v100);
            }
          }

          else if (v100)
          {
            v298 = (result + 2);
            do
            {
              v303 = v298[2];
              if (v303 != 255)
              {
                if (v298[2])
                {
                  v299 = *(v5 + 630) * (v303 ^ 0xFF) + *(v298 - 1) * v303 + 128;
                  *(v298 - 1) = (v299 + HIBYTE(v299)) >> 8;
                  v300 = *(v5 + 632) * (v303 ^ 0xFF) + *v298 * v303 + 128;
                  *v298 = (v300 + HIBYTE(v300)) >> 8;
                  v301 = *(v5 + 634) * (v303 ^ 0xFF) + v298[1] * v303 + 128;
                  v302 = (v301 + BYTE1(v301)) >> 8;
                }

                else
                {
                  *(v298 - 1) = *(v5 + 630);
                  *v298 = *(v5 + 632);
                  LOBYTE(v302) = *(v5 + 634);
                }

                v298[1] = v302;
              }

              v298 += 4;
              --v100;
            }

            while (v100);
          }
        }

        else if (v98 && v115 && v116)
        {
          if (v100)
          {
            v161 = (result + 4);
            do
            {
              while (1)
              {
                while (1)
                {
                  while (1)
                  {
                    v162 = __rev16(*(v161 + 3));
                    if (v162)
                    {
                      break;
                    }

                    *(v161 - 3) = bswap32(*(v5 + 630)) >> 16;
                    *(v161 - 1) = bswap32(*(v5 + 632)) >> 16;
                    *(v161 + 1) = bswap32(*(v5 + 634)) >> 16;
                    v161 += 8;
                    if (!--v100)
                    {
                      goto LABEL_115;
                    }
                  }

                  if (v162 != 0xFFFF)
                  {
                    break;
                  }

                  *(v161 - 3) = bswap32(*(*(v98 + 8 * (*(v161 - 2) >> v99)) + 2 * *(v161 - 3))) >> 16;
                  *(v161 - 1) = bswap32(*(*(v98 + 8 * (*v161 >> v99)) + 2 * *(v161 - 1))) >> 16;
                  *(v161 + 1) = bswap32(*(*(v98 + 8 * (v161[2] >> v99)) + 2 * v161[1])) >> 16;
                  v161 += 8;
                  if (!--v100)
                  {
                    goto LABEL_115;
                  }
                }

                v163 = v162 ^ 0xFFFF;
                v164 = (v162 ^ 0xFFFF) * *(v5 + 640) + v162 * *(*(v116 + 8 * (*(v161 - 2) >> v99)) + 2 * *(v161 - 3)) + 0x8000;
                v165 = v164 + HIWORD(v164);
                v166 = HIBYTE(v165);
                if ((v117 & 0x2000) != 0)
                {
                  v167 = HIWORD(v165);
                }

                else
                {
                  v167 = *(*(v115 + 8 * (BYTE2(v165) >> v99)) + 2 * v166);
                  v166 = v167 >> 8;
                }

                *(v161 - 3) = v166;
                *(v161 - 2) = v167;
                v168 = v163 * *(v5 + 642) + v162 * *(*(v116 + 8 * (*v161 >> v99)) + 2 * *(v161 - 1)) + 0x8000;
                v169 = v168 + HIWORD(v168);
                v170 = HIBYTE(v169);
                if ((v117 & 0x2000) != 0)
                {
                  v171 = HIWORD(v169);
                }

                else
                {
                  v171 = *(*(v115 + 8 * (BYTE2(v169) >> v99)) + 2 * v170);
                  v170 = v171 >> 8;
                }

                *(v161 - 1) = v170;
                *v161 = v171;
                result = *(*(v116 + 8 * (v161[2] >> v99)) + 2 * v161[1]);
                v172 = v163 * *(v5 + 644) + v162 * result + 0x8000 + ((v163 * *(v5 + 644) + v162 * result + 0x8000) >> 16);
                if ((v117 & 0x2000) != 0)
                {
                  break;
                }

                v173 = *(*(v115 + 8 * (BYTE2(v172) >> v99)) + 2 * HIBYTE(v172));
                v161[1] = HIBYTE(v173);
                v161[2] = v173;
                v161 += 8;
                if (!--v100)
                {
                  goto LABEL_115;
                }
              }

              v161[1] = HIBYTE(v172);
              v161[2] = BYTE2(v172);
              v161 += 8;
              --v100;
            }

            while (v100);
          }
        }

        else if (v100)
        {
          v304 = result + 4;
          do
          {
            v313 = __rev16(*(v304 + 3));
            if (v313 != 0xFFFF)
            {
              if (v313)
              {
                v305 = __rev16(*(v304 - 1));
                v306 = __rev16(*(v304 + 1));
                v307 = (v313 ^ 0xFFFF) * *(v5 + 630) + __rev16(*(v304 - 3)) * v313 + 0x8000;
                v308 = v307 + HIWORD(v307);
                *(v304 - 3) = HIBYTE(v308);
                *(v304 - 2) = BYTE2(v308);
                v309 = (v313 ^ 0xFFFF) * *(v5 + 632) + v305 * v313 + 0x8000;
                v310 = v309 + HIWORD(v309);
                *(v304 - 1) = HIBYTE(v310);
                *v304 = BYTE2(v310);
                v311 = (v313 ^ 0xFFFF) * *(v5 + 634) + v306 * v313 + 0x8000;
                v312 = v311 + HIWORD(v311);
                *(v304 + 1) = HIBYTE(v312);
                *(v304 + 2) = BYTE2(v312);
              }

              else
              {
                *(v304 - 3) = bswap32(*(v5 + 630)) >> 16;
                *(v304 - 1) = bswap32(*(v5 + 632)) >> 16;
                *(v304 + 1) = bswap32(*(v5 + 634)) >> 16;
              }
            }

            v304 += 8;
            --v100;
          }

          while (v100);
        }
      }
    }

    else if (*(a2 + 16))
    {
      if (v101 == 2)
      {
        if (*(a2 + 17) == 8)
        {
          if (v97)
          {
            if (v100)
            {
              v102 = *(v5 + 746);
              v103 = (result + 3);
              do
              {
                while (1)
                {
                  v104 = *(v103 - 1);
                  if (v102 == *(v103 - 2) && *(v5 + 748) == v104 && *(v5 + 750) == *v103)
                  {
                    break;
                  }

                  *(v103 - 2) = *(v97 + *(v103 - 2));
                  *(v103 - 1) = *(v97 + v104);
                  *v103 = *(v97 + *v103);
                  v103 += 3;
                  if (!--v100)
                  {
                    goto LABEL_115;
                  }
                }

                *(v103 - 2) = *(v5 + 630);
                *(v103 - 1) = *(v5 + 632);
                *v103 = *(v5 + 634);
                v103 += 3;
                --v100;
              }

              while (v100);
            }
          }

          else if (v100)
          {
            v327 = *(v5 + 746);
            v328 = (result + 3);
            do
            {
              if (v327 == *(v328 - 2) && *(v5 + 748) == *(v328 - 1) && *(v5 + 750) == *v328)
              {
                *(v328 - 2) = *(v5 + 630);
                *(v328 - 1) = *(v5 + 632);
                *v328 = *(v5 + 634);
              }

              v328 += 3;
              --v100;
            }

            while (v100);
          }
        }

        else if (v98)
        {
          if (v100)
          {
            v154 = *(v5 + 746);
            v155 = (result + 3);
            do
            {
              v157 = *(v155 - 1);
              v158 = v155[2];
              v159 = v155[3];
              result = v155[1];
              v160 = *v155;
              if ((v157 | (*(v155 - 2) << 8)) == v154 && (result | (v160 << 8)) == *(v5 + 748) && (v159 | (v158 << 8)) == *(v5 + 750))
              {
                *(v155 - 1) = bswap32(*(v5 + 630)) >> 16;
                *v155 = bswap32(*(v5 + 632)) >> 16;
                v156 = (v5 + 634);
              }

              else
              {
                *(v155 - 1) = bswap32(*(*(v98 + 8 * (v157 >> v99)) + 2 * *(v155 - 2))) >> 16;
                *v155 = bswap32(*(*(v98 + 8 * (result >> v99)) + 2 * v160)) >> 16;
                v156 = (*(v98 + 8 * (v159 >> v99)) + 2 * v158);
              }

              *(v155 + 1) = bswap32(*v156) >> 16;
              v155 += 6;
              --v100;
            }

            while (v100);
          }
        }

        else if (v100)
        {
          v329 = *(v5 + 746);
          v330 = (result + 3);
          do
          {
            if (v329 == bswap32(*(v330 - 1)) >> 16 && *(v5 + 748) == bswap32(*v330) >> 16 && __rev16(v330[1]) == *(v5 + 750))
            {
              *(v330 - 1) = bswap32(*(v5 + 630)) >> 16;
              *v330 = bswap32(*(v5 + 632)) >> 16;
              v330[1] = bswap32(*(v5 + 634)) >> 16;
            }

            v330 += 3;
            --v100;
          }

          while (v100);
        }
      }
    }

    else
    {
      v127 = *(a2 + 17);
      if (v127 <= 3)
      {
        if (v127 == 1)
        {
          if (v100)
          {
            v338 = *(v5 + 752);
            v339 = 7;
            do
            {
              v341 = *v96;
              if (((v341 >> v339) & 1) == v338)
              {
                *v96 = (*(v5 + 636) << v339) | (0x7F7Fu >> (7 - v339)) & v341;
              }

              v340 = v339 == 0;
              if (v339)
              {
                --v339;
              }

              else
              {
                v339 = 7;
              }

              if (v340)
              {
                ++v96;
              }

              --v100;
            }

            while (v100);
          }
        }

        else if (v127 == 2)
        {
          if (v97)
          {
            if (v100)
            {
              v179 = *(v5 + 752);
              v180 = 6;
              do
              {
                v183 = *v96;
                v184 = (v183 >> v180) & 3;
                if (v184 == v179)
                {
                  v181 = *(v5 + 636);
                }

                else
                {
                  v181 = *(v97 + 85 * v184) >> 6;
                }

                result = 0x3F3Fu >> (6 - v180);
                *v96 = (v181 << v180) | result & v183;
                v182 = v180 == 0;
                if (v180)
                {
                  v180 -= 2;
                }

                else
                {
                  v180 = 6;
                }

                if (v182)
                {
                  ++v96;
                }

                --v100;
              }

              while (v100);
            }
          }

          else if (v100)
          {
            v354 = *(v5 + 752);
            v355 = 6;
            do
            {
              v357 = *v96;
              if (((v357 >> v355) & 3) == v354)
              {
                *v96 = (*(v5 + 636) << v355) | (0x3F3Fu >> (6 - v355)) & v357;
              }

              v356 = v355 == 0;
              if (v355)
              {
                v355 -= 2;
              }

              else
              {
                v355 = 6;
              }

              if (v356)
              {
                ++v96;
              }

              --v100;
            }

            while (v100);
          }
        }
      }

      else
      {
        switch(v127)
        {
          case 4u:
            if (v97)
            {
              if (v100)
              {
                v331 = *(v5 + 752);
                v332 = 4;
                do
                {
                  v335 = *v96;
                  v336 = (v335 >> v332) & 0xF;
                  if (v336 == v331)
                  {
                    v333 = *(v5 + 636);
                  }

                  else
                  {
                    v333 = *(v97 + (v336 | (16 * v336))) >> 4;
                  }

                  *v96 = (v333 << v332) | (0xF0Fu >> (4 - v332)) & v335;
                  v334 = v332 == 0;
                  if (v332)
                  {
                    v332 -= 4;
                  }

                  else
                  {
                    v332 = 4;
                  }

                  if (v334)
                  {
                    ++v96;
                  }

                  --v100;
                }

                while (v100);
              }
            }

            else if (v100)
            {
              v347 = *(v5 + 752);
              v348 = 4;
              do
              {
                v350 = *v96;
                if (((v350 >> v348) & 0xF) == v347)
                {
                  *v96 = (*(v5 + 636) << v348) | (0xF0Fu >> (4 - v348)) & v350;
                }

                v349 = v348 == 0;
                if (v348)
                {
                  v348 -= 4;
                }

                else
                {
                  v348 = 4;
                }

                if (v349)
                {
                  ++v96;
                }

                --v100;
              }

              while (v100);
            }

            break;
          case 8u:
            if (v97)
            {
              if (v100)
              {
                v337 = *(v5 + 752);
                do
                {
                  while (v337 != *v96)
                  {
                    *v96 = *(v97 + *v96);
                    ++v96;
                    if (!--v100)
                    {
                      goto LABEL_115;
                    }
                  }

                  *v96++ = *(v5 + 636);
                  --v100;
                }

                while (v100);
              }
            }

            else if (v100)
            {
              v351 = *(v5 + 752);
              do
              {
                if (v351 == *v96)
                {
                  *v96 = *(v5 + 636);
                }

                ++v96;
                --v100;
              }

              while (v100);
            }

            break;
          case 0x10u:
            if (v98)
            {
              if (v100)
              {
                v128 = *(v5 + 752);
                do
                {
                  v129 = *v96;
                  v130 = v96[1];
                  v131 = (v5 + 636);
                  if ((v130 | (v129 << 8)) != v128)
                  {
                    v131 = (*(v98 + 8 * (v130 >> v99)) + 2 * v129);
                  }

                  *v96 = bswap32(*v131) >> 16;
                  v96 += 2;
                  --v100;
                }

                while (v100);
              }
            }

            else if (v100)
            {
              v352 = *(v5 + 752);
              v353 = result + 2;
              do
              {
                if (v352 == bswap32(*(v353 - 1)) >> 16)
                {
                  *(v353 - 1) = bswap32(*(v5 + 636)) >> 16;
                }

                v353 += 2;
                --v100;
              }

              while (v100);
            }

            break;
        }
      }
    }
  }

LABEL_115:
  v86 = *(v5 + 300);
  if ((v86 & 0x602000) == 0x2000)
  {
    if ((v86 & 0x80) != 0)
    {
      if (*(v5 + 600))
      {
        goto LABEL_145;
      }

      v87 = *(v5 + 607);
      if ((v87 & 4) != 0)
      {
        goto LABEL_145;
      }
    }

    else
    {
      v87 = *(v5 + 607);
    }

    if (v87 != 3)
    {
      if ((v88 = *(v5 + 544), v89 = *(v5 + 672), v90 = *(v5 + 680), v91 = *(v5 + 664), v92 = *a2, v93 = *(a2 + 17), v93 <= 8) && v89 || v93 == 16 && v90)
      {
        v94 = v88 + 1;
        v95 = *(a2 + 16);
        if (v95 > 3)
        {
          if (v95 == 4)
          {
            if (v93 == 8)
            {
              for (; v92; --v92)
              {
                *v94 = *(v89 + *v94);
                v94 += 2;
              }
            }

            else if (v92)
            {
              v344 = v88 + 2;
              do
              {
                *(v344 - 1) = bswap32(*(*(v90 + 8 * (*v344 >> v91)) + 2 * *(v344 - 1))) >> 16;
                v344 += 4;
                --v92;
              }

              while (v92);
            }
          }

          else if (v95 == 6)
          {
            if (v93 == 8)
            {
              for (; v92; --v92)
              {
                *v94 = *(v89 + *v94);
                v94[1] = *(v89 + v94[1]);
                v94[2] = *(v89 + v94[2]);
                v94 += 4;
              }
            }

            else if (v92)
            {
              v343 = v88 + 3;
              do
              {
                *(v343 - 1) = bswap32(*(*(v90 + 8 * (*(v343 - 1) >> v91)) + 2 * *(v343 - 2))) >> 16;
                *v343 = bswap32(*(*(v90 + 8 * (v343[1] >> v91)) + 2 * *v343)) >> 16;
                *(v343 + 1) = bswap32(*(*(v90 + 8 * (v343[3] >> v91)) + 2 * v343[2])) >> 16;
                v343 += 8;
                --v92;
              }

              while (v92);
            }
          }
        }

        else if (*(a2 + 16))
        {
          if (v95 == 2)
          {
            if (v93 == 8)
            {
              for (; v92; --v92)
              {
                *v94 = *(v89 + *v94);
                v94[1] = *(v89 + v94[1]);
                v94[2] = *(v89 + v94[2]);
                v94 += 3;
              }
            }

            else if (v92)
            {
              v342 = v88 + 3;
              do
              {
                *(v342 - 1) = bswap32(*(*(v90 + 8 * (*(v342 - 1) >> v91)) + 2 * *(v342 - 2))) >> 16;
                *v342 = bswap32(*(*(v90 + 8 * (v342[1] >> v91)) + 2 * *v342)) >> 16;
                *(v342 + 1) = bswap32(*(*(v90 + 8 * (v342[3] >> v91)) + 2 * v342[2])) >> 16;
                v342 += 6;
                --v92;
              }

              while (v92);
            }
          }
        }

        else
        {
          if (v93 == 2 && v92)
          {
            v321 = 0;
            v322 = v88 + 1;
            do
            {
              v323 = *v322;
              v324 = v323 & 0xC;
              v325 = (v323 & 0xC) >> 2;
              result = (*(v89 + ((4 * v324) & 0xFFFFFF3F | ((v325 & 3) << 6) | (v324 >> 2) | v324)) >> 4) & 0xC;
              *v322++ = (*(v89 + (((v323 & 0x30) >> 2) & 0xFFFFFF3F | ((((v323 & 0x30) >> 4) & 3) << 6) | ((v323 & 0x30) >> 4) | (v323 & 0x30))) >> 2) & 0x30 | *(v89 + ((v323 >> 6) | ((v323 & 0xC0) >> 4) | ((v323 & 0xC0) >> 2) | (v323 & 0xC0))) & 0xC0 | (*(v89 + ((4 * v324) & 0xFFFFFF3F | ((v325 & 3) << 6) | (v324 >> 2) | v324)) >> 4) & 0xC | (*(v89 + 85 * (v323 & 3)) >> 6);
              v321 += 4;
            }

            while (v321 < v92);
            v93 = *(a2 + 17);
          }

          if (v93 == 4)
          {
            if (v92)
            {
              for (i = 0; i < v92; i += 2)
              {
                *v94 = *(v89 + (*v94 & 0xF0 | (*v94 >> 4))) & 0xF0 | (*(v89 + (*v94 & 0xF | (16 * (*v94 & 0xF)))) >> 4);
                ++v94;
              }
            }
          }

          else if (v93 == 8)
          {
            for (; v92; --v92)
            {
              *v94 = *(v89 + *v94);
              ++v94;
            }
          }

          else if (v93 == 16 && v92)
          {
            v326 = v88 + 2;
            do
            {
              *(v326 - 1) = bswap32(*(*(v90 + 8 * (*v326 >> v91)) + 2 * *(v326 - 1))) >> 16;
              v326 += 2;
              --v92;
            }

            while (v92);
          }
        }
      }
    }
  }

LABEL_145:
  v105 = *(v5 + 300);
  if ((~v105 & 0x40080) == 0 && (*(a2 + 16) | 2) == 6)
  {
    result = sub_100388C5C(a2, (*(v5 + 544) + 1), 0);
    v105 = *(v5 + 300);
  }

  if ((v105 & 0x800000) != 0)
  {
    v106 = *(a2 + 16);
    if ((v106 & 4) != 0)
    {
      v107 = *(v5 + 544);
      v108 = *a2;
      v109 = *(a2 + 17);
      if (v109 != 16)
      {
        if (v109 == 8)
        {
          v110 = *(v5 + 688);
          if (v110)
          {
            v55 = (v106 & 2) == 0;
            v111 = 4;
            if (v55)
            {
              v111 = 2;
            }

            if (v108)
            {
              v112 = (v107 + v111);
              do
              {
                *v112 = *(v110 + *v112);
                v112 += v111;
                --v108;
              }

              while (v108);
            }

            goto LABEL_213;
          }
        }

LABEL_212:
        result = sub_10037AB5C(v5, "png_do_encode_alpha: unexpected call");
        goto LABEL_213;
      }

      v135 = *(v5 + 704);
      if (!v135)
      {
        goto LABEL_212;
      }

      v55 = (v106 & 2) == 0;
      v136 = 8;
      if (v55)
      {
        v136 = 4;
      }

      if (v108)
      {
        v137 = *(v5 + 664);
        v138 = (v107 + v136);
        do
        {
          *(v138 - 1) = bswap32(*(*(v135 + 8 * (*v138 >> v137)) + 2 * *(v138 - 1))) >> 16;
          v138 += v136;
          --v108;
        }

        while (v108);
      }
    }
  }

LABEL_213:
  v139 = *(v5 + 300);
  if ((v139 & 0x4000000) != 0 && *(a2 + 17) == 16)
  {
    v140 = *(a2 + 1);
    if (v140 < 1)
    {
LABEL_300:
      *(a2 + 17) = 8;
      v192 = *(a2 + 18);
      *(a2 + 19) = 8 * v192;
      *(a2 + 1) = *a2 * v192;
      goto LABEL_301;
    }

    v141 = *(v5 + 544);
    v142 = v141 + 1;
    if (v140 + v141 + 1 > (v141 + 3))
    {
      v143 = v140 + v141 + 1;
    }

    else
    {
      v143 = v141 + 3;
    }

    v144 = v143 - v141 - 2;
    if (v144 < 0xE)
    {
      v145 = (v141 + 1);
      v146 = (v141 + 1);
      goto LABEL_297;
    }

    v147 = (v144 >> 1) + 1;
    if (v144 >= 0x1E)
    {
      v148 = v147 & 0xFFFFFFFFFFFFFFF0;
      a3 = vdupq_n_s32(0x7FFF80u);
      v185.i64[0] = 0xFFFF0000FFFFLL;
      v185.i64[1] = 0xFFFF0000FFFFLL;
      a5.n128_u32[1] = 471340048;
      v186 = v147 & 0xFFFFFFFFFFFFFFF0;
      v187 = (v141 + 1);
      v188 = (v141 + 1);
      do
      {
        v501 = vld2q_s8(v187);
        v187 += 32;
        v189 = vsubl_u8(*v501.val[1].i8, *v501.val[0].i8);
        v190 = vsubl_high_u8(v501.val[1], v501.val[0]);
        v505.val[3] = vshrq_n_u32(vmlaq_s32(a3, vmovl_high_s16(v190), v185), 0x18uLL);
        v505.val[2] = vshrq_n_u32(vmlaq_s32(a3, vmovl_s16(*v190.i8), v185), 0x18uLL);
        v505.val[1] = vshrq_n_u32(vmlaq_s32(a3, vmovl_high_s16(v189), v185), 0x18uLL);
        v505.val[0] = vshrq_n_u32(vmlaq_s32(a3, vmovl_s16(*v189.i8), v185), 0x18uLL);
        *v188++ = vaddq_s8(v501.val[0], vqtbl4q_s8(v505, xmmword_1003E36F0));
        v186 -= 16;
      }

      while (v186);
      if (v147 == v148)
      {
        goto LABEL_299;
      }

      if ((v147 & 8) == 0)
      {
        v146 = (v142 + v148);
        v145 = (v142 + 2 * v148);
LABEL_297:
        v191 = v142 + v140;
        do
        {
          *v146++ = *v145 + ((0xFFFF * (v145[1] - *v145) + 8388480) >> 24);
          v145 += 2;
        }

        while (v145 < v191);
LABEL_299:
        v139 = *(v5 + 300);
        goto LABEL_300;
      }
    }

    else
    {
      v148 = 0;
    }

    v145 = (v142 + 2 * (v147 & 0xFFFFFFFFFFFFFFF8));
    v146 = (v142 + (v147 & 0xFFFFFFFFFFFFFFF8));
    v149 = (v148 + v141 + 1);
    v150 = (v141 + 2 * v148 + 1);
    v151 = v148 - (v147 & 0xFFFFFFFFFFFFFFF8);
    a3.n128_u64[0] = 0xFFFF0000FFFFLL;
    a3.n128_u64[1] = 0xFFFF0000FFFFLL;
    v152 = vdupq_n_s32(0x7FFF80u);
    a5.n128_u32[1] = 471340048;
    do
    {
      v499 = vld2_s8(v150);
      v150 += 16;
      v153 = vsubl_u8(v499.val[1], v499.val[0]);
      v502.val[1] = vshrq_n_u32(vmlaq_s32(v152, vmovl_high_s16(v153), a3), 0x18uLL);
      v502.val[0] = vshrq_n_u32(vmlaq_s32(v152, vmovl_s16(*v153.i8), a3), 0x18uLL);
      *v149++ = vadd_s8(v499.val[0], *&vqtbl2q_s8(v502, xmmword_1003E3780));
      v151 += 8;
    }

    while (v151);
    if (v147 == (v147 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_299;
    }

    goto LABEL_297;
  }

LABEL_301:
  if ((v139 & 0x400) != 0 && *(a2 + 17) == 16)
  {
    v193 = *(a2 + 1);
    if (v193 < 1)
    {
LABEL_324:
      *(a2 + 17) = 8;
      v214 = *(a2 + 18);
      *(a2 + 19) = 8 * v214;
      *(a2 + 1) = *a2 * v214;
      goto LABEL_325;
    }

    v194 = *(v5 + 544);
    v195 = v194 + 1;
    if (v193 + v194 + 1 > (v194 + 3))
    {
      v196 = v193 + v194 + 1;
    }

    else
    {
      v196 = v194 + 3;
    }

    v197 = v196 - v194 - 2;
    v198 = (v194 + 1);
    v199 = (v194 + 1);
    if (v197 >= 0x10)
    {
      v200 = v197 >> 1;
      v201 = (v197 >> 1) + 1;
      if (v197 < 0x40)
      {
        v202 = 0;
LABEL_316:
        if ((v201 & 7) != 0)
        {
          v207 = v201 & 7;
        }

        else
        {
          v207 = 8;
        }

        v208 = v201 - v207;
        v198 = (v195 + 2 * (v201 - v207));
        v199 = (v195 + v208);
        v209 = (v202 + v194 + 1);
        v210 = (v194 + 2 * v202 + 1);
        v211 = ~v200 + v202 + v207;
        do
        {
          a3.n128_u64[0] = *vld2_s8(v210).val;
          v210 += 16;
          *v209++ = a3.n128_u64[0];
          v211 += 8;
        }

        while (v211);
        goto LABEL_321;
      }

      v203 = v201 & 0x1F;
      if ((v201 & 0x1F) == 0)
      {
        v203 = 32;
      }

      v202 = v201 - v203;
      v204 = (v194 + 17);
      v205 = (v194 + 33);
      v206 = v201;
      do
      {
        result = (v205 - 32);
        a3 = vld2q_s8(result);
        a5 = vld2q_s8(v205);
        v204[-1] = a3;
        *v204 = a5;
        v204 += 2;
        v205 += 64;
        v206 -= 32;
      }

      while (v203 != v206);
      if (v203 >= 9)
      {
        goto LABEL_316;
      }

      v199 = (v195 + v202);
      v198 = (v195 + 2 * v202);
    }

LABEL_321:
    v212 = v195 + v193;
    do
    {
      v213 = *v198;
      v198 += 2;
      *v199++ = v213;
    }

    while (v198 < v212);
    v139 = *(v5 + 300);
    goto LABEL_324;
  }

LABEL_325:
  if ((v139 & 0x40) == 0)
  {
    goto LABEL_345;
  }

  if (*(a2 + 17) == 8)
  {
    v215 = (*(v5 + 544) + 1);
    v216 = *(v5 + 880);
    v217 = *(v5 + 888);
    v218 = *a2;
    v219 = *a2;
    v220 = *(a2 + 16);
    if (v216 && v220 == 2)
    {
      if (v219)
      {
        v221 = (*(v5 + 544) + 1);
        do
        {
          *v221++ = *(v216 + ((*v215 << 7) & 0x7C00 | (32 * ((v215[1] >> 3) & 0x1F)) | (v215[2] >> 3)));
          v215 += 3;
          --v219;
        }

        while (v219);
        goto LABEL_338;
      }
    }

    else
    {
      if (!v216 || v220 != 6)
      {
        if (v217 && v220 == 3 && v219)
        {
          do
          {
            *v215 = *(v217 + *v215);
            ++v215;
            --v219;
          }

          while (v219);
        }

        goto LABEL_343;
      }

      if (v219)
      {
        v222 = (*(v5 + 544) + 1);
        do
        {
          *v222++ = *(v216 + ((*v215 << 7) & 0x7C00 | (32 * ((v215[1] >> 3) & 0x1F)) | (v215[2] >> 3)));
          v215 += 4;
          --v219;
        }

        while (v219);
LABEL_338:
        v223 = *(a2 + 17);
        *(a2 + 16) = 3;
        *(a2 + 18) = 1;
        *(a2 + 19) = v223;
        if (v223 < 8)
        {
          v224 = (v223 * v218 + 7) >> 3;
LABEL_342:
          *(a2 + 1) = v224;
          goto LABEL_343;
        }

LABEL_341:
        v224 = v218 * (v223 >> 3);
        goto LABEL_342;
      }
    }

    *(a2 + 16) = 3;
    *(a2 + 9) = 2049;
    v223 = 8;
    goto LABEL_341;
  }

LABEL_343:
  if (!*(a2 + 1))
  {
    sub_10037A948(v5, "png_do_quantize returned rowbytes=0");
  }

  v139 = *(v5 + 300);
LABEL_345:
  if ((v139 & 0x200) != 0 && *(a2 + 17) == 8 && *(a2 + 16) != 3)
  {
    v225 = *(a2 + 1);
    if (v225 >= 1)
    {
      v226 = *(v5 + 544);
      v227 = v226 + 1 + v225 + v225;
      v228 = (v226 + v225);
      v229 = v228;
      do
      {
        v230 = *v229--;
        *(v227 - 2) = v230;
        v227 -= 2;
        *(v227 + 1) = v230;
        v231 = v227 > v228;
        v228 = v229;
      }

      while (v231);
      v225 = *(a2 + 1);
      v139 = *(v5 + 300);
    }

    *(a2 + 1) = 2 * v225;
    *(a2 + 17) = 16;
    *(a2 + 19) = 16 * *(a2 + 18);
  }

  if ((v139 & 0x4000) != 0 && (*(v5 + 293) & 8) != 0)
  {
    result = sub_1003812D0(a2, *(v5 + 544) + 1);
    v139 = *(v5 + 300);
  }

  if ((v139 & 0x20) != 0)
  {
    result = sub_10038896C(a2, (*(v5 + 544) + 1));
    v139 = *(v5 + 300);
  }

  if ((v139 & 0x80000) != 0)
  {
    v232 = *(v5 + 544);
    v233 = v232 + 1;
    v234 = *a2;
    v235 = *(a2 + 16);
    if (v235 == 4)
    {
      if (*(a2 + 17) == 8)
      {
        if (!v234)
        {
          goto LABEL_402;
        }

        v239 = *(a2 + 1);
        v240 = v233 + v239;
        if (v234 == 1)
        {
          LODWORD(v241) = 0;
        }

        else
        {
          v241 = v234 & 0xFFFFFFFE;
          v240 -= 2 * v241;
          v253 = (v232 + v239);
          v254 = v241;
          do
          {
            v255 = ~*(v253 - 2);
            *v253 = ~*v253;
            *(v253 - 2) = v255;
            v253 -= 4;
            v254 -= 2;
          }

          while (v254);
          if (v241 == v234)
          {
            goto LABEL_402;
          }
        }

        v256 = v234 - v241;
        v257 = (v240 - 1);
        do
        {
          *v257 = ~*v257;
          v257 -= 2;
          --v256;
        }

        while (v256);
        goto LABEL_402;
      }

      if (v234)
      {
        v243 = (v232 + *(a2 + 1));
        do
        {
          *v243 = ~*v243;
          *(v243 - 1) = ~*(v243 - 1);
          v243 -= 4;
          LODWORD(v234) = v234 - 1;
        }

        while (v234);
      }
    }

    else
    {
      if (v235 != 6)
      {
        goto LABEL_402;
      }

      if (*(a2 + 17) == 8)
      {
        if (!v234)
        {
          goto LABEL_402;
        }

        v236 = *(a2 + 1);
        v237 = v233 + v236;
        if (v234 == 1)
        {
          LODWORD(v238) = 0;
LABEL_394:
          v251 = v234 - v238;
          v252 = (v237 - 1);
          do
          {
            *v252 = ~*v252;
            v252 -= 4;
            --v251;
          }

          while (v251);
          goto LABEL_402;
        }

        v238 = v234 & 0xFFFFFFFE;
        v237 -= 4 * v238;
        v248 = (v232 + v236);
        v249 = v238;
        do
        {
          v250 = ~*(v248 - 4);
          *v248 = ~*v248;
          *(v248 - 4) = v250;
          v248 -= 8;
          v249 -= 2;
        }

        while (v249);
        if (v238 != v234)
        {
          goto LABEL_394;
        }
      }

      else if (v234)
      {
        v242 = (v232 + *(a2 + 1));
        do
        {
          *v242 = ~*v242;
          *(v242 - 1) = ~*(v242 - 1);
          v242 -= 8;
          LODWORD(v234) = v234 - 1;
        }

        while (v234);
      }
    }
  }

LABEL_402:
  v258 = *(v5 + 300);
  if ((v258 & 8) == 0)
  {
    goto LABEL_623;
  }

  v259 = *(a2 + 16);
  if (v259 == 3)
  {
    goto LABEL_623;
  }

  v260 = *(v5 + 544);
  v261 = *(a2 + 17);
  if ((v259 & 2) != 0)
  {
    v263 = *(v5 + 725);
    v264 = v261 - *(v5 + 727);
    v495 = v261 - *(v5 + 726);
    v496 = v264;
    v262 = 3;
    v494 = v261 - v263;
    if ((v259 & 4) == 0)
    {
      goto LABEL_409;
    }

    goto LABEL_408;
  }

  v262 = 1;
  v494 = v261 - *(v5 + 728);
  if ((v259 & 4) != 0)
  {
LABEL_408:
    *(&v494 + v262++) = v261 - *(v5 + 729);
  }

LABEL_409:
  v265 = v494;
  v266 = v494 > 0 && v494 < v261;
  if (v494 <= 0 || v494 >= v261)
  {
    v265 = 0;
  }

  v494 = v265;
  if (v262 != 1)
  {
    v267 = v495;
    v268 = v495 > 0;
    v269 = v495 < v261;
    if (!v268 || !v269)
    {
      v267 = 0;
    }

    v495 = v267;
    if (v268 && v269)
    {
      v266 = 1;
    }

    if (v262 != 2)
    {
      v270 = v496;
      v271 = v496 > 0;
      v272 = v496 < v261;
      if (!v271 || !v272)
      {
        v270 = 0;
      }

      v496 = v270;
      if (v271 && v272)
      {
        v266 = 1;
      }

      if (v262 != 3)
      {
        v273 = v497;
        v274 = v497 > 0;
        v275 = v497 < v261;
        if (!v274 || !v275)
        {
          v273 = 0;
        }

        v497 = v273;
        if (v274 && v275)
        {
          v266 = 1;
        }
      }
    }
  }

  if (v266)
  {
    v276 = (v260 + 1);
    HIDWORD(v278) = v261 - 2;
    LODWORD(v278) = v261 - 2;
    v277 = v278 >> 1;
    if (v277 > 2)
    {
      if (v277 == 3)
      {
        v294 = *(a2 + 1);
        if (v294 >= 1)
        {
          v295 = 0;
          v296 = &v276[v294];
          do
          {
            v297 = *v276 >> *(&v494 + v295);
            if (v295 + 1 < v262)
            {
              ++v295;
            }

            else
            {
              v295 = 0;
            }

            *v276++ = v297;
          }

          while (v276 < v296);
        }
      }

      else if (v277 == 7)
      {
        v285 = *(a2 + 1);
        if (v285 >= 1)
        {
          v286 = 0;
          v287 = &v276[v285];
          do
          {
            v288 = __rev16(*v276) >> *(&v494 + v286);
            if (v286 + 1 < v262)
            {
              ++v286;
            }

            else
            {
              v286 = 0;
            }

            *v276 = __rev16(v288);
            v276 += 2;
          }

          while (v276 < v287);
        }
      }

      goto LABEL_622;
    }

    if (v277)
    {
      if (v277 != 1)
      {
        goto LABEL_622;
      }

      v279 = *(a2 + 1);
      if (v279 < 1)
      {
        goto LABEL_622;
      }

      v280 = v494;
      v281 = (0xFu >> v494) | (16 * (0xFu >> v494));
      if (v279 + v260 + 1 > (v260 + 2))
      {
        v282 = v279 + v260 + 1;
      }

      else
      {
        v282 = v260 + 2;
      }

      v283 = v282 + ~v260;
      if (v283 < 4)
      {
        v284 = (v260 + 1);
        goto LABEL_616;
      }

      v345 = vdupq_n_s32(v494);
      a3 = vdupq_n_s32(v281);
      if (v283 >= 0x10)
      {
        v346 = v283 & 0xFFFFFFFFFFFFFFF0;
        a5.n128_u32[1] = -251;
        v359 = vnegq_s32(v345);
        v360 = v283 & 0xFFFFFFFFFFFFFFF0;
        v361 = (v260 + 1);
        do
        {
          v506.val[1] = vandq_s8(vshlq_u32(vqtbl1q_s8(*v361, xmmword_1003E3730), v359), a3);
          v506.val[0] = vandq_s8(vshlq_u32(vqtbl1q_s8(*v361, xmmword_1003E3720), v359), a3);
          v506.val[2] = vandq_s8(vshlq_u32(vqtbl1q_s8(*v361, xmmword_1003E3700), v359), a3);
          v506.val[3] = vandq_s8(vshlq_u32(vqtbl1q_s8(*v361, xmmword_1003E3710), v359), a3);
          *v361++ = vqtbl4q_s8(v506, xmmword_1003E36F0);
          v360 -= 16;
        }

        while (v360);
        if (v283 == v346)
        {
          goto LABEL_622;
        }

        if ((v283 & 0xC) == 0)
        {
          v284 = &v276[v346];
LABEL_616:
          v370 = &v276[v279];
          do
          {
            *v284 = (*v284 >> v280) & v281;
            ++v284;
          }

          while (v284 < v370);
          goto LABEL_622;
        }
      }

      else
      {
        v346 = 0;
      }

      v284 = &v276[v283 & 0xFFFFFFFFFFFFFFFCLL];
      v362 = (v346 + v260 + 1);
      v363 = v346 - (v283 & 0xFFFFFFFFFFFFFFFCLL);
      v364 = vnegq_s32(v345);
      do
      {
        a5.n128_u32[0] = *v362;
        a5.n128_u64[0] = vuzp1_s8(vmovn_s32(vandq_s8(vshlq_u32(vmovl_u16(*&vmovl_u8(a5.n128_u64[0])), v364), a3)), a3.n128_u64[0]);
        *v362++ = a5.n128_u32[0];
        v363 += 4;
      }

      while (v363);
      if (v283 == (v283 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_622;
      }

      goto LABEL_616;
    }

    v289 = *(a2 + 1);
    if (v289 < 1)
    {
LABEL_622:
      v258 = *(v5 + 300);
      goto LABEL_623;
    }

    if (v289 + v260 + 1 > (v260 + 2))
    {
      v290 = v289 + v260 + 1;
    }

    else
    {
      v290 = v260 + 2;
    }

    v291 = v290 + ~v260;
    v292 = (v260 + 1);
    if (v291 >= 8)
    {
      if (v291 < 0x20)
      {
        v293 = 0;
        goto LABEL_611;
      }

      v293 = v291 & 0xFFFFFFFFFFFFFFE0;
      v365 = (v260 + 17);
      a3.n128_u16[0] = 21845;
      a3.n128_u8[2] = 85;
      a3.n128_u8[3] = 85;
      a3.n128_u8[4] = 85;
      a3.n128_u8[5] = 85;
      a3.n128_u8[6] = 85;
      a3.n128_u8[7] = 85;
      a3.n128_u8[8] = 85;
      a3.n128_u8[9] = 85;
      a3.n128_u8[10] = 85;
      a3.n128_u8[11] = 85;
      a3.n128_u8[12] = 85;
      a3.n128_u8[13] = 85;
      a3.n128_u8[14] = 85;
      a3.n128_u8[15] = 85;
      v366 = v291 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v367 = vandq_s8(vshrq_n_u8(*v365, 1uLL), a3);
        v365[-1] = vandq_s8(vshrq_n_u8(v365[-1], 1uLL), a3);
        *v365 = v367;
        v365 += 2;
        v366 -= 32;
      }

      while (v366);
      if (v291 == v293)
      {
        goto LABEL_622;
      }

      if ((v291 & 0x18) != 0)
      {
LABEL_611:
        v292 = &v276[v291 & 0xFFFFFFFFFFFFFFF8];
        v368 = (v293 + v260 + 1);
        v369 = v293 - (v291 & 0xFFFFFFFFFFFFFFF8);
        a3.n128_u16[0] = 21845;
        a3.n128_u8[2] = 85;
        a3.n128_u8[3] = 85;
        a3.n128_u8[4] = 85;
        a3.n128_u8[5] = 85;
        a3.n128_u8[6] = 85;
        a3.n128_u8[7] = 85;
        do
        {
          *v368 = vand_s8(vshr_n_u8(*v368, 1uLL), a3.n128_u64[0]);
          ++v368;
          v369 += 8;
        }

        while (v369);
        if (v291 == (v291 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_622;
        }

        goto LABEL_620;
      }

      v292 = &v276[v293];
    }

LABEL_620:
    v371 = &v276[v289];
    do
    {
      *v292 = (*v292 >> 1) & 0x55;
      ++v292;
    }

    while (v292 < v371);
    goto LABEL_622;
  }

LABEL_623:
  if ((v258 & 4) != 0)
  {
    v372 = *(a2 + 17);
    if (v372 <= 7)
    {
      v373 = *(v5 + 544);
      v374 = v373 + 1;
      v375 = *a2;
      if (v372 == 4)
      {
        if (v375)
        {
          v386 = 4 * (*a2 & 1);
          v387 = (v374 + ((v375 - 1) >> 1));
          v388 = (v373 + v375);
          v389 = *a2;
          do
          {
            v390 = *v387 >> v386;
            v55 = v386 == 0;
            v391 = v386 == 0;
            *v388-- = v390 & 0xF;
            v392 = !v55;
            v387 -= v392;
            v386 = 4 * v391;
            --v389;
          }

          while (v389);
        }
      }

      else if (v372 == 2)
      {
        if (v375)
        {
          v381 = ~(2 * v375 + 6) & 6;
          v382 = (v374 + ((v375 - 1) >> 2));
          v383 = (v373 + v375);
          v384 = *a2;
          do
          {
            *v383-- = (*v382 >> v381) & 3;
            v55 = v381 == 6;
            v385 = v381 == 6;
            v381 += 2;
            if (v55)
            {
              v381 = 0;
            }

            v382 -= v385;
            --v384;
          }

          while (v384);
        }
      }

      else if (v372 == 1 && v375)
      {
        v376 = -v375 & 7;
        v377 = (v374 + ((v375 - 1) >> 3));
        v378 = (v373 + v375);
        v379 = *a2;
        do
        {
          *v378-- = (*v377 >> v376) & 1;
          v380 = v376 == 7;
          if (v376 == 7)
          {
            v376 = 0;
          }

          else
          {
            ++v376;
          }

          v377 -= v380;
          --v379;
        }

        while (v379);
      }

      *(a2 + 17) = 8;
      v393 = *(a2 + 18);
      *(a2 + 19) = 8 * v393;
      *(a2 + 1) = (v375 * v393);
    }
  }

  if (*(a2 + 16) == 3 && (*(v5 + 596) & 0x80000000) == 0)
  {
    result = sub_100388FDC(v5, a2);
  }

  v394 = *(v5 + 300);
  if (v394)
  {
    result = sub_100388E50(a2, (*(v5 + 544) + 1));
    v394 = *(v5 + 300);
    if ((v394 & 0x10000) == 0)
    {
LABEL_653:
      if ((v394 & 0x8000) == 0)
      {
        goto LABEL_705;
      }

      goto LABEL_657;
    }
  }

  else if ((v394 & 0x10000) == 0)
  {
    goto LABEL_653;
  }

  result = sub_100388BE0(a2, (*(v5 + 544) + 1));
  v394 = *(v5 + 300);
  if ((v394 & 0x8000) == 0)
  {
    goto LABEL_705;
  }

LABEL_657:
  v395 = *(v5 + 544);
  v396 = v395 + 1;
  v397 = *(v5 + 618);
  v398 = *(v5 + 296);
  v399 = *a2;
  if (*(a2 + 16) == 2)
  {
    v405 = *(a2 + 17);
    if (v405 == 16)
    {
      if ((v398 & 0x80) != 0)
      {
        v429 = v396 + 2 * v399 + 6 * v399;
        if (v399 >= 2)
        {
          v430 = v399 - 1;
          v431 = (6 * v399 + v395 - 2);
          v432 = __rev16(v397);
          do
          {
            *(v429 - 2) = v432;
            *(v429 - 3) = v431[2];
            *(v429 - 4) = v431[1];
            *(v429 - 5) = *v431;
            *(v429 - 6) = *(v431 - 1);
            *(v429 - 7) = *(v431 - 2);
            *(v429 - 8) = *(v431 - 3);
            v429 -= 8;
            v431 -= 6;
            --v430;
          }

          while (v430);
        }

        *(v429 - 2) = __rev16(v397);
      }

      else if (v399)
      {
        v412 = (v395 + 6 * v399 - 2);
        v413 = (v395 + 8 * v399 - 3);
        v414 = *a2;
        do
        {
          v413[3] = v412[2];
          v413[2] = v412[1];
          v413[1] = *v412;
          *v413 = *(v412 - 1);
          *(v413 - 1) = *(v412 - 2);
          *(v413 - 2) = *(v412 - 3);
          *(v413 - 3) = v397;
          *(v413 - 4) = BYTE1(v397);
          v412 -= 6;
          v413 -= 8;
          --v414;
        }

        while (v414);
      }

      v419 = 3;
      v420 = 64;
    }

    else
    {
      if (v405 != 8)
      {
        goto LABEL_705;
      }

      if ((v398 & 0x80) != 0)
      {
        v422 = v396 + v399 + 3 * v399;
        if (v399 >= 2)
        {
          v423 = v399 - 1;
          v424 = (v395 + 3 * v399);
          do
          {
            *(v422 - 1) = v397;
            *(v422 - 2) = *v424;
            *(v422 - 3) = *(v424 - 1);
            *(v422 - 4) = *(v424 - 2);
            v422 -= 4;
            v424 -= 3;
            --v423;
          }

          while (v423);
        }

        *(v422 - 1) = v397;
      }

      else if (v399)
      {
        v406 = (v395 + 3 * v399);
        v407 = (v395 + 4 * v399 - 1);
        v408 = *a2;
        do
        {
          v407[1] = *v406;
          *v407 = *(v406 - 1);
          *(v407 - 1) = *(v406 - 2);
          *(v407 - 2) = v397;
          v406 -= 3;
          v407 -= 4;
          --v408;
        }

        while (v408);
      }

      v419 = 2;
      v420 = 32;
    }

    v421 = 4;
  }

  else
  {
    if (*(a2 + 16))
    {
      goto LABEL_705;
    }

    v400 = *(a2 + 17);
    if (v400 == 16)
    {
      if ((v398 & 0x80) != 0)
      {
        v425 = v396 + 2 * v399 + 2 * v399;
        v426 = __rev16(v397);
        if (v399 >= 2)
        {
          v427 = v399 - 1;
          v428 = (v395 + 2 * v399);
          do
          {
            *(v425 - 2) = v426;
            *(v425 - 3) = *v428;
            *(v425 - 4) = *(v428 - 1);
            v425 -= 4;
            v428 -= 2;
            --v427;
          }

          while (v427);
        }

        *(v425 - 2) = v426;
      }

      else if (v399)
      {
        v409 = (v395 + 2 * v399);
        v410 = (v395 + 4 * v399 - 1);
        v411 = *a2;
        do
        {
          v410[1] = *v409;
          *v410 = *(v409 - 1);
          *(v410 - 1) = v397;
          *(v410 - 2) = BYTE1(v397);
          v409 -= 2;
          v410 -= 4;
          --v411;
        }

        while (v411);
      }

      v421 = 2;
      v420 = 32;
      v419 = 2;
    }

    else
    {
      if (v400 != 8)
      {
        goto LABEL_705;
      }

      if ((v398 & 0x80) != 0)
      {
        v415 = v396 + v399 + v399;
        if (v399 >= 2)
        {
          v416 = (v395 + v399);
          v417 = v399 - 1;
          do
          {
            *(v415 - 1) = v397;
            v418 = *v416--;
            *(v415 - 2) = v418;
            v415 -= 2;
            --v417;
          }

          while (v417);
        }

        *(v415 - 1) = v397;
      }

      else if (v399)
      {
        v401 = (v395 + 2 * v399);
        v402 = (v395 + v399);
        v403 = *a2;
        do
        {
          v404 = *v402--;
          *v401 = v404;
          *(v401 - 1) = v397;
          v401 -= 2;
          --v403;
        }

        while (v403);
      }

      v419 = 1;
      v420 = 16;
      v421 = 2;
    }
  }

  *(a2 + 18) = v421;
  *(a2 + 19) = v420;
  *(a2 + 1) = (v399 << v419);
  v394 = *(v5 + 300);
LABEL_705:
  if ((v394 & 0x20000) == 0)
  {
    goto LABEL_764;
  }

  v433 = *(v5 + 544);
  v434 = v433 + 1;
  v435 = *a2;
  v436 = *(a2 + 16);
  if (v436 == 4)
  {
    if (*(a2 + 17) == 8)
    {
      if (!v435)
      {
        goto LABEL_764;
      }

      v440 = *(a2 + 1);
      v441 = v434 + v440;
      if (v435 < 8)
      {
        LODWORD(v442) = 0;
        goto LABEL_754;
      }

      if (v435 >= 0x10)
      {
        v453 = v435 & 0xFFFFFFF0;
        v472 = (v441 - 32);
        v473 = v453;
        do
        {
          v500 = vld2q_s8(v472);
          v474 = v500.val[0];
          vst2q_s8(v472, *(&v500 + 16));
          v472 -= 32;
          v473 -= 16;
        }

        while (v473);
        if (v453 == v435)
        {
          goto LABEL_764;
        }

        if ((v435 & 8) == 0)
        {
          v441 -= 2 * v453;
          LODWORD(v442) = v435 & 0xFFFFFFF0;
          goto LABEL_754;
        }
      }

      else
      {
        v453 = 0;
      }

      v442 = v435 & 0xFFFFFFF8;
      v441 -= 2 * v442;
      v454 = v453 - v442;
      v455 = (v440 - 2 * v453 + v433 - 15);
      do
      {
        v498 = vld2_s8(v455);
        v456 = v498.val[0];
        vst2_s8(v455, *(&v498 + 8));
        v455 -= 16;
        v454 += 8;
      }

      while (v454);
      if (v442 == v435)
      {
        goto LABEL_764;
      }

LABEL_754:
      v475 = v435 - v442;
      v476 = (v441 - 1);
      do
      {
        v477 = *v476;
        *v476 = *(v476 - 1);
        *(v476 - 1) = v477;
        v476 -= 2;
        --v475;
      }

      while (v475);
      goto LABEL_764;
    }

    if (!v435)
    {
      goto LABEL_764;
    }

    v444 = *(a2 + 1);
    v445 = v434 + v444;
    if (v435 < 8)
    {
      LODWORD(v446) = 0;
      goto LABEL_762;
    }

    if (v435 >= 0x10)
    {
      v457 = v435 & 0xFFFFFFF0;
      v478 = (v445 - 64);
      v479 = v457;
      do
      {
        v480 = vrev32q_s16(v478[1]);
        v481 = vrev32q_s16(*v478);
        v482 = vrev32q_s16(v478[3]);
        a3 = vrev32q_s16(v478[2]);
        v478[2] = a3;
        v478[3] = v482;
        *v478 = v481;
        v478[1] = v480;
        v478 -= 4;
        v479 -= 16;
      }

      while (v479);
      if (v457 == v435)
      {
        goto LABEL_764;
      }

      if ((v435 & 8) == 0)
      {
        v445 -= 4 * v457;
        LODWORD(v446) = v435 & 0xFFFFFFF0;
        goto LABEL_762;
      }
    }

    else
    {
      v457 = 0;
    }

    v446 = v435 & 0xFFFFFFF8;
    v445 -= 4 * v446;
    v458 = v457 - v446;
    v459 = (v444 - 4 * v457 + v433 - 31);
    do
    {
      *a3.n128_u64 = vld4_s8(v459);
      v504.val[0] = v460;
      v504.val[1] = v461;
      v504.val[2] = a3.n128_u64[0];
      v504.val[3] = v462;
      vst4_s8(v459, v504);
      v459 -= 32;
      v458 += 8;
    }

    while (v458);
    if (v446 == v435)
    {
      goto LABEL_764;
    }

LABEL_762:
    v483 = v435 - v446;
    v484 = (v445 - 4);
    do
    {
      a3.n128_u32[0] = *v484;
      v485 = vmovl_u8(a3.n128_u64[0]).u64[0];
      v486 = vext_s8(v485, v485, 4uLL);
      a3.n128_u64[0] = vuzp1_s8(v486, v486);
      *v484-- = a3.n128_u32[0];
      --v483;
    }

    while (v483);
    goto LABEL_764;
  }

  if (v436 != 6)
  {
    goto LABEL_764;
  }

  if (*(a2 + 17) == 8)
  {
    if (!v435)
    {
      goto LABEL_764;
    }

    v437 = *(a2 + 1);
    v438 = v434 + v437;
    if (v435 < 8)
    {
      LODWORD(v439) = 0;
      goto LABEL_746;
    }

    if (v435 >= 0x10)
    {
      v447 = v435 & 0xFFFFFFF0;
      v463 = (v438 - 64);
      a3.n128_u32[1] = 100992007;
      v464 = v447;
      do
      {
        v465 = vqtbl1q_s8(v463[1], xmmword_1003EB800);
        v466 = vqtbl1q_s8(*v463, xmmword_1003EB800);
        v467 = vqtbl1q_s8(v463[3], xmmword_1003EB800);
        v463[2] = vqtbl1q_s8(v463[2], xmmword_1003EB800);
        v463[3] = v467;
        *v463 = v466;
        v463[1] = v465;
        v463 -= 4;
        v464 -= 16;
      }

      while (v464);
      if (v447 == v435)
      {
        goto LABEL_764;
      }

      if ((v435 & 8) == 0)
      {
        v438 -= 4 * v447;
        LODWORD(v439) = v435 & 0xFFFFFFF0;
LABEL_746:
        v468 = (v438 - 4);
        v469 = v435 - v439;
        do
        {
          a3.n128_u32[0] = *v468;
          v470 = vmovl_u8(a3.n128_u64[0]).u64[0];
          v471 = vext_s8(v470, v470, 6uLL);
          a3.n128_u64[0] = vuzp1_s8(v471, v471);
          *v468-- = a3.n128_u32[0];
          --v469;
        }

        while (v469);
        goto LABEL_764;
      }
    }

    else
    {
      v447 = 0;
    }

    v439 = v435 & 0xFFFFFFF8;
    v438 -= 4 * v439;
    v448 = v447 - v439;
    v449 = (v437 - 4 * v447 + v433 - 31);
    do
    {
      *a3.n128_u64 = vld4_s8(v449);
      v503.val[0] = v450;
      v503.val[1] = a3.n128_u64[0];
      v503.val[2] = v451;
      v503.val[3] = v452;
      vst4_s8(v449, v503);
      v449 -= 32;
      v448 += 8;
    }

    while (v448);
    if (v439 != v435)
    {
      goto LABEL_746;
    }
  }

  else if (v435)
  {
    v443 = (*(a2 + 1) + v433 - 7);
    do
    {
      *v443 = vext_s8(*v443, *v443, 6uLL);
      --v443;
      LODWORD(v435) = v435 - 1;
    }

    while (v435);
  }

LABEL_764:
  v487 = *(v5 + 300);
  if ((v487 & 0x10) != 0)
  {
    result = sub_100388B00(a2, (*(v5 + 544) + 1));
    if ((*(v5 + 300) & 0x100000) == 0)
    {
      return result;
    }
  }

  else if ((v487 & 0x100000) == 0)
  {
    return result;
  }

  v488 = *(v5 + 264);
  if (v488)
  {
    result = v488(v5, a2, *(v5 + 544) + 1);
  }

  if (*(v5 + 288))
  {
    *(a2 + 17) = *(v5 + 288);
  }

  v489 = *(v5 + 289);
  if (v489)
  {
    *(a2 + 18) = v489;
  }

  else
  {
    v489 = *(a2 + 18);
  }

  v490 = v489 * *(a2 + 17);
  *(a2 + 19) = v490;
  v491 = v490 >= 8u;
  v492 = (*a2 * v490 + 7) >> 3;
  v493 = *a2 * (v490 >> 3);
  if (!v491)
  {
    v493 = v492;
  }

  *(a2 + 1) = v493;
  return result;
}

unsigned int *sub_100380E98(unsigned int *result, uint64_t a2, unsigned __int16 *a3)
{
  v3 = *result;
  if (!*(result + 16))
  {
    if (a3)
    {
      v13 = a3[4];
      v14 = *(result + 17);
      if (v14 > 7)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v13 = 0;
      v14 = *(result + 17);
      if (v14 > 7)
      {
LABEL_61:
        if (!a3)
        {
          return result;
        }

        if (v14 == 16)
        {
          if (v3)
          {
            v49 = *(result + 1);
            v50 = (a2 + 2 * v49 - 1);
            v51 = (a2 + v49 - 1);
            v52 = v3;
            do
            {
              if (*(v51 - 1) == v13 >> 8 && *v51 == v13)
              {
                v53 = 0;
              }

              else
              {
                v53 = -1;
              }

              *v50 = v53;
              *(v50 - 1) = v53;
              *(v50 - 2) = *v51;
              v54 = *(v51 - 1);
              v51 -= 2;
              *(v50 - 3) = v54;
              v50 -= 4;
              --v52;
            }

            while (v52);
          }
        }

        else if (v14 == 8 && v3)
        {
          v44 = (a2 + 2 * v3 - 1);
          v45 = (v3 + a2 - 1);
          v46 = v3;
          do
          {
            if (*v45 == v13)
            {
              v47 = 0;
            }

            else
            {
              v47 = -1;
            }

            *v44 = v47;
            v48 = *v45--;
            *(v44 - 1) = v48;
            v44 -= 2;
            --v46;
          }

          while (v46);
        }

        *(result + 16) = 4;
        *(result + 18) = 2;
        v30 = 2 * *(result + 17);
        v31 = v30;
        goto LABEL_79;
      }
    }

    switch(v14)
    {
      case 1u:
        if (v13)
        {
          v13 = 255;
        }

        else
        {
          v13 = 0;
        }

        if (v3)
        {
          v37 = -v3 & 7;
          v38 = (a2 + ((v3 - 1) >> 3));
          v39 = (v3 + a2 - 1);
          v40 = *result;
          do
          {
            if ((*v38 >> v37))
            {
              v41 = -1;
            }

            else
            {
              v41 = 0;
            }

            *v39-- = v41;
            v42 = v37 == 7;
            if (v37 == 7)
            {
              v37 = 0;
            }

            else
            {
              ++v37;
            }

            v38 -= v42;
            --v40;
          }

          while (v40);
          goto LABEL_58;
        }

        break;
      case 2u:
        v13 = 85 * (v13 & 3);
        if (v3)
        {
          v32 = ~(2 * v3 + 6) & 6;
          v33 = (a2 + ((v3 - 1) >> 2));
          v34 = (v3 + a2 - 1);
          v35 = *result;
          do
          {
            *v34-- = 85 * ((*v33 >> v32) & 3);
            v20 = v32 == 6;
            v36 = v32 == 6;
            v32 += 2;
            if (v20)
            {
              v32 = 0;
            }

            v33 -= v36;
            --v35;
          }

          while (v35);
          goto LABEL_58;
        }

        break;
      case 4u:
        v13 = v13 & 0xF | (16 * (v13 & 0xF));
        if (v3)
        {
          v15 = 4 * (*result & 1);
          v16 = (a2 + ((v3 - 1) >> 1));
          v17 = (v3 + a2 - 1);
          v18 = *result;
          do
          {
            v19 = *v16 >> v15;
            v20 = v15 == 0;
            v21 = v15 == 0;
            *v17-- = v19 & 0xF | (16 * v19);
            v22 = !v20;
            v16 -= v22;
            v15 = 4 * v21;
            --v18;
          }

          while (v18);
          goto LABEL_58;
        }

        break;
      default:
LABEL_58:
        v43 = v3;
LABEL_60:
        v14 = 8;
        *(result + 17) = 8;
        *(result + 19) = 8;
        *(result + 1) = v43;
        goto LABEL_61;
    }

    v43 = 0;
    goto LABEL_60;
  }

  if (!a3 || *(result + 16) != 2)
  {
    return result;
  }

  v4 = *(result + 17);
  if (v4 == 16)
  {
    if (v3)
    {
      v23 = a3[1];
      v24 = a3[2];
      v25 = a3[3];
      v26 = (a2 + 8 * v3 - 1);
      v27 = (*(result + 1) + a2 - 3);
      v28 = *result;
      do
      {
        if (v23 >> 8 == *(v27 - 3) && *(v27 - 2) == v23 && v24 >> 8 == *(v27 - 1) && *v27 == v24 && v25 >> 8 == v27[1] && v27[2] == v25)
        {
          v29 = 0;
        }

        else
        {
          v29 = -1;
        }

        *v26 = v29;
        *(v26 - 1) = v29;
        *(v26 - 2) = v27[2];
        *(v26 - 3) = v27[1];
        *(v26 - 4) = *v27;
        *(v26 - 5) = *(v27 - 1);
        *(v26 - 6) = *(v27 - 2);
        *(v26 - 7) = *(v27 - 3);
        v26 -= 8;
        v27 -= 6;
        --v28;
      }

      while (v28);
    }
  }

  else if (v4 == 8 && v3)
  {
    v5 = (a2 + 4 * v3 - 1);
    v6 = (a2 + *(result + 1) - 1);
    v7 = *(a3 + 6);
    v8 = *(a3 + 4);
    v9 = *(a3 + 2);
    v10 = *result;
    do
    {
      if (*(v6 - 2) == v9 && *(v6 - 1) == v8 && *v6 == v7)
      {
        v11 = 0;
      }

      else
      {
        v11 = -1;
      }

      *v5 = v11;
      *(v5 - 1) = *v6;
      *(v5 - 2) = *(v6 - 1);
      v12 = *(v6 - 2);
      v6 -= 3;
      *(v5 - 3) = v12;
      v5 -= 4;
      --v10;
    }

    while (v10);
  }

  *(result + 16) = 6;
  *(result + 18) = 4;
  v30 = 4 * *(result + 17);
  v31 = v30;
LABEL_79:
  *(result + 19) = v30;
  v55 = v31 >= 8;
  v56 = (v30 * v3 + 7) >> 3;
  v57 = v3 * (v30 >> 3);
  if (!v55)
  {
    v57 = v56;
  }

  *(result + 1) = v57;
  return result;
}

unsigned int *sub_1003812D0(unsigned int *result, uint64_t a2)
{
  v2 = *(result + 17);
  if (v2 >= 8)
  {
    v3 = *(result + 16);
    if ((v3 & 2) == 0)
    {
      v4 = *result;
      v5 = *result;
      if (v3 == 4)
      {
        if (v2 == 8)
        {
          if (v5)
          {
            v10 = (a2 + 2 * v4 - 1);
            v11 = &v10[2 * v4];
            do
            {
              *v11 = *v10;
              v12 = *(v10 - 1);
              *(v11 - 1) = v12;
              *(v11 - 2) = v12;
              *(v11 - 3) = *(v10 - 1);
              v11 -= 4;
              v10 -= 2;
              --v5;
            }

            while (v5);
          }
        }

        else if (v5)
        {
          v15 = (a2 + 4 * v4 - 1);
          v16 = &v15[4 * v4];
          do
          {
            *v16 = *v15;
            *(v16 - 1) = *(v15 - 1);
            *(v16 - 2) = *(v15 - 2);
            *(v16 - 3) = *(v15 - 3);
            *(v16 - 4) = *(v15 - 2);
            *(v16 - 5) = *(v15 - 3);
            *(v16 - 6) = *(v15 - 2);
            *(v16 - 7) = *(v15 - 3);
            v16 -= 8;
            v15 -= 4;
            --v5;
          }

          while (v5);
        }
      }

      else if (!*(result + 16))
      {
        if (v2 == 8)
        {
          if (v5)
          {
            v6 = (a2 + v4 - 1);
            v7 = &v6[2 * v4];
            do
            {
              v8 = *v6;
              *v7 = *v6;
              *(v7 - 1) = v8;
              v9 = *v6--;
              *(v7 - 2) = v9;
              v7 -= 3;
              --v5;
            }

            while (v5);
          }
        }

        else if (v5)
        {
          v13 = (a2 + 2 * v4 - 1);
          v14 = &v13[4 * v4];
          do
          {
            *v14 = *v13;
            *(v14 - 1) = *(v13 - 1);
            *(v14 - 2) = *v13;
            *(v14 - 3) = *(v13 - 1);
            *(v14 - 4) = *v13;
            *(v14 - 5) = *(v13 - 1);
            v14 -= 6;
            v13 -= 2;
            --v5;
          }

          while (v5);
        }
      }

      v17 = *(result + 18) + 2;
      *(result + 18) = v17;
      *(result + 16) |= 2u;
      v18 = *(result + 17) * v17;
      *(result + 19) = v18;
      v19 = (v18 * v4 + 7) >> 3;
      v20 = v4 * (v18 >> 3);
      if (v18 < 8u)
      {
        v20 = v19;
      }

      *(result + 1) = v20;
    }
  }

  return result;
}

uint64_t sub_100381488(uint64_t result, uint64_t a2)
{
  v2 = *(result + 613);
  if (v2 <= 7)
  {
    v3 = result;
    *(result + 1124) = 17;
    v4 = a2 + 44;
    sub_10037CF90(result);
    *(v3 + 613) = 8;
    result = sub_100376458(v4, v2, 8 - v2);
    if (result)
    {
      if (v2 > 3 || !sub_100376458(v4, v2, 4 - v2))
      {
        sub_10037A948(v3, "PNG file corrupted by ASCII conversion");
      }

      sub_10037A948(v3, "Not a PNG file");
    }

    if (v2 <= 2)
    {
      *(v3 + 292) |= 0x1000u;
    }
  }

  return result;
}

uint64_t sub_100381550(uint64_t a1)
{
  *(a1 + 1124) = 33;
  sub_10037CF90(a1);
  if (v10 << 24 < 0)
  {
    sub_10037A948(a1, "PNG unsigned integer out of range");
  }

  *(a1 + 528) = bswap32(v11);
  sub_1003764B8(a1);
  sub_1003764EC(a1, &v11, 4);
  v2 = *(a1 + 528);
  v3 = v2 - 123 >= 0xFFFFFFC6 && v2 - 91 > 5;
  if (!v3 || BYTE1(v2) - 123 < 0xFFFFFFC6 || BYTE1(v2) - 91 < 6 || BYTE2(v2) - 123 < 0xFFFFFFC6 || BYTE2(v2) - 91 < 6 || HIBYTE(v2) - 123 < 0xFFFFFFC6 || HIBYTE(v2) - 91 < 6u)
  {
    sub_10037B274(a1, "invalid chunk type");
  }

  result = _byteswap_ulong(v10);
  v5 = *(a1 + 1056);
  if (v5 - 1 >= 0x7FFFFFFE)
  {
    v5 = 0x7FFFFFFFLL;
  }

  if (v2 == 1229209940)
  {
    if (*(a1 + 604))
    {
      v6 = 6;
    }

    else
    {
      v6 = 0;
    }

    v7 = ((*(a1 + 496) * *(a1 + 611)) << (*(a1 + 608) > 8u)) + v6 + 1;
    v8 = *(a1 + 500) * v7;
    if ((v8 & 0xFFFFFFFF00000000) != 0)
    {
      v8 = 0x7FFFFFFFLL;
    }

    if (v7 >= 0x7F36)
    {
      v7 = 32566;
    }

    v9 = 5 * (v8 / v7) + v8 + 11;
    if (v9 >= 0x7FFFFFFF)
    {
      v9 = 0x7FFFFFFFLL;
    }

    if (v5 <= v9)
    {
      v5 = v9;
    }
  }

  if (v5 < result)
  {
    sub_10037B274(a1, "chunk data is too large");
  }

  *(a1 + 1124) = 65;
  return result;
}

uint64_t sub_100381760(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v3 = a2;
    if (a1)
    {
      do
      {
        if (v3 >= 0x400)
        {
          v4 = 1024;
        }

        else
        {
          v4 = v3;
        }

        v3 -= v4;
        sub_10037CF90(a1);
        sub_1003764EC(a1, buf, v4);
      }

      while (v3);
    }

    else
    {
      v5 = a2 - 1024;
      if (a2 < 0x400)
      {
        v5 = 0;
      }

      if (a2 < 0x401)
      {
        goto LABEL_14;
      }

      v6 = ((v5 + 1023) >> 10) + 1;
      v3 = a2 - ((v6 & 0x7FFFFE) << 10);
      v7 = v6 & 0x7FFFFE;
      do
      {
        v7 -= 2;
      }

      while (v7);
      if (v6 != (v6 & 0x7FFFFE))
      {
LABEL_14:
        v8 = v3 + 1024;
        do
        {
          v8 -= 1024;
        }

        while (v8 >= 0x401);
      }
    }
  }

  v9 = *(a1 + 528);
  v10 = *(a1 + 296);
  *(a1 + 1124) = 129;
  sub_10037CF90(a1);
  if ((v9 & 0x20000000) != 0)
  {
    if ((~v10 & 0x300) == 0)
    {
      return 0;
    }
  }

  else if ((v10 & 0x800) != 0)
  {
    return 0;
  }

  if (bswap32(*buf) == *(a1 + 580))
  {
    return 0;
  }

  v12 = *(a1 + 296);
  if ((*(a1 + 531) & 0x20) != 0)
  {
    if ((v12 & 0x200) == 0)
    {
      goto LABEL_24;
    }

LABEL_26:
    sub_10037B274(a1, "CRC error");
  }

  if ((v12 & 0x400) == 0)
  {
    goto LABEL_26;
  }

LABEL_24:
  sub_10037B1A0(a1, "CRC error");
  return 1;
}

uint64_t sub_1003818F0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 292);
  if (v4)
  {
    sub_10037B274(a1, "out of place");
  }

  if (a3 != 13)
  {
    sub_10037B274(a1, "invalid");
  }

  *(a1 + 292) = v4 | 1;
  sub_10037CF90(a1);
  sub_1003764EC(a1, &buf, 13);
  sub_100381760(a1, 0);
  if (buf << 24 < 0 || v20 << 24 < 0)
  {
    sub_10037A948(a1, "PNG unsigned integer out of range");
  }

  v6 = _byteswap_ulong(buf);
  v7 = _byteswap_ulong(v20);
  v8 = v21;
  v9 = v22;
  v10 = v23;
  v11 = v24;
  v12 = v25;
  *(a1 + 496) = v6;
  *(a1 + 500) = v7;
  *(a1 + 608) = v8;
  *(a1 + 604) = v12;
  *(a1 + 607) = v9;
  *(a1 + 980) = v11;
  *(a1 + 1040) = v10;
  v13 = 0x4010201030101uLL >> (8 * v9);
  if (v9 >= 7)
  {
    LOBYTE(v13) = 1;
  }

  *(a1 + 611) = v13;
  v14 = v13 * v8;
  *(a1 + 610) = v14;
  v15 = v14 >= 8u;
  v16 = (v14 * v6 + 7) >> 3;
  v17 = v6 * (v14 >> 3);
  if (!v15)
  {
    v17 = v16;
  }

  *(a1 + 512) = v17;
  return sub_100387868(a1, a2, v6, v7, v8, v9, v12, v10, v11);
}

uint64_t sub_100381A98(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 292);
  if ((v4 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v4 & 2) != 0)
  {
    sub_10037B274(a1, "duplicate");
  }

  if ((v4 & 4) != 0)
  {
    sub_100381760(a1, a3);
    v6 = "out of place";
    goto LABEL_7;
  }

  *(a1 + 292) = v4 | 2;
  v5 = *(a1 + 607);
  if ((v5 & 2) != 0)
  {
    if (a3 > 0x300 || a3 % 3)
    {
      sub_100381760(a1, a3);
      if (*(a1 + 607) == 3)
      {
        sub_10037B274(a1, "invalid");
      }

      v6 = "invalid";
      goto LABEL_7;
    }

    if (v5 == 3)
    {
      v9 = a2;
      if (1 << *(a1 + 608) >= (a3 / 3u))
      {
        v10 = a3 / 3u;
      }

      else
      {
        v10 = 1 << *(a1 + 608);
      }

      if (v10 < 1)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v9 = a2;
      if (a3 / 3u <= 0x100)
      {
        v10 = a3 / 3u;
      }

      else
      {
        v10 = 256;
      }

      if (v10 < 1)
      {
LABEL_26:
        sub_100381760(a1, -3 * v10 + a3);
        result = sub_100387D98(a1, v9, v18, v10);
        if (*(a1 + 600))
        {
          *(a1 + 600) = 0;
          v13 = v9;
          if (!v9)
          {
            v14 = "tRNS must be after";
            return sub_10037B50C(a1, v14);
          }
        }

        else
        {
          if (!v9)
          {
            return result;
          }

          v13 = v9;
          v15 = *(v9 + 8);
          if ((v15 & 0x10) == 0)
          {
            if ((v15 & 0x40) != 0)
            {
              goto LABEL_36;
            }

            goto LABEL_32;
          }

          *(a1 + 600) = 0;
        }

        *(v13 + 34) = 0;
        result = sub_10037B50C(a1, "tRNS must be after");
        v13 = v9;
        if ((*(v9 + 8) & 0x40) != 0)
        {
LABEL_36:
          result = sub_10037B50C(a1, "hIST must be after");
          if ((*(v9 + 8) & 0x20) == 0)
          {
            return result;
          }

          goto LABEL_37;
        }

LABEL_32:
        if ((*(v13 + 8) & 0x20) == 0)
        {
          return result;
        }

LABEL_37:
        v14 = "bKGD must be after";
        return sub_10037B50C(a1, v14);
      }
    }

    v11 = v18;
    v12 = v10;
    do
    {
      sub_10037CF90(a1);
      sub_1003764EC(a1, &buf, 3);
      *v11 = buf;
      *(v11 + 1) = v17;
      v11 += 3;
      --v12;
    }

    while (v12);
    goto LABEL_26;
  }

  sub_100381760(a1, a3);
  v6 = "ignored in grayscale PNG";
LABEL_7:

  return sub_10037B50C(a1, v6);
}

uint64_t sub_100381D8C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 292);
  if ((~v4 & 5) != 0)
  {
    sub_10037B274(a1, "out of place");
  }

  *(a1 + 292) = v4 | 0x18;
  result = sub_100381760(a1, a3);
  if (a3)
  {

    return sub_10037B50C(a1, "invalid");
  }

  return result;
}

void sub_100381E10(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 292);
  if ((v3 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v3 & 6) != 0)
  {
    v4 = a1;
    sub_100381760(a1, a3);
    v5 = "out of place";
LABEL_8:

    sub_10037B50C(v4, v5);
    return;
  }

  if (a3 != 4)
  {
    v4 = a1;
    sub_100381760(a1, a3);
    v5 = "invalid";
    goto LABEL_8;
  }

  sub_10037CF90(a1);
  sub_1003764EC(a1, &buf, 4);
  if (!sub_100381760(a1, 0))
  {
    if (buf << 24 < 0)
    {
      v8 = -1;
    }

    else
    {
      v8 = _byteswap_ulong(buf);
    }

    sub_100376F70(a1, a1 + 1168, v8);
    sub_1003770D4(a1, a2);
  }
}

uint64_t sub_100381F44(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 292);
  if ((v3 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v3 & 6) != 0)
  {
    v4 = a1;
    sub_100381760(a1, a3);
    v5 = "out of place";
LABEL_4:

    return sub_10037B50C(v4, v5);
  }

  if (a2 && (*(a2 + 8) & 2) != 0)
  {
    v4 = a1;
    sub_100381760(a1, a3);
    v5 = "duplicate";
    goto LABEL_4;
  }

  v7 = *(a1 + 607);
  if (v7 == 3)
  {
    v8 = 8;
    if (a3 > 4)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = *(a1 + 611);
    v8 = *(a1 + 608);
    if (a3 > 4)
    {
LABEL_16:
      sub_10037B50C(a1, "invalid");

      return sub_100381760(a1, a3);
    }
  }

  if (v7 != a3)
  {
    goto LABEL_16;
  }

  v11 = a3;
  *buf = 16843009 * v8;
  sub_10037CF90(a1);
  sub_1003764EC(a1, buf, v11);
  result = sub_100381760(a1, 0);
  if (!result)
  {
    if (!a3 || (buf[0] - 1) < v8 && (a3 == 1 || (buf[1] - 1) < v8 && (a3 == 2 || (buf[2] - 1) < v8 && (a3 == 3 || (buf[3] - 1) < v8))))
    {
      v15 = buf[0];
      if ((*(a1 + 607) & 2) != 0)
      {
        v16 = &buf[3];
        v17 = buf[1];
        v18 = buf[2];
      }

      else
      {
        v16 = &buf[1];
        *(a1 + 723) = buf[0];
        v17 = v15;
        v18 = v15;
      }

      v19 = *v16;
      *(a1 + 720) = v15;
      *(a1 + 721) = v17;
      *(a1 + 722) = v18;
      *(a1 + 724) = v19;
      return sub_100387ECC(a1, a2, a1 + 720);
    }

    else
    {
      return sub_10037B50C(a1, "invalid");
    }
  }

  return result;
}

void sub_1003821C4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 292);
  if ((v4 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v4 & 6) != 0)
  {
    sub_100381760(a1, a3);
    v5 = "out of place";
    v6 = a1;

LABEL_5:
    sub_10037B50C(v6, v5);
    return;
  }

  if (a3 != 32)
  {
    sub_100381760(a1, a3);
    v5 = "invalid";
    v6 = a1;

    goto LABEL_5;
  }

  sub_10037CF90(a1);
  sub_1003764EC(a1, &buf, 32);
  if (sub_100381760(a1, 0))
  {
    return;
  }

  if (buf << 24 < 0)
  {
    v8 = -1;
    v31 = -1;
    v9 = v34 << 24;
    if ((v9 & 0x80000000) == 0)
    {
LABEL_10:
      v10 = v37 | (v35 << 16) | (v36 << 8) | v9;
      v32 = v10;
      v11 = v38 << 24;
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v8 = _byteswap_ulong(buf);
    v31 = v8;
    v9 = v34 << 24;
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }
  }

  v10 = -1;
  v32 = -1;
  v11 = v38 << 24;
  if ((v11 & 0x80000000) == 0)
  {
LABEL_11:
    v12 = v41 | (v39 << 16) | (v40 << 8) | v11;
    v25 = v12;
    v13 = v42 << 24;
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = -1;
  v25 = -1;
  v13 = v42 << 24;
  if ((v13 & 0x80000000) == 0)
  {
LABEL_12:
    v14 = v45 | (v43 << 16) | (v44 << 8) | v13;
    v26 = v14;
    v15 = v46 << 24;
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v14 = -1;
  v26 = -1;
  v15 = v46 << 24;
  if ((v15 & 0x80000000) == 0)
  {
LABEL_13:
    v16 = v49 | (v47 << 16) | (v48 << 8) | v15;
    v27 = v16;
    v17 = v50 << 24;
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v16 = -1;
  v27 = -1;
  v17 = v50 << 24;
  if ((v17 & 0x80000000) == 0)
  {
LABEL_14:
    v18 = v53 | (v51 << 16) | (v52 << 8) | v17;
    v28 = v18;
    v19 = v54 << 24;
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_26:
    v20 = -1;
    v29 = -1;
    v21 = v58 << 24;
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_25:
  v18 = -1;
  v28 = -1;
  v19 = v54 << 24;
  if (v19 < 0)
  {
    goto LABEL_26;
  }

LABEL_15:
  v20 = v57 | (v55 << 16) | (v56 << 8) | v19;
  v29 = v20;
  v21 = v58 << 24;
  if ((v21 & 0x80000000) == 0)
  {
LABEL_16:
    v22 = v61 | (v59 << 16) | (v60 << 8) | v21;
    goto LABEL_28;
  }

LABEL_27:
  v22 = -1;
LABEL_28:
  v30 = v22;
  if (v8 == -1 || v10 == -1 || v12 == -1 || v14 == -1 || v16 == -1 || v18 == -1 || v20 == -1 || v22 == -1)
  {
    v24 = "invalid values";
  }

  else
  {
    v23 = *(a1 + 1242);
    if (v23 < 0)
    {
      return;
    }

    if ((v23 & 0x10) == 0)
    {
      *(a1 + 1242) = v23 | 0x10;
      sub_1003771B4(a1, a1 + 1168, &v25, 1);
      sub_1003770D4(a1, a2);
      return;
    }

    *(a1 + 1242) = v23 | 0x8000;
    sub_1003770D4(a1, a2);
    v24 = "duplicate";
  }

  sub_10037B50C(a1, v24);
}

void sub_100382594(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 292);
  if ((v4 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v4 & 6) != 0)
  {
    sub_100381760(a1, a3);
    v5 = "out of place";
    v6 = a1;

LABEL_5:
    sub_10037B50C(v6, v5);
    return;
  }

  if (a3 != 1)
  {
    sub_100381760(a1, a3);
    v5 = "invalid";
    v6 = a1;

    goto LABEL_5;
  }

  buf = 0;
  sub_10037CF90(a1);
  sub_1003764EC(a1, &buf, 1);
  if (!sub_100381760(a1, 0))
  {
    v8 = *(a1 + 1242);
    if ((v8 & 0x80000000) == 0)
    {
      if ((v8 & 4) != 0)
      {
        *(a1 + 1242) = v8 | 0x8000;
        sub_1003770D4(a1, a2);
        sub_10037B50C(a1, "too many profiles");
      }

      else
      {
        sub_100377C14(a1, a1 + 1168, buf);
        sub_1003770D4(a1, a2);
      }
    }
  }
}

void sub_1003826FC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v34 = a3;
  v4 = *(a1 + 292);
  if ((v4 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v4 & 6) != 0)
  {
    sub_100381760(a1, a3);
    v5 = "out of place";
LABEL_6:

    sub_10037B50C(a1, v5);
    return;
  }

  if (a3 <= 0xD)
  {
    sub_100381760(a1, a3);
    v5 = "too short";
    goto LABEL_6;
  }

  v6 = *(a1 + 1242);
  if ((v6 & 0x80000000) == 0)
  {
    if ((v6 & 4) != 0)
    {
      v12 = "too many profiles";
LABEL_20:
      sub_100381760(a1, v34);
LABEL_21:
      *(a1 + 1242) |= 0x8000u;
      sub_1003770D4(a1, a2);
      if (!v12)
      {
        return;
      }

      v11 = a1;
      v10 = v12;
      goto LABEL_23;
    }

    if (a3 >= 0x51)
    {
      v8 = 81;
    }

    else
    {
      v8 = a3;
    }

    LODWORD(v9) = a3;
    sub_10037CF90(a1);
    sub_1003764EC(a1, __src, v8);
    v34 = v9 - v8;
    if ((v9 - v8) < 0xB)
    {
      sub_100381760(a1, v9 - v8);
      v10 = "too short";
      v11 = a1;
LABEL_23:
      sub_10037B50C(v11, v10);
      return;
    }

    v13 = 0;
    if (v9 >= 0x50)
    {
      v9 = 80;
    }

    else
    {
      v9 = v9;
    }

    while (__src[v13])
    {
      if (v9 == ++v13)
      {
        goto LABEL_32;
      }
    }

    LODWORD(v9) = v13;
LABEL_32:
    if ((v9 - 1) > 0x4E)
    {
      v12 = "bad keyword";
      goto LABEL_20;
    }

    v14 = v9 + 1;
    if (v14 >= v8 || __src[v14])
    {
      v12 = "bad compression method";
      goto LABEL_20;
    }

    if (sub_100382C74(a1, 1766015824))
    {
      v12 = *(a1 + 360);
      goto LABEL_20;
    }

    v15 = (v9 + 2);
    v44 = 0;
    v43 = 0u;
    v42 = 0u;
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    v33 = 132;
    *(a1 + 312) = &__src[v15];
    *(a1 + 320) = v8 - v15;
    sub_100382DEC(a1, v35, &v34, &v36, &v33, 0);
    if (v33)
    {
      goto LABEL_40;
    }

    v16 = bswap32(v36);
    if (!sub_1003781A4(a1, a1 + 1168, __src, v16) || !sub_10037820C(a1, a1 + 1168, __src, v16, &v36, *(a1 + 607)))
    {
      goto LABEL_49;
    }

    v17 = v44;
    v18 = BYTE1(v44);
    v19 = BYTE2(v44);
    v20 = HIBYTE(v44);
    v21 = sub_100382F98(a1, v16, 2);
    if (!v21)
    {
      v12 = "out of memory";
      goto LABEL_50;
    }

    *v21 = v36;
    v22 = v37;
    v23 = v38;
    v24 = v40;
    v21[3] = v39;
    v21[4] = v24;
    v21[1] = v22;
    v21[2] = v23;
    v25 = v41;
    v26 = v42;
    v27 = v43;
    *(v21 + 32) = v44;
    v21[6] = v26;
    v21[7] = v27;
    v21[5] = v25;
    v28 = 12 * ((v17 << 24) | (v18 << 16) | (v19 << 8) | v20);
    v32 = v21;
    v33 = v28;
    v29 = v21 + 132;
    sub_100382DEC(a1, v35, &v34, v21 + 132, &v33, 0);
    if (v33)
    {
      goto LABEL_40;
    }

    if (!sub_10037854C(a1, a1 + 1168, __src, v16, v32))
    {
LABEL_49:
      v12 = 0;
      goto LABEL_50;
    }

    v33 = v16 - v28 - 132;
    sub_100382DEC(a1, v35, &v34, &v29[v28], &v33, 1);
    v30 = v34;
    if (v34)
    {
      if ((*(a1 + 298) & 0x10) == 0)
      {
        v12 = "extra compressed data";
        goto LABEL_50;
      }

      if (!v33)
      {
        sub_10037B1A0(a1, "extra compressed data");
        goto LABEL_56;
      }
    }

    else if (!v33)
    {
LABEL_56:
      sub_100381760(a1, v30);
      sub_100378650(a1, a1 + 1168, v32, *(a1 + 408));
      if (a2)
      {
        sub_100376A18(a1, a2, 0x10u, 0);
        v31 = sub_10037BB9C(a1, v14);
        *(a2 + 128) = v31;
        if (!v31)
        {
          *(a1 + 1242) |= 0x8000u;
          sub_1003770D4(a1, a2);
          *(a1 + 304) = 0;
          v12 = "out of memory";
          goto LABEL_21;
        }

        memcpy(v31, __src, v14);
        *(a2 + 144) = v16;
        *(a2 + 136) = v32;
        *(a1 + 1104) = 0;
        *(a2 + 300) |= 0x10u;
        *(a2 + 8) |= 0x1000u;
        sub_1003770D4(a1, a2);
      }

      *(a1 + 304) = 0;
      return;
    }

LABEL_40:
    v12 = *(a1 + 360);
LABEL_50:
    *(a1 + 304) = 0;
    goto LABEL_20;
  }

  sub_100381760(a1, a3);
}

uint64_t sub_100382C74(uint64_t a1, int a2)
{
  v4 = *(a1 + 304);
  if (v4)
  {
    *v8 = bswap32(v4);
    sub_10037A9D8(v8, 0x40uLL, 4uLL, " using zstream");
    sub_10037B1A0(a1, v8);
    *(a1 + 304) = 0;
  }

  if ((*(a1 + 896) & 0xC) == 0xC)
  {
    v5 = 15;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 616) = (*(a1 + 896) & 0xC) != 12;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  if ((*(a1 + 296) & 2) != 0)
  {
    v6 = inflateReset2((a1 + 312), v5);
    if ((~*(a1 + 896) & 0x300) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = inflateInit2_((a1 + 312), v5, "1.2.12", 112);
    if (v6)
    {
      if ((~*(a1 + 896) & 0x300) != 0)
      {
        goto LABEL_9;
      }

LABEL_15:
      v6 = inflateValidate((a1 + 312), 0);
      if (v6)
      {
        goto LABEL_10;
      }

LABEL_16:
      *(a1 + 304) = a2;
      return v6;
    }

    *(a1 + 296) |= 2u;
    if ((~*(a1 + 896) & 0x300) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_9:
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_10:
  sub_100376F34(a1, v6);
  return v6;
}

uint64_t sub_100382DEC(uint64_t result, Bytef *a2, unsigned int *a3, uint64_t a4, unint64_t *a5, int a6)
{
  v6 = result;
  if (*(result + 304) != *(result + 528))
  {
    *(result + 360) = "zstream unclaimed";
    return result;
  }

  *(result + 336) = a4;
  *(result + 344) = 0;
  if (a6)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  LODWORD(v11) = 1024;
  while (1)
  {
    if (*(v6 + 320))
    {
      v12 = 0;
      LODWORD(v13) = *(v6 + 344);
      if (v13)
      {
        goto LABEL_12;
      }

LABEL_8:
      if (*a5 >= 0xFFFFFFFF)
      {
        v13 = 0xFFFFFFFFLL;
      }

      else
      {
        v13 = *a5;
      }

      *a5 -= v13;
      *(v6 + 344) = v13;
      goto LABEL_12;
    }

    v17 = *a3;
    if (v11 >= *a3)
    {
      v11 = v17;
    }

    else
    {
      v11 = v11;
    }

    *a3 = v17 - v11;
    v12 = v11 == 0;
    if (v11)
    {
      sub_10037CF90(v6);
      sub_1003764EC(v6, a2, v11);
    }

    *(v6 + 312) = a2;
    *(v6 + 320) = v11;
    LODWORD(v13) = *(v6 + 344);
    if (!v13)
    {
      goto LABEL_8;
    }

LABEL_12:
    v14 = *a3 ? 0 : v10;
    if (*(v6 + 616) && !v12)
    {
      break;
    }

LABEL_21:
    v16 = inflate((v6 + 312), v14);
    if (v16)
    {
      v18 = v16;
      LODWORD(v13) = *(v6 + 344);
      goto LABEL_35;
    }

    if (!*a5)
    {
      LODWORD(v13) = *(v6 + 344);
      if (!v13)
      {
        v18 = 0;
        goto LABEL_35;
      }
    }
  }

  if ((**(v6 + 312) & 0x80000000) == 0)
  {
    *(v6 + 616) = 0;
    goto LABEL_21;
  }

  *(v6 + 360) = "invalid window size (libpng)";
  v18 = -3;
LABEL_35:
  *a5 += v13;
  *(v6 + 344) = 0;

  return sub_100376F34(v6, v18);
}

void *sub_100382F98(uint64_t a1, size_t __size, int a3)
{
  v6 = *(a1 + 1104);
  if (v6)
  {
    if (*(a1 + 1112) >= __size)
    {
      return v6;
    }

    *(a1 + 1104) = 0;
    *(a1 + 1112) = 0;
    sub_10037BAB4(a1, v6);
  }

  v7 = sub_10037BB9C(a1, __size);
  if (v7)
  {
    v6 = v7;
    bzero(v7, __size);
    *(a1 + 1104) = v6;
    *(a1 + 1112) = __size;
    return v6;
  }

  if (a3 <= 1)
  {
    if (!a3)
    {
      sub_10037B274(a1, "insufficient memory to read chunk");
    }

    sub_10037B1A0(a1, "insufficient memory to read chunk");
  }

  return 0;
}

void sub_100383050(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 1052);
  if (v5)
  {
    v6 = v5 - 1;
    if (!v6)
    {
LABEL_5:

      sub_100381760(a1, a3);
      return;
    }

    *(a1 + 1052) = v6;
    if (v6 == 1)
    {
      sub_10037AB5C(a1, "No space in chunk cache for sPLT");
      goto LABEL_5;
    }
  }

  v7 = *(a1 + 292);
  if ((v7 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v7 & 4) != 0)
  {
    sub_100381760(a1, a3);
    v12 = "out of place";
    goto LABEL_28;
  }

  v9 = a3 + 1;
  v10 = *(a1 + 1104);
  if (!v10)
  {
LABEL_13:
    v11 = sub_10037BB9C(a1, a3 + 1);
    if (v11)
    {
      v10 = v11;
      bzero(v11, a3 + 1);
      *(a1 + 1104) = v10;
      *(a1 + 1112) = v9;
      goto LABEL_15;
    }

    sub_100381760(a1, a3);
    v12 = "out of memory";
LABEL_28:

    sub_10037B50C(a1, v12);
    return;
  }

  if (*(a1 + 1112) < v9)
  {
    *(a1 + 1104) = 0;
    *(a1 + 1112) = 0;
    sub_10037BAB4(a1, v10);
    goto LABEL_13;
  }

LABEL_15:
  sub_10037CF90(a1);
  sub_1003764EC(a1, v10, a3);
  if (sub_100381760(a1, 0))
  {
    return;
  }

  v23 = 0u;
  *v24 = 0u;
  v10[a3] = 0;
  v13 = v10;
  do
  {
    v14 = v13;
  }

  while (*v13++);
  if (a3 < 2 || v13 > &v10[a3 - 2])
  {
    v19 = "malformed sPLT chunk";
    goto LABEL_32;
  }

  BYTE8(v23) = v14[1];
  if (BYTE8(v23) == 8)
  {
    v16 = 6;
  }

  else
  {
    v16 = 10;
  }

  v17 = v10 - v14 + a3 - 2;
  v18 = v17 / v16;
  if (v17 % v16)
  {
    v19 = "sPLT chunk has bad length";
LABEL_32:

    sub_10037AB5C(a1, v19);
    return;
  }

  LODWORD(v24[1]) = v17 / v16;
  v20 = sub_10037BD48(a1, 10 * (v17 / v16));
  v24[0] = v20;
  if (!v20)
  {
    v19 = "sPLT chunk requires too much memory";
    goto LABEL_32;
  }

  if (v16 <= v17)
  {
    v21 = v20 + 2;
    v22 = 1;
    if (BYTE8(v23) == 8)
    {
      do
      {
        *(v21 - 2) = v13[v22];
        *(v21 - 1) = v13[v22 + 1];
        *v21 = v13[v22 + 2];
        v21[1] = v13[v22 + 3];
        v21[2] = bswap32(*&v13[v22 + 4]) >> 16;
        v21 += 5;
        v22 += 6;
        --v18;
      }

      while (v18);
    }

    else
    {
      do
      {
        *(v21 - 2) = bswap32(*&v13[v22]) >> 16;
        *(v21 - 1) = bswap32(*&v13[v22 + 2]) >> 16;
        *v21 = bswap32(*&v13[v22 + 4]) >> 16;
        v21[1] = bswap32(*&v13[v22 + 6]) >> 16;
        v21[2] = bswap32(*&v13[v22 + 8]) >> 16;
        v21 += 5;
        v22 += 10;
        --v18;
      }

      while (v18);
    }
  }

  *&v23 = v10;
  sub_1003883C8(a1, a2, &v23, 1);
  sub_10037BAB4(a1, v24[0]);
}

void sub_1003833AC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 292);
  if ((v4 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v4 & 4) != 0)
  {
    goto LABEL_17;
  }

  if (a2 && (*(a2 + 8) & 0x10) != 0)
  {
    sub_100381760(a1, a3);
    v7 = "duplicate";
    goto LABEL_18;
  }

  v5 = *(a1 + 607);
  if (v5 == 3)
  {
    if ((v4 & 2) != 0)
    {
      if (a3 > 0x100 || a3 - 1 >= *(a1 + 592))
      {
        sub_100381760(a1, a3);
        v7 = "invalid";
        goto LABEL_18;
      }

      v6 = a2;
      v8 = a3;
      v9 = a3;
      sub_10037CF90(a1);
      sub_1003764EC(a1, buf, v8);
      *(a1 + 600) = v9;
      if (sub_100381760(a1, 0))
      {
        goto LABEL_14;
      }

LABEL_25:
      sub_10038827C(a1, v6, buf, *(a1 + 600), a1 + 744);
      return;
    }

LABEL_17:
    sub_100381760(a1, a3);
    v7 = "out of place";
    goto LABEL_18;
  }

  if (v5 == 2)
  {
    if (a3 != 6)
    {
      goto LABEL_15;
    }

    v6 = a2;
    sub_10037CF90(a1);
    sub_1003764EC(a1, buf, 6);
    *(a1 + 600) = 1;
    *(a1 + 746) = bswap32(*buf) >> 16;
    *(a1 + 748) = bswap32(v11) >> 16;
    *(a1 + 750) = bswap32(v12) >> 16;
    if (sub_100381760(a1, 0))
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  if (!*(a1 + 607))
  {
    if (a3 == 2)
    {
      v6 = a2;
      sub_10037CF90(a1);
      sub_1003764EC(a1, buf, 2);
      *(a1 + 600) = 1;
      *(a1 + 752) = bswap32(*buf) >> 16;
      if (!sub_100381760(a1, 0))
      {
        goto LABEL_25;
      }

LABEL_14:
      *(a1 + 600) = 0;
      return;
    }

LABEL_15:
    sub_100381760(a1, a3);
    sub_10037B50C(a1, "invalid");
    return;
  }

  sub_100381760(a1, a3);
  v7 = "invalid with alpha channel";
LABEL_18:

  sub_10037B50C(a1, v7);
}

uint64_t sub_1003836D0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 292);
  if ((v3 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v3 & 4) == 0)
  {
    v4 = *(a1 + 607);
    if ((v3 & 2) != 0 || v4 != 3)
    {
      if (a2 && (*(a2 + 8) & 0x20) != 0)
      {
        v5 = a1;
        sub_100381760(a1, a3);
        v6 = "duplicate";
        goto LABEL_6;
      }

      if ((v4 & 2) != 0)
      {
        v8 = 6;
      }

      else
      {
        v8 = 2;
      }

      if (v4 == 3)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      if (v9 != a3)
      {
        v5 = a1;
        sub_100381760(a1, a3);
        v6 = "invalid";
        goto LABEL_6;
      }

      v21 = 0;
      v20 = 0;
      v11 = a3;
      sub_10037CF90(a1);
      sub_1003764EC(a1, buf, v11);
      result = sub_100381760(a1, 0);
      if (result)
      {
        return result;
      }

      v13 = &v20 + 2;
      v14 = &v21;
      v15 = *(a1 + 607);
      if (v15 == 3)
      {
        LOBYTE(v20) = buf[0];
        v16 = a2;
        if (a2 && *(a2 + 32))
        {
          if (*(a2 + 32) <= buf[0])
          {
            return sub_10037B50C(a1, "invalid index");
          }

          v17 = 0;
          v18 = (*(a1 + 584) + 3 * buf[0]);
          WORD1(v20) = *v18;
          WORD2(v20) = v18[1];
          LOWORD(v19) = v18[2];
          goto LABEL_31;
        }

        LOWORD(v19) = 0;
        v17 = 0;
        HIDWORD(v20) = 0;
      }

      else
      {
        LOBYTE(v20) = 0;
        v19 = bswap32(*buf) >> 16;
        v16 = a2;
        if ((v15 & 2) != 0)
        {
          v17 = 0;
          WORD1(v20) = v19;
          WORD2(v20) = bswap32(v23) >> 16;
          v19 = bswap32(v24) >> 16;
LABEL_31:
          v13 = &v20 + 6;
          goto LABEL_32;
        }

        v14 = &v20 + 1;
        v13 = &v20 + 4;
        v21 = v19;
        HIWORD(v20) = v19;
        v17 = v19;
      }

LABEL_32:
      *v13 = v19;
      *v14 = v17;
      return sub_100387670(a1, v16, &v20);
    }
  }

  v5 = a1;
  sub_100381760(a1, a3);
  v6 = "out of place";
LABEL_6:

  return sub_10037B50C(v5, v6);
}

void sub_100383914(_BYTE *a1, uint64_t a2, size_t __size)
{
  if ((a1[292] & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if (__size <= 1)
  {
    sub_100381760(a1, __size);
    v4 = "too short";
LABEL_15:

    sub_10037B50C(a1, v4);
    return;
  }

  if (!a2 || (*(a2 + 10) & 1) != 0)
  {
    sub_100381760(a1, __size);
    v4 = "duplicate";
    goto LABEL_15;
  }

  *(a2 + 300) |= 0x8000u;
  v6 = __size;
  v7 = __size;
  v8 = sub_10037BD48(a1, __size);
  *(a2 + 248) = v8;
  if (!v8)
  {
    sub_100381760(a1, v6);
    v4 = "out of memory";
    goto LABEL_15;
  }

  sub_10037CF90(a1);
  sub_1003764EC(a1, &buf, 1);
  **(a2 + 248) = buf;
  sub_10037CF90(a1);
  sub_1003764EC(a1, &buf, 1);
  v9 = buf;
  *(*(a2 + 248) + 1) = buf;
  if ((v9 & 0xFFFFFFFB) != 0x49 && **(a2 + 248) != v9)
  {
    sub_100381760(a1, v6);
    sub_10037B50C(a1, "incorrect byte-order specifier");
    goto LABEL_20;
  }

  if (v6 != 2)
  {
    v10 = 2;
    do
    {
      sub_10037CF90(a1);
      sub_1003764EC(a1, &buf, 1);
      *(*(a2 + 248) + v10++) = buf;
    }

    while (v7 != v10);
  }

  if (!sub_100381760(a1, 0))
  {
    sub_10038769C(a1, a2, v6, *(a2 + 248));
LABEL_20:
    sub_10037BAB4(a1, *(a2 + 248));
    *(a2 + 248) = 0;
  }
}

void *sub_100383B20(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((*(a1 + 292) & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((*(a1 + 292) & 6) == 2)
  {
    if (a2 && (*(a2 + 8) & 0x40) != 0)
    {
      sub_100381760(a1, a3);
      v8 = "duplicate";
    }

    else
    {
      if (a3 <= 0x201)
      {
        v4 = a3 >> 1;
        if (v4 == *(a1 + 592))
        {
          if (a3 >= 2)
          {
            v6 = v10;
            do
            {
              sub_10037CF90(a1);
              sub_1003764EC(a1, buf, 2);
              *v6++ = bswap32(*buf) >> 16;
              --v4;
            }

            while (v4);
          }

          result = sub_100381760(a1, 0);
          if (!result)
          {
            return sub_100387774(a1, a2, v10);
          }

          return result;
        }
      }

      sub_100381760(a1, a3);
      v8 = "invalid";
    }
  }

  else
  {
    sub_100381760(a1, a3);
    v8 = "out of place";
  }

  return sub_10037B50C(a1, v8);
}

uint64_t sub_100383CEC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 292);
  if ((v4 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v4 & 4) != 0)
  {
    sub_100381760(a1, a3);
    v7 = "out of place";
    v8 = a1;

    return sub_10037B50C(v8, v7);
  }

  if (a2 && (*(a2 + 8) & 0x80) != 0)
  {
    sub_100381760(a1, a3);
    v7 = "duplicate";
    v8 = a1;

    return sub_10037B50C(v8, v7);
  }

  if (a3 != 9)
  {
    sub_100381760(a1, a3);
    v7 = "invalid";
    v8 = a1;

    return sub_10037B50C(v8, v7);
  }

  sub_10037CF90(a1);
  sub_1003764EC(a1, buf, 9);
  result = sub_100381760(a1, 0);
  if (!result)
  {
    return sub_100387D78(a1, a2, bswap32(*buf), bswap32(v10), v11);
  }

  return result;
}

uint64_t sub_100383EB4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 292);
  if ((v4 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v4 & 4) != 0)
  {
    sub_100381760(a1, a3);
    v11 = "out of place";
    v12 = a1;

    return sub_10037B50C(v12, v11);
  }

  if (a2 && (*(a2 + 9) & 1) != 0)
  {
    sub_100381760(a1, a3);
    v11 = "duplicate";
    v12 = a1;

    return sub_10037B50C(v12, v11);
  }

  if (a3 != 9)
  {
    sub_100381760(a1, a3);
    v11 = "invalid";
    v12 = a1;

    return sub_10037B50C(v12, v11);
  }

  sub_10037CF90(a1);
  sub_1003764EC(a1, &buf, 9);
  result = sub_100381760(a1, 0);
  if (result)
  {
    return result;
  }

  if (buf < 0)
  {
    v7 = -((2147418112 * BYTE1(buf) - ((buf << 24) | (BYTE2(buf) << 8) | HIBYTE(buf))) & 0x7FFFFFFF);
    v8 = a2;
    v9 = v14;
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_20:
    v10 = -((2147418112 * v15 - ((v9 << 24) | (v16 << 8) | v17)) & 0x7FFFFFFF);
    return sub_100387938(a1, v8, v7, v10, v18);
  }

  v7 = _byteswap_ulong(buf);
  v8 = a2;
  v9 = v14;
  if (v14 < 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  v10 = (v9 << 24) | (v15 << 16) | (v16 << 8) | v17;
  return sub_100387938(a1, v8, v7, v10, v18);
}

void sub_100384128(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 292);
  if ((v4 & 1) == 0)
  {
    sub_10037B274(a1, "missing IHDR");
  }

  if ((v4 & 4) != 0)
  {
    sub_100381760(a1, a3);
    v13 = "out of place";
LABEL_32:

    sub_10037B50C(a1, v13);
    return;
  }

  if (a2 && (*(a2 + 9) & 4) != 0)
  {
    sub_100381760(a1, a3);
    v13 = "duplicate";
    goto LABEL_32;
  }

  v6 = a3 + 1;
  v7 = *(a1 + 1104);
  if (v7)
  {
    if (*(a1 + 1112) >= v6)
    {
      goto LABEL_10;
    }

    *(a1 + 1104) = 0;
    *(a1 + 1112) = 0;
    v8 = v7;
    v9 = a3;
    sub_10037BAB4(a1, v8);
    a3 = v9;
  }

  v10 = a3;
  v11 = sub_10037BB9C(a1, v6);
  if (!v11)
  {
    sub_100381760(a1, v10);
    goto LABEL_19;
  }

  v7 = v11;
  bzero(v11, v6);
  *(a1 + 1104) = v7;
  *(a1 + 1112) = v6;
  a3 = v10;
LABEL_10:
  v12 = a3;
  sub_10037CF90(a1);
  sub_1003764EC(a1, v7, v12);
  if (sub_100381760(a1, 0))
  {
    return;
  }

  v14 = &v7[v12];
  v7[v12] = 0;
  v15 = (v7 + 10);
  v16 = v12 + 1;
  do
  {
    v17 = *(v15++ - 10);
    --v16;
  }

  while (v17);
  if (v16 <= 12)
  {
    v13 = "invalid";
    goto LABEL_32;
  }

  if (*(v15 - 10) < 0)
  {
    v18 = -((2147418112 * *(v15 - 9) - ((*(v15 - 10) << 24) | (*(v15 - 8) << 8) | *(v15 - 7))) & 0x7FFFFFFF);
    v19 = *(v15 - 6);
    if ((*(v15 - 6) & 0x80000000) == 0)
    {
LABEL_22:
      v20 = (v19 << 24) | (*(v15 - 5) << 16) | (*(v15 - 4) << 8) | *(v15 - 3);
      v21 = *(v15 - 2);
      v22 = *(v15 - 1);
      if (*(v15 - 2))
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v18 = _byteswap_ulong(*(v15 - 10));
    v19 = *(v15 - 6);
    if ((*(v15 - 6) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }
  }

  v20 = -((2147418112 * *(v15 - 5) - ((v19 << 24) | (*(v15 - 4) << 8) | *(v15 - 3))) & 0x7FFFFFFF);
  v21 = *(v15 - 2);
  v22 = *(v15 - 1);
  if (*(v15 - 2))
  {
    goto LABEL_27;
  }

LABEL_26:
  if (v22 != 2)
  {
LABEL_31:
    v13 = "invalid parameter count";
    goto LABEL_32;
  }

LABEL_27:
  if (v21 - 1 <= 1 && v22 != 3 || v21 == 3 && v22 != 4)
  {
    goto LABEL_31;
  }

  v23 = v15 - 1;
  if (v21 >= 4)
  {
    sub_10037B50C(a1, "unrecognized equation type");
  }

    ;
  }

  v25 = sub_10037BD48(a1, 8 * v22);
  if (!v25)
  {
LABEL_19:
    v13 = "out of memory";
    goto LABEL_32;
  }

  if (v22)
  {
    v26 = 0;
    while (1)
    {
      v25[v26] = ++v23;
      if (v23 > v14)
      {
        break;
      }

      while (*v23)
      {
        if (++v23 > v14)
        {
          goto LABEL_49;
        }
      }

      if (++v26 == v22)
      {
        goto LABEL_46;
      }
    }

LABEL_49:
    sub_10037BAB4(a1, v25);
    v13 = "invalid data";
    goto LABEL_32;
  }

LABEL_46:
  v27 = v7;
  v28 = v25;
  sub_100387958(a1, a2, v27, v18, v20, v21, v22, v15, v25);

  sub_10037BAB4(a1, v28);
}