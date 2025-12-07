uint64_t sub_100322C30(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100322CB4(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v7 = sub_100316860(a1, a2, a3, a5);
  *v7 = off_100479BD8;
  *(v7 + 120) = a4;
  if ((a4 & 3) == 0)
  {
    v9[0] = 0;
    v9[1] = 0;
    qmemcpy(sub_1002A80E0(v9, 64), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0", 64);
    sub_1002A8980(-215, v9, "SymmColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3314);
  }

  return a1;
}

void sub_100322D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100317058(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_100322D94(uint64_t a1)
{
  *a1 = off_100479410;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_100322E44(uint64_t a1)
{
  *a1 = off_100479410;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

uint64_t sub_100322F14(uint64_t result, uint64_t a2, _WORD *a3, int a4, int a5, int a6, double a7, double a8)
{
  v8 = *(result + 8);
  v9 = (v8 + (v8 >> 31)) >> 1;
  v10 = (*(result + 32) + 4 * (v8 / 2));
  LODWORD(a7) = *(result + 116);
  v11 = (a2 + 8 * (v8 / 2));
  if (*(result + 120))
  {
    if (a5)
    {
      v38 = a5 - 1;
      v39 = a4;
      if (a6 > 3)
      {
        v49 = (a6 - 4);
        LODWORD(a8) = *v10;
        v50 = (v8 / 2 + 1);
        v51 = (v49 & 0x7FFFFFFC) + 5;
        if (v51 <= a6)
        {
          v51 = a6;
        }

        v52 = v51 - (v49 & 0x7FFFFFFC) - 4;
        v53 = v52 & 0xFFFFFFFFFFFFFFF8;
        v54 = vdupq_lane_s32(*&a8, 0);
        v55 = vdupq_lane_s32(*&a7, 0);
        v56 = a2 + 8 * v9 - 8;
        result = (a3 + 4);
        v57.i64[0] = 0xFFFF0000FFFFLL;
        v57.i64[1] = 0xFFFF0000FFFFLL;
        do
        {
          v58 = 0;
          v59 = v38;
          v60 = *v11;
          v61 = (*v11 + 4);
          v62 = result;
          v63 = 4;
          do
          {
            v64 = v63;
            v65 = v61;
            v66 = v62;
            v67 = vmlaq_f32(v55, *&v60[v58], v54);
            if (v8 >= 2)
            {
              v68 = v56;
              v69 = 1;
              do
              {
                v70 = *v68--;
                v67 = vmlaq_n_f32(v67, vaddq_f32(*&v11[v69][v58], *(v70 + 4 * v58)), *&v10[v69]);
                ++v69;
              }

              while (v50 != v69);
            }

            *&a3[v58] = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v67.f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v67, v67, 8uLL))))), 0), v57));
            v58 += 4;
            v63 = v64 + 4;
            v61 += 16;
            v62 = &v66->i64[1];
          }

          while (v58 <= v49);
          if (v58 < a6)
          {
            if (v8 >= 2)
            {
              do
              {
                v78 = *&a7 + (*&a8 * v60[v64]);
                v79 = v56;
                v80 = 1;
                do
                {
                  v81 = *v79--;
                  v78 = v78 + (*&v10[v80] * (v11[v80][v64] + *(v81 + 4 * v64)));
                  ++v80;
                }

                while (v50 != v80);
                v82 = rintf(v78);
                v83 = v82 & ~(v82 >> 31);
                if (v83 >= 0xFFFF)
                {
                  LOWORD(v83) = -1;
                }

                a3[v64++] = v83;
              }

              while (v64 < a6);
            }

            else
            {
              if (v52 < 8)
              {
                goto LABEL_99;
              }

              v64 += v53;
              v71 = v52 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                v72 = *v65;
                v73 = v65[1];
                v65 += 2;
                v74 = vmlaq_f32(v55, v73, v54);
                v75 = vmlaq_f32(v55, v72, v54);
                *v66++ = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v75.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v75, v75, 8uLL))))), 0), v57), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74, v74, 8uLL))))), 0), v57));
                v71 -= 8;
              }

              while (v71);
              if (v52 != v53)
              {
LABEL_99:
                do
                {
                  v76 = rintf(*&a7 + (*&a8 * v60[v64]));
                  v77 = v76 & ~(v76 >> 31);
                  if (v77 >= 0xFFFF)
                  {
                    LOWORD(v77) = -1;
                  }

                  a3[v64++] = v77;
                }

                while (v64 < a6);
              }
            }
          }

          a3 = (a3 + v39);
          ++v11;
          v38 = v59 - 1;
          v56 += 8;
          result += v39;
        }

        while (v59);
      }

      else if (a6 >= 1)
      {
        v40 = *v10;
        if (v8 >= 2)
        {
          v84 = (v8 / 2 + 1);
          v85 = a2 + 8 * v9 - 8;
          do
          {
            v86 = v38;
            v87 = *v11;
            v88 = *&a7 + (v40 * **v11);
            v89 = v85;
            v90 = 1;
            do
            {
              result = v11[v90];
              v91 = *v89--;
              v88 = v88 + (*&v10[v90++] * (*result + *v91));
            }

            while (v84 != v90);
            v92 = rintf(v88);
            v93 = v92 & ~(v92 >> 31);
            if (v93 >= 0xFFFF)
            {
              LOWORD(v93) = -1;
            }

            *a3 = v93;
            if (a6 != 1)
            {
              v94 = *&a7 + (v40 * v87[1]);
              v95 = 0x1FFFFFFFFFFFFFFFLL;
              v96 = 1;
              do
              {
                result = v11[v95];
                v94 = v94 + (*&v10[v96] * (v11[v96][1] + *(result + 4)));
                ++v96;
                --v95;
              }

              while (v84 != v96);
              v97 = rintf(v94);
              v98 = v97 & ~(v97 >> 31);
              if (v98 >= 0xFFFF)
              {
                LOWORD(v98) = -1;
              }

              a3[1] = v98;
              if (a6 != 2)
              {
                v99 = *&a7 + (v40 * v87[2]);
                v100 = 0x1FFFFFFFFFFFFFFFLL;
                v101 = 1;
                do
                {
                  v99 = v99 + (*&v10[v101] * (v11[v101][2] + v11[v100][2]));
                  ++v101;
                  --v100;
                }

                while (v84 != v101);
                v102 = rintf(v99);
                v103 = v102 & ~(v102 >> 31);
                if (v103 >= 0xFFFF)
                {
                  LOWORD(v103) = -1;
                }

                a3[2] = v103;
              }
            }

            a3 = (a3 + a4);
            ++v11;
            --v38;
            v85 += 8;
          }

          while (v86);
        }

        else
        {
          v41 = a3 + 2;
          do
          {
            v42 = *v11;
            v43 = rintf(*&a7 + (v40 * **v11));
            v44 = v43 & ~(v43 >> 31);
            if (v44 >= 0xFFFF)
            {
              LOWORD(v44) = -1;
            }

            *(v41 - 2) = v44;
            if (a6 != 1)
            {
              v45 = rintf(*&a7 + (v40 * v42[1]));
              v46 = v45 & ~(v45 >> 31);
              if (v46 >= 0xFFFF)
              {
                LOWORD(v46) = -1;
              }

              *(v41 - 1) = v46;
              if (a6 != 2)
              {
                v47 = rintf(*&a7 + (v40 * v42[2]));
                v48 = v47 & ~(v47 >> 31);
                if (v48 >= 0xFFFF)
                {
                  LOWORD(v48) = -1;
                }

                *v41 = v48;
              }
            }

            ++v11;
            v41 = (v41 + a4);
            --a5;
          }

          while (a5);
        }
      }
    }
  }

  else if (a5)
  {
    v12 = rintf(*&a7);
    v13 = v12 & ~(v12 >> 31);
    if (v13 >= 0xFFFF)
    {
      v13 = 0xFFFF;
    }

    v14 = a4;
    v15 = (v8 / 2 + 1);
    v16 = vdupq_n_s16(v13);
    v17 = vdupq_lane_s32(*&a7, 0);
    v18 = a2 + 8 * v9 - 8;
    v19.i64[0] = 0xFFFF0000FFFFLL;
    v19.i64[1] = 0xFFFF0000FFFFLL;
    while (a6 < 4)
    {
      result = 0;
      if (a6 > 0)
      {
        goto LABEL_17;
      }

LABEL_6:
      a3 = (a3 + v14);
      ++v11;
      v18 += 8;
      if (!--a5)
      {
        return result;
      }
    }

    result = 0;
    do
    {
      v20 = *v16.i8;
      if (v8 >= 2)
      {
        v21 = v18;
        v22 = 1;
        v23 = v17;
        do
        {
          v24 = *v21--;
          v23 = vmlaq_n_f32(v23, vsubq_f32(*&v11[v22][result], *(v24 + 4 * result)), *&v10[v22]);
          ++v22;
        }

        while (v15 != v22);
        v20 = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v23.f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v23, v23, 8uLL))))), 0), v19));
      }

      *&a3[result] = v20;
      result += 4;
    }

    while (result <= a6 - 4);
    result = result;
    if (result >= a6)
    {
      goto LABEL_6;
    }

LABEL_17:
    if (v8 >= 2)
    {
      do
      {
        v27 = v18;
        v28 = 1;
        v29 = *&a7;
        do
        {
          v30 = *v27--;
          v29 = v29 + (*&v10[v28] * (v11[v28][result] - *(v30 + 4 * result)));
          ++v28;
        }

        while (v15 != v28);
        v31 = rintf(v29);
        v32 = v31 & ~(v31 >> 31);
        if (v32 >= 0xFFFF)
        {
          LOWORD(v32) = -1;
        }

        a3[result++] = v32;
      }

      while (result != a6);
      goto LABEL_6;
    }

    v25 = a6 - result;
    if (v25 < 4)
    {
      v26 = result;
      goto LABEL_37;
    }

    if (v25 >= 0x10)
    {
      v33 = v25 & 0xFFFFFFFFFFFFFFF0;
      v34 = result;
      v35 = v25 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v36 = &a3[v34];
        *v36 = v16;
        v36[1] = v16;
        v34 += 16;
        v35 -= 16;
      }

      while (v35);
      if (v25 == v33)
      {
        goto LABEL_6;
      }

      if ((v25 & 0xC) == 0)
      {
        v26 = v33 + result;
        do
        {
LABEL_37:
          a3[v26++] = v13;
        }

        while (a6 != v26);
        goto LABEL_6;
      }
    }

    else
    {
      v33 = 0;
    }

    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + result;
    v37 = v33 - (v25 & 0xFFFFFFFFFFFFFFFCLL);
    result = 2 * (v33 + result);
    do
    {
      *(a3 + result) = v16.i64[0];
      result += 8;
      v37 += 4;
    }

    while (v37);
    if (v25 == (v25 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

  return result;
}

uint64_t sub_1003235D8(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_10032365C(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v7 = sub_1003171A4(a1, a2, a3, a5);
  *v7 = off_100479C60;
  *(v7 + 128) = a4;
  if ((a4 & 3) == 0)
  {
    v9[0] = 0;
    v9[1] = 0;
    qmemcpy(sub_1002A80E0(v9, 64), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0", 64);
    sub_1002A8980(-215, v9, "SymmColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3314);
  }

  return a1;
}

void sub_100323714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_1003179A0(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_10032373C(uint64_t a1)
{
  *a1 = off_100479498;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_1003237EC(uint64_t a1)
{
  *a1 = off_100479498;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

uint64_t sub_1003238BC(uint64_t result, uint64_t a2, _WORD *a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = (v6 + (v6 >> 31)) >> 1;
  v8 = 8 * (v6 / 2);
  v9 = (*(result + 32) + v8);
  v10 = *(result + 120);
  v11 = (a2 + v8);
  if (*(result + 128))
  {
    if (a5)
    {
      v42 = a5 - 1;
      v43 = a4;
      if (a6 > 3)
      {
        v53 = (a6 - 4);
        v54 = *v9;
        v55 = (v53 & 0x7FFFFFFC) + 5;
        if (v55 <= a6)
        {
          v55 = a6;
        }

        v56 = v55 - (v53 & 0x7FFFFFFC) - 4;
        v57 = v56 & 0xFFFFFFFFFFFFFFF8;
        v58 = vdupq_lane_s64(v54, 0);
        v59 = vdupq_lane_s64(v10, 0);
        v60 = a2 + 8 * v7 - 8;
        v61 = 8 * (v6 / 2 + 1);
        result = (a3 + 4);
        v62.i64[0] = 0xFFFF0000FFFFLL;
        v62.i64[1] = 0xFFFF0000FFFFLL;
        do
        {
          v63 = 0;
          v64 = v42;
          v65 = *v11;
          v66 = (*v11 + 4);
          v67 = result;
          v68 = 4;
          do
          {
            v69 = v68;
            v70 = v66;
            v71 = v67;
            v72 = &v65[v63];
            v73 = vmlaq_f64(v59, v72[1], v58);
            v74 = vmlaq_f64(v59, *v72, v58);
            if (v6 >= 2)
            {
              v75 = 8;
              v76 = v60;
              do
              {
                v77 = &v11[v75 / 8][v63];
                v78 = *v76--;
                v79 = (v78 + 8 * v63);
                v80 = v9[v75 / 8];
                v73 = vmlaq_n_f64(v73, vaddq_f64(v77[1], v79[1]), v80);
                v74 = vmlaq_n_f64(v74, vaddq_f64(*v77, *v79), v80);
                v75 += 8;
              }

              while (v61 != v75);
            }

            *&a3[v63] = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v74)), vcvtq_s64_f64(vrndxq_f64(v73))), 0), v62));
            v63 += 4;
            v68 = v69 + 4;
            v66 = &v70[2];
            v67 = &v71->i64[1];
          }

          while (v63 <= v53);
          if (v63 < a6)
          {
            if (v6 >= 2)
            {
              do
              {
                v88 = *&v10 + *&v54 * v65[v69];
                v89 = 8;
                v90 = v60;
                do
                {
                  v91 = *v90--;
                  v88 = v88 + v9[v89 / 8] * (v11[v89 / 8][v69] + *(v91 + 8 * v69));
                  v89 += 8;
                }

                while (v61 != v89);
                v92 = rint(v88);
                v93 = v92 & ~(v92 >> 31);
                if (v93 >= 0xFFFF)
                {
                  LOWORD(v93) = -1;
                }

                a3[v69++] = v93;
              }

              while (v69 < a6);
            }

            else
            {
              if (v56 < 8)
              {
                goto LABEL_99;
              }

              v69 += v57;
              v81 = v56 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                v82 = v70[2];
                v83 = v70[3];
                v85 = *v70;
                v84 = v70[1];
                v70 += 4;
                *v71++ = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v59, v85, v58))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v59, v84, v58)))), 0), v62), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v59, v82, v58))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v59, v83, v58)))), 0), v62));
                v81 -= 8;
              }

              while (v81);
              if (v56 != v57)
              {
LABEL_99:
                do
                {
                  v86 = rint(*&v10 + *&v54 * v65[v69]);
                  v87 = v86 & ~(v86 >> 31);
                  if (v87 >= 0xFFFF)
                  {
                    LOWORD(v87) = -1;
                  }

                  a3[v69++] = v87;
                }

                while (v69 < a6);
              }
            }
          }

          a3 = (a3 + v43);
          ++v11;
          v42 = v64 - 1;
          v60 += 8;
          result += v43;
        }

        while (v64);
      }

      else if (a6 >= 1)
      {
        v44 = *v9;
        if (v6 >= 2)
        {
          v94 = a2 + 8 * v7 - 8;
          v95 = 8 * (v7 + 1);
          do
          {
            v96 = v42;
            v97 = *v11;
            v98 = *&v10 + v44 * **v11;
            v99 = 8;
            v100 = v94;
            do
            {
              result = v11[v99 / 8];
              v101 = *v100--;
              v98 = v98 + v9[v99 / 8] * (*result + *v101);
              v99 += 8;
            }

            while (v95 != v99);
            v102 = rint(v98);
            v103 = v102 & ~(v102 >> 31);
            if (v103 >= 0xFFFF)
            {
              LOWORD(v103) = -1;
            }

            *a3 = v103;
            if (a6 != 1)
            {
              v104 = *&v10 + v44 * v97[1];
              v105 = 0x1FFFFFFFFFFFFFFFLL;
              v106 = 8;
              do
              {
                result = v11[v105];
                v104 = v104 + v9[v106 / 8] * (v11[v106 / 8][1] + *(result + 8));
                v106 += 8;
                --v105;
              }

              while (v95 != v106);
              v107 = rint(v104);
              v108 = v107 & ~(v107 >> 31);
              if (v108 >= 0xFFFF)
              {
                LOWORD(v108) = -1;
              }

              a3[1] = v108;
              if (a6 != 2)
              {
                v109 = *&v10 + v44 * v97[2];
                v110 = 0x1FFFFFFFFFFFFFFFLL;
                v111 = 8;
                do
                {
                  v109 = v109 + v9[v111 / 8] * (v11[v111 / 8][2] + v11[v110][2]);
                  v111 += 8;
                  --v110;
                }

                while (v95 != v111);
                v112 = rint(v109);
                v113 = v112 & ~(v112 >> 31);
                if (v113 >= 0xFFFF)
                {
                  LOWORD(v113) = -1;
                }

                a3[2] = v113;
              }
            }

            a3 = (a3 + a4);
            ++v11;
            --v42;
            v94 += 8;
          }

          while (v96);
        }

        else
        {
          v45 = a3 + 2;
          do
          {
            v46 = *v11;
            v47 = rint(*&v10 + v44 * **v11);
            v48 = v47 & ~(v47 >> 31);
            if (v48 >= 0xFFFF)
            {
              LOWORD(v48) = -1;
            }

            *(v45 - 2) = v48;
            if (a6 != 1)
            {
              v49 = rint(*&v10 + v44 * v46[1]);
              v50 = v49 & ~(v49 >> 31);
              if (v50 >= 0xFFFF)
              {
                LOWORD(v50) = -1;
              }

              *(v45 - 1) = v50;
              if (a6 != 2)
              {
                v51 = rint(*&v10 + v44 * v46[2]);
                v52 = v51 & ~(v51 >> 31);
                if (v52 >= 0xFFFF)
                {
                  LOWORD(v52) = -1;
                }

                *v45 = v52;
              }
            }

            ++v11;
            v45 = (v45 + a4);
            --a5;
          }

          while (a5);
        }
      }
    }
  }

  else if (a5)
  {
    v12 = rint(*&v10);
    v13 = v12 & ~(v12 >> 31);
    if (v13 >= 0xFFFF)
    {
      v13 = 0xFFFF;
    }

    v14 = a4;
    v15 = vdupq_n_s16(v13);
    v16 = vdupq_lane_s64(v10, 0);
    v17 = a2 + 8 * v7 - 8;
    v18 = 8 * (v6 / 2 + 1);
    v19.i64[0] = 0xFFFF0000FFFFLL;
    v19.i64[1] = 0xFFFF0000FFFFLL;
    while (a6 < 4)
    {
      result = 0;
      if (a6 > 0)
      {
        goto LABEL_17;
      }

LABEL_6:
      a3 = (a3 + v14);
      ++v11;
      v17 += 8;
      if (!--a5)
      {
        return result;
      }
    }

    result = 0;
    do
    {
      v20 = *v15.i8;
      if (v6 >= 2)
      {
        v21 = 8;
        v22 = v17;
        v23 = v16;
        v24 = v16;
        do
        {
          v25 = &v11[v21 / 8][result];
          v26 = *v22--;
          v27 = (v26 + 8 * result);
          v28 = v9[v21 / 8];
          v24 = vmlaq_n_f64(v24, vsubq_f64(v25[1], v27[1]), v28);
          v23 = vmlaq_n_f64(v23, vsubq_f64(*v25, *v27), v28);
          v21 += 8;
        }

        while (v18 != v21);
        v20 = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v23)), vcvtq_s64_f64(vrndxq_f64(v24))), 0), v19));
      }

      *&a3[result] = v20;
      result += 4;
    }

    while (result <= a6 - 4);
    result = result;
    if (result >= a6)
    {
      goto LABEL_6;
    }

LABEL_17:
    if (v6 >= 2)
    {
      do
      {
        v31 = 8;
        v32 = v17;
        v33 = *&v10;
        do
        {
          v34 = *v32--;
          v33 = v33 + v9[v31 / 8] * (v11[v31 / 8][result] - *(v34 + 8 * result));
          v31 += 8;
        }

        while (v18 != v31);
        v35 = rint(v33);
        v36 = v35 & ~(v35 >> 31);
        if (v36 >= 0xFFFF)
        {
          LOWORD(v36) = -1;
        }

        a3[result++] = v36;
      }

      while (result != a6);
      goto LABEL_6;
    }

    v29 = a6 - result;
    if (v29 < 4)
    {
      v30 = result;
      goto LABEL_37;
    }

    if (v29 >= 0x10)
    {
      v37 = v29 & 0xFFFFFFFFFFFFFFF0;
      v38 = result;
      v39 = v29 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v40 = &a3[v38];
        *v40 = v15;
        v40[1] = v15;
        v38 += 16;
        v39 -= 16;
      }

      while (v39);
      if (v29 == v37)
      {
        goto LABEL_6;
      }

      if ((v29 & 0xC) == 0)
      {
        v30 = v37 + result;
        do
        {
LABEL_37:
          a3[v30++] = v13;
        }

        while (a6 != v30);
        goto LABEL_6;
      }
    }

    else
    {
      v37 = 0;
    }

    v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + result;
    v41 = v37 - (v29 & 0xFFFFFFFFFFFFFFFCLL);
    result = 2 * (v37 + result);
    do
    {
      *(a3 + result) = v15.i64[0];
      result += 8;
      v41 += 4;
    }

    while (v41);
    if (v29 == (v29 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

  return result;
}

uint64_t sub_100323FA4(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100324028(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, double a7)
{
  v9 = sub_100324108(a1, a2, a3, a7);
  *v9 = off_100479CE8;
  *(v9 + 120) = a4;
  if ((a4 & 3) == 0)
  {
    v11[0] = 0;
    v11[1] = 0;
    qmemcpy(sub_1002A80E0(v11, 64), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0", 64);
    sub_1002A8980(-215, v11, "SymmColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3314);
  }

  return a1;
}

void sub_1003240E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100324390(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_100324108(uint64_t a1, uint64_t a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *a1 = off_100479D48;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_17;
    }

    v10 = *(a2 + 56);
    if (v10)
    {
      atomic_fetch_add((v10 + 20), 1u);
      v11 = *(a1 + 72);
      if (v11)
      {
        if (atomic_fetch_add((v11 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v8 = *a2;
      v15 = *(a2 + 4);
      if (v15 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v15;
        *(a1 + 24) = *(a2 + 8);
        v16 = *(a2 + 72);
        v17 = *(a1 + 88);
        *v17 = *v16;
        v17[1] = v16[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
      v13 = *(a1 + 80);
      do
      {
        *(v13 + 4 * v12++) = 0;
        v14 = *v9;
      }

      while (v12 < v14);
      *v8 = *a2;
      if (v14 <= 2)
      {
        v15 = *(a2 + 4);
        if (v15 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v8, a2);
    goto LABEL_16;
  }

  LODWORD(v21) = 33619968;
  v22 = a1 + 16;
  v23 = 0;
  sub_10022B754(a2, &v21);
LABEL_17:
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  *(a1 + 8) = v19 + v18 - 1;
  *(a1 + 12) = a3;
  *(a1 + 116) = rint(a4);
  if ((*(a1 + 16) & 0xFFF) != 4 || v19 != 1 && v18 != 1)
  {
    v21 = 0;
    v22 = 0;
    qmemcpy(sub_1002A80E0(&v21, 77), "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v21, "ColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3251);
  }

  return a1;
}

uint64_t sub_100324390(uint64_t a1)
{
  *a1 = off_100479D48;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

uint64_t sub_100324440(uint64_t a1)
{
  *a1 = off_100479D48;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_1003244F0(uint64_t a1)
{
  *a1 = off_100479D48;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

uint64_t sub_1003245C0(uint64_t result, uint64_t a2, _WORD *a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = *(result + 32);
  v8 = (v6 + (v6 >> 31)) >> 1;
  v9 = (v7 + 4 * (v6 / 2));
  v10 = *(result + 116);
  v11 = (a2 + 8 * (v6 / 2));
  if (*(result + 120))
  {
    if (!a5)
    {
      return result;
    }

    v47 = a5 - 1;
    v156 = a4;
    if (a6 <= 3)
    {
      if (a6 >= 1)
      {
        v48 = *v9;
        if (v6 >= 2)
        {
          v103 = (v6 / 2 + 1);
          if (v8 >= 2)
          {
            v112 = v8;
            v113 = v8 & 0x3FFFFFFE;
            v114 = v8 | 1;
            v115 = a2 + 8 * v8;
            v116 = (v115 - 8);
            result = v7 + 4 * v8 + 8;
            v117 = (v115 + 16);
            do
            {
              v119 = 0;
              v120 = v47;
              v121 = *v11;
              v122 = v10 + **v11 * v48;
              v123 = v117;
              v124 = result;
              v125 = v113;
              v126 = v116;
              do
              {
                v122 += (**v126 + **(v123 - 1)) * *(v124 - 1);
                v119 += (**(v126 - 1) + **v123) * *v124;
                v126 -= 2;
                v124 += 2;
                v123 += 2;
                v125 -= 2;
              }

              while (v125);
              v127 = v119 + v122;
              if (v113 != v112)
              {
                v128 = -1 * v114;
                v129 = v114;
                do
                {
                  v127 += (*v11[v128] + *v11[v129]) * v9[v129];
                  ++v129;
                  --v128;
                }

                while (v103 != v129);
              }

              if (v127 <= -32768)
              {
                v130 = -32768;
              }

              else
              {
                v130 = v127;
              }

              if (v130 >= 0x7FFF)
              {
                LOWORD(v130) = 0x7FFF;
              }

              *a3 = v130;
              if (a6 != 1)
              {
                v131 = 0;
                v132 = v10 + v121[1] * v48;
                v133 = result;
                v134 = v117;
                v135 = v113;
                v136 = v116;
                do
                {
                  v132 += ((*v136)[1] + (*(v134 - 1))[1]) * *(v133 - 1);
                  v131 += ((*(v136 - 1))[1] + (*v134)[1]) * *v133;
                  v136 -= 2;
                  v134 += 2;
                  v133 += 2;
                  v135 -= 2;
                }

                while (v135);
                v137 = v131 + v132;
                if (v113 != v112)
                {
                  v138 = -1 * v114;
                  v139 = v114;
                  do
                  {
                    v137 += (*(v11[v138] + 4) + *(v11[v139] + 4)) * v9[v139];
                    ++v139;
                    --v138;
                  }

                  while (v103 != v139);
                }

                if (v137 <= -32768)
                {
                  v140 = -32768;
                }

                else
                {
                  v140 = v137;
                }

                if (v140 >= 0x7FFF)
                {
                  LOWORD(v140) = 0x7FFF;
                }

                a3[1] = v140;
                if (a6 != 2)
                {
                  v141 = 0;
                  v142 = v10 + v121[2] * v48;
                  v143 = result;
                  v144 = v117;
                  v145 = v113;
                  v146 = v116;
                  do
                  {
                    v142 += ((*v146)[2] + (*(v144 - 1))[2]) * *(v143 - 1);
                    v141 += ((*(v146 - 1))[2] + (*v144)[2]) * *v143;
                    v146 -= 2;
                    v144 += 2;
                    v143 += 2;
                    v145 -= 2;
                  }

                  while (v145);
                  v147 = v141 + v142;
                  if (v113 != v112)
                  {
                    v148 = -1 * v114;
                    v149 = v114;
                    do
                    {
                      v147 += (*(v11[v148] + 8) + *(v11[v149] + 8)) * v9[v149];
                      ++v149;
                      --v148;
                    }

                    while (v103 != v149);
                  }

                  if (v147 <= -32768)
                  {
                    v118 = -32768;
                  }

                  else
                  {
                    v118 = v147;
                  }

                  if (v118 >= 0x7FFF)
                  {
                    LOWORD(v118) = 0x7FFF;
                  }

                  a3[2] = v118;
                }
              }

              a3 = (a3 + a4);
              ++v11;
              --v47;
              ++v116;
              ++v117;
            }

            while (v120);
          }

          else
          {
            do
            {
              v104 = v47;
              v105 = *v11;
              LODWORD(result) = v10 + **v11 * v48;
              v106 = 0x1FFFFFFFFFFFFFFFLL;
              v107 = 1;
              do
              {
                LODWORD(result) = result + (*v11[v106] + *v11[v107]) * v9[v107];
                ++v107;
                --v106;
              }

              while (v103 != v107);
              if (result <= -32768)
              {
                LODWORD(result) = -32768;
              }

              if (result >= 0x7FFF)
              {
                result = 0x7FFFLL;
              }

              else
              {
                result = result;
              }

              *a3 = result;
              if (a6 != 1)
              {
                LODWORD(result) = v10 + v105[1] * v48;
                v108 = 0x1FFFFFFFFFFFFFFFLL;
                v109 = 1;
                do
                {
                  LODWORD(result) = result + (*(v11[v108] + 4) + *(v11[v109] + 4)) * v9[v109];
                  ++v109;
                  --v108;
                }

                while (v103 != v109);
                if (result <= -32768)
                {
                  LODWORD(result) = -32768;
                }

                if (result >= 0x7FFF)
                {
                  result = 0x7FFFLL;
                }

                else
                {
                  result = result;
                }

                a3[1] = result;
                if (a6 != 2)
                {
                  v110 = v10 + v105[2] * v48;
                  result = -8;
                  v111 = 1;
                  do
                  {
                    v110 += (*(*(v11 + result) + 8) + *(v11[v111] + 8)) * v9[v111];
                    ++v111;
                    result -= 8;
                  }

                  while (v103 != v111);
                  if (v110 <= -32768)
                  {
                    v110 = -32768;
                  }

                  if (v110 >= 0x7FFF)
                  {
                    LOWORD(v110) = 0x7FFF;
                  }

                  a3[2] = v110;
                }
              }

              a3 = (a3 + v156);
              ++v11;
              --v47;
            }

            while (v104);
          }
        }

        else
        {
          v49 = a3 + 2;
          do
          {
            v50 = *v11;
            v51 = v10 + **v11 * v48;
            if (v51 <= -32768)
            {
              v51 = -32768;
            }

            if (v51 >= 0x7FFF)
            {
              LOWORD(v51) = 0x7FFF;
            }

            *(v49 - 2) = v51;
            if (a6 != 1)
            {
              v52 = v10 + v50[1] * v48;
              if (v52 <= -32768)
              {
                v52 = -32768;
              }

              if (v52 >= 0x7FFF)
              {
                LOWORD(v52) = 0x7FFF;
              }

              *(v49 - 1) = v52;
              if (a6 != 2)
              {
                v53 = v10 + v50[2] * v48;
                if (v53 <= -32768)
                {
                  v53 = -32768;
                }

                if (v53 >= 0x7FFF)
                {
                  LOWORD(v53) = 0x7FFF;
                }

                *v49 = v53;
              }
            }

            ++v11;
            v49 = (v49 + a4);
            --a5;
          }

          while (a5);
        }
      }

      return result;
    }

    v54 = (a6 - 4);
    v55 = (v7 + 4 * v8);
    v56 = *v55;
    v159 = v55 + 2;
    v57 = (v6 / 2 + 1);
    v58 = v54 & 0x7FFFFFFC;
    v59 = v58 + 5;
    if (v58 + 5 <= a6)
    {
      v59 = a6;
    }

    v60 = v59 - 4;
    v61 = v59 - 4 - v58;
    v62 = vdupq_n_s32(v56);
    v63 = vdupq_n_s32(v10);
    v154 = v61 & 0xFFFFFFFFFFFFFFF0;
    v155 = v61;
    v152 = v61 - (v59 & 3);
    v153 = v59 & 3;
    v64 = a2 + 8 * v8;
    result = v64 - 8;
    v65 = (v64 + 16);
    v66 = (a3 + 12);
    v150 = v61 & 0xC;
    v151 = v60 - v153 - v58;
    while (1)
    {
      v67 = 0;
      v157 = v47;
      v68 = *v11;
      v69 = *v11 + 48;
      v70 = v66;
      v71 = 4;
      do
      {
        v72 = v71;
        v73 = v69;
        v74 = v70;
        v75 = vmlaq_s32(v63, *&v68[v67], v62);
        if (v6 >= 2)
        {
          v76 = result;
          v77 = 1;
          do
          {
            v78 = *v76--;
            v79 = &v9[v77];
            v80 = vld1q_dup_f32(v79);
            v75 = vmlaq_s32(v75, vaddq_s32(*(v78 + 4 * v67), *(v11[v77++] + 4 * v67)), v80);
          }

          while (v57 != v77);
        }

        *&a3[v67] = vqmovn_s32(v75);
        v67 += 4;
        v71 = v72 + 4;
        v69 += 16;
        v70 = &v74->u64[1];
      }

      while (v67 <= v54);
      if (v67 >= a6)
      {
        goto LABEL_74;
      }

      if (v6 >= 2)
      {
        break;
      }

      if (v155 < 4)
      {
        v81 = v72;
        goto LABEL_108;
      }

      if (v155 >= 0x10)
      {
        v92 = v154;
        do
        {
          v94 = v73[-2];
          v93 = v73[-1];
          v96 = *v73;
          v95 = v73[1];
          v73 += 4;
          v74[-1] = vqmovn_high_s32(vqmovn_s32(vmlaq_s32(v63, v94, v62)), vmlaq_s32(v63, v93, v62));
          *v74 = vqmovn_high_s32(vqmovn_s32(vmlaq_s32(v63, v96, v62)), vmlaq_s32(v63, v95, v62));
          v74 += 2;
          v92 -= 16;
        }

        while (v92);
        if (v155 == v154)
        {
          goto LABEL_74;
        }

        v91 = v154;
        if (!v150)
        {
          v81 = v72 + v154;
          do
          {
LABEL_108:
            v102 = v10 + v68[v81] * v56;
            if (v102 <= -32768)
            {
              v102 = -32768;
            }

            if (v102 >= 0x7FFF)
            {
              LOWORD(v102) = 0x7FFF;
            }

            a3[v81++] = v102;
          }

          while (v81 < a6);
          goto LABEL_74;
        }
      }

      else
      {
        v91 = 0;
      }

      v81 = v72 + v152;
      v97 = v151 - v91;
      v98 = v91 + v72;
      v99 = &v68[v91 + v72];
      v100 = v98;
      do
      {
        v101 = *v99++;
        *&a3[v100] = vqmovn_s32(vmlaq_s32(v63, v101, v62));
        v100 += 4;
        v97 -= 4;
      }

      while (v97);
      if (v153)
      {
        goto LABEL_108;
      }

LABEL_74:
      a3 = (a3 + a4);
      ++v11;
      v47 = v157 - 1;
      result += 8;
      ++v65;
      v66 = (v66 + a4);
      if (!v157)
      {
        return result;
      }
    }

    while (1)
    {
      v83 = v10 + v68[v72] * v56;
      if (v57 < 3)
      {
        break;
      }

      v85 = 0;
      v86 = v65;
      v87 = v159;
      v88 = (v57 - 1) & 0xFFFFFFFFFFFFFFFELL;
      v89 = result;
      do
      {
        v83 += (*(*v89 + 4 * v72) + *(*(v86 - 1) + 4 * v72)) * *(v87 - 1);
        v85 += (*(*(v89 - 1) + 4 * v72) + *(*v86 + 4 * v72)) * *v87;
        v89 -= 2;
        v87 += 2;
        v86 += 2;
        v88 -= 2;
      }

      while (v88);
      v83 += v85;
      v84 = (v57 - 1) | 1;
      if (v57 - 1 != ((v57 - 1) & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_96;
      }

LABEL_85:
      if (v83 <= -32768)
      {
        v82 = -32768;
      }

      else
      {
        v82 = v83;
      }

      if (v82 >= 0x7FFF)
      {
        LOWORD(v82) = 0x7FFF;
      }

      a3[v72++] = v82;
      if (v72 >= a6)
      {
        goto LABEL_74;
      }
    }

    v84 = 1;
LABEL_96:
    v90 = -1 * v84;
    do
    {
      v83 += (*(v11[v90] + 4 * v72) + *(v11[v84] + 4 * v72)) * v9[v84];
      ++v84;
      --v90;
    }

    while (v57 != v84);
    goto LABEL_85;
  }

  if (a5)
  {
    v12 = a6 - 4;
    if (v10 <= -32768)
    {
      v13 = -32768;
    }

    else
    {
      v13 = *(result + 116);
    }

    if (v13 >= 0x7FFF)
    {
      v13 = 0x7FFF;
    }

    v14 = (v6 / 2 + 1);
    v15 = vdupq_n_s16(v13);
    v16 = vdupq_n_s32(v10);
    v17 = a2 + 8 * v8;
    v18 = (v17 - 8);
    v19 = v7 + 4 * v8 + 8;
    v20 = (v17 + 16);
    while (a6 < 4)
    {
      v21 = 0;
      if (a6 > 0)
      {
        goto LABEL_20;
      }

LABEL_9:
      a3 = (a3 + a4);
      ++v11;
      ++v18;
      ++v20;
      if (!--a5)
      {
        return result;
      }
    }

    v21 = 0;
    do
    {
      v22 = *v15.i8;
      if (v6 >= 2)
      {
        v23 = v18;
        v24 = 1;
        v25 = v16;
        do
        {
          v26 = *v23--;
          v27 = &v9[v24];
          v28 = vld1q_dup_f32(v27);
          v25 = vmlaq_s32(v25, vsubq_s32(*(v11[v24++] + 4 * v21), *(v26 + 4 * v21)), v28);
        }

        while (v14 != v24);
        v22 = vqmovn_s32(v25);
      }

      *&a3[v21] = v22;
      v21 += 4;
    }

    while (v21 <= v12);
    v21 = v21;
    if (v21 >= a6)
    {
      goto LABEL_9;
    }

LABEL_20:
    if (v6 < 2)
    {
      v29 = a6 - v21;
      if (v29 < 4)
      {
        v30 = v21;
        goto LABEL_48;
      }

      if (v29 >= 0x10)
      {
        v41 = v29 & 0xFFFFFFFFFFFFFFF0;
        v42 = v21;
        v43 = v29 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v44 = &a3[v42];
          *v44 = v15;
          v44[1] = v15;
          v42 += 16;
          v43 -= 16;
        }

        while (v43);
        if (v29 == v41)
        {
          goto LABEL_9;
        }

        if ((v29 & 0xC) == 0)
        {
          v30 = v41 + v21;
          do
          {
LABEL_48:
            a3[v30++] = v13;
          }

          while (a6 != v30);
          goto LABEL_9;
        }
      }

      else
      {
        v41 = 0;
      }

      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + v21;
      v45 = v41 - (v29 & 0xFFFFFFFFFFFFFFFCLL);
      v46 = v41 + v21;
      do
      {
        *&a3[v46] = v15.i64[0];
        v46 += 4;
        v45 += 4;
      }

      while (v45);
      if (v29 == (v29 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_9;
      }

      goto LABEL_48;
    }

    while (v14 >= 3)
    {
      v34 = 0;
      v35 = v20;
      v36 = v19;
      v37 = (v14 - 1) & 0xFFFFFFFFFFFFFFFELL;
      v38 = v18;
      v39 = v10;
      do
      {
        result = *(*(v38 - 1) + 4 * v21);
        v39 += (*(*(v35 - 1) + 4 * v21) - *(*v38 + 4 * v21)) * *(v36 - 1);
        v34 += (*(*v35 + 4 * v21) - result) * *v36;
        v38 -= 2;
        v36 += 2;
        v35 += 2;
        v37 -= 2;
      }

      while (v37);
      v33 = v34 + v39;
      v32 = (v14 - 1) | 1;
      if (v14 - 1 != ((v14 - 1) & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_34;
      }

LABEL_23:
      if (v33 <= -32768)
      {
        v31 = -32768;
      }

      else
      {
        v31 = v33;
      }

      if (v31 >= 0x7FFF)
      {
        LOWORD(v31) = 0x7FFF;
      }

      a3[v21++] = v31;
      if (v21 == a6)
      {
        goto LABEL_9;
      }
    }

    v32 = 1;
    v33 = v10;
LABEL_34:
    v40 = -1 * v32;
    do
    {
      result = *(v11[v40] + 4 * v21);
      v33 += (*(v11[v32] + 4 * v21) - result) * v9[v32];
      ++v32;
      --v40;
    }

    while (v14 != v32);
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_100325084(uint64_t a1)
{
  *a1 = off_100479D48;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_100325134(uint64_t a1)
{
  *a1 = off_100479D48;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

uint64_t sub_100325204(uint64_t result, void *a2, _WORD *a3, int a4, int a5, unsigned int a6)
{
  if (!a5)
  {
    return result;
  }

  v6 = *(result + 32);
  v7 = *(result + 116);
  v8 = a5 - 1;
  v9 = a4;
  v10 = *(result + 8);
  if (a6 > 3)
  {
    v17 = a6 - 4;
    v18 = *v6;
    v19 = v10 - 1;
    v20 = v17 & 0x7FFFFFFC;
    if (v20 + 5 <= a6)
    {
      v21 = a6;
    }

    else
    {
      v21 = (v17 & 0x7FFFFFFC) + 5;
    }

    v22 = v21 - 4 - v20;
    v23 = vdupq_n_s32(v18);
    v24 = vdupq_n_s32(v7);
    v96 = v22 & 0xFFFFFFFFFFFFFFF0;
    v97 = v22;
    v92 = v22 & 0xC;
    v94 = v22 - (v21 & 3);
    v95 = v21 & 3;
    v25 = (a3 + 12);
    v93 = v21 - 4 - v95 - v20;
    for (i = a2 + 2; ; ++i)
    {
      v27 = 0;
      v28 = v8;
      v29 = *a2;
      v30 = *a2 + 48;
      v31 = v25;
      v32 = 4;
      do
      {
        v33 = v32;
        v34 = v30;
        v35 = v31;
        v36 = vmlaq_s32(v24, *&v29[v27], v23);
        if (v10 >= 2)
        {
          for (j = 1; j != v10; ++j)
          {
            v38 = &v6[j];
            v39 = vld1q_dup_f32(v38);
            v36 = vmlaq_s32(v36, *(a2[j] + 4 * v27), v39);
          }
        }

        *&a3[v27] = vqmovn_s32(v36);
        v27 += 4;
        v32 += 4;
        v30 += 16;
        v31 = &v35->u64[1];
      }

      while (v27 <= v17);
      if (v27 >= a6)
      {
        goto LABEL_29;
      }

      if (v10 >= 2)
      {
        break;
      }

      if (v97 < 4)
      {
        v40 = v33;
        goto LABEL_62;
      }

      if (v97 >= 0x10)
      {
        v49 = v96;
        do
        {
          v51 = v34[-2];
          v50 = v34[-1];
          v53 = *v34;
          v52 = v34[1];
          v34 += 4;
          v35[-1] = vqmovn_high_s32(vqmovn_s32(vmlaq_s32(v24, v51, v23)), vmlaq_s32(v24, v50, v23));
          *v35 = vqmovn_high_s32(vqmovn_s32(vmlaq_s32(v24, v53, v23)), vmlaq_s32(v24, v52, v23));
          v35 += 2;
          v49 -= 16;
        }

        while (v49);
        if (v97 == v96)
        {
          goto LABEL_29;
        }

        v48 = v96;
        if (!v92)
        {
          v40 = v33 + v96;
          do
          {
LABEL_62:
            v59 = v7 + v29[v40] * v18;
            if (v59 <= -32768)
            {
              v59 = -32768;
            }

            if (v59 >= 0x7FFF)
            {
              LOWORD(v59) = 0x7FFF;
            }

            a3[v40++] = v59;
          }

          while (v40 < a6);
          goto LABEL_29;
        }
      }

      else
      {
        v48 = 0;
      }

      v40 = v33 + v94;
      v54 = v93 - v48;
      v55 = v48 + v33;
      v56 = &v29[v55];
      v57 = v55;
      do
      {
        v58 = *v56++;
        *&a3[v57] = vqmovn_s32(vmlaq_s32(v24, v58, v23));
        v57 += 4;
        v54 -= 4;
      }

      while (v54);
      if (v95)
      {
        goto LABEL_62;
      }

LABEL_29:
      a3 = (a3 + v9);
      ++a2;
      v8 = v28 - 1;
      v25 = (v25 + v9);
      if (!v28)
      {
        return result;
      }
    }

    while (1)
    {
      v42 = v7 + v29[v33] * v18;
      if (v10 == 2)
      {
        break;
      }

      v44 = 0;
      v45 = i;
      v46 = v6 + 2;
      v47 = v19 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        result = *(*(v45 - 1) + 4 * v33);
        v42 += result * *(v46 - 1);
        v44 += *(*v45 + 4 * v33) * *v46;
        v46 += 2;
        v45 += 2;
        v47 -= 2;
      }

      while (v47);
      v42 += v44;
      k = v19 | 1;
      if (v19 != (v19 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_51;
      }

LABEL_40:
      if (v42 <= -32768)
      {
        v41 = -32768;
      }

      else
      {
        v41 = v42;
      }

      if (v41 >= 0x7FFF)
      {
        LOWORD(v41) = 0x7FFF;
      }

      a3[v33++] = v41;
      if (v33 >= a6)
      {
        goto LABEL_29;
      }
    }

    for (k = 1; k != v10; ++k)
    {
LABEL_51:
      v42 += *(a2[k] + 4 * v33) * v6[k];
    }

    goto LABEL_40;
  }

  if (a6 >= 1)
  {
    v11 = *v6;
    if (v10 <= 1)
    {
      v60 = a3 + 2;
      do
      {
        v61 = *a2;
        v62 = v7 + **a2 * v11;
        if (v62 <= -32768)
        {
          v62 = -32768;
        }

        if (v62 >= 0x7FFF)
        {
          LOWORD(v62) = 0x7FFF;
        }

        *(v60 - 2) = v62;
        if (a6 != 1)
        {
          v63 = v7 + v61[1] * v11;
          if (v63 <= -32768)
          {
            v63 = -32768;
          }

          if (v63 >= 0x7FFF)
          {
            LOWORD(v63) = 0x7FFF;
          }

          *(v60 - 1) = v63;
          if (a6 != 2)
          {
            v64 = v7 + v61[2] * v11;
            if (v64 <= -32768)
            {
              v64 = -32768;
            }

            if (v64 >= 0x7FFF)
            {
              LOWORD(v64) = 0x7FFF;
            }

            *v60 = v64;
          }
        }

        ++a2;
        v60 = (v60 + a4);
        --a5;
      }

      while (a5);
    }

    else if (v10 == 2)
    {
      v12 = v6[1];
      v13 = a2 + 1;
      v14 = a3 + 2;
      do
      {
        v15 = *(v13 - 1);
        LODWORD(result) = v7 + *v15 * v11 + **v13 * v12;
        if (result <= -32768)
        {
          LODWORD(result) = -32768;
        }

        if (result >= 0x7FFF)
        {
          result = 0x7FFFLL;
        }

        else
        {
          result = result;
        }

        *(v14 - 2) = result;
        if (a6 != 1)
        {
          LODWORD(result) = v7 + v15[1] * v11 + *(*v13 + 4) * v6[1];
          if (result <= -32768)
          {
            LODWORD(result) = -32768;
          }

          if (result >= 0x7FFF)
          {
            result = 0x7FFFLL;
          }

          else
          {
            result = result;
          }

          *(v14 - 1) = result;
          if (a6 != 2)
          {
            result = v6[1];
            v16 = v7 + v15[2] * v11 + *(*v13 + 8) * result;
            if (v16 <= -32768)
            {
              v16 = -32768;
            }

            if (v16 >= 0x7FFF)
            {
              LOWORD(v16) = 0x7FFF;
            }

            *v14 = v16;
          }
        }

        ++v13;
        v14 = (v14 + a4);
        --a5;
      }

      while (a5);
    }

    else
    {
      v65 = v10 - 1;
      v66 = (v10 - 1) & 0xFFFFFFFFFFFFFFFELL;
      v67 = a2 + 2;
      result = 4294934528;
      do
      {
        v69 = 0;
        v70 = v8;
        v71 = *a2;
        v72 = v7 + **a2 * v11;
        v73 = v67;
        v74 = v6 + 2;
        v75 = (v10 - 1) & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          v72 += **(v73 - 1) * *(v74 - 1);
          v69 += **v73 * *v74;
          v74 += 2;
          v73 += 2;
          v75 -= 2;
        }

        while (v75);
        v76 = v69 + v72;
        if (v65 == v66)
        {
          v77 = a6;
        }

        else
        {
          v78 = (v10 - 1) | 1;
          v77 = a6;
          do
          {
            v76 += *a2[v78] * v6[v78];
            ++v78;
          }

          while (v10 != v78);
        }

        if (v76 <= -32768)
        {
          v76 = -32768;
        }

        if (v76 >= 0x7FFF)
        {
          LOWORD(v76) = 0x7FFF;
        }

        *a3 = v76;
        if (v77 != 1)
        {
          v79 = 0;
          v80 = v7 + v71[1] * v11;
          v81 = v6 + 2;
          v82 = v67;
          v83 = (v10 - 1) & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            v80 += *(*(v82 - 1) + 4) * *(v81 - 1);
            v79 += *(*v82 + 4) * *v81;
            v82 += 2;
            v81 += 2;
            v83 -= 2;
          }

          while (v83);
          v84 = v79 + v80;
          if (v65 != v66)
          {
            v85 = (v10 - 1) | 1;
            do
            {
              v84 += *(a2[v85] + 4) * v6[v85];
              ++v85;
            }

            while (v10 != v85);
          }

          if (v84 <= -32768)
          {
            v84 = -32768;
          }

          if (v84 >= 0x7FFF)
          {
            LOWORD(v84) = 0x7FFF;
          }

          a3[1] = v84;
          if (v77 != 2)
          {
            v86 = 0;
            v87 = v7 + v71[2] * v11;
            v88 = v6 + 2;
            v89 = v67;
            v90 = (v10 - 1) & 0xFFFFFFFFFFFFFFFELL;
            do
            {
              v87 += *(*(v89 - 1) + 8) * *(v88 - 1);
              v86 += *(*v89 + 8) * *v88;
              v89 += 2;
              v88 += 2;
              v90 -= 2;
            }

            while (v90);
            v68 = v86 + v87;
            if (v65 != v66)
            {
              v91 = (v10 - 1) | 1;
              do
              {
                v68 += *(a2[v91] + 8) * v6[v91];
                ++v91;
              }

              while (v10 != v91);
            }

            if (v68 <= -32768)
            {
              v68 = -32768;
            }

            if (v68 >= 0x7FFF)
            {
              LOWORD(v68) = 0x7FFF;
            }

            a3[2] = v68;
          }
        }

        a3 = (a3 + a4);
        ++a2;
        --v8;
        ++v67;
      }

      while (v70);
    }
  }

  return result;
}

uint64_t sub_1003258A0(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100325924(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, double a7)
{
  v9 = sub_100325A04(a1, a2, a3, a7, a5, a6);
  *v9 = off_100479DB8;
  *(v9 + 236) = a4;
  if ((a4 & 3) == 0)
  {
    v11[0] = 0;
    v11[1] = 0;
    qmemcpy(sub_1002A80E0(v11, 64), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0", 64);
    sub_1002A8980(-215, v11, "SymmColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3314);
  }

  return a1;
}

void sub_1003259DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100325CE0(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_100325A04(uint64_t a1, uint64_t a2, int a3, double a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 8) = -1;
  *a1 = &off_100479E18;
  *(a1 + 16) = 1124007936;
  v11 = (a1 + 16);
  *(a1 + 20) = 0u;
  v12 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  v13 = (a1 + 24);
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 128) = 1124007936;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 192) = a1 + 136;
  *(a1 + 200) = a1 + 208;
  *(a1 + 216) = 0;
  *(a1 + 120) = 0;
  v14 = a1 + 120;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v11 == a2)
    {
      goto LABEL_17;
    }

    v15 = *(a2 + 56);
    if (v15)
    {
      atomic_fetch_add((v15 + 20), 1u);
      v16 = *(a1 + 72);
      if (v16)
      {
        if (atomic_fetch_add((v16 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(a1 + 16);
        }
      }
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *v11 = *a2;
      v20 = *(a2 + 4);
      if (v20 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v20;
        *(a1 + 24) = *(a2 + 8);
        v21 = *(a2 + 72);
        v22 = *(a1 + 88);
        *v22 = *v21;
        v22[1] = v21[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v17 = 0;
      v18 = *(a1 + 80);
      do
      {
        *(v18 + 4 * v17++) = 0;
        v19 = *v12;
      }

      while (v17 < v19);
      *v11 = *a2;
      if (v19 <= 2)
      {
        v20 = *(a2 + 4);
        if (v20 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v11, a2);
    goto LABEL_16;
  }

  LODWORD(v25) = 33619968;
  v26 = a1 + 16;
  v27 = 0;
  sub_10022B754(a2, &v25);
LABEL_17:
  *(a1 + 8) = *(a1 + 24) + *(a1 + 28) - 1;
  *(a1 + 12) = a3;
  v23 = a4;
  *(a1 + 232) = v23;
  sub_100326364(v14, a6);
  if ((*v11 & 0xFFF) != 5 || *v13 != 1 && *(a1 + 28) != 1)
  {
    v25 = 0;
    v26 = 0;
    qmemcpy(sub_1002A80E0(&v25, 77), "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v25, "ColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3251);
  }

  return a1;
}

void sub_100325CA4(_Unwind_Exception *a1)
{
  sub_100308584(v2);
  sub_100006D14(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100325CE0(uint64_t a1)
{
  *a1 = &off_100479E18;
  v2 = *(a1 + 184);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 128);
  }

  *(a1 + 184) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  if (*(a1 + 132) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 192);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 132));
  }

  v5 = *(a1 + 200);
  if (v5 != (a1 + 208))
  {
    j__free(v5);
  }

  v6 = *(a1 + 72);
  if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 80);
    do
    {
      *(v8 + 4 * v7++) = 0;
    }

    while (v7 < *(a1 + 20));
  }

  v9 = *(a1 + 88);
  if (v9 != (a1 + 96))
  {
    j__free(v9);
  }

  return a1;
}

void sub_100325E04(uint64_t a1)
{
  sub_100325CE0(a1);

  operator delete();
}

uint64_t sub_100325E3C(uint64_t result, uint64_t a2, int16x4_t *a3, int a4, int a5, uint64_t a6, double a7, double a8)
{
  v9 = *(result + 8);
  v10 = (v9 + (v9 >> 31)) >> 1;
  v11 = (*(result + 32) + 4 * (v9 / 2));
  LODWORD(a8) = *(result + 232);
  v12 = (a2 + 8 * (v9 / 2));
  v71 = result;
  v72 = a6;
  v70 = *&a8;
  if (*(result + 236))
  {
    if (a5)
    {
      v69 = a4;
      v38 = (v9 / 2 + 1);
      v39 = a6 - 4;
      v40 = a6;
      v41 = a2 + 8 * v10 - 8;
      v67 = vdupq_lane_s32(*&a8, 0);
      do
      {
        v74 = a5;
        result = sub_10032677C(v71 + 120, v12, a3, a6);
        if (result <= v39)
        {
          v43 = *v12;
          result = result;
          v42 = vld1q_dup_f32(v11);
          do
          {
            v44 = vmlaq_f32(v67, *(v43 + 4 * result), v42);
            if (v9 >= 2)
            {
              v45 = v41;
              v46 = 1;
              do
              {
                v47 = *v45--;
                v44 = vmlaq_n_f32(v44, vaddq_f32(*(v12[v46] + 4 * result), *(v47 + 4 * result)), v11[v46]);
                ++v46;
              }

              while (v38 != v46);
            }

            *(a3 + 2 * result) = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL))))));
            result += 4;
          }

          while (result <= v39);
        }

        LODWORD(a6) = v72;
        if (result < v72)
        {
          v42.f32[0] = *v11;
          v48 = *v12;
          v49 = result;
          if (v9 >= 2)
          {
            do
            {
              v60 = v70 + (v42.f32[0] * *(v48 + 4 * v49));
              v61 = v41;
              v62 = 1;
              do
              {
                v63 = *v61--;
                v60 = v60 + (v11[v62] * (*(v12[v62] + 4 * v49) + *(v63 + 4 * v49)));
                ++v62;
              }

              while (v38 != v62);
              v64 = rintf(v60);
              if (v64 <= -32768)
              {
                LODWORD(v64) = -32768;
              }

              if (v64 >= 0x7FFF)
              {
                LOWORD(v64) = 0x7FFF;
              }

              a3->i16[v49++] = v64;
            }

            while (v49 != v40);
          }

          else
          {
            v50 = v40 - result;
            if (v50 < 8)
            {
              goto LABEL_73;
            }

            v51 = vdupq_lane_s32(*v42.f32, 0);
            v52 = (v48 + 4 * result);
            v53 = 2 * result;
            v54 = v50 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v55 = *v52;
              v56 = v52[1];
              v52 += 2;
              v57 = vmlaq_f32(v67, v56, v51);
              v58 = vmlaq_f32(v67, v55, v51);
              *&a3->i8[v53] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v58.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v58, v58, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v57.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v57, v57, 8uLL))))));
              v53 += 16;
              v54 -= 8;
            }

            while (v54);
            v49 = (v50 & 0xFFFFFFFFFFFFFFF8) + result;
            if (v50 != (v50 & 0xFFFFFFFFFFFFFFF8))
            {
LABEL_73:
              do
              {
                v59 = rintf(v70 + (v42.f32[0] * *(v48 + 4 * v49)));
                if (v59 <= -32768)
                {
                  LODWORD(v59) = -32768;
                }

                if (v59 >= 0x7FFF)
                {
                  LOWORD(v59) = 0x7FFF;
                }

                a3->i16[v49++] = v59;
              }

              while (v40 != v49);
            }
          }
        }

        a3 = (a3 + v69);
        ++v12;
        v41 += 8;
        a5 = v74 - 1;
      }

      while (v74 != 1);
    }
  }

  else if (a5)
  {
    v13 = rintf(*&a8);
    if (v13 <= -32768)
    {
      LODWORD(v13) = -32768;
    }

    if (v13 >= 0x7FFF)
    {
      v14 = 0x7FFF;
    }

    else
    {
      v14 = v13;
    }

    v68 = a4;
    v15 = (v9 / 2 + 1);
    v16 = a6 - 4;
    v17 = a6;
    v18 = a2 + 8 * v10 - 8;
    v65 = vdupq_n_s16(v14);
    v66 = vdupq_lane_s32(*&a8, 0);
    do
    {
      v73 = a5;
      result = sub_10032677C(v71 + 120, v12, a3, a6);
      if (result <= v16)
      {
        result = result;
        do
        {
          v19 = *v65.i8;
          if (v9 >= 2)
          {
            v20 = v18;
            v21 = 1;
            v22 = v66;
            do
            {
              v23 = *v20--;
              v22 = vmlaq_n_f32(v22, vsubq_f32(*(v12[v21] + 4 * result), *(v23 + 4 * result)), v11[v21]);
              ++v21;
            }

            while (v15 != v21);
            v19 = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v22.f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v22, v22, 8uLL))))));
          }

          *(a3 + 2 * result) = v19;
          result += 4;
        }

        while (result <= v16);
      }

      LODWORD(a6) = v72;
      if (result >= v72)
      {
        goto LABEL_9;
      }

      v24 = result;
      if (v9 >= 2)
      {
        do
        {
          v28 = v18;
          v29 = 1;
          v30 = v70;
          do
          {
            v31 = *v28--;
            v30 = v30 + (v11[v29] * (*(v12[v29] + 4 * v24) - *(v31 + 4 * v24)));
            ++v29;
          }

          while (v15 != v29);
          v32 = rintf(v30);
          if (v32 <= -32768)
          {
            LODWORD(v32) = -32768;
          }

          if (v32 >= 0x7FFF)
          {
            LOWORD(v32) = 0x7FFF;
          }

          a3->i16[v24++] = v32;
        }

        while (v24 != v17);
        goto LABEL_9;
      }

      v25 = v17 - result;
      if (v25 >= 4)
      {
        if (v25 < 0x10)
        {
          v26 = 0;
          v27 = *v65.i8;
LABEL_34:
          v36 = v26 - (v25 & 0xFFFFFFFFFFFFFFFCLL);
          v37 = 2 * (v26 + result);
          do
          {
            *(a3 + v37) = v27;
            v37 += 8;
            v36 += 4;
          }

          while (v36);
          v24 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + result;
          if (v25 == (v25 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_9;
          }

          goto LABEL_39;
        }

        v26 = v25 & 0xFFFFFFFFFFFFFFF0;
        v33 = 2 * result;
        v34 = v25 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v35 = (a3 + v33);
          *v35 = v65;
          v35[1] = v65;
          v33 += 32;
          v34 -= 16;
        }

        while (v34);
        if (v25 == v26)
        {
          goto LABEL_9;
        }

        v27 = *v65.i8;
        if ((v25 & 0xC) != 0)
        {
          goto LABEL_34;
        }

        v24 = v26 + result;
      }

      do
      {
LABEL_39:
        a3->i16[v24++] = v14;
      }

      while (v17 != v24);
LABEL_9:
      a3 = (a3 + v68);
      ++v12;
      v18 += 8;
      a5 = v73 - 1;
    }

    while (v73 != 1);
  }

  return result;
}

uint64_t sub_100326364(uint64_t result, uint64_t a2)
{
  v3 = (a2 + 8);
  *result = *a2;
  v4 = (result + 8);
  if (result != a2)
  {
    v5 = *(a2 + 64);
    if (v5)
    {
      atomic_fetch_add((v5 + 20), 1u);
    }

    v6 = *(result + 64);
    if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
    {
      v7 = result;
      sub_100269BC8(result + 8);
      result = v7;
    }

    *(result + 64) = 0;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    if (*(result + 12) <= 0)
    {
      *v4 = *v3;
      v11 = *(a2 + 12);
      if (v11 <= 2)
      {
LABEL_12:
        *(result + 12) = v11;
        *(result + 16) = *(a2 + 16);
        v12 = *(a2 + 80);
        v13 = *(result + 80);
        *v13 = *v12;
        v13[1] = v12[1];
LABEL_15:
        *(result + 24) = *(a2 + 24);
        *(result + 40) = *(a2 + 40);
        *(result + 56) = *(a2 + 56);
        goto LABEL_16;
      }
    }

    else
    {
      v8 = 0;
      v9 = *(result + 72);
      do
      {
        *(v9 + 4 * v8++) = 0;
        v10 = *(result + 12);
      }

      while (v8 < v10);
      *v4 = *v3;
      if (v10 <= 2)
      {
        v11 = *(a2 + 12);
        if (v11 <= 2)
        {
          goto LABEL_12;
        }
      }
    }

    v14 = result;
    sub_100269B58(v4, v3);
    result = v14;
    goto LABEL_15;
  }

LABEL_16:
  *(result + 104) = *(a2 + 104);
  return result;
}

void sub_1003264AC(uint64_t a1)
{
  sub_100325CE0(a1);

  operator delete();
}

uint64_t sub_1003264E4(uint64_t result, uint64_t *a2, int16x4_t *a3, int a4, int a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v43 = result;
  if (a5)
  {
    v13 = a6;
    v14 = a5;
    v17 = *(result + 32);
    LODWORD(a13) = *(result + 232);
    v18 = *(result + 8);
    v41 = a4;
    v19 = a6 - 4;
    v20 = a6;
    v42 = *&a13;
    v40 = vdupq_lane_s32(*&a13, 0);
    do
    {
      result = sub_10032677C(v43 + 120, a2, a3, v13);
      if (result <= v19)
      {
        v22 = *a2;
        result = result;
        v21 = vld1q_dup_f32(v17);
        do
        {
          v23 = vmlaq_f32(v40, *(v22 + 4 * result), v21);
          if (v18 >= 2)
          {
            for (i = 1; i != v18; ++i)
            {
              v23 = vmlaq_n_f32(v23, *(a2[i] + 4 * result), v17[i]);
            }
          }

          *(a3 + 2 * result) = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v23.f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v23, v23, 8uLL))))));
          result += 4;
        }

        while (result <= v19);
      }

      if (result < v13)
      {
        v21.f32[0] = *v17;
        v25 = *a2;
        v26 = result;
        if (v18 < 2)
        {
          v30 = v20 - result;
          if (v30 <= 7)
          {
            goto LABEL_33;
          }

          v31 = vdupq_lane_s32(*v21.f32, 0);
          v32 = (v25 + 4 * result);
          v33 = 2 * result;
          v34 = v30 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v35 = *v32;
            v36 = v32[1];
            v32 += 2;
            v37 = vmlaq_f32(v40, v36, v31);
            v38 = vmlaq_f32(v40, v35, v31);
            *&a3->i8[v33] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v38.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v38, v38, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v37.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v37, v37, 8uLL))))));
            v33 += 16;
            v34 -= 8;
          }

          while (v34);
          v26 = (v30 & 0xFFFFFFFFFFFFFFF8) + result;
          if (v30 != (v30 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_33:
            do
            {
              v39 = rintf(v42 + (v21.f32[0] * *(v25 + 4 * v26)));
              if (v39 <= -32768)
              {
                LODWORD(v39) = -32768;
              }

              if (v39 >= 0x7FFF)
              {
                LOWORD(v39) = 0x7FFF;
              }

              a3->i16[v26++] = v39;
            }

            while (v20 != v26);
          }
        }

        else
        {
          do
          {
            v27 = v42 + (v21.f32[0] * *(v25 + 4 * v26));
            for (j = 1; j != v18; ++j)
            {
              v27 = v27 + (v17[j] * *(a2[j] + 4 * v26));
            }

            v29 = rintf(v27);
            if (v29 <= -32768)
            {
              LODWORD(v29) = -32768;
            }

            if (v29 >= 0x7FFF)
            {
              LOWORD(v29) = 0x7FFF;
            }

            a3->i16[v26++] = v29;
          }

          while (v26 != v20);
        }
      }

      a3 = (a3 + v41);
      ++a2;
      --v14;
    }

    while (v14);
  }

  return result;
}

unint64_t sub_10032677C(uint64_t a1, void *a2, int16x4_t *a3, int a4)
{
  if (*(a1 + 104) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 16) + *(a1 + 20) - 1;
  v5 = *(a1 + 24);
  v6 = (v4 + (v4 >> 31)) >> 1;
  v7 = (v5 + 4 * (v4 / 2));
  v8 = (a1 + 4);
  v9 = vld1q_dup_f32(v8);
  if (*a1)
  {
    if (*(a1 + 16) + *(a1 + 20) == 2)
    {
      return 0;
    }

    else
    {
      v19 = (a4 - 8);
      if (a4 >= 8)
      {
        v38 = vld1q_dup_f32(v7);
        v37 = v7 + 1;
        v39 = vld1q_dup_f32(v37);
        if (v4 >= 4)
        {
          result = 0;
          if (v4 / 2 <= 2)
          {
            v49 = 2;
          }

          else
          {
            v49 = (v4 / 2);
          }

          v50 = v5 + 4 * v6 + 8;
          v51 = v49 - 1;
          do
          {
            v52 = 4 * result;
            v53 = (*a2 + 4 * result);
            v54 = *v53;
            v55 = v53[1];
            v56 = (a2[1] + 4 * result);
            v57 = (*(a2 - 1) + 4 * result);
            v58 = vmlaq_f32(vmlaq_f32(v9, v38, v54), v39, vaddq_f32(*v56, *v57));
            v59 = vmlaq_f32(vmlaq_f32(v9, v38, v55), v39, vaddq_f32(v56[1], v57[1]));
            v60 = v51;
            v61 = a2 + 2;
            v62 = v50;
            v63 = a2 - 2;
            do
            {
              v64 = *v61++;
              v65 = (v64 + v52);
              v66 = *v63--;
              v67 = vld1q_dup_f32(v62++);
              v58 = vmlaq_f32(v58, v67, vaddq_f32(*v65, *(v66 + 4 * result)));
              v59 = vmlaq_f32(v59, v67, vaddq_f32(v65[1], *(v66 + v52 + 16)));
              --v60;
            }

            while (v60);
            v68 = &a3[result / 4];
            *v68 = vqmovn_s32(vcvtq_s32_f32(v58));
            v68[1] = vqmovn_s32(vcvtq_s32_f32(v59));
            result += 8;
          }

          while (result <= v19);
        }

        else
        {
          v40 = 0;
          result = 0;
          v41 = a3 + 1;
          do
          {
            v42 = (*a2 + v40);
            v43 = *v42;
            v44 = v42[1];
            v45 = (a2[1] + v40);
            v46 = (*(a2 - 1) + v40);
            v47 = vmlaq_f32(v9, v38, v43);
            v48 = vmlaq_f32(vmlaq_f32(v9, v38, v44), v39, vaddq_f32(v45[1], v46[1]));
            v41[-1] = vqmovn_s32(vcvtq_s32_f32(vmlaq_f32(v47, v39, vaddq_f32(*v45, *v46))));
            *v41 = vqmovn_s32(vcvtq_s32_f32(v48));
            result += 8;
            v40 += 32;
            v41 += 2;
          }

          while (result <= v19);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v10 = (a4 - 8);
    if (a4 < 8)
    {
      return 0;
    }

    v12 = v7 + 1;
    v13 = vld1q_dup_f32(v12);
    if (v4 >= 4)
    {
      result = 0;
      if (v4 / 2 <= 2)
      {
        v20 = 2;
      }

      else
      {
        v20 = (v4 / 2);
      }

      v21 = v5 + 4 * v6 + 8;
      v22 = v20 - 1;
      do
      {
        v23 = 4 * result;
        v24 = (a2[1] + 4 * result);
        v25 = (*(a2 - 1) + 4 * result);
        v26 = vmlaq_f32(v9, v13, vsubq_f32(*v24, *v25));
        v27 = vmlaq_f32(v9, v13, vsubq_f32(v24[1], v25[1]));
        v28 = v22;
        v29 = a2 + 2;
        v30 = v21;
        v31 = a2 - 2;
        do
        {
          v32 = *v29++;
          v33 = (v32 + v23);
          v34 = *v31--;
          v35 = vld1q_dup_f32(v30++);
          v26 = vmlaq_f32(v26, v35, vsubq_f32(*v33, *(v34 + 4 * result)));
          v27 = vmlaq_f32(v27, v35, vsubq_f32(v33[1], *(v34 + v23 + 16)));
          --v28;
        }

        while (v28);
        v36 = &a3[result / 4];
        *v36 = vqmovn_s32(vcvtq_s32_f32(v26));
        v36[1] = vqmovn_s32(vcvtq_s32_f32(v27));
        result += 8;
      }

      while (result <= v10);
    }

    else
    {
      v14 = 0;
      result = 0;
      v15 = a3 + 1;
      do
      {
        v16 = (a2[1] + v14);
        v17 = (*(a2 - 1) + v14);
        v18 = vqmovn_s32(vcvtq_s32_f32(vmlaq_f32(v9, v13, vsubq_f32(v16[1], v17[1]))));
        v15[-1] = vqmovn_s32(vcvtq_s32_f32(vmlaq_f32(v9, v13, vsubq_f32(*v16, *v17))));
        *v15 = v18;
        result += 8;
        v14 += 32;
        v15 += 2;
      }

      while (result <= v10);
    }
  }

  return result;
}

uint64_t sub_100326A98(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100326B1C(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v7 = sub_100318390(a1, a2, a3, a5);
  *v7 = off_100479E88;
  *(v7 + 128) = a4;
  if ((a4 & 3) == 0)
  {
    v9[0] = 0;
    v9[1] = 0;
    qmemcpy(sub_1002A80E0(v9, 64), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0", 64);
    sub_1002A8980(-215, v9, "SymmColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3314);
  }

  return a1;
}

void sub_100326BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100318BA8(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_100326BFC(uint64_t a1)
{
  *a1 = off_1004795A8;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_100326CAC(uint64_t a1)
{
  *a1 = off_1004795A8;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

uint64_t sub_100326D7C(uint64_t result, uint64_t a2, _WORD *a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = (v6 + (v6 >> 31)) >> 1;
  v8 = 8 * (v6 / 2);
  v9 = (*(result + 32) + v8);
  v10 = *(result + 120);
  v11 = (a2 + v8);
  if (*(result + 128))
  {
    if (a5)
    {
      v41 = a5 - 1;
      if (a6 > 3)
      {
        v48 = (a6 - 4);
        v49 = *v9;
        v50 = (v48 & 0x7FFFFFFC) + 5;
        if (v50 <= a6)
        {
          v50 = a6;
        }

        v51 = v50 - (v48 & 0x7FFFFFFC) - 4;
        v52 = v51 & 0xFFFFFFFFFFFFFFF8;
        v53 = vdupq_lane_s64(v49, 0);
        v54 = vdupq_lane_s64(v10, 0);
        v55 = a2 + 8 * v7 - 8;
        v56 = 8 * (v6 / 2 + 1);
        result = (a3 + 4);
        do
        {
          v57 = 0;
          v58 = v41;
          v59 = *v11;
          v60 = (*v11 + 4);
          v61 = result;
          v62 = 4;
          do
          {
            v63 = v62;
            v64 = v60;
            v65 = v61;
            v66 = &v59[v57];
            v67 = vmlaq_f64(v54, v66[1], v53);
            v68 = vmlaq_f64(v54, *v66, v53);
            if (v6 >= 2)
            {
              v69 = 8;
              v70 = v55;
              do
              {
                v71 = &v11[v69 / 8][v57];
                v72 = *v70--;
                v73 = (v72 + 8 * v57);
                v74 = v9[v69 / 8];
                v67 = vmlaq_n_f64(v67, vaddq_f64(v71[1], v73[1]), v74);
                v68 = vmlaq_n_f64(v68, vaddq_f64(*v71, *v73), v74);
                v69 += 8;
              }

              while (v56 != v69);
            }

            *&a3[v57] = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v68)), vcvtq_s64_f64(vrndxq_f64(v67))));
            v57 += 4;
            v62 = v63 + 4;
            v60 = &v64[2];
            v61 = &v65->i64[1];
          }

          while (v57 <= v48);
          if (v57 < a6)
          {
            if (v6 >= 2)
            {
              do
              {
                v77 = *&v10 + *&v49 * v59[v63];
                v78 = 8;
                v79 = v55;
                do
                {
                  v80 = *v79--;
                  v77 = v77 + v9[v78 / 8] * (v11[v78 / 8][v63] + *(v80 + 8 * v63));
                  v78 += 8;
                }

                while (v56 != v78);
                v81 = rint(v77);
                if (v81 <= -32768)
                {
                  LODWORD(v81) = -32768;
                }

                if (v81 >= 0x7FFF)
                {
                  LOWORD(v81) = 0x7FFF;
                }

                a3[v63++] = v81;
              }

              while (v63 < a6);
            }

            else
            {
              if (v51 < 8)
              {
                goto LABEL_120;
              }

              v63 += v52;
              v75 = v51 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                *v65++ = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v54, *v64, v53))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v54, v64[1], v53))))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v54, v64[2], v53))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v54, v64[3], v53)))));
                v64 += 4;
                v75 -= 8;
              }

              while (v75);
              if (v51 != v52)
              {
LABEL_120:
                do
                {
                  v76 = rint(*&v10 + *&v49 * v59[v63]);
                  if (v76 <= -32768)
                  {
                    LODWORD(v76) = -32768;
                  }

                  if (v76 >= 0x7FFF)
                  {
                    LOWORD(v76) = 0x7FFF;
                  }

                  a3[v63++] = v76;
                }

                while (v63 < a6);
              }
            }
          }

          a3 = (a3 + a4);
          ++v11;
          v41 = v58 - 1;
          v55 += 8;
          result += a4;
        }

        while (v58);
      }

      else if (a6 >= 1)
      {
        v42 = *v9;
        if (v6 >= 2)
        {
          v82 = a2 + 8 * v7 - 8;
          v83 = 8 * (v7 + 1);
          do
          {
            v84 = v41;
            v85 = *v11;
            v86 = *&v10 + v42 * **v11;
            v87 = 8;
            result = v82;
            do
            {
              v88 = *result;
              result -= 8;
              v86 = v86 + v9[v87 / 8] * (*v11[v87 / 8] + *v88);
              v87 += 8;
            }

            while (v83 != v87);
            v89 = rint(v86);
            if (v89 <= -32768)
            {
              LODWORD(v89) = -32768;
            }

            if (v89 >= 0x7FFF)
            {
              LOWORD(v89) = 0x7FFF;
            }

            *a3 = v89;
            if (a6 != 1)
            {
              v90 = *&v10 + v42 * v85[1];
              v91 = 0x1FFFFFFFFFFFFFFFLL;
              result = 8;
              do
              {
                v90 = v90 + *(v9 + result) * ((*(v11 + result))[1] + v11[v91][1]);
                result += 8;
                --v91;
              }

              while (v83 != result);
              v92 = rint(v90);
              if (v92 <= -32768)
              {
                LODWORD(v92) = -32768;
              }

              if (v92 >= 0x7FFF)
              {
                LOWORD(v92) = 0x7FFF;
              }

              a3[1] = v92;
              if (a6 != 2)
              {
                v93 = *&v10 + v42 * v85[2];
                v94 = 0x1FFFFFFFFFFFFFFFLL;
                v95 = 8;
                do
                {
                  result = v11[v94];
                  v93 = v93 + v9[v95 / 8] * (v11[v95 / 8][2] + *(result + 16));
                  v95 += 8;
                  --v94;
                }

                while (v83 != v95);
                v96 = rint(v93);
                if (v96 <= -32768)
                {
                  LODWORD(v96) = -32768;
                }

                if (v96 >= 0x7FFF)
                {
                  LOWORD(v96) = 0x7FFF;
                }

                a3[2] = v96;
              }
            }

            a3 = (a3 + a4);
            ++v11;
            --v41;
            v82 += 8;
          }

          while (v84);
        }

        else
        {
          v43 = a3 + 2;
          do
          {
            v44 = *v11;
            v45 = rint(*&v10 + v42 * **v11);
            if (v45 <= -32768)
            {
              LODWORD(v45) = -32768;
            }

            if (v45 >= 0x7FFF)
            {
              LOWORD(v45) = 0x7FFF;
            }

            *(v43 - 2) = v45;
            if (a6 != 1)
            {
              v46 = rint(*&v10 + v42 * v44[1]);
              if (v46 <= -32768)
              {
                LODWORD(v46) = -32768;
              }

              if (v46 >= 0x7FFF)
              {
                LOWORD(v46) = 0x7FFF;
              }

              *(v43 - 1) = v46;
              if (a6 != 2)
              {
                v47 = rint(*&v10 + v42 * v44[2]);
                if (v47 <= -32768)
                {
                  LODWORD(v47) = -32768;
                }

                if (v47 >= 0x7FFF)
                {
                  LOWORD(v47) = 0x7FFF;
                }

                *v43 = v47;
              }
            }

            ++v11;
            v43 = (v43 + a4);
            --a5;
          }

          while (a5);
        }
      }
    }
  }

  else if (a5)
  {
    v12 = rint(*&v10);
    if (v12 <= -32768)
    {
      v13 = -32768;
    }

    else
    {
      v13 = v12;
    }

    if (v13 >= 0x7FFF)
    {
      v13 = 0x7FFF;
    }

    v14 = a4;
    v15 = vdupq_n_s16(v13);
    v16 = vdupq_lane_s64(v10, 0);
    v17 = a2 + 8 * v7 - 8;
    result = 8 * (v6 / 2 + 1);
    while (a6 < 4)
    {
      v18 = 0;
      if (a6 > 0)
      {
        goto LABEL_20;
      }

LABEL_9:
      a3 = (a3 + v14);
      ++v11;
      v17 += 8;
      if (!--a5)
      {
        return result;
      }
    }

    v18 = 0;
    do
    {
      v19 = *v15.i8;
      if (v6 >= 2)
      {
        v20 = 8;
        v21 = v17;
        v22 = v16;
        v23 = v16;
        do
        {
          v24 = &v11[v20 / 8][v18];
          v25 = *v21--;
          v26 = (v25 + 8 * v18);
          v27 = v9[v20 / 8];
          v23 = vmlaq_n_f64(v23, vsubq_f64(v24[1], v26[1]), v27);
          v22 = vmlaq_n_f64(v22, vsubq_f64(*v24, *v26), v27);
          v20 += 8;
        }

        while (result != v20);
        v19 = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v22)), vcvtq_s64_f64(vrndxq_f64(v23))));
      }

      *&a3[v18] = v19;
      v18 += 4;
    }

    while (v18 <= a6 - 4);
    v18 = v18;
    if (v18 >= a6)
    {
      goto LABEL_9;
    }

LABEL_20:
    if (v6 >= 2)
    {
      do
      {
        v30 = 8;
        v31 = v17;
        v32 = *&v10;
        do
        {
          v33 = *v31--;
          v32 = v32 + v9[v30 / 8] * (v11[v30 / 8][v18] - *(v33 + 8 * v18));
          v30 += 8;
        }

        while (result != v30);
        v34 = rint(v32);
        if (v34 <= -32768)
        {
          LODWORD(v34) = -32768;
        }

        if (v34 >= 0x7FFF)
        {
          LOWORD(v34) = 0x7FFF;
        }

        a3[v18++] = v34;
      }

      while (v18 != a6);
      goto LABEL_9;
    }

    v28 = a6 - v18;
    if (v28 < 4)
    {
      v29 = v18;
      goto LABEL_42;
    }

    if (v28 >= 0x10)
    {
      v35 = v28 & 0xFFFFFFFFFFFFFFF0;
      v36 = v18;
      v37 = v28 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v38 = &a3[v36];
        *v38 = v15;
        v38[1] = v15;
        v36 += 16;
        v37 -= 16;
      }

      while (v37);
      if (v28 == v35)
      {
        goto LABEL_9;
      }

      if ((v28 & 0xC) == 0)
      {
        v29 = v35 + v18;
        do
        {
LABEL_42:
          a3[v29++] = v13;
        }

        while (a6 != v29);
        goto LABEL_9;
      }
    }

    else
    {
      v35 = 0;
    }

    v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL) + v18;
    v39 = v35 - (v28 & 0xFFFFFFFFFFFFFFFCLL);
    v40 = v35 + v18;
    do
    {
      *&a3[v40] = v15.i64[0];
      v40 += 4;
      v39 += 4;
    }

    while (v39);
    if (v28 == (v28 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

  return result;
}

uint64_t sub_100327474(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1003274F8(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v7 = sub_100318CF4(a1, a2, a3, a5);
  *v7 = off_100479F10;
  *(v7 + 120) = a4;
  if ((a4 & 3) == 0)
  {
    v9[0] = 0;
    v9[1] = 0;
    qmemcpy(sub_1002A80E0(v9, 64), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0", 64);
    sub_1002A8980(-215, v9, "SymmColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3314);
  }

  return a1;
}

void sub_1003275B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_100319590(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_1003275D8(uint64_t a1)
{
  *a1 = off_100479630;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_100327688(uint64_t a1)
{
  *a1 = off_100479630;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

unint64_t sub_100327758(unint64_t result, uint64_t a2, float *a3, int a4, int a5, int a6, double a7)
{
  v7 = *(result + 8);
  v8 = *(result + 32);
  v9 = (v7 + (v7 >> 31)) >> 1;
  v10 = (v8 + 4 * (v7 / 2));
  LODWORD(a7) = *(result + 116);
  v11 = (a2 + 8 * (v7 / 2));
  if (*(result + 120))
  {
    if (!a5)
    {
      return result;
    }

    v36 = (a5 - 1);
    v37 = a4;
    if (a6 <= 3)
    {
      if (a6 >= 1)
      {
        if (v7 >= 2)
        {
          v101 = (v7 / 2 + 1);
          v102 = a2 + 8 * v9 - 8;
          do
          {
            v103 = v36;
            v104 = *v11;
            v105 = *&a7 + (*v10 * **v11);
            v106 = v102;
            v107 = 1;
            do
            {
              v108 = *v106--;
              result = v108;
              v105 = v105 + (v10[v107] * (*v11[v107] + *v108));
              ++v107;
            }

            while (v101 != v107);
            *a3 = v105;
            if (a6 != 1)
            {
              v109 = *&a7 + (*v10 * v104[1]);
              v110 = 0x1FFFFFFFFFFFFFFFLL;
              v111 = 1;
              do
              {
                v109 = v109 + (v10[v111] * (v11[v111][1] + v11[v110][1]));
                ++v111;
                --v110;
              }

              while (v101 != v111);
              a3[1] = v109;
              if (a6 != 2)
              {
                v112 = *&a7 + (*v10 * v104[2]);
                v113 = 0x1FFFFFFFFFFFFFFFLL;
                v114 = 1;
                do
                {
                  v112 = v112 + (v10[v114] * (v11[v114][2] + v11[v113][2]));
                  ++v114;
                  --v113;
                }

                while (v101 != v114);
                a3[2] = v112;
              }
            }

            a3 = (a3 + a4);
            ++v11;
            LODWORD(v36) = v36 - 1;
            v102 += 8;
          }

          while (v103);
        }

        else
        {
          v38 = a3 + 2;
          do
          {
            v39 = *v11;
            *(v38 - 2) = *&a7 + (*v10 * **v11);
            if (a6 != 1)
            {
              *(v38 - 1) = *&a7 + (*v10 * v39[1]);
              if (a6 != 2)
              {
                *v38 = *&a7 + (*v10 * v39[2]);
              }
            }

            ++v11;
            v38 = (v38 + a4);
            --a5;
          }

          while (a5);
        }
      }

      return result;
    }

    v40 = (a6 - 4);
    if (v7 >= 2)
    {
      v87 = (v7 / 2 + 1);
      v88 = vdupq_lane_s32(*&a7, 0);
      v89 = a2 + 8 * v9 - 8;
      do
      {
        result = 0;
        v90 = v36;
        v91 = *v11;
        v92 = 4;
        do
        {
          v93 = v92;
          v94 = vmlaq_n_f32(v88, *&v91[result], *v10);
          v95 = v89;
          v96 = 1;
          do
          {
            v97 = *v95--;
            v94 = vmlaq_n_f32(v94, vaddq_f32(*&v11[v96][result], *(v97 + 4 * result)), v10[v96]);
            ++v96;
          }

          while (v87 != v96);
          *&a3[result] = v94;
          result += 4;
          v92 += 4;
        }

        while (result <= v40);
        if (result < a6)
        {
          do
          {
            v98 = *&a7 + (*v10 * v91[v93]);
            result = v89;
            v99 = 1;
            do
            {
              v100 = *result;
              result -= 8;
              v98 = v98 + (v10[v99] * (v11[v99][v93] + *(v100 + 4 * v93)));
              ++v99;
            }

            while (v87 != v99);
            a3[v93++] = v98;
          }

          while (v93 < a6);
        }

        a3 = (a3 + v37);
        ++v11;
        LODWORD(v36) = v36 - 1;
        v89 += 8;
      }

      while (v90);
      return result;
    }

    v41 = 0;
    if ((v40 & 0x7FFFFFFC) + 5 <= a6)
    {
      v42 = a6;
    }

    else
    {
      v42 = (v40 & 0x7FFFFFFC) + 5;
    }

    v43 = (4 * (a6 - 4)) & 0x1FFFFFFF0;
    v44 = 4 * v42 - v43;
    v45 = v8 + 4 * v9 + 4;
    v46 = v42 - (v40 & 0x7FFFFFFC) - 4;
    result = a3 + a4 * v36 + v43 + 16;
    v47 = (v40 >> 2) + 1;
    v49 = v45 > a3 && v10 < result;
    v50 = vdupq_lane_s32(*&a7, 0);
    v51 = v46 & 0xFFFFFFFFFFFFFFF8;
    v52 = a3 + 4;
    v53 = a3;
    while (1)
    {
      v54 = v36;
      v55 = *v11;
      if (v40 <= 0xB)
      {
        break;
      }

      v56 = v55 + v43 + 16 <= a3 || v55 >= result;
      v57 = !v56 || a4 < 0;
      v58 = v57 || v49;
      if (v58)
      {
        break;
      }

      v66 = 0;
      v67 = v47 & 0x3FFFFFFC;
      do
      {
        v68 = &v53[v66 / 4];
        v69 = vmlaq_n_f32(v50, *(v55 + v66 + 48), *v10);
        v70 = vmlaq_n_f32(v50, *(v55 + v66 + 16), *v10);
        v71 = vmlaq_n_f32(v50, *(v55 + v66 + 32), *v10);
        *v68 = vmlaq_n_f32(v50, *(v55 + v66), *v10);
        v68[1] = v70;
        v68[2] = v71;
        v68[3] = v69;
        v66 += 64;
        v67 -= 4;
      }

      while (v67);
      v59 = v47 & 0x3FFFFFFC;
      v61 = (16 * ((v59 >> 2) & 0xFFFFFFF)) | 4;
      v60 = 4 * v59;
      v62 = v59 - 1;
      v63 = v60;
      if (v47 != v59)
      {
        goto LABEL_69;
      }

LABEL_71:
      if (v60 < a6)
      {
        if (v46 >= 8)
        {
          v72 = 16 * v62;
          v73 = &a3[4 * v62] + v41 * a4;
          v74 = v73 + 16;
          v75 = &v73[v44];
          v76 = v55 + v72;
          v77 = v55 + v72 + 16;
          v79 = v74 < v76 + v44 && v77 < v75;
          if (v10 >= v75 || v74 >= v45)
          {
            if (v79)
            {
              v65 = v63;
            }

            else
            {
              v81 = vld1q_dup_f32(v10);
              v65 = v63 + v51;
              v82 = 4 * v63;
              v83 = &v52[v63];
              v84 = (v55 + v82 + 16);
              v85 = v46 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                v86 = vmlaq_f32(v50, *v84, v81);
                v83[-1] = vmlaq_f32(v50, v84[-1], v81);
                *v83 = v86;
                v83 += 2;
                v84 += 2;
                v85 -= 8;
              }

              while (v85);
              if (v46 == v51)
              {
                goto LABEL_56;
              }
            }
          }

          else
          {
            v65 = v63;
          }
        }

        else
        {
          v65 = v63;
        }

        do
        {
          v53[v65] = *&a7 + (*v10 * *(v55 + 4 * v65));
          ++v65;
        }

        while (v65 < a6);
      }

LABEL_56:
      v53 = (v53 + a4);
      ++v11;
      LODWORD(v36) = v54 - 1;
      ++v41;
      v52 = (v52 + a4);
      if (!v54)
      {
        return result;
      }
    }

    v59 = 0;
    v60 = 0;
    v61 = 4;
LABEL_69:
    v62 = v59 - 1;
    v63 = v61 - 4;
    v64 = v60;
    do
    {
      *&v53[v64] = vmlaq_n_f32(v50, *(v55 + v64 * 4), *v10);
      v60 += 4;
      ++v62;
      v63 += 4;
      v64 += 4;
    }

    while (v60 <= v40);
    goto LABEL_71;
  }

  if (a5)
  {
    v12 = a4;
    v13 = (v7 / 2 + 1);
    v14 = a6 - 4;
    v15 = 3;
    if (v14 > 3)
    {
      v15 = a6 - 4;
    }

    v16 = (v15 >> 2) + 1;
    v17 = vdupq_lane_s32(*&a7, 0);
    result = a2 + 8 * v9 - 8;
    v18 = a3 + 16;
    do
    {
      if (a6 < 4)
      {
        v19 = 0;
        if (a6 <= 0)
        {
          goto LABEL_6;
        }

        goto LABEL_24;
      }

      if (v7 >= 2)
      {
        v19 = 0;
        do
        {
          v20 = result;
          v21 = 1;
          v22 = v17;
          do
          {
            v23 = *v20--;
            v22 = vmlaq_n_f32(v22, vsubq_f32(*&v11[v21][v19], *(v23 + 4 * v19)), v10[v21]);
            ++v21;
          }

          while (v13 != v21);
          *&a3[v19] = v22;
          v19 += 4;
        }

        while (v19 <= v14);
      }

      else
      {
        if (v14 < 0x1C)
        {
          v19 = 0;
LABEL_21:
          v26 = v19;
          do
          {
            *&a3[v26] = v17;
            v19 += 4;
            v26 += 4;
          }

          while (v19 <= v14);
          goto LABEL_23;
        }

        v24 = v16 & 0x3FFFFFF8;
        v25 = v18;
        do
        {
          *(v25 - 4) = v17;
          *(v25 - 3) = v17;
          *(v25 - 2) = v17;
          *(v25 - 1) = v17;
          *v25 = v17;
          v25[1] = v17;
          v25[2] = v17;
          v25[3] = v17;
          v25 += 8;
          v24 -= 8;
        }

        while (v24);
        v19 = 4 * (v16 & 0x3FFFFFF8);
        if (v16 != (v16 & 0x3FFFFFF8))
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v19 = v19;
      if (v19 >= a6)
      {
        goto LABEL_6;
      }

LABEL_24:
      if (v7 >= 2)
      {
        do
        {
          v29 = result;
          v30 = 1;
          v31 = *&a7;
          do
          {
            v32 = *v29--;
            v31 = v31 + (v10[v30] * (v11[v30][v19] - *(v32 + 4 * v19)));
            ++v30;
          }

          while (v13 != v30);
          a3[v19++] = v31;
        }

        while (v19 != a6);
        goto LABEL_6;
      }

      v27 = a6 - v19;
      if (v27 >= 8)
      {
        v28 = (v27 & 0xFFFFFFFFFFFFFFF8) + v19;
        v33 = v19;
        v34 = v27 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v35 = &a3[v33];
          *v35 = v17;
          *(v35 + 1) = v17;
          v33 += 8;
          v34 -= 8;
        }

        while (v34);
        if (v27 == (v27 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v28 = v19;
      }

      do
      {
        a3[v28++] = *&a7;
      }

      while (a6 != v28);
LABEL_6:
      a3 = (a3 + v12);
      ++v11;
      result += 8;
      v18 = (v18 + v12);
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t sub_100327E8C(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_100327F10(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v7 = sub_1003196DC(a1, a2, a3, a5);
  *v7 = off_100479F98;
  *(v7 + 128) = a4;
  if ((a4 & 3) == 0)
  {
    v9[0] = 0;
    v9[1] = 0;
    qmemcpy(sub_1002A80E0(v9, 64), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0", 64);
    sub_1002A8980(-215, v9, "SymmColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3314);
  }

  return a1;
}

void sub_100327FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_10031A004(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_100327FF0(uint64_t a1)
{
  *a1 = off_1004796B8;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  return a1;
}

void sub_1003280A0(uint64_t a1)
{
  *a1 = off_1004796B8;
  v2 = *(a1 + 72);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 16);
  }

  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  v5 = *(a1 + 88);
  if (v5 != (a1 + 96))
  {
    j__free(v5);
  }

  operator delete();
}

unint64_t sub_100328170(unint64_t result, uint64_t a2, double *a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = *(result + 32);
  v8 = (v6 + (v6 >> 31)) >> 1;
  v9 = 8 * (v6 / 2);
  v10 = (v7 + v9);
  v11 = *(result + 120);
  v12 = (a2 + v9);
  if (*(result + 128))
  {
    if (!a5)
    {
      return result;
    }

    v43 = (a5 - 1);
    v44 = a4;
    if (a6 <= 3)
    {
      if (a6 >= 1)
      {
        if (v6 >= 2)
        {
          v113 = a2 + 8 * v8 - 8;
          v114 = 8 * (v6 / 2 + 1);
          do
          {
            v115 = v43;
            v116 = *v12;
            v117 = v11 + *v10 * **v12;
            v118 = 8;
            v119 = v113;
            do
            {
              v120 = *v119--;
              result = v120;
              v117 = v117 + v10[v118 / 8] * (*v12[v118 / 8] + *v120);
              v118 += 8;
            }

            while (v114 != v118);
            *a3 = v117;
            if (a6 != 1)
            {
              v121 = v11 + *v10 * v116[1];
              v122 = 0x1FFFFFFFFFFFFFFFLL;
              v123 = 8;
              do
              {
                v121 = v121 + v10[v123 / 8] * (v12[v123 / 8][1] + v12[v122][1]);
                v123 += 8;
                --v122;
              }

              while (v114 != v123);
              a3[1] = v121;
              if (a6 != 2)
              {
                v124 = v11 + *v10 * v116[2];
                v125 = 0x1FFFFFFFFFFFFFFFLL;
                v126 = 8;
                do
                {
                  v124 = v124 + v10[v126 / 8] * (v12[v126 / 8][2] + v12[v125][2]);
                  v126 += 8;
                  --v125;
                }

                while (v114 != v126);
                a3[2] = v124;
              }
            }

            a3 = (a3 + a4);
            ++v12;
            LODWORD(v43) = v43 - 1;
            v113 += 8;
          }

          while (v115);
        }

        else
        {
          v45 = a3 + 2;
          do
          {
            v46 = *v12;
            *(v45 - 2) = v11 + *v10 * **v12;
            if (a6 != 1)
            {
              *(v45 - 1) = v11 + *v10 * v46[1];
              if (a6 != 2)
              {
                *v45 = v11 + *v10 * v46[2];
              }
            }

            ++v12;
            v45 = (v45 + a4);
            --a5;
          }

          while (a5);
        }
      }

      return result;
    }

    v47 = (a6 - 4);
    if (v6 >= 2)
    {
      v93 = vdupq_lane_s64(*&v11, 0);
      v94 = a2 + 8 * v8 - 8;
      v95 = 8 * (v6 / 2 + 1);
      do
      {
        result = 0;
        v96 = v43;
        v97 = *v12;
        v98 = 4;
        do
        {
          v99 = v98;
          v100 = &v97[result];
          v101 = vmlaq_n_f64(v93, *v100, *v10);
          v102 = vmlaq_n_f64(v93, v100[1], *v10);
          v103 = result;
          v104 = 8;
          v105 = v94;
          do
          {
            v106 = &v12[v104 / 8][v103];
            v107 = *v105--;
            v108 = v10[v104 / 8];
            v101 = vmlaq_n_f64(v101, vaddq_f64(*v106, *(v107 + 8 * result)), v108);
            v102 = vmlaq_n_f64(v102, vaddq_f64(v106[1], *(v107 + v103 * 8 + 16)), v108);
            v104 += 8;
          }

          while (v95 != v104);
          v109 = &a3[result];
          *v109 = v101;
          *(v109 + 1) = v102;
          result += 4;
          v98 = v99 + 4;
        }

        while (result <= v47);
        if (result < a6)
        {
          do
          {
            v110 = v11 + *v10 * v97[v99];
            result = 8;
            v111 = v94;
            do
            {
              v112 = *v111--;
              v110 = v110 + *(v10 + result) * ((*(v12 + result))[v99] + *(v112 + 8 * v99));
              result += 8;
            }

            while (v95 != result);
            a3[v99++] = v110;
          }

          while (v99 < a6);
        }

        a3 = (a3 + v44);
        ++v12;
        LODWORD(v43) = v43 - 1;
        v94 += 8;
      }

      while (v96);
      return result;
    }

    v48 = 0;
    if ((v47 & 0x7FFFFFFC) + 5 <= a6)
    {
      v49 = a6;
    }

    else
    {
      v49 = (v47 & 0x7FFFFFFC) + 5;
    }

    v50 = (8 * (a6 - 4)) & 0x3FFFFFFE0;
    v51 = 8 * v49 - v50;
    v52 = v7 + 8 * v8 + 8;
    v53 = v49 - (v47 & 0x7FFFFFFC) - 4;
    result = a3 + a4 * v43 + v50 + 32;
    v54 = (v47 >> 2) + 1;
    v56 = v52 > a3 && v10 < result;
    v57 = vdupq_lane_s64(*&v11, 0);
    v127 = v49 & 3;
    v58 = a3 + 2;
    v59 = a3;
    while (1)
    {
      v60 = v43;
      v61 = *v12;
      if (v47 <= 3)
      {
        break;
      }

      v62 = v61 + v50 + 32 <= a3 || v61 >= result;
      v63 = !v62 || a4 < 0;
      v64 = v63 || v56;
      if (v64)
      {
        break;
      }

      v75 = 0;
      v76 = v54 & 0x3FFFFFFE;
      do
      {
        v77 = &v59[v75 / 8];
        v78 = vmlaq_n_f64(v57, *(v61 + v75 + 48), *v10);
        v79 = vmlaq_n_f64(v57, *(v61 + v75 + 16), *v10);
        v80 = vmlaq_n_f64(v57, *(v61 + v75 + 32), *v10);
        *v77 = vmlaq_n_f64(v57, *(v61 + v75), *v10);
        v77[1] = v79;
        v77[2] = v80;
        v77[3] = v78;
        v75 += 64;
        v76 -= 2;
      }

      while (v76);
      v65 = v54 & 0x3FFFFFFE;
      v68 = v65 - 1;
      v67 = (4 * v54) | 4;
      v66 = 4 * v65;
      v69 = v66;
      if (v54 != v65)
      {
        goto LABEL_69;
      }

LABEL_71:
      if (v66 < a6)
      {
        if (v53 >= 8)
        {
          v81 = &a3[4 * v68] + v48 * a4;
          v82 = v81 + 32;
          v83 = &v81[v51];
          v84 = v61 + 32 * v68;
          v86 = v82 < v84 + v51 && v84 + 32 < v83;
          if (v10 >= v83 || v82 >= v52)
          {
            if (v86)
            {
              v74 = v69;
            }

            else
            {
              v88 = vld1q_dup_f64(v10);
              v74 = v69 + v53 - v127;
              v89 = &v58[v69];
              v90 = (v61 + 8 * v69 + 16);
              v91 = v53 - v127;
              do
              {
                v92 = vmlaq_f64(v57, *v90, v88);
                v89[-1] = vmlaq_f64(v57, v90[-1], v88);
                *v89 = v92;
                v89 += 2;
                v90 += 2;
                v91 -= 4;
              }

              while (v91);
              if (!v127)
              {
                goto LABEL_56;
              }
            }
          }

          else
          {
            v74 = v69;
          }
        }

        else
        {
          v74 = v69;
        }

        do
        {
          v59[v74] = v11 + *v10 * *(v61 + 8 * v74);
          ++v74;
        }

        while (v74 < a6);
      }

LABEL_56:
      v59 = (v59 + a4);
      ++v12;
      LODWORD(v43) = v60 - 1;
      ++v48;
      v58 = (v58 + a4);
      if (!v60)
      {
        return result;
      }
    }

    v65 = 0;
    v66 = 0;
    v67 = 4;
LABEL_69:
    v68 = v65 - 1;
    v69 = v67 - 4;
    v70 = 8 * v66;
    do
    {
      v71 = v11 + *v10 * *(v61 + v70 + 24);
      v72 = &v59[v70 / 8];
      v73 = vmlaq_n_f64(v57, *(v61 + v70 + 8), *v10);
      *v72 = v11 + *v10 * *(v61 + v70);
      v66 += 4;
      *(v72 + 1) = v73;
      v72[3] = v71;
      ++v68;
      v69 += 4;
      v70 += 32;
    }

    while (v66 <= v47);
    goto LABEL_71;
  }

  if (a5)
  {
    v13 = a4;
    v14 = a6 - 4;
    v15 = 3;
    if (v14 > 3)
    {
      v15 = a6 - 4;
    }

    v16 = (v15 >> 2) + 1;
    v17 = vdupq_lane_s64(*&v11, 0);
    v18 = a2 + 8 * v8 - 8;
    result = 8 * (v6 / 2 + 1);
    v19 = a3 + 8;
    do
    {
      if (a6 < 4)
      {
        v20 = 0;
        if (a6 <= 0)
        {
          goto LABEL_6;
        }

        goto LABEL_24;
      }

      if (v6 >= 2)
      {
        v20 = 0;
        do
        {
          v21 = 8;
          v22 = v18;
          v23 = v17;
          v24 = v17;
          do
          {
            v25 = &v12[v21 / 8][v20];
            v26 = *v22--;
            v27 = (v26 + 8 * v20);
            v28 = v10[v21 / 8];
            v23 = vmlaq_n_f64(v23, vsubq_f64(*v25, *v27), v28);
            v24 = vmlaq_n_f64(v24, vsubq_f64(v25[1], v27[1]), v28);
            v21 += 8;
          }

          while (result != v21);
          v29 = &a3[v20];
          *v29 = v23;
          *(v29 + 1) = v24;
          v20 += 4;
        }

        while (v20 <= v14);
      }

      else
      {
        if (v14 < 0xC)
        {
          v20 = 0;
LABEL_21:
          v32 = v20;
          do
          {
            v33 = &a3[v32];
            *v33 = v17;
            *(v33 + 1) = v17;
            v20 += 4;
            v32 += 4;
          }

          while (v20 <= v14);
          goto LABEL_23;
        }

        v30 = v16 & 0x3FFFFFFC;
        v31 = v19;
        do
        {
          *(v31 - 4) = v17;
          *(v31 - 3) = v17;
          *(v31 - 2) = v17;
          *(v31 - 1) = v17;
          *v31 = v17;
          v31[1] = v17;
          v31[2] = v17;
          v31[3] = v17;
          v31 += 8;
          v30 -= 4;
        }

        while (v30);
        v20 = 4 * (v16 & 0x3FFFFFFC);
        if (v16 != (v16 & 0x3FFFFFFC))
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v20 = v20;
      if (v20 >= a6)
      {
        goto LABEL_6;
      }

LABEL_24:
      if (v6 >= 2)
      {
        do
        {
          v36 = 8;
          v37 = v18;
          v38 = v11;
          do
          {
            v39 = *v37--;
            v38 = v38 + v10[v36 / 8] * (v12[v36 / 8][v20] - *(v39 + 8 * v20));
            v36 += 8;
          }

          while (result != v36);
          a3[v20++] = v38;
        }

        while (v20 != a6);
        goto LABEL_6;
      }

      v34 = a6 - v20;
      if (v34 >= 4)
      {
        v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL) + v20;
        v40 = v20;
        v41 = v34 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v42 = &a3[v40];
          *v42 = v17;
          *(v42 + 1) = v17;
          v40 += 4;
          v41 -= 4;
        }

        while (v41);
        if (v34 == (v34 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v35 = v20;
      }

      do
      {
        a3[v35++] = v11;
      }

      while (a6 != v35);
LABEL_6:
      a3 = (a3 + v13);
      ++v12;
      v18 += 8;
      v19 = (v19 + v13);
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t sub_100328910(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

uint64_t sub_1003289AC(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(a1[2]);
    a1 = v2;
  }

  v3 = *(*a1 + 8);

  return v3();
}

double sub_100328A30(uint64_t a1, float *a2, int a3)
{
  sub_1002ACE7C(v74, &off_10047A050);
  if (sub_100271148(a1) != 0x10000)
  {
    sub_1002703C0(a1, 0xFFFFFFFFLL, &v66);
    goto LABEL_8;
  }

  v6 = *(a1 + 8);
  v7 = *v6;
  v8 = *(v6 + 16);
  v66 = *v6;
  v67 = v8;
  v68 = *(v6 + 32);
  v9 = *(v6 + 56);
  v69 = *(v6 + 48);
  v70 = v9;
  v71 = &v66 + 8;
  v72 = v73;
  v73[0] = 0;
  v73[1] = 0;
  if (!v9)
  {
    if (SDWORD1(v7) <= 2)
    {
      goto LABEL_4;
    }

LABEL_7:
    DWORD1(v66) = 0;
    sub_100269B58(&v66, v6);
    goto LABEL_8;
  }

  atomic_fetch_add((v9 + 20), 1u);
  if (*(v6 + 4) > 2)
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = *(v6 + 72);
  v11 = v72;
  *v72 = *v10;
  v11[1] = v10[1];
LABEL_8:
  v12 = sub_10026F620(&v66, 2, -1, 1);
  if (v12 < 0 || (v66 & 6) != 4)
  {
    v65[0] = 0;
    v65[1] = 0;
    qmemcpy(sub_1002A80E0(v65, 40), "total >= 0 && (depth == 4 || depth == 5)", 40);
    sub_1002A8980(-215, v65, "pointPolygonTest", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/geometry.cpp", 103);
  }

  if (!v12)
  {
    if (a3)
    {
      v26 = -1.79769313e308;
    }

    else
    {
      v26 = -1.0;
    }

    v30 = v70;
    if (!v70)
    {
      goto LABEL_131;
    }

    goto LABEL_129;
  }

  v13 = v66 & 7;
  v14 = *a2;
  v15 = a2[1];
  v16 = v67;
  if (v13 != 5 && !a3)
  {
    v17 = rintf(v14);
    v18 = rintf(v15);
    if (v14 == v17 && v15 == v18)
    {
      if (v12 >= 1)
      {
        v20 = 0;
        v21 = v12;
        v22 = v67 + 8 * v12;
        v23 = *(v22 - 8);
        v24 = *(v22 - 4);
        v25 = (v67 + 4);
        v26 = 0.0;
        while (1)
        {
          v28 = *(v25 - 1);
          v29 = *v25;
          if (v18 >= v24 != *v25 > v18 || v17 > v23 && v28 < v17)
          {
            if (v29 == v18 && (v28 == v17 || v18 == v24 && (v17 >= v23 && v28 >= v17 || v28 <= v17 && v17 <= v23)))
            {
              goto LABEL_128;
            }
          }

          else
          {
            v27 = (v28 - v23) * (v18 - v24) - (v29 - v24) * (v17 - v23);
            if (!v27)
            {
              v26 = 0.0;
              goto LABEL_128;
            }

            if (v29 < v24)
            {
              v27 = -v27;
            }

            if (v27 > 0)
            {
              ++v20;
            }
          }

          v25 += 2;
          v24 = v29;
          v23 = v28;
          if (!--v21)
          {
            if (v20)
            {
              v60 = 1;
            }

            else
            {
              v60 = -1;
            }

            v26 = v60;
            v30 = v70;
            if (!v70)
            {
              goto LABEL_131;
            }

            goto LABEL_129;
          }
        }
      }

      goto LABEL_83;
    }
  }

  v31 = v67 + 8 * v12;
  if (v13 == 5)
  {
    v32 = *(v31 - 8);
    v33 = v12 < 1;
    if ((a3 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_86;
  }

  v32 = vcvt_f32_s32(*(v31 - 8));
  v33 = v12 < 1;
  if (a3)
  {
LABEL_86:
    if (v33)
    {
      v26 = -1.84467435e19;
      v30 = v70;
      if (!v70)
      {
        goto LABEL_131;
      }

      goto LABEL_129;
    }

    v44 = 0;
    v45 = v12;
    v46 = 1.0;
    v47 = 3.40282347e38;
    while (1)
    {
      v50 = v32;
      if (v13 == 5)
      {
        v32 = *v16;
      }

      else
      {
        v32 = vcvt_f32_s32(*v16);
      }

      v51 = vsub_f32(v32, v50).f32[0];
      v52 = v32.f32[1] - v50.f32[1];
      v53 = (v32.f32[1] - v50.f32[1]);
      v54 = (v14 - v50.f32[0]);
      v55 = (v15 - v50.f32[1]);
      if (v55 * v53 + v54 * v51 <= 0.0)
      {
        v58 = v55 * v55 + v54 * v54;
        v59 = 1.0;
        if (v46 * v58 >= v47 * 1.0)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v56 = (v14 - v32.f32[0]);
        v57 = (v15 - v32.f32[1]);
        if (v57 * v53 + v56 * v51 >= 0.0)
        {
          v58 = v57 * v57 + v56 * v56;
          v59 = 1.0;
          if (v46 * v58 >= v47 * 1.0)
          {
            goto LABEL_104;
          }
        }

        else
        {
          v58 = (v55 * v51 - v54 * v53) * (v55 * v51 - v54 * v53);
          v59 = v53 * v53 + v51 * v51;
          if (v46 * v58 >= v47 * v59)
          {
            goto LABEL_104;
          }
        }
      }

      v47 = v58;
      v46 = v59;
      if (v58 == 0.0)
      {
        v47 = v58;
        v46 = v59;
LABEL_124:
        v26 = sqrt(v47 / v46);
        if ((v44 & 1) == 0)
        {
          v26 = -v26;
          v30 = v70;
          if (!v70)
          {
            goto LABEL_131;
          }

          goto LABEL_129;
        }

LABEL_128:
        v30 = v70;
        if (!v70)
        {
          goto LABEL_131;
        }

LABEL_129:
        if (atomic_fetch_add((v30 + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(&v66);
        }

        goto LABEL_131;
      }

LABEL_104:
      if ((v50.f32[1] > v15 || v32.f32[1] > v15) && (v50.f32[1] <= v15 || v32.f32[1] <= v15) && (v50.f32[0] >= v14 || v32.f32[0] >= v14))
      {
        v48 = v55 * v51 - v54 * v53;
        v49 = -v48;
        if (v52 >= 0.0)
        {
          v49 = v48;
        }

        if (v49 > 0.0)
        {
          ++v44;
        }
      }

      ++v16;
      if (!--v45)
      {
        goto LABEL_124;
      }
    }
  }

LABEL_45:
  if (v33)
  {
LABEL_83:
    v26 = -1.0;
    v30 = v70;
    if (!v70)
    {
      goto LABEL_131;
    }

    goto LABEL_129;
  }

  v34 = 0;
  v35 = v12;
  v26 = 0.0;
  do
  {
    v37 = v32;
    if (v13 == 5)
    {
      v32 = *v16;
      v38 = v37.f32[1];
      LODWORD(v39) = HIDWORD(*v16);
      if (v37.f32[1] <= v15 && v39 <= v15)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v32 = vcvt_f32_s32(*v16);
      v38 = v37.f32[1];
      v39 = v32.f32[1];
      if (v37.f32[1] <= v15 && v32.f32[1] <= v15)
      {
LABEL_71:
        if (v15 == v39)
        {
          if (v14 == v32.f32[0])
          {
            goto LABEL_128;
          }

          if (v15 == v38)
          {
            if (v37.f32[0] <= v14 && v14 <= v32.f32[0])
            {
              goto LABEL_128;
            }

            if (v32.f32[0] <= v14 && v14 <= v37.f32[0])
            {
              goto LABEL_128;
            }
          }
        }

        goto LABEL_52;
      }
    }

    v42 = v38 <= v15 || v39 <= v15;
    if (!v42 || v37.f32[0] < v14 && v32.f32[0] < v14)
    {
      goto LABEL_71;
    }

    v43 = (v15 - v38) * vsub_f32(v32, v37).f32[0] - (v14 - v37.f32[0]) * (v39 - v38);
    if (v43 == 0.0)
    {
      v26 = 0.0;
      v30 = v70;
      if (v70)
      {
        goto LABEL_129;
      }

      goto LABEL_131;
    }

    if (v39 < v38)
    {
      v43 = -v43;
    }

    if (v43 > 0.0)
    {
      ++v34;
    }

LABEL_52:
    ++v16;
    --v35;
  }

  while (v35);
  if (v34)
  {
    v61 = 1;
  }

  else
  {
    v61 = -1;
  }

  v26 = v61;
  v30 = v70;
  if (v70)
  {
    goto LABEL_129;
  }

LABEL_131:
  v70 = 0;
  v67 = 0u;
  v68 = 0u;
  if (SDWORD1(v66) >= 1)
  {
    v62 = 0;
    v63 = v71;
    do
    {
      *&v63[4 * v62++] = 0;
    }

    while (v62 < SDWORD1(v66));
  }

  if (v72 != v73)
  {
    j__free(v72);
  }

  if (v74[2])
  {
    sub_1002ACC1C(v74);
  }

  return v26;
}

void sub_100329074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1002A8124(&a9);
  sub_100006D14(va);
  sub_1001D8BF4(v10 - 64);
  _Unwind_Resume(a1);
}

void sub_1003290C4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, float **a8, unsigned __int8 a9, char a10)
{
  v16 = a2;
  sub_1002ACE7C(v633, &off_10047A070);
  if (sub_100271148(a4) != 0x10000)
  {
    sub_1002703C0(a4, 0xFFFFFFFFLL, &v625);
    goto LABEL_8;
  }

  v18 = *(a4 + 8);
  v19 = *v18;
  v20 = *(v18 + 16);
  v625 = *v18;
  v626 = v20;
  v627 = *(v18 + 32);
  v21 = *(v18 + 56);
  v628 = *(v18 + 48);
  v629 = v21;
  v630 = &v625 + 8;
  v631 = v632;
  v632[0] = 0;
  v632[1] = 0;
  if (!v21)
  {
    if (SDWORD1(v19) <= 2)
    {
      goto LABEL_4;
    }

LABEL_7:
    DWORD1(v625) = 0;
    sub_100269B58(&v625, v18);
    goto LABEL_8;
  }

  atomic_fetch_add((v21 + 20), 1u);
  if (*(v18 + 4) > 2)
  {
    goto LABEL_7;
  }

LABEL_4:
  v22 = *(v18 + 72);
  v23 = v631;
  *v631 = *v22;
  v23[1] = v22[1];
LABEL_8:
  if (a6 < 1 || !a7)
  {
    v634 = 0uLL;
    v24 = sub_1002A80E0(&v634, 20);
    *(v24 + 16) = 1702521171;
    *v24 = *"dims > 0 && histSize";
    sub_1002A8980(-215, v634.i64, "calcHist", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 1457);
  }

  if (sub_100271148(a5) != 0x10000)
  {
    sub_1002703C0(a5, 0xFFFFFFFFLL, &v634);
    goto LABEL_18;
  }

  v25 = *(a5 + 8);
  v26 = *v25;
  v27 = *(v25 + 16);
  v634 = *v25;
  v635 = v27;
  v636 = *(v25 + 32);
  v28 = *(v25 + 56);
  v637 = *(v25 + 48);
  v638 = v28;
  v639 = &v634.i64[1];
  v640 = v641;
  v641[1] = 0;
  v641[0] = 0;
  if (!v28)
  {
    if (v26.i32[1] <= 2)
    {
      goto LABEL_14;
    }

LABEL_17:
    v634.i32[1] = 0;
    sub_100269B58(&v634, v25);
    goto LABEL_18;
  }

  atomic_fetch_add((v28 + 20), 1u);
  if (*(v25 + 4) > 2)
  {
    goto LABEL_17;
  }

LABEL_14:
  v29 = *(v25 + 72);
  v30 = v640;
  *v640 = *v29;
  v30[1] = v29[1];
LABEL_18:
  v31 = v635;
  if (v638 && atomic_fetch_add((v638 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v634);
  }

  v638 = 0;
  v635 = 0u;
  v636 = 0u;
  if (v634.i32[1] >= 1)
  {
    v32 = 0;
    v33 = v639;
    do
    {
      *(v33 + v32++) = 0;
    }

    while (v32 < v634.i32[1]);
  }

  if (v640 != v641)
  {
    j__free(v640);
  }

  sub_10026BEEC(a5, a6, a7, 5u, -1, 0, 0);
  if (sub_100271148(a5) == 0x10000)
  {
    v34 = *(a5 + 8);
    v35 = *v34;
    v36 = *(v34 + 16);
    v617 = *v34;
    v618 = v36;
    v619 = *(v34 + 32);
    v37 = *(v34 + 56);
    v620 = *(v34 + 48);
    v621 = v37;
    v622 = &v617 + 2;
    v623 = v624;
    v624[0] = 0;
    v624[1] = 0;
    if (v37)
    {
      atomic_fetch_add((v37 + 20), 1u);
      if (*(v34 + 4) <= 2)
      {
LABEL_29:
        v38 = *(v34 + 72);
        v39 = v623;
        *v623 = *v38;
        v39[1] = v38[1];
        goto LABEL_33;
      }
    }

    else if (SDWORD1(v35) <= 2)
    {
      goto LABEL_29;
    }

    DWORD1(v617) = 0;
    sub_100269B58(&v617, v34);
  }

  else
  {
    sub_1002703C0(a5, 0xFFFFFFFFLL, &v617);
  }

LABEL_33:
  v609 = v617;
  v610 = v618;
  if (v31 == v618)
  {
    v40 = a10;
  }

  else
  {
    v40 = 0;
  }

  v611 = v619;
  v612 = v620;
  v613 = v621;
  v614 = &v609 + 8;
  v615 = v616;
  v616[0] = 0;
  v616[1] = 0;
  if (v621)
  {
    atomic_fetch_add((v621 + 20), 1u);
    if (SDWORD1(v617) <= 2)
    {
LABEL_38:
      v41 = v623;
      v42 = v615;
      *v615 = *v623;
      v42[1] = v41[1];
      goto LABEL_41;
    }
  }

  else if (SDWORD1(v617) <= 2)
  {
    goto LABEL_38;
  }

  DWORD1(v609) = 0;
  sub_100269B58(&v609, &v617);
LABEL_41:
  LODWORD(v609) = v609 & 0xFFFFF000 | 4;
  if (v40)
  {
    v634.i32[0] = 33619968;
    v634.i64[1] = &v609;
    *&v635 = 0;
    sub_10020EF14(&v617, &v634, 4, 1.0, 0.0);
  }

  else
  {
    v634 = 0u;
    v635 = 0u;
    sub_10022CAFC(&v617, &v634);
  }

  v606 = 0;
  v607 = 0;
  v608 = 0;
  v603 = 0;
  v604 = 0;
  v605 = 0;
  v600 = 0;
  v601 = 0;
  v602 = 0;
  v599 = 0;
  if (v626)
  {
    if (SDWORD1(v625) >= 3)
    {
      v44 = (v630 + 4);
      v45 = 1;
      v46 = DWORD1(v625) & 0x7FFFFFFE;
      v47 = 1;
      do
      {
        v45 *= *(v44 - 1);
        v47 *= *v44;
        v44 += 2;
        v46 -= 2;
      }

      while (v46);
      v43 = v47 * v45;
      v48 = DWORD1(v625) - (DWORD1(v625) & 0x7FFFFFFE);
      if (v48)
      {
        v49 = &v630[8 * ((DWORD1(v625) >> 1) & 0x3FFFFFFF)];
        do
        {
          v50 = *v49;
          v49 += 4;
          v43 *= v50;
          --v48;
        }

        while (v48);
      }
    }

    else
    {
      v43 = SHIDWORD(v625) * SDWORD2(v625);
    }

    if (DWORD1(v625) && v43 && (v625 & 0xFFF) != 0)
    {
      v634 = 0uLL;
      qmemcpy(sub_1002A80E0(&v634, 72), "mask.empty() || mask.type() == (((0) & ((1 << 3) - 1)) + (((1)-1) << 3))", 72);
      sub_1002A8980(-215, v634.i64, "calcHist", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 1484);
    }
  }

  sub_10032B8E8(a1, v16, a3, &v625, a6, v622, a8, a9, &v606, &v603, &v599, &v600);
  v51 = v600;
  if (a9)
  {
    v52 = v600;
  }

  else
  {
    v52 = 0;
  }

  v53 = *a1 & 7;
  if (v53 == 5)
  {
    v596 = v52;
    v598 = a8;
    v126 = v599;
    v127 = HIDWORD(v599);
    v128 = v606;
    v129 = v603;
    v130 = v610;
    v131 = 8 * a6;
    v132 = *(v606 + v131);
    v133 = *(v603 + v131 + 4);
    __srca = v615;
    memcpy(&__dst, v614, 4 * a6);
    memcpy(&v634, __srca, 8 * a6);
    if (a9)
    {
      switch(a6)
      {
        case 1:
          if (v127)
          {
            v499 = *v51;
            v500 = v51[1];
            v501 = __dst;
            v502 = *v128;
            v503 = v129[1];
            v504 = 4 * *v129;
            do
            {
              if (v132)
              {
                if (v126 >= 1)
                {
                  for (i = 0; i != v126; ++i)
                  {
                    if (*(v132 + i))
                    {
                      v506 = (v500 + *v502 * v499) - (v500 + *v502 * v499 < (v500 + *v502 * v499));
                      if (v506 < v501)
                      {
                        ++v130[v506];
                      }
                    }

                    v502 = (v502 + v504);
                  }
                }
              }

              else if (v126 >= 1)
              {
                v507 = v126;
                do
                {
                  v508 = (v500 + *v502 * v499) - (v500 + *v502 * v499 < (v500 + *v502 * v499));
                  if (v508 < v501)
                  {
                    ++v130[v508];
                  }

                  v502 = (v502 + v504);
                  --v507;
                }

                while (v507);
              }

              v502 += v503;
              v132 += v133;
              --v127;
            }

            while (v127);
          }

          break;
        case 2:
          if (v127)
          {
            v405 = *v51;
            v406 = v51[1];
            v407 = v51[2];
            v408 = v51[3];
            v409 = __dst;
            v410 = v659;
            v411 = v634.i64[0];
            v412 = v129[3];
            v413 = v129[1];
            v414 = 4 * *v129;
            v415 = 4 * v129[2];
            v417 = *v128;
            v416 = *(v128 + 1);
            do
            {
              if (v132)
              {
                if (v126 >= 1)
                {
                  for (j = 0; j != v126; ++j)
                  {
                    if (*(v132 + j))
                    {
                      v419 = (v406 + *v417 * v405) - (v406 + *v417 * v405 < (v406 + *v417 * v405));
                      v420 = (v408 + *v416 * v407) - (v408 + *v416 * v407 < (v408 + *v416 * v407));
                      if (v419 < v409 && v420 < v410)
                      {
                        ++*(&v130[v420] + v411 * v419);
                      }
                    }

                    v417 = (v417 + v414);
                    v416 = (v416 + v415);
                  }
                }
              }

              else if (v126 >= 1)
              {
                v422 = v126;
                do
                {
                  v423 = (v406 + *v417 * v405) - (v406 + *v417 * v405 < (v406 + *v417 * v405));
                  v424 = (v408 + *v416 * v407) - (v408 + *v416 * v407 < (v408 + *v416 * v407));
                  if (v423 < v409 && v424 < v410)
                  {
                    ++*(&v130[v424] + v411 * v423);
                  }

                  v417 = (v417 + v414);
                  v416 = (v416 + v415);
                  --v422;
                }

                while (v422);
              }

              v417 += v413;
              v132 += v133;
              v416 += v412;
              --v127;
            }

            while (v127);
          }

          break;
        case 3:
          if (v127)
          {
            v134 = *v51;
            v135 = v51[1];
            v136 = v51[2];
            v137 = v51[3];
            v138 = v51[4];
            v139 = v51[5];
            v140 = __dst;
            v141 = v659;
            v142 = v660;
            v143 = v634;
            v144 = *(v128 + 1);
            v145 = *(v128 + 2);
            v146 = v129[5];
            v147 = v129[3];
            v148 = v129[1];
            v149 = 4 * *v129;
            v150 = 4 * v129[2];
            v151 = 4 * v129[4];
            v152 = *v128;
            do
            {
              if (v132)
              {
                if (v126 >= 1)
                {
                  v153 = 0;
                  do
                  {
                    if (*(v132 + v153))
                    {
                      v154 = (v135 + *v152 * v134) - (v135 + *v152 * v134 < (v135 + *v152 * v134));
                      v155 = (v137 + *v144 * v136) - (v137 + *v144 * v136 < (v137 + *v144 * v136));
                      v156 = (v139 + *v145 * v138) - (v139 + *v145 * v138 < (v139 + *v145 * v138));
                      v157 = v154 >= v140 || v155 >= v141;
                      if (!v157 && v156 < v142)
                      {
                        v159 = v130 + v143.i64[0] * v154 + v143.i64[1] * v155;
                        ++*(v159 + 4 * v156);
                      }
                    }

                    ++v153;
                    v152 = (v152 + v149);
                    v144 = (v144 + v150);
                    v145 = (v145 + v151);
                  }

                  while (v126 != v153);
                }
              }

              else if (v126 >= 1)
              {
                v160 = v126;
                do
                {
                  v161 = (v135 + *v152 * v134) - (v135 + *v152 * v134 < (v135 + *v152 * v134));
                  v162 = (v137 + *v144 * v136) - (v137 + *v144 * v136 < (v137 + *v144 * v136));
                  v163 = (v139 + *v145 * v138) - (v139 + *v145 * v138 < (v139 + *v145 * v138));
                  if (v161 < v140 && v162 < v141 && v163 < v142)
                  {
                    v166 = v130 + v143.i64[0] * v161 + v143.i64[1] * v162;
                    ++*(v166 + 4 * v163);
                  }

                  v152 = (v152 + v149);
                  v144 = (v144 + v150);
                  v145 = (v145 + v151);
                  --v160;
                }

                while (v160);
              }

              v152 += v148;
              v144 += v147;
              v132 += v133;
              v145 += v146;
              --v127;
            }

            while (v127);
          }

          break;
        default:
          if (v127)
          {
            v509 = a6 & 7;
            if (!v509)
            {
              v509 = 8;
            }

            v510 = a6 - v509;
            v511 = v129 + 8;
            v512 = v128 + 32;
            do
            {
              if (v132)
              {
                if (v126 >= 1)
                {
                  for (k = 0; k != v126; ++k)
                  {
                    LODWORD(v514) = 0;
                    v515 = v130;
                    if (*(v132 + k))
                    {
                      v514 = 0;
                      v516 = (v596 + 8);
                      v517 = v129;
                      v515 = v130;
                      while (1)
                      {
                        v518 = *&v128[8 * v514];
                        v519 = *v516 + *v518 * *(v516 - 1);
                        v520 = v519 - (v519 < v519);
                        if (v520 >= *(&__dst + v514))
                        {
                          break;
                        }

                        v521 = *v517;
                        v517 += 2;
                        *&v128[8 * v514] = &v518[v521];
                        v515 = (v515 + v634.i64[v514++] * v520);
                        v516 += 2;
                        if (a6 == v514)
                        {
                          goto LABEL_465;
                        }
                      }
                    }

                    if (v514 == a6)
                    {
LABEL_465:
                      ++*v515;
                    }

                    else if (v514 < a6)
                    {
                      v522 = v514;
                      v523 = a6 - v514;
                      if (v523 > 8)
                      {
                        v524 = v523 & 7;
                        if ((v523 & 7) == 0)
                        {
                          v524 = 8;
                        }

                        v525 = v523 - v524 + v522;
                        v526 = v522 - a6 + v524;
                        v527 = 8 * v522;
                        v528 = &v511[2 * v522];
                        v529 = &v512[v527];
                        do
                        {
                          v530 = v528 - 8;
                          v531 = vld2q_f32(v530);
                          v532 = vld2q_f32(v528);
                          v533 = vaddq_s64(v529[-2], vshll_n_s32(*&v531, 2uLL));
                          v534 = vaddq_s64(v529[-1], vshll_high_n_s32(v531, 2uLL));
                          v535 = vaddq_s64(*v529, vshll_n_s32(*&v532, 2uLL));
                          v536 = vaddq_s64(v529[1], vshll_high_n_s32(v532, 2uLL));
                          v529[-2] = v533;
                          v529[-1] = v534;
                          *v529 = v535;
                          v529[1] = v536;
                          v529 += 4;
                          v528 += 16;
                          v526 += 8;
                        }

                        while (v526);
                        v522 = v525;
                      }

                      v537 = a6 - v522;
                      v538 = 2 * v522;
                      v539 = &v128[v538 * 4];
                      v540 = &v129[v538];
                      do
                      {
                        v541 = *v540;
                        v540 += 2;
                        *v539 += 4 * v541;
                        v539 += 8;
                        --v537;
                      }

                      while (v537);
                    }
                  }
                }
              }

              else if (v126 >= 1)
              {
                v542 = 0;
                do
                {
                  v543 = 0;
                  v544 = (v596 + 8);
                  v545 = v129;
                  v546 = v130;
                  while (1)
                  {
                    v547 = *&v128[8 * v543];
                    v548 = *v544 + *v547 * *(v544 - 1);
                    v549 = v548 - (v548 < v548);
                    if (v549 >= *(&__dst + v543))
                    {
                      break;
                    }

                    v550 = *v545;
                    v545 += 2;
                    *&v128[8 * v543] = &v547[v550];
                    v546 = (v546 + v634.i64[v543++] * v549);
                    v544 += 2;
                    if (a6 == v543)
                    {
                      goto LABEL_485;
                    }
                  }

                  if (v543 == a6)
                  {
LABEL_485:
                    ++*v546;
                    goto LABEL_486;
                  }

                  if (v543 < a6)
                  {
                    v551 = v543;
                    v552 = a6 - v543;
                    if (v552 > 8)
                    {
                      v553 = v552 & 7;
                      if ((v552 & 7) == 0)
                      {
                        v553 = 8;
                      }

                      v554 = v552 - v553 + v551;
                      v555 = v551 - a6 + v553;
                      v556 = 8 * v551;
                      v557 = &v511[2 * v551];
                      v558 = &v512[v556];
                      do
                      {
                        v559 = v557 - 8;
                        v560 = vld2q_f32(v559);
                        v561 = vld2q_f32(v557);
                        v562 = vaddq_s64(v558[-2], vshll_n_s32(*&v560, 2uLL));
                        v563 = vaddq_s64(v558[-1], vshll_high_n_s32(v560, 2uLL));
                        v564 = vaddq_s64(*v558, vshll_n_s32(*&v561, 2uLL));
                        v565 = vaddq_s64(v558[1], vshll_high_n_s32(v561, 2uLL));
                        v558[-2] = v562;
                        v558[-1] = v563;
                        *v558 = v564;
                        v558[1] = v565;
                        v558 += 4;
                        v557 += 16;
                        v555 += 8;
                      }

                      while (v555);
                      v551 = v554;
                    }

                    v566 = a6 - v551;
                    v567 = 2 * v551;
                    v568 = &v128[v567 * 4];
                    v569 = &v129[v567];
                    do
                    {
                      v570 = *v569;
                      v569 += 2;
                      *v568 += 4 * v570;
                      v568 += 8;
                      --v566;
                    }

                    while (v566);
                  }

LABEL_486:
                  ++v542;
                }

                while (v542 != v126);
              }

              if (a6 >= 9)
              {
                v572 = v510;
                v573 = (v128 + 32);
                v574 = (v129 + 9);
                do
                {
                  v575 = v574 - 8;
                  v576 = vld2q_f32(v575);
                  v577 = vld2q_f32(v574);
                  v578 = vaddq_s64(v573[-2], vshll_n_s32(*&v576, 2uLL));
                  v579 = vaddq_s64(v573[-1], vshll_high_n_s32(v576, 2uLL));
                  v580 = vaddq_s64(*v573, vshll_n_s32(*&v577, 2uLL));
                  v581 = vaddq_s64(v573[1], vshll_high_n_s32(v577, 2uLL));
                  v573[-2] = v578;
                  v573[-1] = v579;
                  *v573 = v580;
                  v573[1] = v581;
                  v573 += 4;
                  v574 += 16;
                  v572 -= 8;
                }

                while (v572);
                v571 = v510;
              }

              else
              {
                v571 = 0;
              }

              v582 = a6 - v571;
              v583 = 2 * v571;
              v584 = &v128[8 * v571];
              v585 = &v129[v583 + 1];
              do
              {
                v586 = *v585;
                v585 += 2;
                *v584 += 4 * v586;
                v584 += 8;
                --v582;
              }

              while (v582);
              v132 += v133;
              --v127;
            }

            while (v127);
          }

          break;
      }

      goto LABEL_510;
    }

    if (!v598)
    {
      __p[1] = 0;
      __p[0] = 0;
      qmemcpy(sub_1002A80E0(__p, 55), "Either ranges, either uniform ranges should be provided", 55);
      sub_1002A8980(-5, __p, "calcHist_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 989);
    }

    v657 = 0u;
    v656 = 0u;
    v655 = 0u;
    v654 = 0u;
    v653 = 0u;
    v652 = 0u;
    v651 = 0u;
    v650 = 0u;
    v649 = 0u;
    v648 = 0u;
    v647 = 0u;
    v646 = 0u;
    v645 = 0u;
    v644 = 0u;
    v643 = 0u;
    *__p = 0u;
    memcpy(__p, v598, 8 * a6);
    if (!v127)
    {
      goto LABEL_510;
    }

    if (a6 <= 1)
    {
      v214 = 1;
    }

    else
    {
      v214 = a6;
    }

    v215 = a6 & 7;
    if (!v215)
    {
      v215 = 8;
    }

    v216 = a6 - v215;
    while (v126 < 1)
    {
LABEL_224:
      v246 = v216;
      v247 = (v128 + 32);
      v248 = (v129 + 9);
      if (a6 >= 9)
      {
        do
        {
          v250 = v248 - 8;
          v251 = vld2q_f32(v250);
          v252 = vld2q_f32(v248);
          v253 = vaddq_s64(v247[-2], vshll_n_s32(*&v251, 2uLL));
          v254 = vaddq_s64(v247[-1], vshll_high_n_s32(v251, 2uLL));
          v255 = vaddq_s64(*v247, vshll_n_s32(*&v252, 2uLL));
          v256 = vaddq_s64(v247[1], vshll_high_n_s32(v252, 2uLL));
          v247[-2] = v253;
          v247[-1] = v254;
          *v247 = v255;
          v247[1] = v256;
          v247 += 4;
          v248 += 16;
          v246 -= 8;
        }

        while (v246);
        v249 = v216;
      }

      else
      {
        v249 = 0;
      }

      v257 = a6 - v249;
      v258 = 2 * v249;
      v259 = &v128[8 * v249];
      v260 = &v129[v258 + 1];
      do
      {
        v261 = *v260;
        v260 += 2;
        *v259 += 4 * v261;
        v259 += 8;
        --v257;
      }

      while (v257);
      v132 += v133;
      if (!--v127)
      {
        goto LABEL_510;
      }
    }

    v217 = 0;
    while (1)
    {
      if (v132 && (LODWORD(v218) = 0, v219 = v130, !*(v132 + v217)))
      {
LABEL_212:
        v225 = v218 < a6;
        if (v218 != a6)
        {
          goto LABEL_213;
        }
      }

      else
      {
        v218 = 0;
        v219 = v130;
        do
        {
          v220 = *&v128[8 * v218];
          v221 = __p[v218];
          v222 = *(&__dst + v218);
          v223 = v222 & ~(v222 >> 31);
          v224 = -1;
          while (*v220 >= *v221)
          {
            ++v224;
            ++v221;
            if (v223 == v224)
            {
              if (v223 >= v222)
              {
                goto LABEL_212;
              }

              goto LABEL_209;
            }
          }

          LODWORD(v223) = v224;
          if (v224 >= v222)
          {
            goto LABEL_212;
          }

LABEL_209:
          *&v128[8 * v218] = &v220[v129[2 * v218]];
          v219 = (v219 + v634.i64[v218++] * v223);
        }

        while (v218 != v214);
        LODWORD(v218) = v214;
        v225 = v214 < a6;
        if (v214 != a6)
        {
LABEL_213:
          if (v225)
          {
            v226 = v218;
            v227 = a6 - v218;
            if (v227 > 8)
            {
              v228 = v227 & 7;
              if ((v227 & 7) == 0)
              {
                v228 = 8;
              }

              v229 = v227 - v228 + v226;
              v230 = v226 - a6 + v228;
              v231 = 8 * v226;
              v232 = &v129[2 * v226 + 8];
              v233 = &v128[v231 + 32];
              do
              {
                v234 = v232 - 8;
                v235 = vld2q_f32(v234);
                v236 = vld2q_f32(v232);
                v237 = vaddq_s64(v233[-2], vshll_n_s32(*&v235, 2uLL));
                v238 = vaddq_s64(v233[-1], vshll_high_n_s32(v235, 2uLL));
                v239 = vaddq_s64(*v233, vshll_n_s32(*&v236, 2uLL));
                v240 = vaddq_s64(v233[1], vshll_high_n_s32(v236, 2uLL));
                v233[-2] = v237;
                v233[-1] = v238;
                *v233 = v239;
                v233[1] = v240;
                v233 += 4;
                v232 += 16;
                v230 += 8;
              }

              while (v230);
              v226 = v229;
            }

            v241 = a6 - v226;
            v242 = 2 * v226;
            v243 = &v128[v242 * 4];
            v244 = &v129[v242];
            do
            {
              v245 = *v244;
              v244 += 2;
              *v243 += 4 * v245;
              v243 += 8;
              --v241;
            }

            while (v241);
          }

          goto LABEL_199;
        }
      }

      ++*v219;
LABEL_199:
      if (++v217 == v126)
      {
        goto LABEL_224;
      }
    }
  }

  if (v53 == 2)
  {
    v595 = v52;
    v597 = a8;
    v77 = v599;
    v78 = HIDWORD(v599);
    v79 = v606;
    v80 = v603;
    v81 = v610;
    v82 = 8 * a6;
    v83 = *(v606 + v82);
    v84 = *(v603 + v82 + 4);
    __src = v615;
    memcpy(&__dst, v614, 4 * a6);
    memcpy(&v634, __src, 8 * a6);
    if (a9)
    {
      switch(a6)
      {
        case 1:
          if (v78)
          {
            v395 = *v51;
            v396 = v51[1];
            v397 = __dst;
            v398 = v79->i64[0];
            v399 = v80[1];
            v400 = 2 * *v80;
            do
            {
              if (v83)
              {
                if (v77 >= 1)
                {
                  for (m = 0; m != v77; ++m)
                  {
                    if (*(v83 + m))
                    {
                      LOWORD(v86) = *v398;
                      v86 = v396 + *&v86 * v395;
                      v402 = v86 - (v86 < v86);
                      if (v402 < v397)
                      {
                        ++v81[v402];
                      }
                    }

                    v398 = (v398 + v400);
                  }
                }
              }

              else if (v77 >= 1)
              {
                v403 = v77;
                do
                {
                  LOWORD(v86) = *v398;
                  v86 = v396 + *&v86 * v395;
                  v404 = v86 - (v86 < v86);
                  if (v404 < v397)
                  {
                    ++v81[v404];
                  }

                  v398 = (v398 + v400);
                  --v403;
                }

                while (v403);
              }

              v398 += v399;
              v83 += v84;
              --v78;
            }

            while (v78);
          }

          break;
        case 2:
          if (v78)
          {
            v368 = *v51;
            v369 = v51[1];
            v370 = v51[2];
            v371 = v51[3];
            v372 = __dst;
            v373 = v659;
            v374 = v634.i64[0];
            v375 = v80[3];
            v376 = v80[1];
            v377 = 2 * *v80;
            v378 = 2 * v80[2];
            v380 = v79->i64[0];
            v379 = v79->i64[1];
            do
            {
              if (v83)
              {
                if (v77 >= 1)
                {
                  for (n = 0; n != v77; ++n)
                  {
                    if (*(v83 + n))
                    {
                      LOWORD(v87) = *v380;
                      v382 = v369 + *&v87 * v368;
                      v383 = v382;
                      v384 = v382 < v382;
                      LOWORD(v382) = *v379;
                      v87 = v371 + *&v382 * v370;
                      v385 = v383 - v384;
                      v386 = v87 - (v87 < v87);
                      if (v385 < v372 && v386 < v373)
                      {
                        ++*(&v81[v386] + v374 * v385);
                      }
                    }

                    v380 = (v380 + v377);
                    v379 = (v379 + v378);
                  }
                }
              }

              else if (v77 >= 1)
              {
                v388 = v77;
                do
                {
                  LOWORD(v87) = *v380;
                  v389 = v369 + *&v87 * v368;
                  v390 = v389;
                  v391 = v389 < v389;
                  LOWORD(v389) = *v379;
                  v87 = v371 + *&v389 * v370;
                  v392 = v390 - v391;
                  v393 = v87 - (v87 < v87);
                  if (v392 < v372 && v393 < v373)
                  {
                    ++*(&v81[v393] + v374 * v392);
                  }

                  v380 = (v380 + v377);
                  v379 = (v379 + v378);
                  --v388;
                }

                while (v388);
              }

              v380 += v376;
              v83 += v84;
              v379 += v375;
              --v78;
            }

            while (v78);
          }

          break;
        case 3:
          if (v78)
          {
            v89 = *v51;
            v90 = v51[1];
            v91 = v51[2];
            v92 = v51[3];
            v93 = v51[4];
            v94 = v51[5];
            v95 = __dst;
            v96 = v659;
            v97 = v660;
            v98 = v634;
            v99 = v79->i64[1];
            v100 = v79[1].i64[0];
            v101 = v80[5];
            v102 = v80[3];
            v103 = v80[1];
            v104 = 2 * *v80;
            v105 = 2 * v80[2];
            v106 = 2 * v80[4];
            v107 = v79->i64[0];
            do
            {
              if (v83)
              {
                if (v77 >= 1)
                {
                  v108 = 0;
                  do
                  {
                    if (*(v83 + v108))
                    {
                      LOWORD(v88) = *v107;
                      v109 = v90 + *&v88 * v89;
                      v110 = v109 - (v109 < v109);
                      LOWORD(v109) = *v99;
                      v111 = v92 + *&v109 * v91;
                      v112 = v111 - (v111 < v111);
                      LOWORD(v111) = *v100;
                      v88 = v94 + *&v111 * v93;
                      v113 = v88 - (v88 < v88);
                      v114 = v110 >= v95 || v112 >= v96;
                      if (!v114 && v113 < v97)
                      {
                        v116 = v81 + v98.i64[0] * v110 + v98.i64[1] * v112;
                        ++*(v116 + 4 * v113);
                      }
                    }

                    ++v108;
                    v107 = (v107 + v104);
                    v99 = (v99 + v105);
                    v100 = (v100 + v106);
                  }

                  while (v77 != v108);
                }
              }

              else if (v77 >= 1)
              {
                v117 = v77;
                do
                {
                  LOWORD(v88) = *v107;
                  v118 = v90 + *&v88 * v89;
                  v119 = v118 - (v118 < v118);
                  LOWORD(v118) = *v99;
                  v120 = v92 + *&v118 * v91;
                  v121 = v120 - (v120 < v120);
                  LOWORD(v120) = *v100;
                  v88 = v94 + *&v120 * v93;
                  v122 = v88 - (v88 < v88);
                  if (v119 < v95 && v121 < v96 && v122 < v97)
                  {
                    v125 = v81 + v98.i64[0] * v119 + v98.i64[1] * v121;
                    ++*(v125 + 4 * v122);
                  }

                  v107 = (v107 + v104);
                  v99 = (v99 + v105);
                  v100 = (v100 + v106);
                  --v117;
                }

                while (v117);
              }

              v107 += v103;
              v99 += v102;
              v83 += v84;
              v100 += v101;
              --v78;
            }

            while (v78);
          }

          break;
        default:
          if (v78)
          {
            v426 = a6 & 7;
            if (!v426)
            {
              v426 = 8;
            }

            v427 = a6 - v426;
            v428 = v80 + 8;
            v429 = v79 + 2;
            do
            {
              if (v83)
              {
                if (v77 >= 1)
                {
                  for (ii = 0; ii != v77; ++ii)
                  {
                    LODWORD(v431) = 0;
                    v432 = v81;
                    if (*(v83 + ii))
                    {
                      v431 = 0;
                      v433 = (v595 + 8);
                      v434 = v80;
                      v432 = v81;
                      while (1)
                      {
                        v435 = v79->i64[v431];
                        v85.i16[0] = *v435;
                        *v85.i64 = *v433 + v85.u64[0] * *(v433 - 1);
                        v436 = *v85.i64 - (*v85.i64 < *v85.i64);
                        if (v436 >= *(&__dst + v431))
                        {
                          break;
                        }

                        v437 = *v434;
                        v434 += 2;
                        v79->i64[v431] = &v435[v437];
                        v432 = (v432 + v634.i64[v431++] * v436);
                        v433 += 2;
                        if (a6 == v431)
                        {
                          goto LABEL_397;
                        }
                      }
                    }

                    if (v431 == a6)
                    {
LABEL_397:
                      ++*v432;
                    }

                    else if (v431 < a6)
                    {
                      v438 = v431;
                      v439 = a6 - v431;
                      if (v439 > 8)
                      {
                        v440 = v439 & 7;
                        if ((v439 & 7) == 0)
                        {
                          v440 = 8;
                        }

                        v441 = v439 - v440 + v438;
                        v442 = v438 - a6 + v440;
                        v443 = 8 * v438;
                        v444 = &v428[2 * v438];
                        v445 = (v429 + v443);
                        do
                        {
                          v446 = v444 - 8;
                          v447 = vld2q_f32(v446);
                          v448 = vld2q_f32(v444);
                          v449 = vaddq_s64(v445[-2], vshll_n_s32(*&v447, 1uLL));
                          v85 = vaddq_s64(v445[-1], vshll_high_n_s32(v447, 1uLL));
                          v450 = vaddq_s64(*v445, vshll_n_s32(*&v448, 1uLL));
                          v451 = vaddq_s64(v445[1], vshll_high_n_s32(v448, 1uLL));
                          v445[-2] = v449;
                          v445[-1] = v85;
                          *v445 = v450;
                          v445[1] = v451;
                          v445 += 4;
                          v444 += 16;
                          v442 += 8;
                        }

                        while (v442);
                        v438 = v441;
                      }

                      v452 = a6 - v438;
                      v453 = 2 * v438;
                      v454 = &v79->i64[v453 / 2];
                      v455 = &v80[v453];
                      do
                      {
                        v456 = *v455;
                        v455 += 2;
                        *v454++ += 2 * v456;
                        --v452;
                      }

                      while (v452);
                    }
                  }
                }
              }

              else if (v77 >= 1)
              {
                v457 = 0;
                do
                {
                  v458 = 0;
                  v459 = (v595 + 8);
                  v460 = v80;
                  v461 = v81;
                  while (1)
                  {
                    v462 = v79->i64[v458];
                    v85.i16[0] = *v462;
                    *v85.i64 = *v459 + v85.u64[0] * *(v459 - 1);
                    v463 = *v85.i64 - (*v85.i64 < *v85.i64);
                    if (v463 >= *(&__dst + v458))
                    {
                      break;
                    }

                    v464 = *v460;
                    v460 += 2;
                    v79->i64[v458] = &v462[v464];
                    v461 = (v461 + v634.i64[v458++] * v463);
                    v459 += 2;
                    if (a6 == v458)
                    {
                      goto LABEL_417;
                    }
                  }

                  if (v458 == a6)
                  {
LABEL_417:
                    ++*v461;
                    goto LABEL_418;
                  }

                  if (v458 < a6)
                  {
                    v465 = v458;
                    v466 = a6 - v458;
                    if (v466 > 8)
                    {
                      v467 = v466 & 7;
                      if ((v466 & 7) == 0)
                      {
                        v467 = 8;
                      }

                      v468 = v466 - v467 + v465;
                      v469 = v465 - a6 + v467;
                      v470 = 8 * v465;
                      v471 = &v428[2 * v465];
                      v472 = (v429 + v470);
                      do
                      {
                        v473 = v471 - 8;
                        v474 = vld2q_f32(v473);
                        v475 = vld2q_f32(v471);
                        v476 = vaddq_s64(v472[-2], vshll_n_s32(*&v474, 1uLL));
                        v85 = vaddq_s64(v472[-1], vshll_high_n_s32(v474, 1uLL));
                        v477 = vaddq_s64(*v472, vshll_n_s32(*&v475, 1uLL));
                        v478 = vaddq_s64(v472[1], vshll_high_n_s32(v475, 1uLL));
                        v472[-2] = v476;
                        v472[-1] = v85;
                        *v472 = v477;
                        v472[1] = v478;
                        v472 += 4;
                        v471 += 16;
                        v469 += 8;
                      }

                      while (v469);
                      v465 = v468;
                    }

                    v479 = a6 - v465;
                    v480 = 2 * v465;
                    v481 = &v79->i64[v480 / 2];
                    v482 = &v80[v480];
                    do
                    {
                      v483 = *v482;
                      v482 += 2;
                      *v481++ += 2 * v483;
                      --v479;
                    }

                    while (v479);
                  }

LABEL_418:
                  ++v457;
                }

                while (v457 != v77);
              }

              if (a6 >= 9)
              {
                v485 = v427;
                v486 = v79 + 2;
                v487 = (v80 + 9);
                do
                {
                  v488 = v487 - 8;
                  v489 = vld2q_f32(v488);
                  v490 = vld2q_f32(v487);
                  v491 = vaddq_s64(v486[-2], vshll_n_s32(*&v489, 1uLL));
                  v85 = vaddq_s64(v486[-1], vshll_high_n_s32(v489, 1uLL));
                  v492 = vaddq_s64(*v486, vshll_n_s32(*&v490, 1uLL));
                  v493 = vaddq_s64(v486[1], vshll_high_n_s32(v490, 1uLL));
                  v486[-2] = v491;
                  v486[-1] = v85;
                  *v486 = v492;
                  v486[1] = v493;
                  v486 += 4;
                  v487 += 16;
                  v485 -= 8;
                }

                while (v485);
                v484 = v427;
              }

              else
              {
                v484 = 0;
              }

              v494 = a6 - v484;
              v495 = 2 * v484;
              v496 = &v79->i64[v484];
              v497 = &v80[v495 + 1];
              do
              {
                v498 = *v497;
                v497 += 2;
                *v496++ += 2 * v498;
                --v494;
              }

              while (v494);
              v83 += v84;
              --v78;
            }

            while (v78);
          }

          break;
      }

      goto LABEL_510;
    }

    if (!v597)
    {
      __p[1] = 0;
      __p[0] = 0;
      qmemcpy(sub_1002A80E0(__p, 55), "Either ranges, either uniform ranges should be provided", 55);
      sub_1002A8980(-5, __p, "calcHist_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 989);
    }

    v657 = 0u;
    v656 = 0u;
    v655 = 0u;
    v654 = 0u;
    v653 = 0u;
    v652 = 0u;
    v651 = 0u;
    v650 = 0u;
    v649 = 0u;
    v648 = 0u;
    v647 = 0u;
    v646 = 0u;
    v645 = 0u;
    v644 = 0u;
    v643 = 0u;
    *__p = 0u;
    memcpy(__p, v597, 8 * a6);
    if (!v78)
    {
      goto LABEL_510;
    }

    if (a6 <= 1)
    {
      v168 = 1;
    }

    else
    {
      v168 = a6;
    }

    v169 = a6 & 7;
    if (!v169)
    {
      v169 = 8;
    }

    v170 = a6 - v169;
    while (v77 < 1)
    {
LABEL_180:
      v199 = v170;
      v200 = v79 + 2;
      v201 = (v80 + 9);
      if (a6 >= 9)
      {
        do
        {
          v203 = v201 - 8;
          v204 = vld2q_f32(v203);
          v205 = vld2q_f32(v201);
          v206 = vaddq_s64(v200[-2], vshll_n_s32(*&v204, 1uLL));
          v167 = vaddq_s64(v200[-1], vshll_high_n_s32(v204, 1uLL));
          v207 = vaddq_s64(*v200, vshll_n_s32(*&v205, 1uLL));
          v208 = vaddq_s64(v200[1], vshll_high_n_s32(v205, 1uLL));
          v200[-2] = v206;
          v200[-1] = v167;
          *v200 = v207;
          v200[1] = v208;
          v200 += 4;
          v201 += 16;
          v199 -= 8;
        }

        while (v199);
        v202 = v170;
      }

      else
      {
        v202 = 0;
      }

      v209 = a6 - v202;
      v210 = 2 * v202;
      v211 = &v79->i64[v202];
      v212 = &v80[v210 + 1];
      do
      {
        v213 = *v212;
        v212 += 2;
        *v211++ += 2 * v213;
        --v209;
      }

      while (v209);
      v83 += v84;
      if (!--v78)
      {
        goto LABEL_510;
      }
    }

    v171 = 0;
    while (1)
    {
      if (v83 && (LODWORD(v172) = 0, v173 = v81, !*(v83 + v171)))
      {
LABEL_168:
        v179 = v172 < a6;
        if (v172 != a6)
        {
          goto LABEL_169;
        }
      }

      else
      {
        v172 = 0;
        v173 = v81;
        do
        {
          v174 = v79->i64[v172];
          v167.i16[0] = *v174;
          *v167.i32 = v167.u32[0];
          v175 = __p[v172];
          v176 = *(&__dst + v172);
          v177 = v176 & ~(v176 >> 31);
          v178 = -1;
          while (*v175 <= *v167.i32)
          {
            ++v178;
            ++v175;
            if (v177 == v178)
            {
              if (v177 >= v176)
              {
                goto LABEL_168;
              }

              goto LABEL_165;
            }
          }

          LODWORD(v177) = v178;
          if (v178 >= v176)
          {
            goto LABEL_168;
          }

LABEL_165:
          v79->i64[v172] = &v174[v80[2 * v172]];
          v173 = (v173 + v634.i64[v172++] * v177);
        }

        while (v172 != v168);
        LODWORD(v172) = v168;
        v179 = v168 < a6;
        if (v168 != a6)
        {
LABEL_169:
          if (v179)
          {
            v180 = v172;
            v181 = a6 - v172;
            if (v181 > 8)
            {
              v182 = v181 & 7;
              if ((v181 & 7) == 0)
              {
                v182 = 8;
              }

              v183 = v181 - v182 + v180;
              v184 = v180 - a6 + v182;
              v185 = 8 * v180;
              v186 = &v80[2 * v180 + 8];
              v187 = (v79 + v185 + 32);
              do
              {
                v188 = v186 - 8;
                v189 = vld2q_f32(v188);
                v190 = vld2q_f32(v186);
                v191 = vaddq_s64(v187[-2], vshll_n_s32(*&v189, 1uLL));
                v167 = vaddq_s64(v187[-1], vshll_high_n_s32(v189, 1uLL));
                v192 = vaddq_s64(*v187, vshll_n_s32(*&v190, 1uLL));
                v193 = vaddq_s64(v187[1], vshll_high_n_s32(v190, 1uLL));
                v187[-2] = v191;
                v187[-1] = v167;
                *v187 = v192;
                v187[1] = v193;
                v187 += 4;
                v186 += 16;
                v184 += 8;
              }

              while (v184);
              v180 = v183;
            }

            v194 = a6 - v180;
            v195 = 2 * v180;
            v196 = &v79->i64[v195 / 2];
            v197 = &v80[v195];
            do
            {
              v198 = *v197;
              v197 += 2;
              *v196++ += 2 * v198;
              --v194;
            }

            while (v194);
          }

          goto LABEL_155;
        }
      }

      ++*v173;
LABEL_155:
      if (++v171 == v77)
      {
        goto LABEL_180;
      }
    }
  }

  if (v53)
  {
    v634 = 0uLL;
    sub_1002A8980(-210, v634.i64, "calcHist", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 1498);
  }

  v54 = v599;
  v55 = HIDWORD(v599);
  v56 = v606;
  v57 = v603;
  v58 = v610;
  v59 = 8 * a6;
  v60 = *(v606 + v59);
  v61 = a8;
  v62 = *(v603 + v59 + 4);
  __p[1] = 0;
  __p[0] = 0;
  *&v643 = 0;
  v634.i32[0] = 1123876864;
  v634.i64[1] = 0;
  sub_10032D644(&v609, &v634, a6, v61, v52, a9, 0, __p);
  v63 = __p[0];
  switch(a6)
  {
    case 1:
      v272 = __p[0];
      v273 = *v57;
      v274 = v57[1];
      bzero(&v634, 0x400uLL);
      if (!v55)
      {
LABEL_272:
        v290 = 0;
        v63 = v272;
        do
        {
          v291 = *(v272 + v290);
          if (!(v291 >> 62))
          {
            *(v58 + v291) += v634.i32[v290];
          }

          ++v290;
        }

        while (v290 != 256);
LABEL_329:
        __p[1] = v63;
        operator delete(v63);
        goto LABEL_510;
      }

      v275 = v56->i64[0];
      v276 = 2 * v273;
      v277 = (v54 - 4);
      v278 = (v277 & 0xFFFFFFFC) + 4;
      while (1)
      {
        if (v60)
        {
          if (v54 >= 1)
          {
            for (jj = 0; jj != v54; ++jj)
            {
              if (*(v60 + jj))
              {
                ++v634.i32[*v275];
              }

              v275 += v273;
            }
          }

          goto LABEL_248;
        }

        if (v273 == 1)
        {
          if (v54 >= 4)
          {
            for (kk = 0; kk <= v277; kk += 4)
            {
              v282 = v275[kk + 1];
              ++v634.i32[v275[kk]];
              ++v634.i32[v282];
              v283 = v275[kk + 3];
              ++v634.i32[v275[kk + 2]];
              ++v634.i32[v283];
            }

            v275 += kk;
            v284 = __OFSUB__(v54, kk);
            v280 = v54 - kk;
            if ((v280 < 0) ^ v284 | (v280 == 0))
            {
              goto LABEL_248;
            }

            goto LABEL_270;
          }

          v280 = v54;
          if (v54 > 0)
          {
            goto LABEL_270;
          }
        }

        else
        {
          if (v54 >= 4)
          {
            v285 = 0;
            do
            {
              v286 = v275[v273];
              ++v634.i32[*v275];
              ++v634.i32[v286];
              v287 = &v275[v276];
              v288 = v275[v276];
              v289 = v275[v273 + v276];
              ++v634.i32[v288];
              ++v634.i32[v289];
              v275 = &v287[v276];
              v285 += 4;
            }

            while (v285 <= v277);
            v280 = v54 - v278;
            if (v54 <= v278)
            {
              goto LABEL_248;
            }

            do
            {
LABEL_270:
              ++v634.i32[*v275];
              v275 += v273;
              --v280;
            }

            while (v280);
            goto LABEL_248;
          }

          v280 = v54;
          if (v54 > 0)
          {
            goto LABEL_270;
          }
        }

LABEL_248:
        v275 += v274;
        v60 += v62;
        if (!--v55)
        {
          goto LABEL_272;
        }
      }

    case 2:
      if (v55)
      {
        v263 = v56->i64[0];
        v262 = v56->i64[1];
        v265 = v57[2];
        v264 = v57[3];
        v267 = *v57;
        v266 = v57[1];
        do
        {
          if (v60)
          {
            if (v54 >= 1)
            {
              for (mm = 0; mm != v54; ++mm)
              {
                if (*(v60 + mm))
                {
                  v269 = *(v63 + *v262 + 256) + *(v63 + *v263);
                  if (!(v269 >> 62))
                  {
                    ++*(v58 + v269);
                  }
                }

                v263 += v267;
                v262 += v265;
              }
            }
          }

          else if (v54 >= 1)
          {
            v270 = v54;
            do
            {
              v271 = *(v63 + *v262 + 256) + *(v63 + *v263);
              if (!(v271 >> 62))
              {
                ++*(v58 + v271);
              }

              v263 += v267;
              v262 += v265;
              --v270;
            }

            while (v270);
          }

          v263 += v266;
          v262 += v264;
          v60 += v62;
          --v55;
        }

        while (v55);
      }

      break;
    case 3:
      if (v55)
      {
        v65 = v56->i64[1];
        v64 = v56[1].i64[0];
        v66 = v56->i64[0];
        v68 = v57[4];
        v67 = v57[5];
        v70 = v57[2];
        v69 = v57[3];
        v72 = *v57;
        v71 = v57[1];
        do
        {
          if (v60)
          {
            if (v54 >= 1)
            {
              v73 = 0;
              do
              {
                if (*(v60 + v73))
                {
                  v74 = *(v63 + *v65 + 256) + *(v63 + *v66) + *(v63 + *v64 + 512);
                  if (!(v74 >> 62))
                  {
                    ++*(v58 + v74);
                  }
                }

                ++v73;
                v66 += v72;
                v65 += v70;
                v64 += v68;
              }

              while (v54 != v73);
            }
          }

          else if (v54 >= 1)
          {
            v75 = v54;
            do
            {
              v76 = *(v63 + *v65 + 256) + *(v63 + *v66) + *(v63 + *v64 + 512);
              if (!(v76 >> 62))
              {
                ++*(v58 + v76);
              }

              v66 += v72;
              v65 += v70;
              v64 += v68;
              --v75;
            }

            while (v75);
          }

          v66 += v71;
          v65 += v69;
          v64 += v67;
          v60 += v62;
          --v55;
        }

        while (v55);
      }

      break;
    default:
      if (v55)
      {
        v292 = a6 & 7;
        if (!v292)
        {
          v292 = 8;
        }

        v293 = a6 - v292;
        v294 = v57 + 8;
        v295 = v56 + 2;
        do
        {
          if (v60)
          {
            if (v54 >= 1)
            {
              for (nn = 0; nn != v54; ++nn)
              {
                LODWORD(v297) = 0;
                v298 = v58;
                if (*(v60 + nn))
                {
                  v299 = 0;
                  v297 = 0;
                  v300 = v57;
                  v298 = v58;
                  while (1)
                  {
                    v301 = v56->i64[v297];
                    v302 = *(v63 + (v299 & 0xFFFFFF00 | *v301));
                    if (v302 >> 62)
                    {
                      break;
                    }

                    v298 = (v298 + v302);
                    v303 = *v300;
                    v300 += 2;
                    v56->i64[v297++] = &v301[v303];
                    v299 += 256;
                    if (a6 == v297)
                    {
                      goto LABEL_284;
                    }
                  }
                }

                if (v297 == a6)
                {
LABEL_284:
                  ++*v298;
                }

                else if (v297 < a6)
                {
                  v304 = v297;
                  v305 = a6 - v297;
                  if (v305 > 8)
                  {
                    v306 = v305 & 7;
                    if ((v305 & 7) == 0)
                    {
                      v306 = 8;
                    }

                    v307 = v305 - v306 + v304;
                    v308 = v304 - a6 + v306;
                    v309 = 8 * v304;
                    v310 = &v294[2 * v304];
                    v311 = (v295 + v309);
                    do
                    {
                      v312 = v310 - 8;
                      v313 = vld2q_f32(v312);
                      v314 = vld2q_f32(v310);
                      v315 = vaddw_s32(v311[-2], *&v313);
                      v316 = vaddw_high_s32(v311[-1], v313);
                      v317 = vaddw_s32(*v311, *&v314);
                      v318 = vaddw_high_s32(v311[1], v314);
                      v311[-2] = v315;
                      v311[-1] = v316;
                      *v311 = v317;
                      v311[1] = v318;
                      v311 += 4;
                      v310 += 16;
                      v308 += 8;
                    }

                    while (v308);
                    v304 = v307;
                  }

                  v319 = a6 - v304;
                  v320 = 2 * v304;
                  v321 = &v56->i64[v320 / 2];
                  v322 = &v57[v320];
                  do
                  {
                    v323 = *v322;
                    v322 += 2;
                    *v321++ += v323;
                    --v319;
                  }

                  while (v319);
                }
              }
            }
          }

          else if (v54 >= 1)
          {
            v324 = 0;
            do
            {
              v325 = 0;
              v326 = 0;
              v327 = v57;
              v328 = v58;
              while (1)
              {
                v329 = v56->i64[v326];
                v330 = *(v63 + (v325 & 0xFFFFFF00 | *v329));
                if (v330 >> 62)
                {
                  break;
                }

                v328 = (v328 + v330);
                v331 = *v327;
                v327 += 2;
                v56->i64[v326++] = &v329[v331];
                v325 += 256;
                if (a6 == v326)
                {
                  goto LABEL_304;
                }
              }

              if (v326 == a6)
              {
LABEL_304:
                ++*v328;
                goto LABEL_305;
              }

              if (v326 < a6)
              {
                v332 = v326;
                v333 = a6 - v326;
                if (v333 > 8)
                {
                  v334 = v333 & 7;
                  if ((v333 & 7) == 0)
                  {
                    v334 = 8;
                  }

                  v335 = v333 - v334 + v332;
                  v336 = v332 - a6 + v334;
                  v337 = 8 * v332;
                  v338 = &v294[2 * v332];
                  v339 = (v295 + v337);
                  do
                  {
                    v340 = v338 - 8;
                    v341 = vld2q_f32(v340);
                    v342 = vld2q_f32(v338);
                    v343 = vaddw_s32(v339[-2], *&v341);
                    v344 = vaddw_high_s32(v339[-1], v341);
                    v345 = vaddw_s32(*v339, *&v342);
                    v346 = vaddw_high_s32(v339[1], v342);
                    v339[-2] = v343;
                    v339[-1] = v344;
                    *v339 = v345;
                    v339[1] = v346;
                    v339 += 4;
                    v338 += 16;
                    v336 += 8;
                  }

                  while (v336);
                  v332 = v335;
                }

                v347 = a6 - v332;
                v348 = 2 * v332;
                v349 = &v56->i64[v348 / 2];
                v350 = &v57[v348];
                do
                {
                  v351 = *v350;
                  v350 += 2;
                  *v349++ += v351;
                  --v347;
                }

                while (v347);
              }

LABEL_305:
              ++v324;
            }

            while (v324 != v54);
          }

          v352 = v293;
          v353 = v56 + 2;
          v354 = (v57 + 9);
          if (a6 >= 9)
          {
            do
            {
              v356 = v354 - 8;
              v357 = vld2q_f32(v356);
              v358 = vld2q_f32(v354);
              v359 = vaddw_s32(v353[-2], *&v357);
              v360 = vaddw_high_s32(v353[-1], v357);
              v361 = vaddw_s32(*v353, *&v358);
              v362 = vaddw_high_s32(v353[1], v358);
              v353[-2] = v359;
              v353[-1] = v360;
              *v353 = v361;
              v353[1] = v362;
              v353 += 4;
              v354 += 16;
              v352 -= 8;
            }

            while (v352);
            v355 = v293;
          }

          else
          {
            v355 = 0;
          }

          v363 = a6 - v355;
          v364 = 2 * v355;
          v365 = &v56->i64[v355];
          v366 = &v57[v364 + 1];
          do
          {
            v367 = *v366;
            v366 += 2;
            *v365++ += v367;
            --v363;
          }

          while (v363);
          v60 += v62;
          --v55;
        }

        while (v55);
      }

      break;
  }

  if (v63)
  {
    goto LABEL_329;
  }

LABEL_510:
  v634.i32[0] = 33619968;
  v634.i64[1] = &v617;
  *&v635 = 0;
  sub_10020EF14(&v609, &v634, 5, 1.0, 0.0);
  if (v600)
  {
    v601 = v600;
    operator delete(v600);
  }

  if (v603)
  {
    v604 = v603;
    operator delete(v603);
  }

  if (v606)
  {
    v607 = v606;
    operator delete(v606);
  }

  if (v613 && atomic_fetch_add((v613 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v609);
  }

  v613 = 0;
  v610 = 0u;
  v611 = 0u;
  if (SDWORD1(v609) >= 1)
  {
    v587 = 0;
    v588 = v614;
    do
    {
      v588[v587++] = 0;
    }

    while (v587 < SDWORD1(v609));
  }

  if (v615 != v616)
  {
    j__free(v615);
  }

  if (v621 && atomic_fetch_add((v621 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v617);
  }

  v621 = 0;
  v618 = 0u;
  v619 = 0u;
  if (SDWORD1(v617) >= 1)
  {
    v589 = 0;
    v590 = v622;
    do
    {
      v590[v589++] = 0;
    }

    while (v589 < SDWORD1(v617));
  }

  if (v623 != v624)
  {
    j__free(v623);
  }

  if (v629 && atomic_fetch_add((v629 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v625);
  }

  v629 = 0;
  v626 = 0u;
  v627 = 0u;
  if (SDWORD1(v625) >= 1)
  {
    v591 = 0;
    v592 = v630;
    do
    {
      *&v592[4 * v591++] = 0;
    }

    while (v591 < SDWORD1(v625));
  }

  if (v631 != v632)
  {
    j__free(v631);
  }

  if (v633[2])
  {
    sub_1002ACC1C(v633);
  }
}

void sub_10032B73C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100008E3C(a1);
  }

  _Unwind_Resume(a1);
}

float64_t sub_10032B8E8(int32x2_t **a1, int a2, uint64_t a3, int *a4, int a5, int *a6, float **a7, char a8, void *a9, uint64_t *a10, uint64_t a11, uint64_t *a12)
{
  v14 = a5;
  if (!a3 && a2 != a5)
  {
    v98 = 0;
    v99 = 0;
    qmemcpy(sub_1002A80E0(&v98, 32), "channels != 0 || nimages == dims", 32);
    sub_1002A8980(-215, &v98, "histPrepareImages", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 128);
  }

  *&v16.f64[0] = vrev64_s32(*a1[8]);
  *a11 = v16.f64[0];
  v17 = *a1;
  v18 = a5;
  v19 = a5 + 1;
  v20 = (a9[1] - *a9) >> 3;
  if (v19 <= v20)
  {
    if (v19 < v20)
    {
      a9[1] = *a9 + 8 * v19;
    }
  }

  else
  {
    sub_10030AB00(a9, v19 - v20);
  }

  v21 = 2 * v19;
  v22 = (a10[1] - *a10) >> 2;
  if (v21 <= v22)
  {
    if (v21 < v22)
    {
      a10[1] = *a10 + 4 * v21;
    }
  }

  else
  {
    sub_1002374D8(a10, v21 - v22);
  }

  if (v14 < 1)
  {
    v38 = a4;
    v39 = a6;
    v40 = *(a4 + 2);
    if (!v40)
    {
      goto LABEL_56;
    }

    v97 = a10;
    v25 = 1;
    v41 = a4[1];
    if (v41 < 3)
    {
LABEL_36:
      v42 = v38[3] * v38[2];
      goto LABEL_44;
    }
  }

  else
  {
    v97 = a10;
    v89 = v14;
    v90 = a8;
    v23 = 0;
    v91 = v14;
    v95 = v14;
    v24 = (0x88442211uLL >> (4 * (v17 & 7u))) & 0xF;
    LOBYTE(v25) = 1;
    do
    {
      if (a3)
      {
        v28 = *(a3 + 4 * v23);
        if (v28 < 0)
        {
          v98 = 0;
          v99 = 0;
          v29 = sub_1002A80E0(&v98, 6);
          *v29 = 1027481699;
          *(v29 + 4) = 12320;
          sub_1002A8980(-215, &v98, "histPrepareImages", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 148);
        }

        if (a2 < 1)
        {
LABEL_26:
          v98 = 0;
          v99 = 0;
          v34 = sub_1002A80E0(&v98, 11);
          *(v34 + 7) = 1936025441;
          *v34 = *"j < nimages";
          sub_1002A8980(-215, &v98, "histPrepareImages", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 152);
        }

        v30 = 0;
        v31 = a1;
        while (1)
        {
          v32 = *v31;
          v31 += 12;
          v33 = (v32 >> 3) & 0x1FF;
          if (v28 <= v33)
          {
            break;
          }

          v28 += ~v33;
          if (a2 == ++v30)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        if ((a1[12 * v23] & 0xFF8) != 0)
        {
          v98 = 0;
          v99 = 0;
          qmemcpy(sub_1002A80E0(&v98, 25), "images[j].channels() == 1", 25);
          sub_1002A8980(-215, &v98, "histPrepareImages", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 143);
        }

        v28 = 0;
        LODWORD(v30) = v23;
      }

      v35 = &a1[12 * v30];
      v36 = v35[8]->i32[1] == *a11 && v35[8]->i32[0] == *(a11 + 4);
      if (!v36 || (v37 = *v35, (*v35 & 7) != (v17 & 7)))
      {
        v98 = 0;
        v99 = 0;
        qmemcpy(sub_1002A80E0(&v98, 56), "images[j].size() == imsize && images[j].depth() == depth", 56);
        sub_1002A8980(-215, &v98, "histPrepareImages", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 155);
      }

      v25 &= (*v35 & 0x4000u) >> 14;
      *(*a9 + 8 * v23) = v35[2] + v28 * v24;
      v26 = ((v37 >> 3) & 0x1FF) + 1;
      v27 = (*a10 + 8 * v23);
      *v27 = v26;
      v27[1] = v35[10] / v24 - *a11 * v26;
      ++v23;
    }

    while (v23 != v95);
    v38 = a4;
    v39 = a6;
    v40 = *(a4 + 2);
    a8 = v90;
    v18 = v89;
    if (!v40)
    {
      v14 = v91;
      if ((v25 & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }

    v14 = v91;
    v41 = a4[1];
    if (v41 < 3)
    {
      goto LABEL_36;
    }
  }

  v43 = *(v38 + 8);
  v44 = (v43 + 4);
  v45 = 1;
  v46 = v41 & 0x7FFFFFFE;
  v47 = 1;
  do
  {
    v45 *= *(v44 - 1);
    v47 *= *v44;
    v44 += 2;
    v46 -= 2;
  }

  while (v46);
  v42 = v47 * v45;
  v48 = v41 - (v41 & 0x7FFFFFFE);
  if (v48)
  {
    v49 = (v43 + 8 * ((v41 >> 1) & 0x3FFFFFFF));
    do
    {
      v50 = *v49++;
      v42 *= v50;
      --v48;
    }

    while (v48);
  }

LABEL_44:
  if (!v41 || !v42)
  {
    if (!v25)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  v51 = *(*(v38 + 8) + 4) == *a11 && **(v38 + 8) == *(a11 + 4);
  if (!v51 || (v52 = *v38, (*v38 & 0xFF8) != 0))
  {
    v98 = 0;
    v99 = 0;
    qmemcpy(sub_1002A80E0(&v98, 45), "mask.size() == imsize && mask.channels() == 1", 45);
    sub_1002A8980(-215, &v98, "histPrepareImages", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 165);
  }

  *(*a9 + 8 * v18) = v40;
  v53 = *v97;
  *(v53 + 8 * v18) = 1;
  *(v53 + 4 * ((2 * v18) | 1)) = *(v38 + 10) / ((0x88442211uLL >> (4 * (*v38 & 7u))) & 0xF);
  if (v25 & ((v52 & 0x4000) >> 14))
  {
LABEL_56:
    *a11 *= *(a11 + 4);
    *(a11 + 4) = 1;
  }

LABEL_57:
  if (a7)
  {
    if (a8)
    {
      v54 = (a12[1] - *a12) >> 3;
      if (2 * v18 <= v54)
      {
        if (2 * v18 < v54)
        {
          a12[1] = *a12 + 16 * v18;
        }
      }

      else
      {
        sub_10027E448(a12, 2 * v18 - v54);
      }

      if (v14 >= 1)
      {
        v63 = 0;
        do
        {
          v68 = *a7;
          if (!*a7 || (v69 = v68[1], *v68 >= v69))
          {
            v98 = 0;
            v99 = 0;
            qmemcpy(sub_1002A80E0(&v98, 40), "ranges[i] && ranges[i][0] < ranges[i][1]", 40);
            sub_1002A8980(-215, &v98, "histPrepareImages", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 196);
          }

          v64 = *v68;
          v65 = *v39++;
          v66 = v65 / (v69 - v64);
          v67 = (*a12 + v63);
          v16.f64[0] = -(v66 * v64);
          *v67 = v66;
          v67[1] = v16.f64[0];
          ++a7;
          v63 += 16;
        }

        while (16 * v14 != v63);
      }
    }

    else if (v14 >= 1)
    {
      for (i = 0; i != v14; ++i)
      {
        v58 = v39[i];
        if (v58)
        {
          for (j = 0; j != v58; ++j)
          {
            v60 = &a7[i][j];
            *v16.f64 = *v60;
            if (*v60 >= v60[1])
            {
              v98 = 0;
              v99 = 0;
              qmemcpy(sub_1002A80E0(&v98, 29), "ranges[i][k] < ranges[i][k+1]", 29);
              sub_1002A8980(-215, &v98, "histPrepareImages", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 209);
            }
          }
        }
      }
    }
  }

  else
  {
    if ((v17 & 7) != 0)
    {
      v98 = 0;
      v99 = 0;
      v55 = sub_1002A80E0(&v98, 10);
      *(v55 + 8) = 12320;
      *v55 = *"depth == 0";
      sub_1002A8980(-215, &v98, "histPrepareImages", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 182);
    }

    v56 = (a12[1] - *a12) >> 3;
    if (2 * v18 <= v56)
    {
      if (2 * v18 < v56)
      {
        a12[1] = *a12 + 16 * v18;
      }
    }

    else
    {
      sub_10027E448(a12, 2 * v18 - v56);
    }

    if (v14 >= 1)
    {
      v61 = *a12;
      if (v14 >= 8)
      {
        v62 = v14 & 0x7FFFFFF8;
        v70 = (v61 + 64);
        v71 = v39 + 4;
        v16 = vdupq_n_s64(0x3F70000000000000uLL);
        v72 = 0uLL;
        v73 = v62;
        do
        {
          v74 = *(v71 - 1);
          v75.i64[0] = v74;
          v75.i64[1] = SDWORD1(v74);
          v76 = vcvtq_f64_s64(v75);
          v75.i64[0] = SDWORD2(v74);
          v75.i64[1] = SHIDWORD(v74);
          v77 = vcvtq_f64_s64(v75);
          v75.i64[0] = *v71;
          v75.i64[1] = HIDWORD(*v71);
          v78 = vcvtq_f64_s64(v75);
          v75.i64[0] = *(v71 + 1);
          v75.i64[1] = HIDWORD(*v71);
          v79 = vmulq_f64(v77, v16);
          v102.val[0] = vmulq_f64(v76, v16);
          v102.val[1] = 0uLL;
          v101.val[0] = vmulq_f64(v78, v16);
          v80 = v70 - 8;
          vst2q_f64(v80, v102);
          v101.val[1] = 0uLL;
          v81 = v70 - 4;
          vst2q_f64(v81, *(&v72 - 1));
          v82 = v70 + 16;
          vst2q_f64(v70, v101);
          v83 = v70 + 4;
          v100.val[0] = vmulq_f64(vcvtq_f64_s64(v75), v16);
          v100.val[1] = 0uLL;
          vst2q_f64(v83, v100);
          v71 += 8;
          v70 = v82;
          v73 -= 8;
        }

        while (v73);
        if (v62 == v14)
        {
          return v16.f64[0];
        }
      }

      else
      {
        v62 = 0;
      }

      v84 = &v39[v62];
      v85 = (v61 + 16 * v62 + 8);
      v86 = v14 - v62;
      do
      {
        v87 = *v84++;
        v16.f64[0] = vcvtd_n_f64_s32(v87, 8uLL);
        *(v85 - 1) = *&v16.f64[0];
        *v85 = 0;
        v85 += 2;
        --v86;
      }

      while (v86);
    }
  }

  return v16.f64[0];
}

void sub_10032C188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void *sub_10032C260(unsigned int a1, int *a2, int a3, _DWORD **a4, uint64_t a5)
{
  v5 = a5;
  if (a1 >= 0x21)
  {
    v16 = 0;
    v17 = 0;
    qmemcpy(sub_1002A80E0(&v16, 36), "Number of dimensions is out of range", 36);
    sub_1002A8980(-19, &v16, "cvCreateHist", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 2844);
  }

  if (!a2)
  {
    v16 = 0;
    v17 = 0;
    v10 = sub_1002A80E0(&v16, 20);
    *(v10 + 16) = 1919251566;
    *v10 = *"Null <sizes> pointer";
    sub_1002A8980(-9, &v16, "cvCreateHist", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 2847);
  }

  v11 = sub_1001D90AC(0x238uLL);
  v12 = v11;
  if (v5)
  {
    v13 = 1111819264;
  }

  else
  {
    v13 = 1111818240;
  }

  *v11 = v13 & 0xFFFFFFFE | a3 & 1;
  v11[34] = 0;
  v11[1] = 0;
  if (a3 == 1)
  {
    v11[1] = sub_1001FC868(a1, a2, 5u);
  }

  else
  {
    if (a3)
    {
      v16 = 0;
      v17 = 0;
      qmemcpy(sub_1002A80E0(&v16, 22), "Invalid histogram type", 22);
      sub_1002A8980(-5, &v16, "cvCreateHist", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 2863);
    }

    v14 = sub_1001FB2C8((v11 + 35), a1, a2, 5u, 0);
    *(v12 + 8) = v14;
    sub_1001FA9C0(v14);
  }

  if (a4)
  {
    sub_10032C488(v12, a4, v5);
  }

  return v12;
}

uint64_t sub_10032C488(uint64_t a1, _DWORD **a2, int a3)
{
  v4 = a2;
  if (!a2)
  {
    v32 = 0;
    v33 = 0;
    v6 = sub_1002A80E0(&v32, 19);
    *(v6 + 15) = 1919251566;
    *v6 = *"NULL ranges pointer";
    sub_1002A8980(-27, &v32, "cvSetHistBinRanges", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 3363);
  }

  if (!a1 || *(a1 + 2) != 16965 || (v7 = *(a1 + 8)) == 0)
  {
    v32 = 0;
    v33 = 0;
    qmemcpy(sub_1002A80E0(&v32, 24), "Invalid histogram header", 24);
    sub_1002A8980(-5, &v32, "cvSetHistBinRanges", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 3366);
  }

  result = sub_1001FD6A4(v7, __dst);
  v9 = result;
  if (result >= 1)
  {
    v10 = result;
    if (result >= 8)
    {
      v11 = result & 0x7FFFFFF8;
      v14 = &v35;
      v15 = 0uLL;
      v16 = v11;
      v17 = 0uLL;
      do
      {
        v15 = vsubq_s32(v14[-1], vmvnq_s8(v15));
        v17 = vsubq_s32(*v14, vmvnq_s8(v17));
        v14 += 2;
        v16 -= 8;
      }

      while (v16);
      v12 = vaddvq_s32(vaddq_s32(v17, v15));
      if (v11 == result)
      {
LABEL_17:
        if (a3)
        {
          v21 = (a1 + 20);
          do
          {
            v22 = *v4;
            if (!*v4)
            {
              v32 = 0;
              v33 = 0;
              qmemcpy(sub_1002A80E0(&v32, 32), "One of <ranges> elements is NULL", 32);
              sub_1002A8980(-27, &v32, "cvSetHistBinRanges", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 3377);
            }

            *(v21 - 1) = *v22;
            *v21 = v22[1];
            v21 += 2;
            ++v4;
            --v10;
          }

          while (v10);
          goto LABEL_11;
        }

        v23 = 4 * v12;
        result = *(a1 + 272);
        v24 = v9;
        if (result)
        {
LABEL_23:
          if (v9 < 1)
          {
            goto LABEL_37;
          }

          goto LABEL_27;
        }

LABEL_26:
        result = sub_1001D90AC(v23 + 8 * v24);
        *(a1 + 272) = result;
        if (v9 < 1)
        {
LABEL_37:
          v13 = *a1 & 0xFFFFF3FF | 0x800;
          goto LABEL_38;
        }

LABEL_27:
        v25 = 0;
        v26 = result + 8 * v24;
        do
        {
          if (!v4[v25])
          {
            v32 = 0;
            v33 = 0;
            qmemcpy(sub_1002A80E0(&v32, 32), "One of <ranges> elements is NULL", 32);
            sub_1002A8980(-27, &v32, "cvSetHistBinRanges", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 3401);
          }

          v27 = __dst[v25];
          if ((v27 & 0x80000000) == 0)
          {
            v28 = 0;
            v29 = -3.4028e38;
            do
            {
              v31 = v29;
              v29 = *&v4[v25][v28];
              if (v29 <= v31)
              {
                v32 = 0;
                v33 = 0;
                qmemcpy(sub_1002A80E0(&v32, 39), "Bin ranges should go in ascenting order", 39);
                sub_1002A8980(-211, &v32, "cvSetHistBinRanges", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 3407);
              }

              *(v26 + 4 * v28) = v29;
            }

            while (v28++ < v27);
          }

          *(*(a1 + 272) + 8 * v25) = v26;
          v26 += 4 * v27 + 4;
          ++v25;
        }

        while (v25 != v9);
        goto LABEL_37;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v18 = &__dst[v11];
    v19 = result - v11;
    do
    {
      v20 = *v18++;
      v12 += v20 + 1;
      --v19;
    }

    while (v19);
    goto LABEL_17;
  }

  if (!a3)
  {
    v23 = 0;
    result = *(a1 + 272);
    v24 = v9;
    if (result)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

LABEL_11:
  v13 = *a1 | 0xC00;
LABEL_38:
  *a1 = v13;
  return result;
}

void sub_10032C868(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100008E3C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10032C910(uint64_t *a1)
{
  if (!a1)
  {
    v5 = 0;
    v6 = 0;
    sub_1002A8980(-27, &v5, "cvReleaseHist", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 2903);
  }

  v2 = *a1;
  if (*a1)
  {
    if (*(v2 + 2) != 16965 || (v3 = *(v2 + 8)) == 0)
    {
      v5 = 0;
      v6 = 0;
      qmemcpy(sub_1002A80E0(&v5, 24), "Invalid histogram header", 24);
      sub_1002A8980(-5, &v5, "cvReleaseHist", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 2910);
    }

    *a1 = 0;
    if (*(v3 + 2) == 16964)
    {
      sub_1001FCB74((v2 + 8));
      v4 = *(v2 + 272);
      if (!v4)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1001FCEC4(v3);
      *(v2 + 8) = 0;
      v4 = *(v2 + 272);
      if (!v4)
      {
LABEL_13:
        j__free(v2);
        return;
      }
    }

    j__free(v4);
    *(v2 + 272) = 0;
    goto LABEL_13;
  }
}

void sub_10032CA74(int *a1, uint64_t *a2)
{
  if (!a2)
  {
    v21 = 0uLL;
    qmemcpy(sub_1002A80E0(&v21, 34), "Destination double pointer is NULL", 34);
    sub_1002A8980(-27, &v21, "cvCopyHist", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 3293);
  }

  v4 = *a2;
  if (!a1 || *(a1 + 1) != 16965 || (v5 = *(a1 + 1)) == 0 || v4 && (*(v4 + 2) != 16965 || !*(v4 + 8)))
  {
    v21 = 0uLL;
    qmemcpy(sub_1002A80E0(&v21, 27), "Invalid histogram header[s]", 27);
    sub_1002A8980(-5, &v21, "cvCopyHist", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 3298);
  }

  v6 = *(v5 + 2) == 16964;
  v7 = sub_1001FD6A4(v5, __dst);
  if (!v4)
  {
    goto LABEL_23;
  }

  v8 = *(v4 + 8);
  if (v8)
  {
    if ((*(v8 + 2) == 16964) != v6)
    {
      goto LABEL_23;
    }
  }

  else if (v6)
  {
LABEL_23:
    sub_10032C910(a2);
    v4 = sub_10032C260(v7, __dst, v6, 0, 0);
    *a2 = v4;
    goto LABEL_24;
  }

  if (v7 != sub_1001FD6A4(v8, &v21))
  {
    goto LABEL_23;
  }

  if (v7 < 1)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v9 = 0;
    while (__dst[v9] == *(&v22[-1] + v9))
    {
      if (v7 == ++v9)
      {
        goto LABEL_24;
      }
    }
  }

  if (v9 != v7)
  {
    goto LABEL_23;
  }

LABEL_24:
  v10 = *a1;
  if ((*a1 & 0x800) != 0)
  {
    v21 = 0u;
    memset(v22, 0, sizeof(v22));
    if ((v10 & 0x400) == 0)
    {
      v11 = *(a1 + 34);
LABEL_36:
      sub_10032C488(v4, v11, (v10 >> 10) & 1);
      goto LABEL_37;
    }

    if (v7 >= 1)
    {
      if (v7 < 4)
      {
        v12 = 0;
LABEL_34:
        v20 = &a1[2 * v12 + 4];
        do
        {
          v11 = &v21;
          *(&v22[-1] + v12++) = v20;
          v20 += 2;
        }

        while (v7 != v12);
        goto LABEL_36;
      }

      v12 = v7 & 0x7FFFFFFC;
      v13 = xmmword_1003E0C50;
      v14 = v22;
      v15 = vdupq_n_s64((a1 + 4));
      v16 = vdupq_n_s64(0x10uLL);
      v17 = vdupq_n_s64(4uLL);
      v18 = v12;
      do
      {
        v19 = vaddq_s64(v15, vshlq_n_s64(v13, 3uLL));
        v14[-1] = v19;
        *v14 = vaddq_s64(v19, v16);
        v13 = vaddq_s64(v13, v17);
        v14 += 2;
        v18 -= 4;
      }

      while (v18);
      if (v12 != v7)
      {
        goto LABEL_34;
      }
    }

    v11 = &v21;
    goto LABEL_36;
  }

LABEL_37:
  sub_100230B48(*(a1 + 1), *(v4 + 8), 0);
}

void sub_10032CD84(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10032CDCC(_BOOL8 result)
{
  if (result)
  {
    return *(result + 2) == 16965 && *(result + 8) != 0;
  }

  return result;
}

void *sub_10032CDF8(_DWORD *a1, uint64_t a2)
{
  v4 = sub_1001D90AC(0x238uLL);
  v5 = sub_100283BF4(a1, a2, "type");
  if (!v5)
  {
    LODWORD(v6) = 0;
    v7 = sub_100283BF4(a1, a2, "is_uniform");
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  if ((*v5 & 7) == 2)
  {
    v6 = rint(*(v5 + 16));
    v7 = sub_100283BF4(a1, a2, "is_uniform");
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  if ((*v5 & 7) != 1)
  {
    LODWORD(v6) = 0x7FFFFFFF;
    v7 = sub_100283BF4(a1, a2, "is_uniform");
    if (v7)
    {
      goto LABEL_10;
    }

LABEL_5:
    LODWORD(v8) = 0;
    v9 = sub_100283BF4(a1, a2, "have_ranges");
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_13:
    LODWORD(v10) = 0;
    goto LABEL_22;
  }

  LODWORD(v6) = *(v5 + 16);
  v7 = sub_100283BF4(a1, a2, "is_uniform");
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_10:
  if ((*v7 & 7) == 2)
  {
    v8 = rint(*(v7 + 16));
    v9 = sub_100283BF4(a1, a2, "have_ranges");
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else if ((*v7 & 7) == 1)
  {
    LODWORD(v8) = *(v7 + 16);
    v9 = sub_100283BF4(a1, a2, "have_ranges");
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    LODWORD(v8) = 0x7FFFFFFF;
    v9 = sub_100283BF4(a1, a2, "have_ranges");
    if (!v9)
    {
      goto LABEL_13;
    }
  }

LABEL_6:
  if ((*v9 & 7) == 2)
  {
    v10 = rint(*(v9 + 16));
  }

  else if ((*v9 & 7) == 1)
  {
    LODWORD(v10) = *(v9 + 16);
  }

  else
  {
    LODWORD(v10) = 0x7FFFFFFF;
  }

LABEL_22:
  *v4 = ((v10 != 0) << 11) | ((v8 != 0) << 10) | v6 | 0x42450000;
  if (v6)
  {
    v11 = sub_100283BF4(a1, a2, "bins");
    v12 = sub_1002913A4(a1, v11, 0);
    v4[1] = v12;
    if (!v12 || *(v12 + 2) != 16964)
    {
      __dst[0] = 0;
      __dst[1] = 0;
      qmemcpy(sub_1002A80E0(__dst, 22), "Unknown Histogram type", 22);
      sub_1002A8980(-2, __dst, "icvReadHist", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 4029);
    }
  }

  else
  {
    v13 = sub_100283BF4(a1, a2, "mat");
    v14 = sub_1002913A4(a1, v13, 0);
    v15 = v14;
    v41[0] = v14;
    if (!v14 || *(v14 + 1) != 16963 || !*(v14 + 3))
    {
      v42[0] = 0;
      v42[1] = 0;
      *sub_1002A80E0(v42, 16) = *"Expected CvMatND";
      sub_1002A8980(-2, v42, "icvReadHist", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 4008);
    }

    LODWORD(v16) = v14[1];
    if (v16 >= 1)
    {
      v17 = 0;
      v18 = v14 + 8;
      do
      {
        v19 = *v18;
        v18 += 2;
        *(__dst + v17++) = v19;
        v16 = v14[1];
      }

      while (v17 < v16);
    }

    sub_1001FB2C8((v4 + 35), v16, __dst, *v14, *(v14 + 3));
    v4[1] = v4 + 35;
    v20 = *(v15 + 1);
    v4[36] = v20;
    v21 = *(v15 + 1) << 16;
    if ((v21 == 1111687168 || v21 == 1111621632 && v15[9] >= 1 && v15[8] >= 1) && *(v15 + 3) && v20)
    {
      ++*v20;
    }

    sub_1001FB074(v41);
  }

  if (v10)
  {
    v22 = sub_1001FD6A4(v4[1], __dst);
    v23 = v22;
    v24 = v22;
    if (v22 < 1)
    {
      v27 = 0;
LABEL_54:
      v35 = sub_100283BF4(a1, a2, "thresh");
      if (!v35)
      {
        v41[0] = 0;
        v41[1] = 0;
        qmemcpy(sub_1002A80E0(v41, 24), "'thresh' node is missing", 24);
        sub_1002A8980(-2, v41, "icvReadHist", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 4046);
      }

      sub_10028BBBC(a1, v35, v42);
      if (v8)
      {
        if (v23 >= 1)
        {
          v36 = (v4 + 2);
          do
          {
            sub_10028BDD8(a1, v42, 2, v36, "f");
            v36 += 8;
            --v24;
          }

          while (v24);
        }

        v4[34] = 0;
      }

      else
      {
        v37 = sub_1001D90AC(v27 + 8 * v23);
        v4[34] = v37;
        if (v23 > 0)
        {
          v38 = 0;
          v39 = v37 + 8 * v23;
          do
          {
            *(v4[34] + 8 * v38) = v39;
            sub_10028BDD8(a1, v42, *(__dst + v38) + 1, v39, "f");
            v39 += 4 * *(__dst + v38++) + 4;
          }

          while (v24 != v38);
        }
      }

      return v4;
    }

    if (v22 >= 8)
    {
      v25 = v22 & 0x7FFFFFF8;
      v28 = &v44;
      v29 = 0uLL;
      v30 = v25;
      v31 = 0uLL;
      do
      {
        v29 = vsubq_s32(v28[-1], vmvnq_s8(v29));
        v31 = vsubq_s32(*v28, vmvnq_s8(v31));
        v28 += 2;
        v30 -= 8;
      }

      while (v30);
      v26 = vaddvq_s32(vaddq_s32(v31, v29));
      if (v25 == v22)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    v32 = __dst + v25;
    v33 = v22 - v25;
    do
    {
      v34 = *v32++;
      v26 += v34 + 1;
      --v33;
    }

    while (v33);
LABEL_53:
    v27 = 4 * v26;
    goto LABEL_54;
  }

  return v4;
}

void sub_10032D3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10032D434(_DWORD *a1, const char *a2, int *a3)
{
  sub_100288FB8(a1, a2, 6, "opencv-hist");
  v5 = *a3;
  v6 = *a3 & 0x800;
  sub_1002899A0(a1, "type", *a3 & 1);
  sub_1002899A0(a1, "is_uniform", (v5 >> 10) & 1);
  sub_1002899A0(a1, "have_ranges", (v5 >> 11) & 1);
  v7 = *(a3 + 1);
  if (v7 && *(v7 + 2) == 16964)
  {
    sub_100291524(a1, "bins", v7, 0, 0);
    if (!v6)
    {
      return sub_10028984C(a1);
    }
  }

  else
  {
    sub_100291524(a1, "mat", (a3 + 70), 0, 0);
    if (!v6)
    {
      return sub_10028984C(a1);
    }
  }

  v8 = sub_1001FD6A4(*(a3 + 1), __dst);
  sub_100288FB8(a1, "thresh", 13, 0);
  if ((v5 & 0x400) != 0)
  {
    if (v8 >= 1)
    {
      v10 = a3 + 4;
      v11 = v8;
      do
      {
        sub_100289C48(a1, v10, 2u, "f");
        v10 += 2;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      sub_100289C48(a1, *(*(a3 + 34) + 8 * i), __dst[i] + 1, "f");
    }
  }

  sub_10028984C(a1);
  return sub_10028984C(a1);
}

uint64_t sub_10032D618(int *a1)
{
  v2 = 0;
  sub_10032CA74(a1, &v2);
  return v2;
}

void sub_10032D644(uint64_t a1, uint64_t a2, int a3, float **a4, uint64_t a5, int a6, int a7, uint64_t *a8)
{
  v15 = a3 << 8;
  v16 = *a8;
  v17 = (a8[1] - *a8) >> 3;
  if (v15 <= v17)
  {
    if (v15 < v17)
    {
      a8[1] = v16 + 8 * v15;
    }
  }

  else
  {
    sub_10027E448(a8, v15 - v17);
    v16 = *a8;
  }

  if (a6)
  {
    if (a3 >= 1)
    {
      v19 = 0;
      v20 = *(a1 + 64);
      v21 = *(a1 + 72);
      v22 = *(a2 + 8);
      __asm { FMOV            V1.2D, #2.0 }

      do
      {
        if (a7)
        {
          if (v22)
          {
            v28 = *(v22 + 88 + 4 * v19);
          }

          else
          {
            v28 = 0;
          }

          v29 = 1;
        }

        else
        {
          v28 = *(v20 + 4 * v19);
          v29 = *(v21 + 8 * v19);
        }

        v30 = 0;
        v31 = (a5 + 16 * v19);
        v32 = vdupq_lane_s64(*v31, 0);
        v33 = vdupq_lane_s64(v31[1], 0);
        v34 = vdup_n_s32(v28);
        v36 = vdupq_n_s64(v29);
        v35 = v36.i64[0];
        v36.i64[0] = &_mh_execute_header;
        do
        {
          v37.i64[0] = v36.u32[0];
          v37.i64[1] = v36.u32[1];
          v38 = vmlaq_f64(v33, v32, vcvtq_f64_u64(v37));
          v39 = vmovn_s64(vcvtq_s64_f64(v38));
          v37.i64[0] = v39.i32[0];
          v37.i64[1] = v39.i32[1];
          v40 = vadd_s32(vmovn_s64(vcgtq_f64(vcvtq_f64_s64(v37), v38)), v39);
          *&v38.f64[0] = vcgt_u32(v34, v40);
          v41 = v36.i64[1] * v40.i32[1];
          v42.i64[0] = v35 * v40.i32[0];
          v42.i64[1] = v41;
          v37.i64[0] = SLODWORD(v38.f64[0]);
          v37.i64[1] = SHIDWORD(v38.f64[0]);
          *(v16 + ((v19 & 0xFFFFFF) << 11) + v30) = vbslq_s8(v37, v42, _Q1);
          *v36.i8 = vadd_s32(*v36.i8, 0x200000002);
          v30 += 16;
        }

        while (v30 != 2048);
        ++v19;
      }

      while (v19 != a3);
    }

    return;
  }

  if (!a4)
  {
    v92[0] = 0;
    v92[1] = 0;
    qmemcpy(sub_1002A80E0(v92, 55), "Either ranges, either uniform ranges should be provided", 55);
    sub_1002A8980(-5, v92, "calcHistLookupTables_8u", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/histogram.cpp", 116);
  }

  if (a3 >= 1)
  {
    if (a7)
    {
      v43 = *(a2 + 8);
      v44 = a3;
      v45 = 0;
      if (v43)
      {
        v46 = 0;
        v47 = v43 + 88;
        do
        {
          v48 = 0;
          v49 = a4[v46];
          v51 = *v49;
          v50 = v49 + 2;
          v52 = v51;
          if (v51 > v51)
          {
            ++v52;
          }

          if (v52 >= 256)
          {
            v53 = 256;
          }

          else
          {
            v53 = v52;
          }

          v54 = *(v47 + 4 * v46) - 1;
          v55 = 0x4000000000000000;
          v56 = -1;
          if (v53 > 0)
          {
LABEL_37:
            v59 = v53 - v48;
            v60 = v48;
            if (v59 <= 3)
            {
              goto LABEL_41;
            }

            v60 = (v59 & 0xFFFFFFFFFFFFFFFCLL) + v48;
            v61 = vdupq_n_s64(v55);
            v62 = (v16 + 16 + 8 * (v45 + v48));
            v63 = v59 & 0xFFFFFFFFFFFFFFFCLL;
            do
            {
              v62[-1] = v61;
              *v62 = v61;
              v62 += 2;
              v63 -= 4;
            }

            while (v63);
            if (v59 != (v59 & 0xFFFFFFFFFFFFFFFCLL))
            {
LABEL_41:
              v64 = (v16 + 8 * (v45 + v60));
              v65 = v53 - v60;
              do
              {
                *v64++ = v55;
                --v65;
              }

              while (v65);
            }

            v48 = v53;
          }

          while (v56 != v54)
          {
            v55 = v56 + 1;
            v57 = v50[v56];
            v58 = v57;
            if (v57 > v57)
            {
              ++v58;
            }

            if (v58 >= 256)
            {
              v53 = 256;
            }

            else
            {
              v53 = v58;
            }

            v56 = v55;
            if (v48 < v53)
            {
              goto LABEL_37;
            }
          }

          if (v48 <= 255)
          {
            memset_pattern16((v16 + 8 * ((v46 << 8) + v48)), &unk_1003E9860, 8 * (255 - v48) + 8);
          }

          ++v46;
          v45 += 256;
        }

        while (v46 != v44);
        return;
      }

      v88 = v44 << 8;
      while (1)
      {
        v90 = **a4;
        if (v90 <= v90)
        {
          v91 = v90;
        }

        else
        {
          v91 = v90 + 1;
        }

        if (v91 < 1)
        {
          v89 = 0;
        }

        else
        {
          if (v91 >= 0x100)
          {
            v89 = 256;
          }

          else
          {
            v89 = v91;
          }

          memset_pattern16((v16 + 8 * v45), &unk_1003E9860, (8 * v89));
          if (v91 >= 0x100)
          {
            goto LABEL_76;
          }
        }

        memset_pattern16((v16 + 8 * (v45 + v89)), &unk_1003E9860, (2048 - 8 * v89));
LABEL_76:
        v45 += 256;
        ++a4;
        if (v88 == v45)
        {
          return;
        }
      }
    }

    v66 = 0;
    v67 = 0;
    v69 = *(a1 + 64);
    v68 = *(a1 + 72);
    do
    {
      v70 = 0;
      v71 = a4[v67];
      v73 = *v71;
      v72 = v71 + 2;
      v74 = v73;
      if (v73 > v73)
      {
        ++v74;
      }

      if (v74 >= 256)
      {
        v75 = 256;
      }

      else
      {
        v75 = v74;
      }

      v76 = *(v68 + 8 * v67);
      v77 = *(v69 + 4 * v67) - 1;
      v78 = 0x4000000000000000;
      v79 = -1;
      if (v75 > 0)
      {
LABEL_63:
        v81 = v75 - v70;
        v82 = v70;
        if (v81 < 4)
        {
          goto LABEL_67;
        }

        v82 = (v81 & 0xFFFFFFFFFFFFFFFCLL) + v70;
        v83 = vdupq_n_s64(v78);
        v84 = (v16 + 16 + 8 * (v66 + v70));
        v85 = v81 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v84[-1] = v83;
          *v84 = v83;
          v84 += 2;
          v85 -= 4;
        }

        while (v85);
        if (v81 != (v81 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_67:
          v86 = (v16 + 8 * (v66 + v82));
          v87 = v75 - v82;
          do
          {
            *v86++ = v78;
            --v87;
          }

          while (v87);
        }

        v70 = v75;
      }

      while (v79 != v77)
      {
        v80 = v72[v79++];
        v75 = v80;
        if (v80 > v80)
        {
          ++v75;
        }

        if (v75 >= 256)
        {
          v75 = 256;
        }

        v78 = v76 * v79;
        if (v70 < v75)
        {
          goto LABEL_63;
        }
      }

      if (v70 <= 255)
      {
        memset_pattern16((v16 + 8 * ((v67 << 8) + v70)), &unk_1003E9860, 8 * (255 - v70) + 8);
      }

      ++v67;
      v66 += 256;
    }

    while (v67 != a3);
  }
}