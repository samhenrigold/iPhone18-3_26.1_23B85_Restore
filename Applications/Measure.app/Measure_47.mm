uint64_t sub_10030AC54(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v7 = sub_10030AD50(a1, a2, a3, a5);
  *v7 = off_100478BF8;
  *(v7 + 216) = a4;
  if ((a4 & 3) == 0 || *(a1 + 8) >= 6)
  {
    v9[0] = 0;
    v9[1] = 0;
    qmemcpy(sub_1002A80E0(v9, 84), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0 && this->ksize <= 5", 84);
    sub_1002A8980(-215, v9, "SymmRowSmallFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3112);
  }

  return a1;
}

void sub_10030AD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_10030B108(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_10030AD50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(a1 + 8) = -1;
  *a1 = &off_100478C50;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1124007936;
  v10 = (a1 + 112);
  *(a1 + 116) = 0u;
  v11 = (a1 + 116);
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = a1 + 120;
  *(a1 + 184) = a1 + 192;
  *(a1 + 200) = 0;
  *(a1 + 212) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_17;
    }

    v12 = *(a2 + 56);
    if (v12)
    {
      atomic_fetch_add((v12 + 20), 1u);
      v13 = *(a1 + 72);
      if (v13)
      {
        if (atomic_fetch_add((v13 + 20), 0xFFFFFFFF) == 1)
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
      v17 = *(a2 + 4);
      if (v17 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v17;
        *(a1 + 24) = *(a2 + 8);
        v18 = *(a2 + 72);
        v19 = *(a1 + 88);
        *v19 = *v18;
        v19[1] = v18[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v14 = 0;
      v15 = *(a1 + 80);
      do
      {
        *(v15 + 4 * v14++) = 0;
        v16 = *v9;
      }

      while (v14 < v16);
      *v8 = *a2;
      if (v16 <= 2)
      {
        v17 = *(a2 + 4);
        if (v17 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v8, a2);
    goto LABEL_16;
  }

  LODWORD(v32) = 33619968;
  v33 = a1 + 16;
  v34 = 0;
  sub_10022B754(a2, &v32);
LABEL_17:
  v21 = *(a1 + 24);
  v20 = *(a1 + 28);
  *(a1 + 8) = v21 + v20 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 4 || v21 != 1 && v20 != 1)
  {
    v32 = 0;
    v33 = 0;
    qmemcpy(sub_1002A80E0(&v32, 77), "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v32, "RowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3053);
  }

  if (v10 != a4)
  {
    v22 = *(a4 + 56);
    if (v22)
    {
      atomic_fetch_add((v22 + 20), 1u);
    }

    v23 = *(a1 + 168);
    if (v23 && atomic_fetch_add((v23 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v10);
    }

    *(a1 + 168) = 0;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    if (*(a1 + 116) <= 0)
    {
      *v10 = *a4;
      v27 = *(a4 + 4);
      if (v27 <= 2)
      {
LABEL_32:
        *(a1 + 116) = v27;
        *(a1 + 120) = *(a4 + 8);
        v28 = *(a4 + 72);
        v29 = *(a1 + 184);
        *v29 = *v28;
        v29[1] = v28[1];
LABEL_35:
        *(a1 + 128) = *(a4 + 16);
        *(a1 + 144) = *(a4 + 32);
        *(a1 + 160) = *(a4 + 48);
        goto LABEL_36;
      }
    }

    else
    {
      v24 = 0;
      v25 = *(a1 + 176);
      do
      {
        *(v25 + 4 * v24++) = 0;
        v26 = *v11;
      }

      while (v24 < v26);
      *v10 = *a4;
      if (v26 <= 2)
      {
        v27 = *(a4 + 4);
        if (v27 <= 2)
        {
          goto LABEL_32;
        }
      }
    }

    sub_100269B58(v10, a4);
    goto LABEL_35;
  }

LABEL_36:
  v30 = *(a4 + 96);
  *(a1 + 212) = *(a4 + 100);
  *(a1 + 208) = v30;
  return a1;
}

void sub_10030B0CC(_Unwind_Exception *a1)
{
  sub_100305EE8(v2);
  sub_100006D14(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10030B108(uint64_t a1)
{
  *a1 = &off_100478C50;
  v2 = *(a1 + 168);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 112);
  }

  *(a1 + 168) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  if (*(a1 + 116) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 176);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 116));
  }

  v5 = *(a1 + 184);
  if (v5 != (a1 + 192))
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

void sub_10030B22C(uint64_t a1)
{
  sub_10030B108(a1);

  operator delete();
}

uint64_t sub_10030B264(uint64_t a1, uint64_t a2, int32x4_t *a3, int a4, int a5)
{
  v10 = *(a1 + 8);
  v11 = v10 / 2 * a5;
  v12 = *(a1 + 32);
  v614 = (v10 + (v10 >> 31)) >> 1;
  v13 = v12 + 4 * (v10 / 2);
  v14 = *(a1 + 216);
  result = sub_10030D484(a1 + 112, a2, a3, a4, a5);
  v20 = result;
  v21 = result;
  v22 = a2 + result;
  v23 = v11;
  v24 = (v22 + v11);
  v25 = a5 * a4;
  v26 = *(a1 + 8);
  if (v14)
  {
    if (v26 == 5)
    {
      v214 = *v13;
      v215 = *(v13 + 4);
      v216 = *(v13 + 8);
      v217 = v25 - 2;
      if (*v13 != -2 || v215 != 0 || v216 != 1)
      {
        if (result <= v217)
        {
          v220 = -a5;
          v221 = -2 * a5;
          v222 = 2 * a5;
          v223 = 1 - a5;
          v224 = v217 - v20;
          v225 = a5 + 1;
          v226 = 1 - 2 * a5;
          if (v224 > 0x3F)
          {
            v227 = a3 + 4 * v20;
            v607 = v224 >> 1;
            v228 = v227 + 8 * (v224 >> 1) + 8;
            v229 = v224 & 0xFFFFFFFFFFFFFFFELL;
            v230 = v20 + v11 + a2 + v229;
            v613 = v230 + v222 + 2;
            v610 = v20 + v23 - v222 + a2 + 1;
            v231 = v20 + v23 + v229 + 2;
            v232 = a2 + v231 - v222;
            v608 = a2 + v20 + v23 - a5;
            v233 = a2 + v231 - a5;
            v234 = a2 + v231;
            v235 = v22 + a5 + v23;
            v236 = v230 + a5 + 1;
            v238 = v227 < v232 && v610 < v228;
            v611 = v238;
            v240 = v227 < v230 + v225 + 1 && v24->u64 + v225 < v228;
            v242 = v227 < v233 && v608 < v228;
            v244 = v227 < v234 && v24 < v228;
            v246 = v227 < v230 + v221 + 1 && v24->u64 + v221 < v228;
            v248 = v227 < v236 && v235 < v228;
            v249 = v24->u64 + v222 >= v228 || v227 >= v613;
            if (!v249 || v611 || v240 || v242 || v244 || v246 || v248)
            {
              v223 = 1 - a5;
            }

            else
            {
              v250 = (v607 + 1) & 0xF;
              if (!v250)
              {
                v250 = 16;
              }

              v251 = 2 * (v607 + 1 - v250);
              v21 = v251 + v20;
              v252 = vdupq_n_s32(LODWORD(v214));
              v16 = vdupq_n_s32(v215);
              v253 = vdupq_n_s32(v216);
              v254 = &v24->u8[v251];
              v255 = ~v607 + v250;
              v18.i32[1] = -255;
              v19.i32[1] = -251;
              v256 = v24;
              v223 = 1 - a5;
              do
              {
                v639 = vld2q_s8(v256);
                v256 += 32;
                v257 = &v24->i8[v220];
                v648 = vld2q_s8(v257);
                v258 = &v24->i8[a5];
                v259 = vld2q_s8(v258);
                v260 = vaddl_u8(*&v259, *v648.val[0].i8);
                v261 = vaddl_high_u8(v259, v648.val[0]);
                v262 = vmlaq_s32(vmulq_s32(v252, vqtbl1q_s8(v639.val[0], xmmword_1003E3720)), vmovl_u16(*v260.i8), v16);
                v263 = vmlaq_s32(vmulq_s32(v252, vqtbl1q_s8(v639.val[0], xmmword_1003E3730)), vmovl_high_u16(v260), v16);
                v264 = vmlaq_s32(vmulq_s32(v252, vqtbl1q_s8(v639.val[0], xmmword_1003E3700)), vmovl_u16(*v261.i8), v16);
                v265 = vmlaq_s32(vmulq_s32(v252, vqtbl1q_s8(v639.val[0], xmmword_1003E3710)), vmovl_high_u16(v261), v16);
                v266 = &v24->i8[v221];
                v267 = vld2q_s8(v266);
                v268 = &v24->i8[v222];
                v652 = vld2q_s8(v268);
                v269 = vaddl_high_u8(v652.val[0], v267);
                v270 = vaddl_u8(*v652.val[0].i8, *&v267);
                v626.val[0] = vmlaq_s32(v265, vmovl_high_u16(v269), v253);
                v271 = &v24->i8[v225];
                v272 = vld2q_s8(v271);
                v273 = vaddl_high_u8(v272, v648.val[1]);
                v274 = &v24->i8[v226];
                v275 = vld2q_s8(v274);
                v276 = vaddl_high_u8(v652.val[1], v275);
                v634.val[0] = vmlaq_s32(v264, vmovl_u16(*v269.i8), v253);
                v643.val[0] = vmlaq_s32(v263, vmovl_high_u16(v270), v253);
                v648.val[0] = vaddl_u8(*&v272, *v648.val[1].i8);
                v648.val[1] = vaddl_u8(*v652.val[1].i8, *&v275);
                v645.val[0] = vmlaq_s32(v262, vmovl_u16(*v270.i8), v253);
                v645.val[1] = vmlaq_s32(vmlaq_s32(vmulq_s32(v252, vqtbl1q_s8(v639.val[1], xmmword_1003E3720)), vmovl_u16(*v648.val[0].i8), v16), vmovl_u16(*v648.val[1].i8), v253);
                v277 = v227;
                vst2q_f32(v277, v645);
                v277 += 8;
                v643.val[1] = vmlaq_s32(vmlaq_s32(vmulq_s32(v252, vqtbl1q_s8(v639.val[1], xmmword_1003E3730)), vmovl_high_u16(v648.val[0]), v16), vmovl_high_u16(v648.val[1]), v253);
                vst2q_f32(v277, v643);
                v634.val[1] = vmlaq_s32(vmlaq_s32(vmulq_s32(v252, vqtbl1q_s8(v639.val[1], xmmword_1003E3700)), vmovl_u16(*v273.i8), v16), vmovl_u16(*v276.i8), v253);
                v278 = (v227 + 64);
                vst2q_f32(v278, v634);
                v626.val[1] = vmlaq_s32(vmlaq_s32(vmulq_s32(v252, vqtbl1q_s8(v639.val[1], xmmword_1003E3710)), vmovl_high_u16(v273), v16), vmovl_high_u16(v276), v253);
                v279 = (v227 + 96);
                vst2q_f32(v279, v626);
                v227 += 128;
                v24 = v256;
                v255 += 16;
              }

              while (v255);
              v24 = v254;
            }
          }

          v600 = 0;
          v601 = &a3->i32[v21 + 1];
          v602 = &v24->u8[v225];
          v603 = &v24->u8[v226];
          do
          {
            v604 = LODWORD(v214) * v24->u8[v600 + 1] + (v602[v600] + v24->u8[v223 + v600]) * v215 + (v24->u8[v222 + 1 + v600] + v603[v600]) * v216;
            *(v601 - 1) = LODWORD(v214) * v24->u8[v600] + (v24->u8[a5 + v600] + v24->u8[v220 + v600]) * v215 + (v24->u8[v222 + v600] + v24->u8[v221 + v600]) * v216;
            *v601 = v604;
            v600 += 2;
            v601 += 2;
          }

          while (v21 + v600 <= v217);
          result = (v21 + v600);
          v24 = (v24 + v600);
          if (result >= v25)
          {
            return result;
          }

          goto LABEL_390;
        }

        goto LABEL_389;
      }

      if (result > v217)
      {
LABEL_389:
        if (result >= v25)
        {
          return result;
        }

LABEL_390:
        if (v10 < 2)
        {
          v519 = v25 - result;
          if (v519 < 4 || ((v566 = a3 + 4 * result, v567 = (a3 + 4 * v25), v566 < v24->u64 + v519) ? (v568 = v24 >= v567) : (v568 = 1), v568 ? (v569 = 0) : (v569 = 1), v13 < v567 ? (v570 = v566 >= v12 + 4 * v614 + 4) : (v570 = 1), !v570 || (v569 & 1) != 0))
          {
            v520 = result;
            v521 = v24;
            goto LABEL_393;
          }

          if (v519 >= 0x20)
          {
            v586 = vld1q_dup_f32(v13);
            v571 = v519 & 0xFFFFFFFFFFFFFFE0;
            v587 = (v566 + 64);
            v588 = v24 + 1;
            v16.i32[1] = -247;
            v589 = v519 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v590 = v588[-1];
              v591 = vqtbl1q_s8(*v588, xmmword_1003E3700);
              v592 = vmulq_s32(v586, vqtbl1q_s8(*v588, xmmword_1003E3710));
              v593 = vmulq_s32(v586, vqtbl1q_s8(*v588, xmmword_1003E3720));
              v594 = vmulq_s32(v586, vqtbl1q_s8(*v588, xmmword_1003E3730));
              v587[-4] = vmulq_s32(v586, vqtbl1q_s8(v590, xmmword_1003E3720));
              v587[-3] = vmulq_s32(v586, vqtbl1q_s8(v590, xmmword_1003E3730));
              v587[-2] = vmulq_s32(v586, vqtbl1q_s8(v590, xmmword_1003E3700));
              v587[-1] = vmulq_s32(v586, vqtbl1q_s8(v590, xmmword_1003E3710));
              *v587 = v593;
              v587[1] = v594;
              v587[2] = vmulq_s32(v586, v591);
              v587[3] = v592;
              v587 += 8;
              v588 += 2;
              v589 -= 32;
            }

            while (v589);
            if (v519 == v571)
            {
              return result;
            }

            if ((v519 & 0x1C) == 0)
            {
              v521 = &v24->u8[v571];
              v520 = v571 + result;
              goto LABEL_393;
            }
          }

          else
          {
            v571 = 0;
          }

          v520 = (v519 & 0xFFFFFFFFFFFFFFFCLL) + result;
          v595 = vld1q_dup_f32(v13);
          v521 = &v24->u8[v519 & 0xFFFFFFFFFFFFFFFCLL];
          v596 = (a3 + 4 * v571 + 4 * result);
          v597 = &v24->u8[v571];
          v598 = v571 - (v519 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            v599 = *v597;
            v597 += 4;
            v16.i32[0] = v599;
            v16 = vmulq_s32(v595, vmovl_u16(*&vmovl_u8(*v16.i8)));
            *v596++ = v16;
            v598 += 4;
          }

          while (v598);
          if (v519 == (v519 & 0xFFFFFFFFFFFFFFFCLL))
          {
            return result;
          }

LABEL_393:
          v522 = &a3->i32[v520];
          v523 = v25 - v520;
          do
          {
            v524 = *v521++;
            *v522++ = *v13 * v524;
            --v523;
          }

          while (v523);
          return result;
        }

        v525 = a5;
        v526 = result;
        v527 = ((v10 / 2) & 0x3FFFFFF0 | 1u) * a5;
        result = (v10 / 2) & 0x3FFFFFFC;
        v528 = ((v10 / 2) & 0x3FFFFFFC | 1u) * a5;
        v530 = (v10 / 2) < 4 || a5 != 1;
        v531 = &v24[-1];
        v532 = &v24->u8[1];
        v533 = v12 + 4 * v614;
        v534.i64[0] = 0xFF000000FFLL;
        v534.i64[1] = 0xFF000000FFLL;
        for (i = &v24[-1].u8[12]; ; ++i)
        {
          v536 = *v13 * v24->u8[0];
          if (v530)
          {
            v537 = 1;
            v538 = v525;
          }

          else
          {
            if (v614 < 0x10)
            {
              v539 = 0;
LABEL_412:
              v557 = v536;
              v558 = &i[-v539];
              v559 = (v533 + 4 + 4 * v539);
              do
              {
                v560 = *v559++;
                v561 = v560;
                v18.i32[0] = *&v532[v539];
                v560.i32[0] = *v558--;
                v19.i32[0] = v560.i32[0];
                v19 = vandq_s8(vmovl_u16(vrev64_s16(*&vmovl_u8(*v19.i8))), v534);
                v18 = vaddw_u16(v19, *&vmovl_u8(*v18.i8));
                v557 = vmlaq_s32(v557, v18, v561);
                v539 += 4;
              }

              while (result != v539);
              v536 = vaddvq_s32(v557);
              v537 = v614 & 0x3FFFFFFC | 1;
              v538 = v528;
              if (result == v614)
              {
                goto LABEL_403;
              }

              goto LABEL_415;
            }

            v540 = 0uLL;
            v541 = (*v13 * v24->u8[0]);
            v542 = v614 & 0x3FFFFFF0;
            v543 = (v533 + 4);
            v544 = v532;
            v545 = v531;
            v18 = 0uLL;
            v19 = 0uLL;
            do
            {
              v547 = v543[2];
              v546 = v543[3];
              v549 = *v543;
              v548 = v543[1];
              v543 += 4;
              v550 = *v544++;
              v551 = v550;
              v552 = *v545--;
              v553 = vrev64q_s8(v552);
              v554 = vextq_s8(v553, v553, 8uLL);
              v555 = vaddl_high_u8(v554, v551);
              v556 = vaddl_u8(*v554.i8, *v551.i8);
              v19 = vmlaq_s32(v19, vmovl_high_u16(v555), v546);
              v18 = vmlaq_s32(v18, vmovl_u16(*v555.i8), v547);
              v540 = vmlaq_s32(v540, vmovl_high_u16(v556), v548);
              v541 = vmlaq_s32(v541, vmovl_u16(*v556.i8), v549);
              v542 -= 16;
            }

            while (v542);
            v536 = vaddvq_s32(vaddq_s32(vaddq_s32(v541, v18), vaddq_s32(v540, v19)));
            if ((v614 & 0x3FFFFFF0) == v614)
            {
              goto LABEL_403;
            }

            v539 = v614 & 0x3FFFFFF0;
            v537 = v539 | 1;
            v538 = v527;
            if ((v614 & 0xC) != 0)
            {
              goto LABEL_412;
            }
          }

LABEL_415:
          v562 = (v533 + 4 * v537);
          v563 = (v614 + 1) - v537;
          v564 = -v538;
          do
          {
            v565 = *v562++;
            v536 += (v24->u8[v564] + v24->u8[v538]) * v565;
            v538 += v525;
            v564 -= v525;
            --v563;
          }

          while (v563);
LABEL_403:
          a3->i32[v526++] = v536;
          v24 = (v24 + 1);
          ++v531;
          ++v532;
          if (v526 == v25)
          {
            return result;
          }
        }
      }

      v362 = -2 * a5;
      v363 = 2 * a5;
      v364 = 1 - 2 * a5;
      v365 = v217;
      v366 = v217 - result;
      if (v366 >= 0x40)
      {
        v367 = v366 >> 1;
        v368 = a3 + 4 * v20;
        v369 = v368 + 8 * (v366 >> 1) + 8;
        v370 = v366 & 0xFFFFFFFFFFFFFFFELL;
        v371 = v20 + v11;
        v372 = v371 + a2 + v370;
        v373 = v372 + v363 + 2;
        v374 = v371 - v363 + a2 + 1;
        v375 = v371 + v370 + 2;
        v376 = a2 + v375;
        v377 = v372 + v362 + 1;
        v378 = v368 >= a2 + v375 - v363 || v374 >= v369;
        v379 = !v378;
        v380 = v368 >= v376 || v24 >= v369;
        v381 = !v380;
        v382 = v368 >= v377 || v24->u64 + v362 >= v369;
        v383 = !v382;
        v384 = v24->u64 + v363 >= v369 || v368 >= v373;
        if (v384 && !v379 && !v381 && !v383)
        {
          v385 = (v367 + 1) & 0xF;
          if (!v385)
          {
            v385 = 16;
          }

          v386 = 2 * (v367 + 1 - v385);
          v21 = v386 + v20;
          v387 = &v24->u8[v386];
          v388 = ~v367 + v385;
          v16.i32[1] = -251;
          v18.i32[1] = -243;
          v389 = v24;
          do
          {
            v622 = vld2q_s8(v389);
            v389 += 32;
            v390 = vqtbl1q_s8(v622.val[0], xmmword_1003E3720);
            v391 = vqtbl1q_s8(v622.val[0], xmmword_1003E3730);
            v392 = vqtbl1q_s8(v622.val[0], xmmword_1003E3700);
            v393 = vqtbl1q_s8(v622.val[0], xmmword_1003E3710);
            v394 = &v24->i8[v362];
            v395 = vld2q_s8(v394);
            v396 = vqtbl1q_s8(v395, xmmword_1003E3710);
            v397 = vqtbl1q_s8(v395, xmmword_1003E3700);
            v398 = vqtbl1q_s8(v395, xmmword_1003E3730);
            v399 = vsubq_s32(vqtbl1q_s8(v395, xmmword_1003E3720), vaddq_s32(v390, v390));
            v400 = vsubq_s32(v398, vaddq_s32(v391, v391));
            v401 = vsubq_s32(v397, vaddq_s32(v392, v392));
            v402 = vsubq_s32(v396, vaddq_s32(v393, v393));
            v403 = &v24->i8[v363];
            v640 = vld2q_s8(v403);
            v404 = vmovl_u8(*v640.val[0].i8);
            v405 = vmovl_high_u8(v640.val[0]);
            v19 = vaddw_high_u16(v402, v405);
            v406 = &v24->i8[v364];
            v407 = vld2q_s8(v406);
            v408 = vqtbl1q_s8(v622.val[1], xmmword_1003E3710);
            v409 = vqtbl1q_s8(v622.val[1], xmmword_1003E3700);
            v410 = vmovl_high_u8(v640.val[1]);
            v650.val[0] = vaddw_u16(v401, *v405.i8);
            v411 = vmovl_u8(*v640.val[1].i8);
            v640.val[0] = vqtbl1q_s8(v622.val[1], xmmword_1003E3730);
            v622.val[0] = vqtbl1q_s8(v622.val[1], xmmword_1003E3720);
            v640.val[1] = vaddw_high_u16(v400, v404);
            v631.val[0] = vaddw_u16(v399, *v404.i8);
            v631.val[1] = vaddw_u16(vsubq_s32(vqtbl1q_s8(v407, xmmword_1003E3720), vaddq_s32(v622.val[0], v622.val[0])), *v411.i8);
            v412 = v368;
            vst2q_f32(v412, v631);
            v412 += 8;
            v413 = vaddw_high_u16(vsubq_s32(vqtbl1q_s8(v407, xmmword_1003E3730), vaddq_s32(v640.val[0], v640.val[0])), v411);
            vst2q_f32(v412, *(&v640 + 16));
            v650.val[1] = vaddw_u16(vsubq_s32(vqtbl1q_s8(v407, xmmword_1003E3700), vaddq_s32(v409, v409)), *v410.i8);
            v414 = (v368 + 64);
            vst2q_f32(v414, v650);
            v415 = (v368 + 96);
            v368 += 128;
            v24 = v389;
            v416 = vaddw_high_u16(vsubq_s32(vqtbl1q_s8(v407, xmmword_1003E3710), vaddq_s32(v408, v408)), v410);
            vst2q_f32(v415, *v19.i8);
            v388 += 16;
          }

          while (v388);
          v24 = v387;
        }
      }

      v417 = &a3->i32[v21 + 1];
      do
      {
        v418 = v24->u8[v363 + 1] - 2 * v24->u8[1] + v24->u8[v364];
        *(v417 - 1) = v24->u8[v363] - 2 * v24->u8[0] + v24->u8[v362];
        *v417 = v418;
        v21 += 2;
        v24 = (v24 + 2);
        v417 += 2;
      }

      while (v21 <= v365);
    }

    else
    {
      if (v26 != 3)
      {
        if (v26 == 1 && *v13 == 1)
        {
          v67 = v25 - 2;
          if (result <= v25 - 2)
          {
            v68 = v67 - result;
            if (v68 < 0x1E)
            {
              goto LABEL_50;
            }

            v69 = a3 + 4 * result;
            v70 = a2 + 2 * result + v11;
            if (v69 < v70 + (v68 & 0xFFFFFFFFFFFFFFFELL) + 2 && v70 < v69 + 8 * (v68 >> 1) + 8)
            {
              goto LABEL_50;
            }

            v72 = (v68 >> 1) + 1;
            v21 = v20 + 2 * (v72 & 0xFFFFFFFFFFFFFFF0);
            v73 = (a2 + v11 + 2 * v20);
            v16.i32[1] = -251;
            v18.i32[1] = -243;
            v74 = v72 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v76 = *v73;
              v75 = v73[1];
              v73 += 2;
              *(v69 + 96) = vqtbl1q_s8(v75, xmmword_1003E3700);
              *(v69 + 112) = vqtbl1q_s8(v75, xmmword_1003E3710);
              v77 = vqtbl1q_s8(v75, xmmword_1003E3720);
              v19 = vqtbl1q_s8(v75, xmmword_1003E3730);
              *(v69 + 64) = v77;
              *(v69 + 80) = v19;
              *(v69 + 32) = vqtbl1q_s8(v76, xmmword_1003E3700);
              *(v69 + 48) = vqtbl1q_s8(v76, xmmword_1003E3710);
              *v69 = vqtbl1q_s8(v76, xmmword_1003E3720);
              *(v69 + 16) = vqtbl1q_s8(v76, xmmword_1003E3730);
              v69 += 128;
              v74 -= 16;
            }

            while (v74);
            if (v72 != (v72 & 0xFFFFFFFFFFFFFFF0))
            {
LABEL_50:
              v78 = v21 + 1;
              v79 = &a3->i32[v21 + 1];
              v80 = (v21 + v20 + v11 + a2 + 1);
              do
              {
                v81 = *(v80 - 1);
                v82 = *v80;
                v80 += 2;
                v83 = v78 + 2;
                v84 = v78 + 1;
                *(v79 - 1) = v81;
                *v79 = v82;
                v79 += 2;
                v78 += 2;
              }

              while (v84 <= v67);
              v21 = v83 - 1;
            }

            result = v21;
            v21 = v21;
          }

          v24 = (v24 + v21);
          if (result >= v25)
          {
            return result;
          }

          goto LABEL_390;
        }

        goto LABEL_389;
      }

      v161 = *v13;
      v162 = *(v13 + 4);
      if (*v13 == -2)
      {
        if (v162 == 1)
        {
          v425 = v25 - 2;
          if (result <= v25 - 2)
          {
            v426 = 1 - a5;
            v427 = a5 + 1;
            v428 = v425 - result;
            if (v428 >= 0x40)
            {
              v429 = v428 >> 1;
              v430 = a3 + 4 * result;
              v431 = v430 + 8 * (v428 >> 1) + 8;
              v432 = (v428 & 0xFFFFFFFFFFFFFFFELL) + v20;
              v433 = a2 + v432 + v11;
              v434 = v432 + v11 - a5 + a2 + 2;
              v435 = v22 + a5 + v11;
              v436 = v432 + a2 + a5 + v11 + 1;
              v437 = v430 >= v433 + 2 || v24 >= v431;
              v438 = !v437;
              v439 = v430 >= v434 || a2 + v20 + v11 - a5 >= v431;
              v440 = !v439;
              v441 = v430 >= v436 || v435 >= v431;
              v442 = !v441;
              v443 = v24->u64 + v427 >= v431 || v430 >= v433 + v427 + 1;
              if (v443 && !v438 && !v440 && !v442)
              {
                v444 = (v429 + 1) & 0xF;
                if (!v444)
                {
                  v444 = 16;
                }

                v445 = 2 * (v429 + 1 - v444);
                v21 = v445 + v20;
                v446 = &v24->u8[v445];
                v447 = ~v429 + v444;
                v16.i32[1] = -247;
                v18.i32[1] = -255;
                v448 = v24;
                do
                {
                  v449 = &v24->i8[-a5];
                  v628 = vld2q_s8(v449);
                  v619 = vld2q_s8(v448);
                  v448 += 32;
                  v450 = vqtbl1q_s8(v619.val[0], xmmword_1003E3720);
                  v451 = vqtbl1q_s8(v619.val[0], xmmword_1003E3730);
                  v452 = vqtbl1q_s8(v619.val[0], xmmword_1003E3700);
                  v453 = vqtbl1q_s8(v619.val[0], xmmword_1003E3710);
                  v454 = vsubq_s32(vqtbl1q_s8(v628.val[0], xmmword_1003E3720), vaddq_s32(v450, v450));
                  v455 = vsubq_s32(vqtbl1q_s8(v628.val[0], xmmword_1003E3730), vaddq_s32(v451, v451));
                  v456 = vsubq_s32(vqtbl1q_s8(v628.val[0], xmmword_1003E3700), vaddq_s32(v452, v452));
                  v457 = vsubq_s32(vqtbl1q_s8(v628.val[0], xmmword_1003E3710), vaddq_s32(v453, v453));
                  v458 = &v24->i8[a5];
                  v459 = vld2q_s8(v458);
                  v460 = vmovl_u8(*&v459);
                  v461 = vmovl_high_u8(v459);
                  v623.val[0] = vaddw_high_u16(v457, v461);
                  v462 = &v24->i8[v427];
                  v463 = vld2q_s8(v462);
                  v464 = vqtbl1q_s8(v628.val[1], xmmword_1003E3710);
                  v465 = vqtbl1q_s8(v619.val[1], xmmword_1003E3700);
                  v466 = vsubq_s32(vqtbl1q_s8(v628.val[1], xmmword_1003E3700), vaddq_s32(v465, v465));
                  v467 = vmovl_high_u8(v463);
                  v641.val[0] = vaddw_u16(v456, *v461.i8);
                  v468 = vmovl_u8(*&v463);
                  v469 = vqtbl1q_s8(v628.val[1], xmmword_1003E3730);
                  v628.val[0] = vqtbl1q_s8(v628.val[1], xmmword_1003E3720);
                  v628.val[1] = vqtbl1q_s8(v619.val[1], xmmword_1003E3720);
                  v628.val[0] = vsubq_s32(v628.val[0], vaddq_s32(v628.val[1], v628.val[1]));
                  v628.val[1] = vaddw_high_u16(v455, v460);
                  v651.val[0] = vaddw_u16(v454, *v460.i8);
                  v651.val[1] = vaddw_u16(v628.val[0], *v468.i8);
                  v628.val[0] = vqtbl1q_s8(v619.val[1], xmmword_1003E3730);
                  v470 = v430;
                  vst2q_f32(v470, v651);
                  v470 += 8;
                  v471 = vaddw_high_u16(vsubq_s32(v469, vaddq_s32(v628.val[0], v628.val[0])), v468);
                  vst2q_f32(v470, *(&v628 + 16));
                  v641.val[1] = vaddw_u16(v466, *v467.i8);
                  v472 = (v430 + 64);
                  vst2q_f32(v472, v641);
                  v619.val[0] = vqtbl1q_s8(v619.val[1], xmmword_1003E3710);
                  v473 = (v430 + 96);
                  v430 += 128;
                  v24 = v448;
                  v19 = vsubq_s32(v464, vaddq_s32(v619.val[0], v619.val[0]));
                  v623.val[1] = vaddw_high_u16(v19, v467);
                  vst2q_f32(v473, v623);
                  v447 += 16;
                }

                while (v447);
                v24 = v446;
              }
            }

            v474 = &a3->i32[v21 + 1];
            do
            {
              v475 = v24->u8[v427] - 2 * v24->u8[1] + v24->u8[v426];
              v21 += 2;
              *(v474 - 1) = v24->u8[a5] - 2 * v24->u8[0] + v24->u8[v426 - 1];
              *v474 = v475;
              v24 = (v24 + 2);
              v474 += 2;
              result = v21;
            }

            while (v21 <= v425);
          }

          goto LABEL_389;
        }
      }

      else if (LODWORD(v161) == 2 && v162 == 1)
      {
        v164 = v25 - 2;
        if (result <= v25 - 2)
        {
          v165 = 1 - a5;
          v166 = a5 + 1;
          v167 = v164 - result;
          if (v167 >= 0x40)
          {
            v168 = v167 >> 1;
            v169 = a3 + 4 * result;
            v170 = v169 + 8 * (v167 >> 1) + 8;
            v171 = (v167 & 0xFFFFFFFFFFFFFFFELL) + v20;
            v172 = a2 + v171 + v11;
            v173 = v171 + v11 - a5 + a2 + 2;
            v174 = v22 + a5 + v11;
            v175 = v171 + a2 + a5 + v11 + 1;
            v176 = v169 >= v172 + 2 || v24 >= v170;
            v177 = !v176;
            v178 = v169 >= v173 || a2 + v20 + v11 - a5 >= v170;
            v179 = !v178;
            v180 = v169 >= v175 || v174 >= v170;
            v181 = !v180;
            v182 = v24->u64 + v166 >= v170 || v169 >= v172 + v166 + 1;
            if (v182 && !v177 && !v179 && !v181)
            {
              v183 = (v168 + 1) & 0xF;
              if (!v183)
              {
                v183 = 16;
              }

              v184 = 2 * (v168 + 1 - v183);
              v21 = v184 + v20;
              v185 = &v24->u8[v184];
              v186 = ~v168 + v183;
              v16.i32[1] = -251;
              v18.i32[1] = -243;
              v187 = v24;
              do
              {
                v188 = &v24->i8[-a5];
                v621 = vld2q_s8(v188);
                v189 = vmovl_high_u8(v621.val[0]);
                v618 = vld2q_s8(v187);
                v187 += 32;
                v190 = vmovl_u8(*v621.val[0].i8);
                v191 = vqtbl1q_s8(v618.val[0], xmmword_1003E3720);
                v192 = vqtbl1q_s8(v618.val[0], xmmword_1003E3730);
                v193 = vqtbl1q_s8(v618.val[0], xmmword_1003E3700);
                v194 = vqtbl1q_s8(v618.val[0], xmmword_1003E3710);
                v195 = vaddw_u16(vaddq_s32(v191, v191), *v190.i8);
                v196 = vaddw_high_u16(vaddq_s32(v192, v192), v190);
                v197 = vaddw_u16(vaddq_s32(v193, v193), *v189.i8);
                v198 = &v24->i8[a5];
                v199 = vld2q_s8(v198);
                v200 = vmovl_u8(*&v199);
                v201 = &v24->i8[v166];
                v202 = vld2q_s8(v201);
                v203 = vmovl_high_u8(v199);
                v647.val[0] = vaddw_high_u16(vaddw_high_u16(vaddq_s32(v194, v194), v189), v203);
                v204 = vmovl_high_u8(v621.val[1]);
                v205 = vmovl_high_u8(v202);
                v636.val[0] = vaddw_u16(v197, *v203.i8);
                v206 = vqtbl1q_s8(v618.val[1], xmmword_1003E3700);
                v621.val[0] = vmovl_u8(*v621.val[1].i8);
                v649.val[0] = vaddw_high_u16(v196, v200);
                v621.val[1] = vmovl_u8(*&v202);
                v630.val[0] = vaddw_u16(v195, *v200.i8);
                v207 = vqtbl1q_s8(v618.val[1], xmmword_1003E3720);
                v630.val[1] = vaddw_u16(vaddw_u16(vaddq_s32(v207, v207), *v621.val[0].i8), *v621.val[1].i8);
                v208 = vqtbl1q_s8(v618.val[1], xmmword_1003E3730);
                v209 = v169;
                vst2q_f32(v209, v630);
                v209 += 8;
                v649.val[1] = vaddw_high_u16(vaddw_high_u16(vaddq_s32(v208, v208), v621.val[0]), v621.val[1]);
                vst2q_f32(v209, v649);
                v636.val[1] = vaddw_u16(vaddw_u16(vaddq_s32(v206, v206), *v204.i8), *v205.i8);
                v210 = (v169 + 64);
                vst2q_f32(v210, v636);
                v618.val[0] = vqtbl1q_s8(v618.val[1], xmmword_1003E3710);
                v211 = (v169 + 96);
                v169 += 128;
                v24 = v187;
                v19 = vaddw_high_u16(vaddq_s32(v618.val[0], v618.val[0]), v204);
                v647.val[1] = vaddw_high_u16(v19, v205);
                vst2q_f32(v211, v647);
                v186 += 16;
              }

              while (v186);
              v24 = v185;
            }
          }

          v212 = &a3->i32[v21 + 1];
          result = v21;
          do
          {
            v213 = v24->u8[v165] + 2 * v24->u8[1] + v24->u8[v166];
            *(v212 - 1) = v24->u8[v165 - 1] + 2 * v24->u8[0] + v24->u8[a5];
            *v212 = v213;
            result += 2;
            v24 = (v24 + 2);
            v212 += 2;
          }

          while (result <= v164);
        }

        goto LABEL_389;
      }

      v476 = v25 - 2;
      if (result > v25 - 2)
      {
        goto LABEL_389;
      }

      v477 = a5 + 1;
      v478 = v476;
      v479 = v476 - v20;
      if (v479 >= 0x20)
      {
        v480 = v479 >> 1;
        v481 = &a3->i32[v20];
        v482 = &v481[2 * (v479 >> 1) + 2];
        v483 = v479 & 0xFFFFFFFFFFFFFFFELL;
        v484 = v20 + v11 + a2 + v483;
        v485 = v484 + v477 + 1;
        v486 = a2 + v20 + v11 - a5;
        v487 = v20 + v11 + v483 + 2;
        v488 = a2 + v487 - a5;
        v489 = a2 + v487;
        v490 = v22 + a5 + v11;
        v491 = v484 + a5 + 1;
        v492 = v481 >= v488 || v486 >= v482;
        v493 = !v492;
        v494 = v481 >= v489 || v24 >= v482;
        v495 = !v494;
        v496 = v481 >= v491 || v490 >= v482;
        v497 = !v496;
        v498 = v24->u64 + v477 >= v482 || v481 >= v485;
        if (v498 && !v493 && !v495 && !v497)
        {
          v499 = (v480 + 1) & 0xF;
          if (!v499)
          {
            v499 = 16;
          }

          v500 = 2 * (v480 + 1 - v499);
          v21 = v500 + v20;
          v501 = vdupq_n_s32(LODWORD(v161));
          v16 = vdupq_n_s32(v162);
          v502 = &v24->u8[v500];
          v503 = ~v480 + v499;
          v18.i32[1] = -247;
          v19.i32[1] = -251;
          v504 = v24;
          do
          {
            v642 = vld2q_s8(v504);
            v504 += 32;
            v505 = &v24->i8[-a5];
            v646 = vld2q_s8(v505);
            v506 = &v24->i8[a5];
            v507 = vld2q_s8(v506);
            v508 = vaddl_high_u8(v507, v646.val[0]);
            v509 = vaddl_u8(*&v507, *v646.val[0].i8);
            v510 = &v24->i8[v477];
            v511 = vld2q_s8(v510);
            v644.val[0] = vmlaq_s32(vmulq_s32(v501, vqtbl1q_s8(v642.val[0], xmmword_1003E3710)), vmovl_high_u16(v508), v16);
            v512 = vaddl_high_u8(v511, v646.val[1]);
            v629.val[0] = vmlaq_s32(vmulq_s32(v501, vqtbl1q_s8(v642.val[0], xmmword_1003E3700)), vmovl_u16(*v508.i8), v16);
            v624.val[0] = vmlaq_s32(vmulq_s32(v501, vqtbl1q_s8(v642.val[0], xmmword_1003E3730)), vmovl_high_u16(v509), v16);
            v646.val[0] = vaddl_u8(*&v511, *v646.val[1].i8);
            v635.val[0] = vmlaq_s32(vmulq_s32(v501, vqtbl1q_s8(v642.val[0], xmmword_1003E3720)), vmovl_u16(*v509.i8), v16);
            v635.val[1] = vmlaq_s32(vmulq_s32(v501, vqtbl1q_s8(v642.val[1], xmmword_1003E3720)), vmovl_u16(*v646.val[0].i8), v16);
            v513 = v481;
            vst2q_f32(v513, v635);
            v513 += 8;
            v624.val[1] = vmlaq_s32(vmulq_s32(v501, vqtbl1q_s8(v642.val[1], xmmword_1003E3730)), vmovl_high_u16(v646.val[0]), v16);
            vst2q_f32(v513, v624);
            v629.val[1] = vmlaq_s32(vmulq_s32(v501, vqtbl1q_s8(v642.val[1], xmmword_1003E3700)), vmovl_u16(*v512.i8), v16);
            v514 = v481 + 16;
            vst2q_f32(v514, v629);
            v644.val[1] = vmlaq_s32(vmulq_s32(v501, vqtbl1q_s8(v642.val[1], xmmword_1003E3710)), vmovl_high_u16(v512), v16);
            v515 = v481 + 24;
            vst2q_f32(v515, v644);
            v481 += 32;
            v24 = v504;
            v503 += 16;
          }

          while (v503);
          v24 = v502;
        }
      }

      v516 = 1 - a5;
      v517 = &a3->i32[v21 + 1];
      do
      {
        v518 = (v24->u8[v477] + v24->u8[v516]) * v162 + LODWORD(v161) * v24->u8[1];
        *(v517 - 1) = (v24->u8[a5] + v24->u8[v516 - 1]) * v162 + LODWORD(v161) * v24->u8[0];
        *v517 = v518;
        v21 += 2;
        v24 = (v24 + 2);
        v517 += 2;
      }

      while (v21 <= v478);
    }

    result = v21;
    goto LABEL_389;
  }

  if (v26 == 5)
  {
    v85 = v25 - 2;
    if (result <= v25 - 2)
    {
      v86 = a5;
      v87 = -a5;
      v88 = 2 * a5;
      v89 = *(v13 + 4);
      v90 = *(v13 + 8);
      v91 = -2 * a5;
      v92 = a5 + 1;
      v93 = v85 - result;
      v94 = 1 - a5;
      v95 = 1 - 2 * a5;
      if (v93 >= 0x40)
      {
        v609 = a5 * a4;
        v612 = v10;
        v96 = &a3->i32[result];
        v605 = v93 >> 1;
        v97 = &v96[2 * (v93 >> 1) + 2];
        v606 = result + v11 - v88 + a2 + 1;
        v98 = v93 & 0xFFFFFFFFFFFFFFFELL;
        v99 = result + v11 + v98 + 2;
        v100 = a2 + v99 - v88;
        v101 = &v24->u8[v88];
        v102 = result + v23 + a2 + v98;
        v103 = v102 + v88 + 2;
        v104 = a2 + result + v23 - a5;
        v105 = a2 + v99 - a5;
        v106 = -2 * a5;
        v107 = &v24->u8[v92];
        v108 = v102 + v92 + 1;
        v109 = &v24->u8[v106];
        v110 = v102 + v106 + 1;
        v111 = v22 + a5 + v23;
        v112 = v102 + a5 + 1;
        v114 = v96 < v103 && v101 < v97;
        v116 = v96 < v105 && v104 < v97;
        v118 = v96 < v108 && v107 < v97;
        v120 = v96 < v110 && v109 < v97;
        v122 = v96 < v112 && v111 < v97;
        if (v606 >= v97 || v96 >= v100)
        {
          v10 = v612;
          v88 = 2 * a5;
          v86 = a5;
          v87 = -a5;
          v91 = -2 * a5;
          v92 = a5 + 1;
          v95 = 1 - 2 * a5;
          if (v114)
          {
            v94 = 1 - a5;
            v25 = v609;
          }

          else
          {
            v94 = 1 - a5;
            v25 = v609;
            if (!v116 && !v118 && !v120 && !v122)
            {
              v124 = 16;
              if (((v605 + 1) & 0xF) != 0)
              {
                v124 = (v605 + 1) & 0xF;
              }

              v125 = 2 * (v605 + 1 - v124);
              v21 = v125 + v20;
              v126 = vdupq_n_s32(v89);
              v24 = (v24 + v125);
              v16 = vdupq_n_s32(v90);
              v127 = v20 - v88 + a2 + 1;
              v128 = a2 + v20 + v92;
              v129 = a2 + v20 + v91;
              v130 = a2 + v20 + v88;
              v131 = a2 + v20 + -a5;
              v132 = a2 + v20 + a5;
              v133 = ~v605 + v124;
              do
              {
                v134 = (v132 + v23);
                v135 = vld2q_s8(v134);
                v136 = (v131 + v23);
                v633 = vld2q_s8(v136);
                v137 = vsubl_high_u8(v135, v633.val[0]);
                v138 = vsubl_u8(*&v135, *v633.val[0].i8);
                v139 = vmulq_s32(vmovl_s16(*v138.i8), v126);
                v140 = vmulq_s32(vmovl_high_s16(v138), v126);
                v141 = (v130 + v23);
                v638 = vld2q_s8(v141);
                v142 = (v129 + v23);
                v143 = vld2q_s8(v142);
                v144 = vsubl_high_u8(v638.val[0], v143);
                v145 = vsubl_u8(*v638.val[0].i8, *&v143);
                v17 = vmlaq_s32(vmulq_s32(vmovl_high_s16(v137), v126), vmovl_high_s16(v144), v16);
                v146 = (v128 + v23);
                v147 = vld2q_s8(v146);
                v148 = vsubl_high_u8(v147, v633.val[1]);
                v149 = (v127 + v23);
                v150 = vld2q_s8(v149);
                v151 = vsubl_high_u8(v638.val[1], v150);
                v18 = vmlaq_s32(vmulq_s32(vmovl_high_s16(v148), v126), vmovl_high_s16(v151), v16);
                v617.val[0] = vmlaq_s32(vmulq_s32(vmovl_s16(*v137.i8), v126), vmovl_s16(*v144.i8), v16);
                v617.val[1] = vmlaq_s32(vmulq_s32(vmovl_s16(*v148.i8), v126), vmovl_s16(*v151.i8), v16);
                v620.val[0] = vmlaq_s32(v140, vmovl_high_s16(v145), v16);
                v633.val[0] = vsubl_u8(*&v147, *v633.val[1].i8);
                v633.val[1] = vsubl_u8(*v638.val[1].i8, *&v150);
                v625.val[0] = vmlaq_s32(v139, vmovl_s16(*v145.i8), v16);
                v625.val[1] = vmlaq_s32(vmulq_s32(vmovl_s16(*v633.val[0].i8), v126), vmovl_s16(*v633.val[1].i8), v16);
                v152 = v96;
                vst2q_f32(v152, v625);
                v152 += 8;
                v620.val[1] = vmlaq_s32(vmulq_s32(vmovl_high_s16(v633.val[0]), v126), vmovl_high_s16(v633.val[1]), v16);
                vst2q_f32(v152, v620);
                v153 = v96 + 16;
                vst2q_f32(v153, v617);
                v154 = v96 + 24;
                vst2q_f32(v154, *v17.i8);
                v96 += 32;
                v127 += 32;
                v128 += 32;
                v129 += 32;
                v130 += 32;
                v131 += 32;
                v132 += 32;
                v133 += 16;
              }

              while (v133);
              v86 = a5;
            }
          }
        }

        else
        {
          v10 = v612;
          v86 = a5;
          v88 = 2 * a5;
          v91 = -2 * a5;
          v25 = v609;
          v87 = -a5;
          v92 = a5 + 1;
          v95 = 1 - 2 * a5;
          v94 = 1 - a5;
        }
      }

      v155 = 0;
      v156 = &a3->i32[v21 + 1];
      v157 = &v24->u8[v91];
      v158 = &v24->u8[v92];
      v159 = &v24->u8[v94];
      do
      {
        v160 = (v158[v155] - v159[v155]) * v89 + (v24->u8[v88 + 1 + v155] - v24->u8[v95 + v155]) * v90;
        *(v156 - 1) = (v24->u8[v86 + v155] - v24->u8[v87 + v155]) * v89 + (v24->u8[v88 + v155] - v157[v155]) * v90;
        *v156 = v160;
        v155 += 2;
        v156 += 2;
      }

      while (v21 + v155 <= v85);
      result = (v21 + v155);
      v24 = (v24 + v155);
    }
  }

  else
  {
    if (v26 != 3)
    {
      goto LABEL_237;
    }

    v27 = *(v13 + 4);
    v28 = v25 - 2;
    if (*v13)
    {
      v29 = 0;
    }

    else
    {
      v29 = v27 == 1;
    }

    if (v29)
    {
      if (result > v28)
      {
        goto LABEL_237;
      }

      v280 = a5 + 1;
      v281 = v28;
      v282 = v28 - result;
      if (v282 >= 0x40)
      {
        v283 = v282 >> 1;
        v284 = a3 + 4 * result;
        v285 = v284 + 8 * (v282 >> 1) + 8;
        v286 = v282 & 0xFFFFFFFFFFFFFFFELL;
        v287 = v20 + v11 + v286 - a5 + a2 + 2;
        v288 = v20 + v11 + a2 + v286;
        v289 = v22 + a5 + v11;
        v290 = v288 + a5 + 1;
        v291 = v284 >= v288 + v280 + 1 || v24->u64 + v280 >= v285;
        v292 = !v291;
        v293 = v284 >= v290 || v289 >= v285;
        v294 = !v293;
        v295 = a2 + v20 + v11 - a5 >= v285 || v284 >= v287;
        if (v295 && !v292 && !v294)
        {
          v296 = 16;
          if (((v283 + 1) & 0xF) != 0)
          {
            v296 = (v283 + 1) & 0xF;
          }

          v297 = 2 * (v283 + 1 - v296);
          v21 = v297 + v20;
          v24 = (v24 + v297);
          v298 = v20 + v11;
          v299 = (a2 + v280 + v298);
          v300 = (a2 + v298 - a5);
          v301 = (a2 + a5 + v298);
          v302 = ~v283 + v296;
          do
          {
            v303 = vld2q_s8(v301);
            v301 += 32;
            v615 = vld2q_s8(v300);
            v300 += 32;
            v304 = vsubl_high_u8(v303, v615.val[0]);
            v305 = vld2q_s8(v299);
            v299 += 32;
            v306 = vsubl_high_u8(v305, v615.val[1]);
            v627.val[0] = vmovl_s16(*v304.i8);
            v307 = vsubl_u8(*&v303, *v615.val[0].f32);
            v308 = vsubl_u8(*&v305, *v615.val[1].f32);
            v615.val[0] = vmovl_s16(*v307.i8);
            v615.val[1] = vmovl_s16(*v308.i8);
            v309 = v284;
            vst2q_f32(v309, v615);
            v309 += 8;
            v17 = vmovl_high_s16(v307);
            v18 = vmovl_high_s16(v308);
            vst2q_f32(v309, *v17.i8);
            v627.val[1] = vmovl_s16(*v306.i8);
            v310 = (v284 + 64);
            vst2q_f32(v310, v627);
            v311 = (v284 + 96);
            v284 += 128;
            v312 = vmovl_high_s16(v304);
            v16 = vmovl_high_s16(v306);
            vst2q_f32(v311, *(&v16 - 1));
            v302 += 16;
          }

          while (v302);
        }
      }

      v313 = 1 - a5;
      v314 = &a3->i32[v21 + 1];
      do
      {
        v315 = v24->u8[v280] - v24->u8[v313];
        *(v314 - 1) = v24->u8[a5] - v24->u8[v313 - 1];
        *v314 = v315;
        v21 += 2;
        v24 = (v24 + 2);
        v314 += 2;
      }

      while (v21 <= v281);
    }

    else
    {
      if (result > v28)
      {
        goto LABEL_237;
      }

      v30 = a5 + 1;
      v31 = v28;
      v32 = v28 - result;
      if (v32 >= 0x40)
      {
        v33 = v32 >> 1;
        v34 = a3 + 4 * result;
        v35 = v34 + 8 * (v32 >> 1) + 8;
        v36 = v32 & 0xFFFFFFFFFFFFFFFELL;
        v37 = result + v11 + v36 - a5 + a2 + 2;
        v38 = result + v11 + a2 + v36;
        v39 = v22 + a5 + v11;
        v40 = v38 + a5 + 1;
        v41 = v34 >= v38 + v30 + 1 || v24->u64 + v30 >= v35;
        v42 = !v41;
        v43 = v34 >= v40 || v39 >= v35;
        v44 = !v43;
        v45 = a2 + result + v11 - a5 >= v35 || v34 >= v37;
        if (v45 && !v42 && !v44)
        {
          v46 = 16;
          if (((v33 + 1) & 0xF) != 0)
          {
            v46 = (v33 + 1) & 0xF;
          }

          v47 = 2 * (v33 + 1 - v46);
          v21 = v47 + result;
          v24 = (v24 + v47);
          v48 = vdupq_n_s32(v27);
          v49 = result + v11;
          v50 = (a2 + v30 + v49);
          v51 = (a2 + v49 - a5);
          v52 = (a2 + a5 + v49);
          v53 = ~v33 + v46;
          do
          {
            v54 = vld2q_s8(v52);
            v52 += 32;
            v616 = vld2q_s8(v51);
            v51 += 32;
            v55 = vsubl_u8(*&v54, *v616.val[0].i8);
            v56 = vsubl_high_u8(v54, v616.val[0]);
            v57 = vmovl_s16(*v56.i8);
            v58 = vld2q_s8(v50);
            v50 += 32;
            v632.val[0] = vmulq_s32(vmovl_high_s16(v56), v48);
            v59 = vsubl_high_u8(v58, v616.val[1]);
            v632.val[1] = vmulq_s32(vmovl_high_s16(v59), v48);
            v637.val[0] = vmulq_s32(v57, v48);
            v637.val[1] = vmulq_s32(vmovl_s16(*v59.i8), v48);
            v16 = vmulq_s32(vmovl_high_s16(v55), v48);
            v616.val[0] = vsubl_u8(*&v58, *v616.val[1].i8);
            v616.val[1] = vmulq_s32(vmovl_s16(*v55.i8), v48);
            v60 = vmulq_s32(vmovl_s16(*v616.val[0].i8), v48);
            v61 = v34;
            vst2q_f32(v61, *(&v616 + 16));
            v61 += 8;
            v18 = vmovl_high_s16(v616.val[0]);
            v17 = vmulq_s32(v18, v48);
            vst2q_f32(v61, *v16.i8);
            v62 = (v34 + 64);
            vst2q_f32(v62, v637);
            v63 = (v34 + 96);
            v34 += 128;
            vst2q_f32(v63, v632);
            v53 += 16;
          }

          while (v53);
        }
      }

      v64 = 1 - a5;
      v65 = &a3->i32[v21 + 1];
      do
      {
        v66 = (v24->u8[v30] - v24->u8[v64]) * v27;
        *(v65 - 1) = (v24->u8[a5] - v24->u8[v64 - 1]) * v27;
        *v65 = v66;
        v21 += 2;
        v24 = (v24 + 2);
        v65 += 2;
      }

      while (v21 <= v31);
    }

    result = v21;
  }

LABEL_237:
  if (result >= v25)
  {
    return result;
  }

  if (v10 >= 2)
  {
    v322 = a5;
    v323 = result;
    v324 = (v614 & 0x3FFFFFF0 | 1) * a5;
    result = v614 & 0x3FFFFFFC;
    v325 = (v614 & 0x3FFFFFFC | 1) * a5;
    v327 = v614 < 4 || a5 != 1;
    v328 = &v24[-1];
    v329 = &v24->u8[1];
    v330 = v12 + 4 * v614;
    for (j = &v24[-1].u8[12]; ; ++j)
    {
      v332 = *v13 * v24->u8[0];
      if (v327)
      {
        v333 = 1;
        v334 = v322;
      }

      else
      {
        if (v614 < 0x10)
        {
          v335 = 0;
LABEL_260:
          v353 = v332;
          v354 = &j[-v335];
          v355 = (v330 + 4 + 4 * v335);
          do
          {
            v356 = *v355++;
            v357 = v356;
            v17.i32[0] = *&v329[v335];
            v356.i32[0] = *v354--;
            v18.i32[0] = v356.i32[0];
            *v18.i8 = vrev64_s16(*&vmovl_u8(*v18.i8));
            v17 = vsubl_u16(*&vmovl_u8(*v17.i8), *v18.i8);
            v353 = vmlaq_s32(v353, v17, v357);
            v335 += 4;
          }

          while (result != v335);
          v332 = vaddvq_s32(v353);
          v333 = v614 & 0x3FFFFFFC | 1;
          v334 = v325;
          if (result == v614)
          {
            goto LABEL_251;
          }

          goto LABEL_263;
        }

        v336 = 0uLL;
        v337 = (*v13 * v24->u8[0]);
        v338 = v614 & 0x3FFFFFF0;
        v339 = (v330 + 4);
        v340 = v329;
        v341 = v328;
        v17 = 0uLL;
        v18 = 0uLL;
        do
        {
          v343 = v339[2];
          v342 = v339[3];
          v345 = *v339;
          v344 = v339[1];
          v339 += 4;
          v346 = *v340++;
          v347 = v346;
          v348 = *v341--;
          v349 = vrev64q_s8(v348);
          v350 = vextq_s8(v349, v349, 8uLL);
          v351 = vsubl_high_u8(v347, v350);
          v352 = vsubl_u8(*v347.i8, *v350.i8);
          v18 = vmlaq_s32(v18, vmovl_high_s16(v351), v342);
          v17 = vmlaq_s32(v17, vmovl_s16(*v351.i8), v343);
          v336 = vmlaq_s32(v336, vmovl_high_s16(v352), v344);
          v337 = vmlaq_s32(v337, vmovl_s16(*v352.i8), v345);
          v338 -= 16;
        }

        while (v338);
        v332 = vaddvq_s32(vaddq_s32(vaddq_s32(v337, v17), vaddq_s32(v336, v18)));
        if ((v614 & 0x3FFFFFF0) == v614)
        {
          goto LABEL_251;
        }

        v335 = v614 & 0x3FFFFFF0;
        v333 = v335 | 1;
        v334 = v324;
        if ((v614 & 0xC) != 0)
        {
          goto LABEL_260;
        }
      }

LABEL_263:
      v358 = (v330 + 4 * v333);
      v359 = (v614 + 1) - v333;
      v360 = -v334;
      do
      {
        v361 = *v358++;
        v332 += (v24->u8[v334] - v24->u8[v360]) * v361;
        v334 += v322;
        v360 -= v322;
        --v359;
      }

      while (v359);
LABEL_251:
      a3->i32[v323++] = v332;
      v24 = (v24 + 1);
      ++v328;
      ++v329;
      if (v323 == v25)
      {
        return result;
      }
    }
  }

  v316 = v25 - result;
  if (v316 < 4 || ((v419 = a3 + 4 * result, v420 = (a3 + 4 * v25), v419 < v24->u64 + v316) ? (v421 = v24 >= v420) : (v421 = 1), v421 ? (v422 = 0) : (v422 = 1), v13 < v420 ? (v423 = v419 >= v12 + 4 * v614 + 4) : (v423 = 1), !v423 || (v422 & 1) != 0))
  {
    v317 = result;
    v318 = v24;
    goto LABEL_241;
  }

  if (v316 < 0x20)
  {
    v424 = 0;
    goto LABEL_436;
  }

  v572 = vld1q_dup_f32(v13);
  v424 = v316 & 0xFFFFFFFFFFFFFFE0;
  v573 = (v419 + 64);
  v574 = v24 + 1;
  v16.i32[1] = -247;
  v575 = v316 & 0xFFFFFFFFFFFFFFE0;
  do
  {
    v576 = v574[-1];
    v577 = vqtbl1q_s8(*v574, xmmword_1003E3700);
    v578 = vmulq_s32(v572, vqtbl1q_s8(*v574, xmmword_1003E3710));
    v579 = vmulq_s32(v572, vqtbl1q_s8(*v574, xmmword_1003E3720));
    v580 = vmulq_s32(v572, vqtbl1q_s8(*v574, xmmword_1003E3730));
    v573[-4] = vmulq_s32(v572, vqtbl1q_s8(v576, xmmword_1003E3720));
    v573[-3] = vmulq_s32(v572, vqtbl1q_s8(v576, xmmword_1003E3730));
    v573[-2] = vmulq_s32(v572, vqtbl1q_s8(v576, xmmword_1003E3700));
    v573[-1] = vmulq_s32(v572, vqtbl1q_s8(v576, xmmword_1003E3710));
    *v573 = v579;
    v573[1] = v580;
    v573[2] = vmulq_s32(v572, v577);
    v573[3] = v578;
    v573 += 8;
    v574 += 2;
    v575 -= 32;
  }

  while (v575);
  if (v316 != v424)
  {
    if ((v316 & 0x1C) == 0)
    {
      v318 = &v24->u8[v424];
      v317 = v424 + result;
      goto LABEL_241;
    }

LABEL_436:
    v317 = (v316 & 0xFFFFFFFFFFFFFFFCLL) + result;
    v581 = vld1q_dup_f32(v13);
    v318 = &v24->u8[v316 & 0xFFFFFFFFFFFFFFFCLL];
    v582 = (a3 + 4 * v424 + 4 * result);
    v583 = &v24->u8[v424];
    v584 = v424 - (v316 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v585 = *v583;
      v583 += 4;
      v16.i32[0] = v585;
      v16 = vmulq_s32(v581, vmovl_u16(*&vmovl_u8(*v16.i8)));
      *v582++ = v16;
      v584 += 4;
    }

    while (v584);
    if (v316 == (v316 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

LABEL_241:
    v319 = &a3->i32[v317];
    v320 = v25 - v317;
    do
    {
      v321 = *v318++;
      *v319++ = *v13 * v321;
      --v320;
    }

    while (v320);
  }

  return result;
}

void sub_10030D030(uint64_t a1)
{
  sub_10030B108(a1);

  operator delete();
}

unint64_t sub_10030D068(uint64_t a1, uint64_t a2, int32x4_t *a3, int a4, int a5)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 32);
  result = sub_10030D484(a1 + 112, a2, a3, a4, a5);
  v14 = a5 * a4;
  v15 = v14 - 4;
  LODWORD(v16) = result;
  if (result <= v14 - 4)
  {
    v17 = result;
    if (v9 <= 1)
    {
      v22 = v15 - result;
      if (v22 <= 0x3B)
      {
        goto LABEL_8;
      }

      v16 = v22 >> 2;
      v35 = (a3 + 4 * result);
      v36 = &v35[(v22 >> 2) + 1];
      v37 = v35 >= a2 + result + (v22 & 0xFFFFFFFFFFFFFFFCLL) + 4 || a2 + result >= v36;
      v38 = !v37;
      if (v10 < v36 && v35 < (v10 + 1))
      {
        goto LABEL_8;
      }

      if (v38)
      {
        goto LABEL_8;
      }

      v40 = v16 + 1;
      v41 = (v16 + 1) & 0x7FFFFFFFFFFFFFF0;
      LODWORD(v16) = result + 4 * v41;
      v42 = (a2 + result);
      v12.i32[1] = -247;
      v13.i32[1] = -243;
      v43 = v41;
      do
      {
        v44 = vld1q_dup_f32(v10);
        v45 = v42[2];
        v46 = v42[3];
        v47 = *v42;
        v48 = v42[1];
        v42 += 4;
        v35[14] = vmulq_s32(v44, vqtbl1q_s8(v46, xmmword_1003E3700));
        v35[15] = vmulq_s32(v44, vqtbl1q_s8(v46, xmmword_1003E3710));
        v35[12] = vmulq_s32(v44, vqtbl1q_s8(v46, xmmword_1003E3720));
        v35[13] = vmulq_s32(v44, vqtbl1q_s8(v46, xmmword_1003E3730));
        v35[10] = vmulq_s32(v44, vqtbl1q_s8(v45, xmmword_1003E3700));
        v35[11] = vmulq_s32(v44, vqtbl1q_s8(v45, xmmword_1003E3710));
        v35[8] = vmulq_s32(v44, vqtbl1q_s8(v45, xmmword_1003E3720));
        v35[9] = vmulq_s32(v44, vqtbl1q_s8(v45, xmmword_1003E3730));
        v35[6] = vmulq_s32(v44, vqtbl1q_s8(v48, xmmword_1003E3700));
        v35[7] = vmulq_s32(v44, vqtbl1q_s8(v48, xmmword_1003E3710));
        v35[4] = vmulq_s32(v44, vqtbl1q_s8(v48, xmmword_1003E3720));
        v35[5] = vmulq_s32(v44, vqtbl1q_s8(v48, xmmword_1003E3730));
        v35[2] = vmulq_s32(v44, vqtbl1q_s8(v47, xmmword_1003E3700));
        v35[3] = vmulq_s32(v44, vqtbl1q_s8(v47, xmmword_1003E3710));
        *v35 = vmulq_s32(v44, vqtbl1q_s8(v47, xmmword_1003E3720));
        v35[1] = vmulq_s32(v44, vqtbl1q_s8(v47, xmmword_1003E3730));
        v35 += 16;
        v43 -= 16;
      }

      while (v43);
      v17 = result + 4 * v41;
      if (v40 != v41)
      {
LABEL_8:
        v23 = (a3 + 4 * v17);
        v16 = v17;
        do
        {
          v12.i32[0] = *(a2 + v16);
          v13 = vld1q_dup_f32(v10);
          v12 = vmulq_s32(v13, vmovl_u16(*&vmovl_u8(*v12.i8)));
          *v23++ = v12;
          v16 += 4;
        }

        while (v16 <= v15);
      }
    }

    else
    {
      do
      {
        v12.i32[0] = *(a2 + v17);
        v13 = vld1q_dup_f32(v10);
        v12 = vmulq_s32(v13, vmovl_u16(*&vmovl_u8(*v12.i8)));
        v18 = a2 + a5;
        v19 = v9 - 1;
        v20 = v10 + 1;
        do
        {
          v13.i32[0] = *(v18 + v17);
          v13 = vmovl_u16(*&vmovl_u8(*v13.i8));
          v21 = vld1q_dup_f32(v20++);
          v12 = vmlaq_s32(v12, v21, v13);
          v18 += a5;
          --v19;
        }

        while (v19);
        *(a3 + 4 * v17) = v12;
        v17 += 4;
      }

      while (v17 <= v15);
      LODWORD(v16) = v17;
    }
  }

  if (v16 < v14)
  {
    v24 = v16;
    if (v9 > 1)
    {
      do
      {
        v25 = *v10 * *(a2 + v24);
        v26 = a2 + a5;
        v27 = v9 - 1;
        v28 = (v10 + 1);
        do
        {
          v29 = *v28++;
          result = v29;
          v25 += v29 * *(v26 + v24);
          v26 += a5;
          --v27;
        }

        while (v27);
        a3->i32[v24++] = v25;
      }

      while (v24 != v14);
      return result;
    }

    v30 = v14 - v16;
    if (v30 >= 4)
    {
      v49 = a3 + 4 * v16;
      v50 = &a3->i32[v14];
      v51 = a2 + v16;
      v52 = v49 >= a2 + v14 || v51 >= v50;
      v53 = !v52;
      v54 = v10 >= v50 || v49 >= (v10 + 1);
      if (v54 && !v53)
      {
        if (v30 >= 0x20)
        {
          v55 = v30 & 0xFFFFFFFFFFFFFFE0;
          v56 = vld1q_dup_f32(v10);
          v57 = (v24 + a2 + 16);
          v58 = (v49 + 64);
          v13.i32[1] = -247;
          v59 = v30 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v60 = v57[-1];
            v61 = vqtbl1q_s8(*v57, xmmword_1003E3700);
            v62 = vmulq_s32(v56, vqtbl1q_s8(*v57, xmmword_1003E3710));
            v63 = vmulq_s32(v56, vqtbl1q_s8(*v57, xmmword_1003E3720));
            v64 = vmulq_s32(v56, vqtbl1q_s8(*v57, xmmword_1003E3730));
            v58[-4] = vmulq_s32(v56, vqtbl1q_s8(v60, xmmword_1003E3720));
            v58[-3] = vmulq_s32(v56, vqtbl1q_s8(v60, xmmword_1003E3730));
            v58[-2] = vmulq_s32(v56, vqtbl1q_s8(v60, xmmword_1003E3700));
            v58[-1] = vmulq_s32(v56, vqtbl1q_s8(v60, xmmword_1003E3710));
            *v58 = v63;
            v58[1] = v64;
            v58[2] = vmulq_s32(v56, v61);
            v58[3] = v62;
            v57 += 2;
            v58 += 8;
            v59 -= 32;
          }

          while (v59);
          if (v30 == v55)
          {
            return result;
          }

          if ((v30 & 0x1C) == 0)
          {
            v24 += v55;
            goto LABEL_17;
          }
        }

        else
        {
          v55 = 0;
        }

        v65 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + v24;
        v66 = vld1q_dup_f32(v10);
        v67 = v55 - (v30 & 0xFFFFFFFFFFFFFFFCLL);
        v68 = v55 + v24;
        v69 = (a2 + v68);
        v70 = (a3 + 4 * v68);
        do
        {
          v71 = *v69++;
          v13.i32[0] = v71;
          v13 = vmulq_s32(v66, vmovl_u16(*&vmovl_u8(*v13.i8)));
          *v70++ = v13;
          v67 += 4;
        }

        while (v67);
        v24 = v65;
        if (v30 == (v30 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return result;
        }
      }
    }

LABEL_17:
    v31 = (a2 + v24);
    v32 = &a3->i32[v24];
    v33 = v14 - v24;
    do
    {
      v34 = *v31++;
      *v32++ = *v10 * v34;
      --v33;
    }

    while (v33);
  }

  return result;
}

unint64_t sub_10030D484(uint64_t a1, uint64_t a2, int32x4_t *a3, int a4, int a5)
{
  result = sub_1002A8904(100);
  if (!result)
  {
    return result;
  }

  if (*(a1 + 100) != 1)
  {
    return 0;
  }

  v11 = *(a1 + 12) + *(a1 + 8);
  v12 = (v11 - 1) / 2;
  v13 = (*(a1 + 16) + 4 * v12);
  v14 = v12 * a5;
  v15 = a5 * a4;
  if (*(a1 + 96))
  {
    v21 = (a2 + v14);
    if (v11 == 6)
    {
      if (*v13 == -2 && !v13[1])
      {
        if (v13[2] == 1 || v15 < 8)
        {
          return 0;
        }
      }

      else if (v15 < 8)
      {
        return 0;
      }

      result = 0;
      v36.i64[0] = *v13;
      v36.i64[1] = v13[2];
      v37 = vqmovn_s32(v36);
      do
      {
        v38 = vmovl_u8(*v21);
        v39 = vaddl_u8(*(v21 + a5), *(v21 - a5));
        v40 = vmlal_lane_s16(vmull_lane_s16(*v39.i8, v37, 1), *v38.i8, v37, 0);
        v41 = vmlal_high_lane_s16(vmull_high_lane_s16(v39, v37, 1), v38, v37, 0);
        v42 = vaddl_u8(*(v21 + 2 * a5), *(v21 - 2 * a5));
        v43 = (a3 + 4 * result);
        *v43 = vmlal_lane_s16(v40, *v42.i8, v37, 2);
        v43[1] = vmlal_high_lane_s16(v41, v42, v37, 2);
        result += 8;
        ++v21;
      }

      while (result <= (v15 - 8));
      return result;
    }

    if (v11 != 4)
    {
      return 0;
    }

    if (*v13 == -2)
    {
      if (v13[1] == 1 || v15 < 8)
      {
        return 0;
      }
    }

    else
    {
      if (*v13 == 2 && v13[1] == 1)
      {
        if (v15 < 8)
        {
          return 0;
        }

        result = 0;
        v22 = a2 + v14 - a5;
        v23 = 0uLL;
        do
        {
          v24 = vaddq_s16(vaddl_u8(*(v21 + a5 + result), *(v22 + result)), vshll_n_u8(*(v21 + result), 1uLL));
          vst2q_s16(a3->i16, *(&v23 - 1));
          a3 += 2;
          result += 8;
        }

        while (result <= (v15 - 8));
        return result;
      }

      if (v15 < 8)
      {
        return 0;
      }
    }

    result = 0;
    v53 = (v15 - 8);
    v54.i32[3] = 0;
    v54.i32[0] = *v13;
    *(v54.i64 + 4) = v13[1];
    v55 = vqmovn_s32(v54);
    v56 = a3 + 1;
    v57 = a2 + v14 - a5;
    do
    {
      v58 = vmovl_u8(*(v21 + result));
      v59 = vaddl_u8(*(v21 + a5 + result), *(v57 + result));
      v56[-1] = vmlal_lane_s16(vmull_lane_s16(*v59.i8, v55, 1), *v58.i8, v55, 0);
      *v56 = vmlal_high_lane_s16(vmull_high_lane_s16(v59, v55, 1), v58, v55, 0);
      result += 8;
      v56 += 2;
    }

    while (result <= v53);
    return result;
  }

  if (v11 == 6)
  {
    v25 = (v15 - 8);
    if (v15 < 8)
    {
      return 0;
    }

    result = 0;
    v26.i32[0] = 0;
    v26.i32[1] = v13[1];
    v26.i64[1] = v13[2];
    v27 = 2 * a5;
    v28 = a2 + v27 + v14;
    v29 = v14 - a5;
    v30 = a2 + a5 + v14;
    v31 = v14 - v27;
    v32 = vqmovn_s32(v26);
    v33 = a3 + 1;
    do
    {
      v34 = vsubl_u8(*(v30 + result), *(a2 + v29 + result));
      v35 = vsubl_u8(*(v28 + result), *(a2 + v31 + result));
      v33[-1] = vmlal_lane_s16(vmull_lane_s16(*v35.i8, v32, 2), *v34.i8, v32, 1);
      *v33 = vmlal_high_lane_s16(vmull_high_lane_s16(v35, v32, 2), v34, v32, 1);
      result += 8;
      v33 += 2;
    }

    while (result <= v25);
  }

  else
  {
    if (v11 != 4)
    {
      return 0;
    }

    if (!*v13 && v13[1] == 1)
    {
      v16 = (v15 - 8);
      if (v15 >= 8)
      {
        result = 0;
        v17 = a3 + 1;
        v18 = a2 + v14 - a5;
        v19 = a2 + a5 + v14;
        do
        {
          v20 = vsubl_u8(*(v19 + result), *(v18 + result));
          v17[-1] = vmovl_s16(*v20.i8);
          *v17 = vmovl_high_s16(v20);
          result += 8;
          v17 += 2;
        }

        while (result <= v16);
        return result;
      }

      return 0;
    }

    v44 = (v15 - 8);
    if (v15 < 8)
    {
      return 0;
    }

    result = 0;
    v45 = (v13 + 1);
    v46 = vld1q_dup_f32(v45);
    v47 = vqmovn_s32(v46);
    v48 = a3 + 1;
    v49 = a2 + v14 - a5;
    v50 = a2 + a5 + v14;
    do
    {
      v51 = vsubl_u8(*(v50 + result), *(v49 + result));
      v48[-1] = vmull_lane_s16(*v51.i8, v47, 1);
      *v48 = vmull_high_lane_s16(v51, v47, 1);
      result += 8;
      v48 += 2;
    }

    while (result <= v44);
  }

  return result;
}

uint64_t sub_10030D870(void *a1)
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

uint64_t sub_10030D8F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v7 = sub_10030D9F0(a1, a2, a3, a5);
  *v7 = off_100478CB8;
  *(v7 + 216) = a4;
  if ((a4 & 3) == 0 || *(a1 + 8) >= 6)
  {
    v9[0] = 0;
    v9[1] = 0;
    qmemcpy(sub_1002A80E0(v9, 84), "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0 && this->ksize <= 5", 84);
    sub_1002A8980(-215, v9, "SymmRowSmallFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3112);
  }

  return a1;
}

void sub_10030D9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124(&a9);
  sub_10030DD9C(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_10030D9F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(a1 + 8) = -1;
  *a1 = &off_100478D10;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 112) = 1124007936;
  v10 = (a1 + 112);
  *(a1 + 116) = 0u;
  v11 = (a1 + 116);
  *(a1 + 104) = 0;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 176) = a1 + 120;
  *(a1 + 184) = a1 + 192;
  *(a1 + 200) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_17;
    }

    v12 = *(a2 + 56);
    if (v12)
    {
      atomic_fetch_add((v12 + 20), 1u);
      v13 = *(a1 + 72);
      if (v13)
      {
        if (atomic_fetch_add((v13 + 20), 0xFFFFFFFF) == 1)
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
      v17 = *(a2 + 4);
      if (v17 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v17;
        *(a1 + 24) = *(a2 + 8);
        v18 = *(a2 + 72);
        v19 = *(a1 + 88);
        *v19 = *v18;
        v19[1] = v18[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v14 = 0;
      v15 = *(a1 + 80);
      do
      {
        *(v15 + 4 * v14++) = 0;
        v16 = *v9;
      }

      while (v14 < v16);
      *v8 = *a2;
      if (v16 <= 2)
      {
        v17 = *(a2 + 4);
        if (v17 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v8, a2);
    goto LABEL_16;
  }

  LODWORD(v31) = 33619968;
  v32 = a1 + 16;
  v33 = 0;
  sub_10022B754(a2, &v31);
LABEL_17:
  v21 = *(a1 + 24);
  v20 = *(a1 + 28);
  *(a1 + 8) = v21 + v20 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 5 || v21 != 1 && v20 != 1)
  {
    v31 = 0;
    v32 = 0;
    qmemcpy(sub_1002A80E0(&v31, 77), "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v31, "RowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3053);
  }

  if (v10 != a4)
  {
    v22 = *(a4 + 56);
    if (v22)
    {
      atomic_fetch_add((v22 + 20), 1u);
    }

    v23 = *(a1 + 168);
    if (v23 && atomic_fetch_add((v23 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v10);
    }

    *(a1 + 168) = 0;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    if (*(a1 + 116) <= 0)
    {
      *v10 = *a4;
      v27 = *(a4 + 4);
      if (v27 <= 2)
      {
LABEL_32:
        *(a1 + 116) = v27;
        *(a1 + 120) = *(a4 + 8);
        v28 = *(a4 + 72);
        v29 = *(a1 + 184);
        *v29 = *v28;
        v29[1] = v28[1];
LABEL_35:
        *(a1 + 128) = *(a4 + 16);
        *(a1 + 144) = *(a4 + 32);
        *(a1 + 160) = *(a4 + 48);
        goto LABEL_36;
      }
    }

    else
    {
      v24 = 0;
      v25 = *(a1 + 176);
      do
      {
        *(v25 + 4 * v24++) = 0;
        v26 = *v11;
      }

      while (v24 < v26);
      *v10 = *a4;
      if (v26 <= 2)
      {
        v27 = *(a4 + 4);
        if (v27 <= 2)
        {
          goto LABEL_32;
        }
      }
    }

    sub_100269B58(v10, a4);
    goto LABEL_35;
  }

LABEL_36:
  *(a1 + 208) = *(a4 + 96);
  return a1;
}

void sub_10030DD60(_Unwind_Exception *a1)
{
  sub_100305F7C(v2);
  sub_100006D14(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10030DD9C(uint64_t a1)
{
  *a1 = &off_100478D10;
  v2 = *(a1 + 168);
  if (v2 && atomic_fetch_add((v2 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(a1 + 112);
  }

  *(a1 + 168) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  if (*(a1 + 116) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 176);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 116));
  }

  v5 = *(a1 + 184);
  if (v5 != (a1 + 192))
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

void sub_10030DEC0(uint64_t a1)
{
  sub_10030DD9C(a1);

  operator delete();
}

uint64_t sub_10030DEF8(uint64_t a1, uint64_t a2, float32x4_t *a3, int a4, int a5)
{
  v10 = *(a1 + 8);
  v11 = v10 / 2 * a5;
  v12 = *(a1 + 32);
  v499 = (v10 + (v10 >> 31)) >> 1;
  v13 = v12 + 4 * (v10 / 2);
  v14 = *(a1 + 216);
  result = sub_1002A8904(100);
  if ((result & 1) == 0)
  {
    LODWORD(v23) = 0;
    v22 = a5 * a4;
    goto LABEL_22;
  }

  v19 = *(a1 + 120) + *(a1 + 124) - 1;
  v20 = v19 / 2 * a5;
  v21 = (*(a1 + 128) + 4 * (v19 / 2));
  v22 = a5 * a4;
  if (*(a1 + 208))
  {
    if (*(a1 + 120) + *(a1 + 124) == 6)
    {
      v41 = *v21;
      if (*v21 == -2.0 && (v17.i32[0] = v21[1], v17.f32[0] == 0.0))
      {
        v18.i32[0] = v21[2];
        if (v18.f32[0] != 1.0 && v22 >= 4)
        {
          goto LABEL_20;
        }
      }

      else if (v22 >= 4)
      {
        v17.i32[0] = v21[1];
        v18.i32[0] = v21[2];
LABEL_20:
        v43 = 0;
        v23 = 0;
        v17 = vdupq_lane_s32(*v17.f32, 0);
        v44 = 4 * v20;
        v45 = 8 * a5;
        v46 = a2 + v45 + v44;
        v47 = v44 - v45;
        v48 = 4 * a5;
        v49 = a2 + v48 + v44;
        v18 = vdupq_lane_s32(*v18.f32, 0);
        v50 = a2 + v47;
        v51 = a2 + v44 - v48;
        do
        {
          a3[v43 / 0x10] = vmlaq_f32(vmlaq_f32(vmulq_n_f32(*(a2 + v44 + v43), v41), v17, vaddq_f32(*(v51 + v43), *(v49 + v43))), v18, vaddq_f32(*(v50 + v43), *(v46 + v43)));
          v23 += 4;
          v43 += 16;
        }

        while (v23 <= (v22 - 4));
        goto LABEL_22;
      }
    }

    LODWORD(v23) = 0;
    goto LABEL_22;
  }

  LODWORD(v23) = 0;
  if (*(a1 + 120) + *(a1 + 124) == 6 && v22 >= 4)
  {
    v23 = 0;
    v24 = (v21 + 2);
    v25 = (v21 + 1);
    v16 = vld1q_dup_f32(v25);
    v17 = vld1q_dup_f32(v24);
    v26 = 4 * v20;
    v27 = 8 * a5;
    v28 = (a2 + v27 + v26);
    v29 = (a2 + v26 - v27);
    v30 = 4 * a5;
    v31 = (a2 + v30 + v26);
    v32 = (a2 + v26 - v30);
    v33 = a3;
    do
    {
      v34 = *v32++;
      v35 = v34;
      v36 = *v31++;
      v37 = v36;
      v38 = *v29++;
      v39 = v38;
      v40 = *v28++;
      v18 = vmlaq_f32(vmulq_f32(v16, vsubq_f32(v37, v35)), v17, vsubq_f32(v40, v39));
      *v33++ = v18;
      v23 += 4;
    }

    while (v23 <= (v22 - 4));
  }

LABEL_22:
  v52 = v23;
  v53 = v11;
  v54 = (a2 + 4 * v23 + 4 * v11);
  v55 = *(a1 + 8);
  if (v14)
  {
    if (v55 == 5)
    {
      v16.i32[0] = *v13;
      v192 = *(v13 + 4);
      v18.i32[0] = *(v13 + 8);
      v193 = v22 - 2;
      if (*v13 == -2.0 && (v192 == 0.0 ? (v194 = v18.f32[0] == 1.0) : (v194 = 0), v194))
      {
        if (v23 <= v193)
        {
          v195 = -2 * a5;
          v196 = v193;
          v197 = v193 - v52;
          v198 = 8 * a5;
          if (v197 >= 0x28)
          {
            v199 = 4 * v52;
            v200 = &a3->i8[4 * v52];
            v201 = (4 * v197) & 0xFFFFFFFFFFFFFFF8;
            v202 = &v200[v201 + 8];
            v203 = 4 * v52 + 4 * v11;
            v204 = v203 + a2 + v198;
            v205 = v203 + a2 + v201;
            v206 = v205 + v198 + 8;
            v207 = v203 + v201 + 8;
            v208 = a2 + v207;
            v209 = v205 + 4 * v195 + 4;
            v210 = v200 >= a2 + v207 - v198 || v203 - v198 + a2 + 4 >= v202;
            v211 = !v210;
            v212 = v200 >= v208 || v54 >= v202;
            v213 = !v212;
            v214 = v200 >= v209 || v203 + a2 + 4 * v195 >= v202;
            result = !v214;
            v215 = v204 >= v202 || v200 >= v206;
            if (v215 && !v211 && !v213 && (result & 1) == 0)
            {
              v216 = (v197 >> 1) + 1;
              v217 = v216 & 3;
              if ((v216 & 3) == 0)
              {
                v217 = 4;
              }

              v218 = v216 - v217;
              v52 += 2 * v218;
              v54 += v218;
              v219 = 4 * v11;
              v220 = a2 + v219;
              v221 = v219 - v198 + a2 + 4;
              result = a2 + v219 + v198;
              v222 = a2 + v219 + 4 * v195;
              v223.i64[0] = 0xC0000000C0000000;
              v223.i64[1] = 0xC0000000C0000000;
              v224 = a3;
              do
              {
                v225 = (v220 + v199);
                v503 = vld2q_f32(v225);
                v226 = (v222 + v199);
                v227 = vld2q_f32(v226);
                v228 = (result + v199);
                v513 = vld2q_f32(v228);
                v508.val[0] = vaddq_f32(vmlaq_f32(v227, v223, v503.val[0]), v513.val[0]);
                v229 = (v221 + v199);
                v230 = vld2q_f32(v229);
                v508.val[1] = vaddq_f32(vmlaq_f32(v230, v223, v503.val[1]), v513.val[1]);
                v231 = &v224->f32[v199 / 4];
                vst2q_f32(v231, v508);
                v224 += 2;
                v220 += 32;
                v221 += 32;
                result += 32;
                v222 += 32;
                v218 -= 4;
              }

              while (v218);
            }
          }

          v232 = &a3->f32[v52];
          do
          {
            v233.i32[0] = v54[v195 / 2].i32[0];
            v233.i32[1] = *(v54->i32 + 4 - v198);
            *v232++ = vadd_f32(vmla_f32(v233, 0xC0000000C0000000, *v54), v54[a5]);
            v52 += 2;
            ++v54;
          }

          while (v52 <= v196);
          goto LABEL_378;
        }
      }

      else if (v23 <= v193)
      {
        v329 = -a5;
        v330 = -1 * a5;
        v331 = a5 + 1;
        v332 = v193;
        v333 = v193 - v52;
        v334 = 4 * a5;
        v335 = 8 * a5;
        if (v333 > 0x27)
        {
          v498 = v22;
          v336 = 4 * v52;
          v337 = &a3->i8[4 * v52];
          v338 = (4 * v333) & 0xFFFFFFFFFFFFFFF8;
          v339 = &v337[v338 + 8];
          v340 = 4 * v52 + 4 * v53;
          v492 = v340 + a2 + v335;
          v341 = a2 + v338;
          v342 = v340 + a2 + v338;
          v490 = a2 + v340 + 4 - v335;
          v491 = v342 + v335 + 8;
          v343 = v340 + v338 + 8;
          v494 = -2 * a5;
          v496 = 8 * a5;
          v344 = a2 + v343 - v335;
          v345 = v340 + a2 + 4 * v331;
          v346 = v342 + 4 * v331 + 4;
          v347 = a2 + v340 - v334;
          v348 = a2 + v343 - v334;
          v349 = a2 + v343;
          v350 = v340 + a2 + 4 * v494;
          v351 = v342 + 4 * v494 + 4;
          v352 = v340 + a2 + v334;
          v353 = v340 + 4 + v341 + v334;
          v355 = v337 < v344 && v490 < v339;
          v357 = v337 < v346 && v345 < v339;
          v359 = v337 < v348 && v347 < v339;
          v361 = v337 < v349 && v54 < v339;
          v363 = v337 < v351 && v350 < v339;
          v365 = v337 < v353 && v352 < v339;
          v366 = v492 >= v339 || v337 >= v491;
          if (!v366 || v355)
          {
            v334 = 4 * a5;
            v22 = v498;
            v330 = -1 * a5;
            v335 = 8 * a5;
            v329 = -a5;
            v331 = a5 + 1;
          }

          else
          {
            v334 = 4 * a5;
            v22 = v498;
            v335 = 8 * a5;
            v329 = -a5;
            if (v357 || v359 || v361 || v363)
            {
              v330 = -1 * a5;
              v331 = a5 + 1;
            }

            else
            {
              v330 = -1 * a5;
              v331 = a5 + 1;
              if (!v365)
              {
                v367 = (v333 >> 1) + 1;
                v368 = v367 & 3;
                if ((v367 & 3) == 0)
                {
                  v368 = 4;
                }

                v369 = v367 - v368;
                v370 = vdupq_lane_s32(*v16.f32, 0);
                v371 = 4 * v53;
                v372 = 4 * v53 + 4 * (a5 + 1);
                v373 = vdupq_lane_s32(*v18.f32, 0);
                v374 = a2 + 4 * v53;
                v375 = v371 - v496 + a2 + 4;
                v376 = a2 + v372;
                v377 = v374 + v496;
                v378 = a2 + v371 + 4 * v494;
                v379 = a2 + v371 + 4 * a5;
                v380 = a2 + v371 + 4 * -a5;
                v381 = a3;
                v52 += 2 * v369;
                v54 += v369;
                do
                {
                  v382 = (v374 + v336);
                  v515 = vld2q_f32(v382);
                  v383 = (v380 + v336);
                  v519 = vld2q_f32(v383);
                  v384 = (v379 + v336);
                  v385 = vld2q_f32(v384);
                  v386 = (v378 + v336);
                  v387 = vld2q_f32(v386);
                  v388 = (v377 + v336);
                  v522 = vld2q_f32(v388);
                  v521.val[0] = vmlaq_f32(vmlaq_f32(vmulq_n_f32(vaddq_f32(v519.val[0], v385), v192), v370, v515.val[0]), v373, vaddq_f32(v387, v522.val[0]));
                  v389 = (v376 + v336);
                  v390 = vld2q_f32(v389);
                  v391 = (v375 + v336);
                  v519.val[0] = vld2q_f32(v391);
                  v521.val[1] = vmlaq_f32(vmlaq_f32(vmulq_n_f32(vaddq_f32(v519.val[1], v390), v192), v370, v515.val[1]), v373, vaddq_f32(v519.val[0], v522.val[1]));
                  v392 = &v381->f32[v336 / 4];
                  v381 += 2;
                  vst2q_f32(v392, v521);
                  v374 += 32;
                  v375 += 32;
                  v376 += 32;
                  v377 += 32;
                  v378 += 32;
                  v379 += 32;
                  v380 += 32;
                  v369 -= 4;
                }

                while (v369);
                v334 = 4 * a5;
              }
            }
          }
        }

        v445 = 0;
        result = a3->i64 + 4 * v52;
        v446 = v54 + v334;
        v447 = v54 - v334 + 4;
        do
        {
          v448 = ((v192 * (*(v447 + v445) + v54->f32[v331 + v445 / 4])) + (v54[v445 / 8].f32[1] * v16.f32[0])) + ((v54[v335 / 0xFFFFFFFFFFFFFFF8 + v445 / 8].f32[1] + v54[v335 / 8 + v445 / 8].f32[1]) * v18.f32[0]);
          v449 = (result + v445);
          *v449 = ((v192 * (v54->f32[v329 + v445 / 4] + *&v446[v445])) + (v54[v445 / 8].f32[0] * v16.f32[0])) + ((v54[v330 + v445 / 8].f32[0] + v54[v335 / 8 + v445 / 8].f32[0]) * v18.f32[0]);
          v449[1] = v448;
          v52 += 2;
          v445 += 8;
        }

        while (v52 <= v332);
        v54 = (v54 + v445);
        goto LABEL_378;
      }
    }

    else
    {
      if (v55 != 3)
      {
        if (v55 != 1 || *v13 != 1.0)
        {
          goto LABEL_379;
        }

        v83 = v22 - 2;
        if (v23 > v22 - 2)
        {
          goto LABEL_373;
        }

        v84 = v83;
        v85 = v83 - v52;
        if (v85 >= 0x1E)
        {
          v431 = &a3->i8[4 * v52];
          v432 = (4 * v85) & 0xFFFFFFFFFFFFFFF8;
          v433 = a2 + 8 * v52 + 4 * v11;
          if (v431 >= v433 + v432 + 8 || (v434 = &v431[v432 + 8], v86 = v52, v433 >= v434))
          {
            v435 = (v85 >> 1) + 1;
            v86 = v52 + 2 * (v435 & 0xFFFFFFFFFFFFFFF8);
            v436 = v431 + 32;
            v437 = (8 * v52 + 4 * v11 + a2 + 32);
            result = v435 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v439 = *(v437 - 2);
              v438 = *(v437 - 1);
              v441 = *v437;
              v440 = v437[1];
              v437 += 4;
              *(v436 - 2) = v439;
              *(v436 - 1) = v438;
              *v436 = v441;
              v436[1] = v440;
              v436 += 4;
              result -= 8;
            }

            while (result);
            if (v435 == (v435 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_372;
            }
          }
        }

        else
        {
          v86 = v52;
        }

        v442 = (a2 + 4 * v86 + 4 * v52 + 4 * v11);
        v443 = (a3->i64 + 4 * v86);
        do
        {
          v444 = *v442++;
          *v443++ = v444;
          v86 += 2;
        }

        while (v86 <= v84);
LABEL_372:
        v52 = v86;
        LODWORD(v23) = v86;
LABEL_373:
        v54 = (v54 + 4 * v52);
        goto LABEL_379;
      }

      v17.i32[0] = *v13;
      if (*v13 == 2.0 && *(v13 + 4) == 1.0)
      {
        v153 = v22 - 2;
        if (v23 <= v22 - 2)
        {
          v154 = a5 + 1;
          v155 = v153 - v23;
          if (v155 >= 0x28)
          {
            v156 = 4 * v23;
            v157 = a3 + v156;
            v158 = (4 * v155) & 0xFFFFFFFFFFFFFFF8;
            v159 = (&a3->u32[v156 / 4 + 2] + v158);
            v160 = v156 + 4 * v11;
            v161 = v160 + a2 + 4 * v154;
            v162 = a2 + v160 + v158;
            v163 = v162 + 4 * v154 + 4;
            v164 = v162 + 8;
            v165 = 4 * a5;
            v166 = v160 + v158 - v165 + a2 + 8;
            v167 = v160 + a2 + v165;
            v168 = v160 + a2 + v165 + v158 + 4;
            v169 = a3 + v156 >= v164 || v54 >= v159;
            v170 = !v169;
            v171 = v157 >= v166 || a2 + v160 - 4 * a5 >= v159;
            v172 = !v171;
            v173 = v157 >= v168 || v167 >= v159;
            result = !v173;
            v174 = v161 >= v159 || v157 >= v163;
            if (v174 && !v170 && !v172 && (result & 1) == 0)
            {
              v175 = (v155 >> 1) + 1;
              v176 = v175 & 3;
              if ((v175 & 3) == 0)
              {
                v176 = 4;
              }

              v177 = v175 - v176;
              v52 = v23 + 2 * v177;
              v54 += v177;
              v178 = 4 * v11;
              v179 = a2 + v178;
              v180 = a2 + v178 + 4 * v154;
              result = a2 + v165 + v178;
              v181 = a2 + v178 - v165;
              v182.i64[0] = 0x4000000040000000;
              v182.i64[1] = 0x4000000040000000;
              v183 = a3;
              do
              {
                v184 = (v181 + v156);
                v502 = vld2q_f32(v184);
                v185 = (v179 + v156);
                v507 = vld2q_f32(v185);
                v186 = (result + v156);
                v187 = vld2q_f32(v186);
                v512.val[0] = vaddq_f32(vmlaq_f32(v502.val[0], v182, v507.val[0]), v187);
                v188 = (v180 + v156);
                v507.val[0] = vld2q_f32(v188);
                v512.val[1] = vaddq_f32(vmlaq_f32(v502.val[1], v182, v507.val[1]), v507.val[0]);
                v189 = &v183->f32[v156 / 4];
                vst2q_f32(v189, v512);
                v183 += 2;
                v179 += 32;
                v180 += 32;
                result += 32;
                v181 += 32;
                v177 -= 4;
              }

              while (v177);
            }
          }

          v190 = &a3->f32[v52];
          do
          {
            v191.i32[0] = v54->i32[a5];
            v191.i32[1] = v54->i32[v154];
            *v190++ = vadd_f32(vmla_f32(*(v54 - 4 * a5), 0x4000000040000000, *v54), v191);
            v52 += 2;
            ++v54;
          }

          while (v52 <= v153);
LABEL_378:
          LODWORD(v23) = v52;
        }
      }

      else
      {
        v286 = *(v13 + 4);
        v287 = v22 - 2;
        if (v17.f32[0] == -2.0 && v286 == 1.0)
        {
          if (v23 <= v287)
          {
            v393 = a5 + 1;
            v394 = v287 - v23;
            if (v394 >= 0x28)
            {
              v395 = 4 * v23;
              v396 = a3 + v395;
              v397 = (4 * v394) & 0xFFFFFFFFFFFFFFF8;
              v398 = (&a3->u32[v395 / 4 + 2] + v397);
              v399 = v395 + 4 * v11;
              v400 = v399 + a2 + 4 * v393;
              v401 = a2 + v399 + v397;
              v402 = v401 + 4 * v393 + 4;
              v403 = v401 + 8;
              v404 = 4 * a5;
              v405 = v399 + v397 - v404 + a2 + 8;
              v406 = v399 + a2 + v404;
              v407 = v399 + a2 + v404 + v397 + 4;
              v408 = a3 + v395 >= v403 || v54 >= v398;
              v409 = !v408;
              v410 = v396 >= v405 || a2 + v399 - 4 * a5 >= v398;
              v411 = !v410;
              v412 = v396 >= v407 || v406 >= v398;
              result = !v412;
              v413 = v400 >= v398 || v396 >= v402;
              if (v413 && !v409 && !v411 && (result & 1) == 0)
              {
                v414 = (v394 >> 1) + 1;
                v415 = v414 & 3;
                if ((v414 & 3) == 0)
                {
                  v415 = 4;
                }

                v416 = v414 - v415;
                v52 = v23 + 2 * v416;
                v54 += v416;
                v417 = 4 * v11;
                v418 = a2 + v417;
                v419 = a2 + v417 + 4 * v393;
                result = a2 + v404 + v417;
                v420 = a2 + v417 - v404;
                v421.i64[0] = 0x4000000040000000;
                v421.i64[1] = 0x4000000040000000;
                v422 = a3;
                do
                {
                  v423 = (v420 + v395);
                  v504 = vld2q_f32(v423);
                  v424 = (v418 + v395);
                  v510 = vld2q_f32(v424);
                  v425 = (result + v395);
                  v426 = vld2q_f32(v425);
                  v516.val[0] = vaddq_f32(vmlsq_f32(v504.val[0], v421, v510.val[0]), v426);
                  v427 = (v419 + v395);
                  v510.val[0] = vld2q_f32(v427);
                  v516.val[1] = vaddq_f32(vmlsq_f32(v504.val[1], v421, v510.val[1]), v510.val[0]);
                  v428 = &v422->f32[v395 / 4];
                  vst2q_f32(v428, v516);
                  v422 += 2;
                  v418 += 32;
                  v419 += 32;
                  result += 32;
                  v420 += 32;
                  v416 -= 4;
                }

                while (v416);
              }
            }

            v429 = &a3->f32[v52];
            do
            {
              v430.i32[0] = v54->i32[a5];
              v430.i32[1] = v54->i32[v393];
              *v429++ = vadd_f32(vmla_f32(*(v54 - 4 * a5), 0xC0000000C0000000, *v54), v430);
              v52 += 2;
              ++v54;
            }

            while (v52 <= v287);
            goto LABEL_378;
          }
        }

        else if (v23 <= v287)
        {
          v289 = a5 + 1;
          v290 = v287 - v23;
          if (v290 >= 0x28)
          {
            v291 = 4 * v23;
            v292 = a3 + v291;
            v293 = (4 * v290) & 0xFFFFFFFFFFFFFFF8;
            v294 = (&a3->u32[v291 / 4 + 2] + v293);
            v295 = v291 + 4 * v11;
            v296 = v295 + a2 + 4 * v289;
            v297 = a2 + v293;
            v298 = v295 + 4 * v289 + a2 + v293 + 4;
            v299 = 4 * a5;
            v300 = v295 + v293 + 8;
            v301 = a2 + v300;
            v302 = v295 + a2 + v299;
            v303 = v295 + v299 + v297 + 4;
            v304 = a3 + v291 >= a2 + v300 - v299 || a2 + v295 - 4 * a5 >= v294;
            v305 = !v304;
            v306 = v292 >= v301 || v54 >= v294;
            v307 = !v306;
            v308 = v292 >= v303 || v302 >= v294;
            result = !v308;
            v309 = v296 >= v294 || v292 >= v298;
            if (v309 && !v305 && !v307 && (result & 1) == 0)
            {
              v310 = (v290 >> 1) + 1;
              v311 = v310 & 3;
              if ((v310 & 3) == 0)
              {
                v311 = 4;
              }

              v312 = v310 - v311;
              v52 = v23 + 2 * v312;
              v54 += v312;
              v313 = vdupq_lane_s32(*v17.f32, 0);
              v314 = 4 * v11;
              v315 = a2 + v314;
              v316 = a2 + v314 + 4 * v289;
              result = a2 + v299 + v314;
              v317 = a2 + v314 - v299;
              v318 = a3;
              do
              {
                v319 = (v315 + v291);
                v509 = vld2q_f32(v319);
                v320 = (v317 + v291);
                v514 = vld2q_f32(v320);
                v321 = (result + v291);
                v322 = vld2q_f32(v321);
                v518.val[0] = vmlaq_f32(vmulq_n_f32(vaddq_f32(v514.val[0], v322), v286), v313, v509.val[0]);
                v323 = (v316 + v291);
                v324 = vld2q_f32(v323);
                v518.val[1] = vmlaq_f32(vmulq_n_f32(vaddq_f32(v514.val[1], v324), v286), v313, v509.val[1]);
                v325 = &v318->f32[v291 / 4];
                vst2q_f32(v325, v518);
                v318 += 2;
                v315 += 32;
                v316 += 32;
                result += 32;
                v317 += 32;
                v312 -= 4;
              }

              while (v312);
            }
          }

          v326 = vdup_lane_s32(*v17.f32, 0);
          v327 = &a3->f32[v52];
          do
          {
            v328.i32[0] = v54->i32[a5];
            v328.i32[1] = v54->i32[v289];
            *v327++ = vmla_f32(vmul_n_f32(vadd_f32(*(v54 - 4 * a5), v328), v286), v326, *v54);
            v52 += 2;
            ++v54;
          }

          while (v52 <= v287);
          goto LABEL_378;
        }
      }
    }

LABEL_379:
    if (v23 >= v22)
    {
      return result;
    }

    if (v10 < 2)
    {
      v450 = v23;
      v451 = v22 - v23;
      if (v451 < 0xC || ((v480 = &a3->i8[4 * v23], v481 = &a3->f32[v22], v480 < v54 + 4 * v22 - 4 * v450) ? (v482 = v54 >= v481) : (v482 = 1), v482 ? (v483 = 0) : (v483 = 1), v13 < v481 ? (v484 = v480 >= v12 + 4 * v499 + 4) : (v484 = 1), !v484 || (v483 & 1) != 0))
      {
        v452 = v450;
        v453 = v54;
      }

      else
      {
        v452 = (v451 & 0xFFFFFFFFFFFFFFF8) + v450;
        v453 = v54 + (v451 & 0xFFFFFFFFFFFFFFF8);
        v485 = vld1q_dup_f32(v13);
        v486 = (a3 + 4 * v450 + 16);
        v487 = &v54[2];
        v488 = v451 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v489 = vmulq_f32(v485, *v487);
          v486[-1] = vmulq_f32(v485, v487[-1]);
          *v486 = v489;
          v486 += 2;
          v487 += 2;
          v488 -= 8;
        }

        while (v488);
        if (v451 == (v451 & 0xFFFFFFFFFFFFFFF8))
        {
          return result;
        }
      }

      v454 = &a3->f32[v452];
      v455 = v22 - v452;
      do
      {
        v456 = *v453++;
        *v454++ = *v13 * v456;
        --v455;
      }

      while (v455);
      return result;
    }

    v457 = a5;
    v23 = v23;
    v458 = ((v10 / 2) & 0x3FFFFFF8 | 1u) * a5;
    v460 = (v10 / 2) < 8 || a5 != 1;
    result = &v54[-2];
    v461 = (&v54[2] + 4);
    v462 = v12 + 4 * v499;
    v463 = 4 * a5;
    while (1)
    {
      v464 = *v13 * v54->f32[0];
      if (v460)
      {
        v465 = 1;
        v466 = v457;
      }

      else
      {
        v467 = (v462 + 20);
        v468 = v461;
        v469 = result;
        v470 = (v10 / 2) & 0x3FFFFFF8;
        do
        {
          v471 = vrev64q_s32(*v469);
          v472 = vrev64q_s32(v469[-1]);
          v473 = vmulq_f32(v467[-1], vaddq_f32(v468[-1], vextq_s8(v471, v471, 8uLL)));
          v474 = vmulq_f32(*v467, vaddq_f32(*v468, vextq_s8(v472, v472, 8uLL)));
          v464 = (((((((v464 + v473.f32[0]) + v473.f32[1]) + v473.f32[2]) + v473.f32[3]) + v474.f32[0]) + v474.f32[1]) + v474.f32[2]) + v474.f32[3];
          v469 -= 2;
          v468 += 2;
          v467 += 2;
          v470 -= 8;
        }

        while (v470);
        v465 = (v10 / 2) & 0x3FFFFFF8 | 1;
        v466 = v458;
        if ((((v10 + (v10 >> 31)) >> 1) & 0x3FFFFFF8) == v10 / 2)
        {
          goto LABEL_393;
        }
      }

      v475 = (v462 + 4 * v465);
      v476 = (v10 / 2 + 1) - v465;
      v477 = 4 * v466;
      v478 = -v477;
      do
      {
        v479 = *v475++;
        v464 = v464 + (v479 * (*(v54->f32 + v477) + *(v54->f32 + v478)));
        v477 += v463;
        v478 -= v463;
        --v476;
      }

      while (v476);
LABEL_393:
      a3->f32[v23++] = v464;
      v54 = (v54 + 4);
      result += 4;
      v461 = (v461 + 4);
      if (v23 == v22)
      {
        return result;
      }
    }
  }

  if (v55 == 5)
  {
    v87 = v22 - 2;
    if (v23 > v22 - 2)
    {
      goto LABEL_219;
    }

    v88 = -a5;
    v16.i32[0] = *(v13 + 4);
    v89 = *(v13 + 8);
    v90 = -2 * a5;
    v91 = a5 + 1;
    v92 = v87;
    v93 = v87 - v52;
    v94 = 4 * a5;
    v95 = 8 * a5;
    if (v93 >= 0x30)
    {
      v497 = v12;
      v96 = 4 * v52;
      v97 = &a3->i8[4 * v52];
      v98 = (4 * v93) & 0xFFFFFFFFFFFFFFF8;
      v99 = &v97[v98 + 8];
      v100 = 4 * v52 + 4 * v53;
      v495 = a2 + v100 + 4 - v95;
      v101 = v100 + v98 + 8;
      v493 = a2 + v101 - v95;
      v102 = a2 + v98;
      v103 = a2 + v101 - v94;
      v104 = v100 + a2 + 4 * v91;
      v105 = v100 + v102 + 4 * v91 + 4;
      v106 = -2 * a5;
      v107 = v100 + a2 + 4 * v106;
      v108 = v100 + v102 + 4 * v106 + 4;
      v109 = v100 + a2 + v94;
      v110 = v100 + 4 + v102 + v94;
      v112 = v97 < v100 + v102 + v95 + 8 && v100 + a2 + v95 < v99;
      v114 = v97 < v103 && a2 + v100 - v94 < v99;
      v116 = v97 < v105 && v104 < v99;
      v118 = v97 < v108 && v107 < v99;
      v120 = v97 < v110 && v109 < v99;
      if (v495 >= v99 || v97 >= v493)
      {
        v12 = v497;
        v90 = -2 * a5;
        v88 = -a5;
        if (v112)
        {
          v91 = a5 + 1;
        }

        else
        {
          v91 = a5 + 1;
          if (!v114 && !v116 && !v118 && !v120)
          {
            v122 = (v93 >> 1) + 1;
            v123 = v122 & 3;
            if ((v122 & 3) == 0)
            {
              v123 = 4;
            }

            v124 = v122 - v123;
            v125 = 4 * v53;
            v126 = 4 * v53 + 4 * (a5 + 1);
            v127 = vdupq_lane_s32(*v16.f32, 0);
            v128 = 4 * v53 + 4 * v90;
            v129 = 4 * v53 - v95 + a2 + 4;
            v130 = a2 + v126;
            v131 = a2 + v128;
            v132 = a2 + v125 + v95;
            v133 = a2 + v125 + 4 * -a5;
            v134 = a2 + v125 + 4 * a5;
            v135 = a3;
            v52 += 2 * v124;
            v54 += v124;
            do
            {
              v136 = (v134 + v96);
              v137 = vld2q_f32(v136);
              v138 = (v133 + v96);
              v511 = vld2q_f32(v138);
              v139 = (v132 + v96);
              v517 = vld2q_f32(v139);
              v140 = vsubq_f32(v137, v511.val[0]);
              v141 = (v131 + v96);
              v142 = vld2q_f32(v141);
              v143 = vsubq_f32(v517.val[0], v142);
              v144 = (v130 + v96);
              v145 = vld2q_f32(v144);
              v511.val[0] = vsubq_f32(v145, v511.val[1]);
              v146 = (v129 + v96);
              v511.val[1] = vld2q_f32(v146);
              v520.val[0] = vmlaq_f32(vmulq_n_f32(v143, v89), v127, v140);
              v520.val[1] = vmlaq_f32(vmulq_n_f32(vsubq_f32(v517.val[1], v511.val[1]), v89), v127, v511.val[0]);
              v147 = &v135->f32[v96 / 4];
              vst2q_f32(v147, v520);
              v135 += 2;
              v129 += 32;
              v130 += 32;
              v131 += 32;
              v132 += 32;
              v133 += 32;
              v134 += 32;
              v124 -= 4;
            }

            while (v124);
          }
        }
      }

      else
      {
        v12 = v497;
        v90 = -2 * a5;
        v88 = -a5;
        v91 = a5 + 1;
      }
    }

    v148 = 0;
    result = a3->i64 + 4 * v52;
    v149 = &v54[v95 / 0xFFFFFFFFFFFFFFF8] + 4;
    v150 = &v54[v95 / 8] + 4;
    do
    {
      v151 = (v89 * (*(v150 + v148) - *(v149 + v148))) + ((v54->f32[v91 + v148 / 4] - v54->f32[v94 / 0xFFFFFFFFFFFFFFFCLL + 1 + v148 / 4]) * v16.f32[0]);
      v152 = (result + v148);
      *v152 = (v89 * (*(v150 + v148 - 4) - v54[v90 / 2 + v148 / 8].f32[0])) + ((v54->f32[v94 / 4 + v148 / 4] - v54->f32[v88 + v148 / 4]) * v16.f32[0]);
      v152[1] = v151;
      v52 += 2;
      v148 += 8;
    }

    while (v52 <= v92);
    v54 = (v54 + v148);
  }

  else
  {
    if (v55 != 3)
    {
      goto LABEL_219;
    }

    v56 = *(v13 + 4);
    v57 = v22 - 2;
    if (*v13 == 0.0 && v56 == 1.0)
    {
      if (v23 > v57)
      {
        goto LABEL_219;
      }

      v234 = a5 + 1;
      v235 = v57;
      v236 = v57 - v52;
      v237 = 4 * a5;
      if (v236 >= 0x30)
      {
        v238 = v52;
        v239 = &a3->i8[4 * v52];
        v240 = (4 * v236) & 0xFFFFFFFFFFFFFFF8;
        v241 = &v239[v240 + 8];
        v242 = 4 * v52 + 4 * v11;
        v243 = v242 + v240 - v237 + a2 + 8;
        v244 = a2 + v240;
        v245 = v242 + 4 * v234 + v244 + 4;
        v246 = v242 + v237 + v244 + 4;
        v247 = v239 >= v245 || v242 + a2 + 4 * v234 >= v241;
        v248 = !v247;
        v249 = v239 >= v246 || v242 + a2 + v237 >= v241;
        result = !v249;
        v250 = a2 + v242 - v237 >= v241 || v239 >= v243;
        if (v250 && !v248 && (result & 1) == 0)
        {
          v251 = (v236 >> 1) + 1;
          v252 = v251 & 3;
          if ((v251 & 3) == 0)
          {
            v252 = 4;
          }

          v253 = v251 - v252;
          v52 += 2 * v253;
          v54 += v253;
          v254 = &a3->f32[v238];
          result = a2 + v242 + 4 * v234;
          v255 = (a2 + v242 - v237);
          v256 = (a2 + v237 + v242);
          do
          {
            v257 = vld2q_f32(v256);
            v256 += 8;
            v505 = vld2q_f32(v255);
            v255 += 8;
            v500.val[0] = vsubq_f32(v257, v505.val[0]);
            v258 = vld2q_f32(result);
            result += 32;
            v500.val[1] = vsubq_f32(v258, v505.val[1]);
            vst2q_f32(v254, v500);
            v254 += 8;
            v253 -= 4;
          }

          while (v253);
        }
      }

      v259 = &a3->f32[v52 + 1];
      do
      {
        v260 = v54->f32[v234] - *(v54->f32 + 4 - v237);
        *(v259 - 1) = v54->f32[a5] - v54->f32[-a5];
        *v259 = v260;
        v52 += 2;
        ++v54;
        v259 += 2;
      }

      while (v52 <= v235);
    }

    else
    {
      if (v23 > v57)
      {
        goto LABEL_219;
      }

      v59 = a5 + 1;
      v60 = v57 - v23;
      if (v60 >= 0x28)
      {
        v61 = &a3->i8[4 * v23];
        v62 = (4 * v60) & 0xFFFFFFFFFFFFFFF8;
        v63 = &v61[v62 + 8];
        v64 = 4 * v23 + 4 * v11;
        result = v64 - 4 * a5;
        v65 = v64 + v62 - 4 * a5 + a2 + 8;
        v66 = a2 + v62;
        v67 = v64 + 4 * a5 + v66 + 4;
        v68 = v61 >= v64 + 4 * v59 + v66 + 4 || v64 + a2 + 4 * v59 >= v63;
        v69 = !v68;
        v70 = v61 >= v67 || v64 + a2 + 4 * a5 >= v63;
        v71 = !v70;
        v72 = a2 + result >= v63 || v61 >= v65;
        if (v72 && !v69 && !v71)
        {
          v73 = (v60 >> 1) + 1;
          v74 = v73 & 3;
          if ((v73 & 3) == 0)
          {
            v74 = 4;
          }

          v75 = v73 - v74;
          v52 = v23 + 2 * v75;
          v54 += v75;
          v76 = &a3->f32[v23];
          v77 = (a2 + v64 + 4 * v59);
          result += a2;
          v78 = (a2 + 4 * a5 + v64);
          do
          {
            v79 = vld2q_f32(v78);
            v78 += 8;
            v506 = vld2q_f32(result);
            result += 32;
            v80 = vld2q_f32(v77);
            v77 += 8;
            v501.val[0] = vmulq_n_f32(vsubq_f32(v79, v506.val[0]), v56);
            v501.val[1] = vmulq_n_f32(vsubq_f32(v80, v506.val[1]), v56);
            vst2q_f32(v76, v501);
            v76 += 8;
            v75 -= 4;
          }

          while (v75);
        }
      }

      v81 = &a3->f32[v52];
      do
      {
        v82.i32[0] = v54->i32[a5];
        v82.i32[1] = v54->i32[v59];
        *v81++ = vmul_n_f32(vsub_f32(v82, *(v54 - 4 * a5)), v56);
        v52 += 2;
        ++v54;
      }

      while (v52 <= v57);
    }
  }

  LODWORD(v23) = v52;
LABEL_219:
  if (v23 < v22)
  {
    v261 = a5;
    v262 = (v10 / 2 + 1);
    v23 = v23;
    v263 = (v262 - 1) & 0xFFFFFFFFFFFFFFF8;
    v264 = (v263 | 1) * a5;
    v266 = v262 < 9 || a5 != 1;
    result = &v54[-2];
    v267 = (&v54[2] + 4);
    v268 = v12 + 4 * v499;
    v269 = 4 * a5;
    do
    {
      v270 = *v13 * v54->f32[0];
      if (v10 >= 2)
      {
        if (v266)
        {
          v271 = 1;
          v272 = v261;
        }

        else
        {
          v273 = (v268 + 20);
          v274 = v267;
          v275 = result;
          v276 = (v262 - 1) & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v277 = vrev64q_s32(*v275);
            v278 = vrev64q_s32(v275[-1]);
            v279 = vmulq_f32(v273[-1], vsubq_f32(v274[-1], vextq_s8(v277, v277, 8uLL)));
            v280 = vmulq_f32(*v273, vsubq_f32(*v274, vextq_s8(v278, v278, 8uLL)));
            v270 = (((((((v270 + v279.f32[0]) + v279.f32[1]) + v279.f32[2]) + v279.f32[3]) + v280.f32[0]) + v280.f32[1]) + v280.f32[2]) + v280.f32[3];
            v275 -= 2;
            v274 += 2;
            v273 += 2;
            v276 -= 8;
          }

          while (v276);
          v271 = v263 | 1;
          v272 = v264;
          if (v262 - 1 == v263)
          {
            goto LABEL_227;
          }
        }

        v281 = (v268 + 4 * v271);
        v282 = v262 - v271;
        v283 = 4 * v272;
        v284 = -v283;
        do
        {
          v285 = *v281++;
          v270 = v270 + (v285 * (*(v54->f32 + v283) - *(v54->f32 + v284)));
          v283 += v269;
          v284 -= v269;
          --v282;
        }

        while (v282);
      }

LABEL_227:
      a3->f32[v23++] = v270;
      v54 = (v54 + 4);
      result += 4;
      v267 = (v267 + 4);
    }

    while (v23 != v22);
  }

  return result;
}

void sub_10030F5CC(uint64_t a1)
{
  sub_10030DD9C(a1);

  operator delete();
}

uint64_t sub_10030F604(uint64_t a1, uint64_t a2, float32x4_t *a3, int a4, int a5)
{
  v10 = *(a1 + 8);
  v11 = *(a1 + 32);
  result = sub_1002A8904(100);
  if (result)
  {
    v15 = *(a1 + 120) + *(a1 + 124) - 1;
    v16 = v15 / 2 * a5;
    v17 = v16;
    v18 = (*(a1 + 128) + 4 * (v15 / 2));
    v19 = a5 * a4;
    if ((*(a1 + 208) & 1) == 0)
    {
      if (*(a1 + 120) + *(a1 + 124) == 6 && v19 >= 4)
      {
        v21 = 0;
        v22 = (v18 + 2);
        v23 = (v18 + 1);
        v24 = vld1q_dup_f32(v23);
        v25 = vld1q_dup_f32(v22);
        v26 = 4 * v17;
        v27 = 8 * a5;
        v28 = (a2 + v27 + 4 * v17);
        v29 = (a2 + v26 - v27);
        v30 = 4 * a5;
        v31 = (a2 + v30 + v26);
        v32 = (a2 + v26 - v30);
        v33 = a3;
        do
        {
          v34 = *v32++;
          v35 = v34;
          v36 = *v31++;
          v37 = v36;
          v38 = *v29++;
          v39 = v38;
          v40 = *v28++;
          *v33++ = vmlaq_f32(vmulq_f32(v24, vsubq_f32(v37, v35)), v25, vsubq_f32(v40, v39));
          v21 += 4;
        }

        while (v21 <= (v19 - 4));
        v41 = v19 - 4;
        if (v21 > v19 - 4)
        {
          goto LABEL_32;
        }

        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if (*(a1 + 120) + *(a1 + 124) == 6)
    {
      v42 = *v18;
      if (*v18 == -2.0 && (v13.i32[0] = v18[1], *v13.i32 == 0.0))
      {
        v14.i32[0] = v18[2];
        if (*v14.i32 != 1.0 && v19 >= 4)
        {
LABEL_76:
          v95 = 0;
          v96 = 0;
          v97 = vdupq_lane_s32(v13, 0);
          v98 = 4 * v16;
          v99 = 8 * a5;
          v100 = a2 + v99 + v98;
          v101 = v98 - v99;
          v102 = 4 * a5;
          v103 = a2 + v102 + v98;
          v104 = vdupq_lane_s32(v14, 0);
          v105 = a2 + v101;
          v106 = a2 + v98 - v102;
          do
          {
            a3[v95 / 0x10] = vmlaq_f32(vmlaq_f32(vmulq_n_f32(*(a2 + v98 + v95), v42), v97, vaddq_f32(*(v106 + v95), *(v103 + v95))), v104, vaddq_f32(*(v105 + v95), *(v100 + v95)));
            v96 += 4;
            v95 += 16;
          }

          while (v96 <= (v19 - 4));
          LODWORD(v21) = v96;
          v41 = v19 - 4;
          if (v21 > v19 - 4)
          {
            goto LABEL_32;
          }

          goto LABEL_23;
        }
      }

      else if (v19 >= 4)
      {
        v13.i32[0] = v18[1];
        v14.i32[0] = v18[2];
        goto LABEL_76;
      }
    }

LABEL_22:
    LODWORD(v21) = 0;
    v41 = v19 - 4;
    if (v19 - 4 < 0)
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  LODWORD(v21) = 0;
  v19 = a5 * a4;
  v41 = a5 * a4 - 4;
  if (v41 < 0)
  {
    goto LABEL_32;
  }

LABEL_23:
  v21 = v21;
  if (v10 <= 1)
  {
    v50 = v19 - v21;
    v51 = v50 - 4;
    if ((v50 - 4) <= 0x1B)
    {
      goto LABEL_30;
    }

    v67 = 4 * v21;
    v68 = ((4 * v50 - 16) & 0xFFFFFFFFFFFFFFF0) + v67 + 16;
    v69 = (a3->f32 + v68);
    v70 = a3 + v67 >= a2 + v68 || a2 + 4 * v21 >= v69;
    v71 = !v70;
    if (v11 < v69 && a3 + v67 < (v11 + 1))
    {
      goto LABEL_30;
    }

    if (v71)
    {
      goto LABEL_30;
    }

    v73 = (v51 >> 2) + 1;
    v21 = v21 + 4 * (v73 & 0x7FFFFFFFFFFFFFFCLL);
    v74 = (a2 + v67);
    v75 = (a3 + v67);
    v76 = v73 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v77 = v74[2];
      v78 = v74[3];
      v79 = *v74;
      v80 = v74[1];
      v74 += 4;
      v81 = vmulq_n_f32(v80, *v11);
      v82 = vmulq_n_f32(v79, *v11);
      v83 = vmulq_n_f32(v78, *v11);
      v75[2] = vmulq_n_f32(v77, *v11);
      v75[3] = v83;
      *v75 = v82;
      v75[1] = v81;
      v75 += 4;
      v76 -= 4;
    }

    while (v76);
    if (v73 != (v73 & 0x7FFFFFFFFFFFFFFCLL))
    {
LABEL_30:
      v52 = (a2 + 4 * v21);
      v53 = (a3 + 4 * v21);
      do
      {
        v54 = *v52++;
        *v53++ = vmulq_n_f32(v54, *v11);
        v21 += 4;
      }

      while (v21 <= v41);
    }
  }

  else
  {
    v44 = 4 * a5;
    v45 = (a2 + v44 + 4 * v21);
    do
    {
      v46 = vmulq_n_f32(*(a2 + 4 * v21), *v11);
      v47 = v45;
      v48 = v10 - 1;
      result = (v11 + 1);
      do
      {
        v49 = *result;
        result += 4;
        v46 = vmlaq_n_f32(v46, *v47, v49);
        v47 = (v47 + v44);
        --v48;
      }

      while (v48);
      *(a3 + 4 * v21) = v46;
      v21 += 4;
      ++v45;
    }

    while (v21 <= v41);
  }

LABEL_32:
  if (v21 < v19)
  {
    v21 = v21;
    if (v10 <= 1)
    {
      v62 = v19 - v21;
      if (v62 <= 0xB)
      {
        goto LABEL_40;
      }

      v84 = 4 * v21;
      v85 = &a3->f32[v19];
      v86 = a3 + v84 >= a2 + 4 * v19 || a2 + 4 * v21 >= v85;
      v87 = !v86;
      if (v11 < v85 && a3 + v84 < (v11 + 1))
      {
        goto LABEL_40;
      }

      if (v87)
      {
        goto LABEL_40;
      }

      v21 = (v62 & 0xFFFFFFFFFFFFFFF8) + v21;
      v89 = vld1q_dup_f32(v11);
      v90 = v84 + 16;
      v91 = (a2 + v84 + 16);
      v92 = (a3 + v90);
      v93 = v62 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v94 = vmulq_f32(v89, *v91);
        v92[-1] = vmulq_f32(v89, v91[-1]);
        *v92 = v94;
        v91 += 2;
        v92 += 2;
        v93 -= 8;
      }

      while (v93);
      if (v62 != (v62 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_40:
        v63 = (a2 + 4 * v21);
        v64 = &a3->f32[v21];
        v65 = v19 - v21;
        do
        {
          v66 = *v63++;
          *v64++ = *v11 * v66;
          --v65;
        }

        while (v65);
      }
    }

    else
    {
      v55 = 4 * a5;
      v56 = (a2 + v55 + 4 * v21);
      do
      {
        v57 = *v11 * *(a2 + 4 * v21);
        v58 = v56;
        v59 = v10 - 1;
        v60 = v11 + 1;
        do
        {
          v61 = *v60++;
          v57 = v57 + (v61 * *v58);
          v58 = (v58 + v55);
          --v59;
        }

        while (v59);
        a3->f32[v21++] = v57;
        ++v56;
      }

      while (v21 != v19);
    }
  }

  return result;
}

uint64_t sub_10030FAC0(void *a1)
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

uint64_t sub_10030FB44(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *a1 = off_100478D78;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_17;
    }

    v8 = *(a2 + 56);
    if (v8)
    {
      atomic_fetch_add((v8 + 20), 1u);
      v9 = *(a1 + 72);
      if (v9)
      {
        if (atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
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
      *v6 = *a2;
      v13 = *(a2 + 4);
      if (v13 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v13;
        *(a1 + 24) = *(a2 + 8);
        v14 = *(a2 + 72);
        v15 = *(a1 + 88);
        *v15 = *v14;
        v15[1] = v14[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *v6 = *a2;
      if (v12 <= 2)
      {
        v13 = *(a2 + 4);
        if (v13 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v6, a2);
    goto LABEL_16;
  }

  LODWORD(v19) = 33619968;
  v20 = a1 + 16;
  v21 = 0;
  sub_10022B754(a2, &v19);
LABEL_17:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 4 || v17 != 1 && v16 != 1)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 77), "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v19, "RowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3053);
  }

  return a1;
}

uint64_t sub_10030FDB4(uint64_t a1)
{
  *a1 = off_100478D78;
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

void sub_10030FE64(uint64_t a1)
{
  *a1 = off_100478D78;
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

const float *sub_10030FF34(const float *result, int8x16_t *a2, int32x4_t *a3, int a4, int a5, int32x4_t a6, int32x4_t a7)
{
  v7 = *(result + 2);
  v8 = *(result + 4);
  v9 = (a5 * a4);
  v10 = (v9 - 4);
  if (v9 < 4)
  {
    LODWORD(v11) = 0;
    goto LABEL_13;
  }

  if (v7 > 1)
  {
    v11 = 0;
    v12 = (a2->i32 + a5);
    do
    {
      a6.i32[0] = a2->i32[v11 / 4];
      a7 = vld1q_dup_f32(v8);
      a6 = vmulq_s32(a7, vmovl_u16(*&vmovl_u8(*a6.i8)));
      v13 = v12;
      result = (v7 - 1);
      v14 = v8 + 1;
      do
      {
        a7.i32[0] = *v13;
        a7 = vmovl_u16(*&vmovl_u8(*a7.i8));
        v15 = vld1q_dup_f32(v14++);
        a6 = vmlaq_s32(a6, v15, a7);
        v13 = (v13 + a5);
        result = (result - 1);
      }

      while (result);
      a3[v11 / 4] = a6;
      v11 += 4;
      ++v12;
    }

    while (v11 <= v10);
    goto LABEL_13;
  }

  if (v10 <= 0x3B)
  {
    v11 = 0;
LABEL_11:
    v16 = &a3[v11 / 4];
    do
    {
      a6.i32[0] = a2->i32[v11 / 4];
      a7 = vld1q_dup_f32(v8);
      a6 = vmulq_s32(a7, vmovl_u16(*&vmovl_u8(*a6.i8)));
      *v16++ = a6;
      v11 += 4;
    }

    while (v11 <= v10);
    goto LABEL_13;
  }

  v11 = 0;
  v29 = a3[1].u64 + ((4 * v10) & 0x1FFFFFFF0);
  v31 = a2->i64 + (v10 & 0x7FFFFFFC) + 4 > a3 && v29 > a2;
  if (v8 < v29 && v8 + 1 > a3)
  {
    goto LABEL_11;
  }

  if (v31)
  {
    goto LABEL_11;
  }

  v33 = (v10 >> 2) + 1;
  v11 = 4 * (v33 & 0x3FFFFFF0);
  a6.i32[1] = -247;
  a7.i32[1] = -243;
  v34 = v33 & 0x3FFFFFF0;
  v35 = a3;
  v36 = a2;
  do
  {
    v37 = vld1q_dup_f32(v8);
    v38 = v36[2];
    v39 = v36[3];
    v40 = *v36;
    v41 = v36[1];
    v36 += 4;
    v35[14] = vmulq_s32(v37, vqtbl1q_s8(v39, xmmword_1003E3700));
    v35[15] = vmulq_s32(v37, vqtbl1q_s8(v39, xmmword_1003E3710));
    v35[12] = vmulq_s32(v37, vqtbl1q_s8(v39, xmmword_1003E3720));
    v35[13] = vmulq_s32(v37, vqtbl1q_s8(v39, xmmword_1003E3730));
    v35[10] = vmulq_s32(v37, vqtbl1q_s8(v38, xmmword_1003E3700));
    v35[11] = vmulq_s32(v37, vqtbl1q_s8(v38, xmmword_1003E3710));
    v35[8] = vmulq_s32(v37, vqtbl1q_s8(v38, xmmword_1003E3720));
    v35[9] = vmulq_s32(v37, vqtbl1q_s8(v38, xmmword_1003E3730));
    v35[6] = vmulq_s32(v37, vqtbl1q_s8(v41, xmmword_1003E3700));
    v35[7] = vmulq_s32(v37, vqtbl1q_s8(v41, xmmword_1003E3710));
    v35[4] = vmulq_s32(v37, vqtbl1q_s8(v41, xmmword_1003E3720));
    v35[5] = vmulq_s32(v37, vqtbl1q_s8(v41, xmmword_1003E3730));
    v35[2] = vmulq_s32(v37, vqtbl1q_s8(v40, xmmword_1003E3700));
    v35[3] = vmulq_s32(v37, vqtbl1q_s8(v40, xmmword_1003E3710));
    *v35 = vmulq_s32(v37, vqtbl1q_s8(v40, xmmword_1003E3720));
    v35[1] = vmulq_s32(v37, vqtbl1q_s8(v40, xmmword_1003E3730));
    v35 += 16;
    v34 -= 16;
  }

  while (v34);
  if (v33 != (v33 & 0x3FFFFFF0))
  {
    goto LABEL_11;
  }

LABEL_13:
  if (v11 >= v9)
  {
    return result;
  }

  v17 = v11;
  if (v7 <= 1)
  {
    v23 = v9 - v11;
    if (v23 < 4 || ((v42 = a3 + 4 * v11, v43 = a3 + 4 * v9, v44 = &a2->i8[v11], v42 < a2->u64 + v9) ? (v45 = v44 >= v43) : (v45 = 1), v45 ? (v46 = 0) : (v46 = 1), v8 < v43 ? (v47 = v42 >= (v8 + 1)) : (v47 = 1), !v47 || (v46 & 1) != 0))
    {
      v24 = v17;
      goto LABEL_22;
    }

    if (v23 >= 0x20)
    {
      v48 = v23 & 0xFFFFFFFFFFFFFFE0;
      v49 = vld1q_dup_f32(v8);
      v50 = (a2 + v17 + 16);
      v51 = (v42 + 64);
      a7.i32[1] = -247;
      v52 = v23 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v53 = v50[-1];
        v54 = vqtbl1q_s8(*v50, xmmword_1003E3700);
        v55 = vmulq_s32(v49, vqtbl1q_s8(*v50, xmmword_1003E3710));
        v56 = vmulq_s32(v49, vqtbl1q_s8(*v50, xmmword_1003E3720));
        v57 = vmulq_s32(v49, vqtbl1q_s8(*v50, xmmword_1003E3730));
        v51[-4] = vmulq_s32(v49, vqtbl1q_s8(v53, xmmword_1003E3720));
        v51[-3] = vmulq_s32(v49, vqtbl1q_s8(v53, xmmword_1003E3730));
        v51[-2] = vmulq_s32(v49, vqtbl1q_s8(v53, xmmword_1003E3700));
        v51[-1] = vmulq_s32(v49, vqtbl1q_s8(v53, xmmword_1003E3710));
        *v51 = v56;
        v51[1] = v57;
        v51[2] = vmulq_s32(v49, v54);
        v51[3] = v55;
        v50 += 2;
        v51 += 8;
        v52 -= 32;
      }

      while (v52);
      if (v23 == v48)
      {
        return result;
      }

      if ((v23 & 0x1C) == 0)
      {
        v24 = v48 + v17;
        goto LABEL_22;
      }
    }

    else
    {
      v48 = 0;
    }

    v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL) + v17;
    v58 = vld1q_dup_f32(v8);
    v59 = v48 - (v23 & 0xFFFFFFFFFFFFFFFCLL);
    v60 = v48 + v17;
    v61 = (a2->i32 + v60);
    v62 = (a3 + 4 * v60);
    do
    {
      v63 = *v61++;
      a7.i32[0] = v63;
      a7 = vmulq_s32(v58, vmovl_u16(*&vmovl_u8(*a7.i8)));
      *v62++ = a7;
      v59 += 4;
    }

    while (v59);
    if (v23 == (v23 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

LABEL_22:
    v25 = &a3->i32[v24];
    v26 = &a2->u8[v24];
    v27 = v9 - v24;
    do
    {
      v28 = *v26++;
      *v25++ = *v8 * v28;
      --v27;
    }

    while (v27);
    return result;
  }

  v18 = v7 - 1;
  do
  {
    v19 = *v8 * a2->u8[v17];
    v20 = &a2->i8[a5];
    v21 = v18;
    result = v8 + 1;
    do
    {
      v22 = *result++;
      v19 += v22 * v20[v17];
      v20 += a5;
      --v21;
    }

    while (v21);
    a3->i32[v17++] = v19;
  }

  while (v17 != v9);
  return result;
}

uint64_t sub_100310328(void *a1)
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

uint64_t sub_1003103AC(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *a1 = off_100478DF8;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_17;
    }

    v8 = *(a2 + 56);
    if (v8)
    {
      atomic_fetch_add((v8 + 20), 1u);
      v9 = *(a1 + 72);
      if (v9)
      {
        if (atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
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
      *v6 = *a2;
      v13 = *(a2 + 4);
      if (v13 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v13;
        *(a1 + 24) = *(a2 + 8);
        v14 = *(a2 + 72);
        v15 = *(a1 + 88);
        *v15 = *v14;
        v15[1] = v14[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *v6 = *a2;
      if (v12 <= 2)
      {
        v13 = *(a2 + 4);
        if (v13 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v6, a2);
    goto LABEL_16;
  }

  LODWORD(v19) = 33619968;
  v20 = a1 + 16;
  v21 = 0;
  sub_10022B754(a2, &v19);
LABEL_17:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 5 || v17 != 1 && v16 != 1)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 77), "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v19, "RowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3053);
  }

  return a1;
}

uint64_t sub_10031061C(uint64_t a1)
{
  *a1 = off_100478DF8;
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

void sub_1003106CC(uint64_t a1)
{
  *a1 = off_100478DF8;
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

float *sub_10031079C(float *result, const char *a2, unint64_t a3, int a4, int a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v8 = *(result + 2);
  v9 = *(result + 4);
  v10 = (a5 * a4);
  v11 = (v10 - 4);
  if (v10 < 4)
  {
    LODWORD(v12) = 0;
    goto LABEL_13;
  }

  if (v8 > 1)
  {
    v12 = 0;
    v13 = &a2[a5];
    do
    {
      a7.i32[0] = *&a2[v12];
      a7 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a7.f32)));
      a6 = vmulq_n_f32(a7, *v9);
      v14 = v13;
      result = (v8 - 1);
      v15 = v9 + 1;
      do
      {
        v16 = *v15++;
        a8.i32[0] = *v14;
        a8 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a8.f32)));
        a6 = vmlaq_n_f32(a6, a8, v16);
        v14 = (v14 + a5);
        result = (result - 1);
      }

      while (result);
      *(a3 + 4 * v12) = a6;
      v12 += 4;
      v13 += 4;
    }

    while (v12 <= v11);
    goto LABEL_13;
  }

  if (v11 <= 0x3B)
  {
    v12 = 0;
LABEL_11:
    v17 = (a3 + 4 * v12);
    do
    {
      a7.i32[0] = *&a2[v12];
      a7 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a7.f32)));
      a6 = vmulq_n_f32(a7, *v9);
      *v17++ = a6;
      v12 += 4;
    }

    while (v12 <= v11);
    goto LABEL_13;
  }

  v12 = 0;
  v30 = a3 + ((4 * v11) & 0x1FFFFFFF0) + 16;
  v32 = &a2[(v11 & 0x7FFFFFFC) + 4] > a3 && v30 > a2;
  if (v9 < v30 && (v9 + 1) > a3)
  {
    goto LABEL_11;
  }

  if (v32)
  {
    goto LABEL_11;
  }

  v34 = (v11 >> 2) + 1;
  v12 = 4 * (v34 & 0x3FFFFFF0);
  a6.i32[0] = -244;
  a7.i32[1] = -247;
  a8.i32[0] = -252;
  v35 = v34 & 0x3FFFFFF0;
  v36 = a3;
  v37 = a2;
  do
  {
    v38 = *v9;
    v64 = vld4q_s8(v37);
    v37 += 64;
    v39 = vcvtq_f32_u32(vqtbl1q_s8(v64.val[0], xmmword_1003E3710));
    v40 = vcvtq_f32_u32(vqtbl1q_s8(v64.val[1], xmmword_1003E3710));
    v41 = vcvtq_f32_u32(vqtbl1q_s8(v64.val[2], xmmword_1003E3710));
    v42 = vqtbl1q_s8(v64.val[3], xmmword_1003E3710);
    v62.val[1] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v64.val[1], xmmword_1003E3730)), *v9);
    v62.val[0] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v64.val[0], xmmword_1003E3730)), *v9);
    v62.val[3] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v64.val[3], xmmword_1003E3730)), *v9);
    v62.val[2] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v64.val[2], xmmword_1003E3730)), *v9);
    v63.val[1] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v64.val[1], xmmword_1003E3720)), *v9);
    v63.val[0] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v64.val[0], xmmword_1003E3720)), *v9);
    v63.val[3] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v64.val[3], xmmword_1003E3720)), *v9);
    v63.val[2] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v64.val[2], xmmword_1003E3720)), *v9);
    v43 = v36;
    vst4q_f32(v43, v63);
    v43 += 16;
    vst4q_f32(v43, v62);
    v64.val[1] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v64.val[1], xmmword_1003E3700)), v38);
    v64.val[0] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v64.val[0], xmmword_1003E3700)), v38);
    v64.val[3] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v64.val[3], xmmword_1003E3700)), v38);
    v64.val[2] = vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v64.val[2], xmmword_1003E3700)), v38);
    v44 = (v36 + 128);
    vst4q_f32(v44, v64);
    v64.val[1] = vmulq_n_f32(v40, v38);
    v64.val[0] = vmulq_n_f32(v39, v38);
    v64.val[3] = vmulq_n_f32(vcvtq_f32_u32(v42), v38);
    v64.val[2] = vmulq_n_f32(v41, v38);
    result = (v36 + 192);
    vst4q_f32(result, v64);
    v36 += 256;
    v35 -= 16;
  }

  while (v35);
  if (v34 != (v34 & 0x3FFFFFF0))
  {
    goto LABEL_11;
  }

LABEL_13:
  if (v12 >= v10)
  {
    return result;
  }

  v18 = v12;
  if (v8 <= 1)
  {
    v24 = v10 - v12;
    if (v24 < 4 || ((v45 = (a3 + 4 * v12), v46 = a3 + 4 * v10, v47 = &a2[v12], v45 < &a2[v10]) ? (v48 = v47 >= v46) : (v48 = 1), v48 ? (v49 = 0) : (v49 = 1), v9 < v46 ? (v50 = v45 >= (v9 + 1)) : (v50 = 1), !v50 || (v49 & 1) != 0))
    {
      v25 = v18;
      goto LABEL_22;
    }

    if (v24 >= 0x10)
    {
      v51 = v24 & 0xFFFFFFFFFFFFFFF0;
      v52 = vld1q_dup_f32(v9);
      v53 = &a2[v18];
      a7.i32[1] = -255;
      v54 = v24 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v55 = *v53;
        v53 += 16;
        v45[2] = vmulq_f32(v52, vcvtq_f32_u32(vqtbl1q_s8(v55, xmmword_1003E3700)));
        v45[3] = vmulq_f32(v52, vcvtq_f32_u32(vqtbl1q_s8(v55, xmmword_1003E3710)));
        *v45 = vmulq_f32(v52, vcvtq_f32_u32(vqtbl1q_s8(v55, xmmword_1003E3720)));
        v45[1] = vmulq_f32(v52, vcvtq_f32_u32(vqtbl1q_s8(v55, xmmword_1003E3730)));
        v45 += 4;
        v54 -= 16;
      }

      while (v54);
      if (v24 == v51)
      {
        return result;
      }

      if ((v24 & 0xC) == 0)
      {
        v25 = v51 + v18;
        goto LABEL_22;
      }
    }

    else
    {
      v51 = 0;
    }

    v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + v18;
    v56 = vld1q_dup_f32(v9);
    v57 = v51 - (v24 & 0xFFFFFFFFFFFFFFFCLL);
    v58 = v51 + v18;
    v59 = &a2[v58];
    v60 = (a3 + 4 * v58);
    do
    {
      v61 = *v59;
      v59 += 4;
      a7.i32[0] = v61;
      a7 = vmulq_f32(v56, vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a7.f32))));
      *v60++ = a7;
      v57 += 4;
    }

    while (v57);
    if (v24 == (v24 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

LABEL_22:
    v26 = (a3 + 4 * v25);
    v27 = &a2[v25];
    v28 = v10 - v25;
    do
    {
      v29 = *v27++;
      *v26++ = *v9 * v29;
      --v28;
    }

    while (v28);
    return result;
  }

  v19 = v8 - 1;
  do
  {
    a6.i8[0] = a2[v18];
    a6.f32[0] = *v9 * a6.u32[0];
    v20 = &a2[a5];
    v21 = v19;
    v22 = v9 + 1;
    do
    {
      v23 = *v22++;
      a8.i8[0] = v20[v18];
      a8.f32[0] = a8.u32[0];
      a6.f32[0] = a6.f32[0] + (v23 * a8.f32[0]);
      v20 += a5;
      --v21;
    }

    while (v21);
    *(a3 + 4 * v18++) = a6.i32[0];
  }

  while (v18 != v10);
  return result;
}

uint64_t sub_100310BE0(void *a1)
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

uint64_t sub_100310C64(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *a1 = off_100478E78;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_17;
    }

    v8 = *(a2 + 56);
    if (v8)
    {
      atomic_fetch_add((v8 + 20), 1u);
      v9 = *(a1 + 72);
      if (v9)
      {
        if (atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
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
      *v6 = *a2;
      v13 = *(a2 + 4);
      if (v13 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v13;
        *(a1 + 24) = *(a2 + 8);
        v14 = *(a2 + 72);
        v15 = *(a1 + 88);
        *v15 = *v14;
        v15[1] = v14[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *v6 = *a2;
      if (v12 <= 2)
      {
        v13 = *(a2 + 4);
        if (v13 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v6, a2);
    goto LABEL_16;
  }

  LODWORD(v19) = 33619968;
  v20 = a1 + 16;
  v21 = 0;
  sub_10022B754(a2, &v19);
LABEL_17:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 6 || v17 != 1 && v16 != 1)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 77), "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v19, "RowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3053);
  }

  return a1;
}

uint64_t sub_100310ED4(uint64_t a1)
{
  *a1 = off_100478E78;
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

void sub_100310F84(uint64_t a1)
{
  *a1 = off_100478E78;
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

double *sub_100311054(double *result, const char *a2, unint64_t a3, int a4, int a5, double a6, double a7, float64x2_t a8, double a9, float64x2_t a10, double a11)
{
  v11 = *(result + 2);
  v12 = *(result + 4);
  v13 = (a5 * a4);
  v14 = (v13 - 4);
  if (v13 < 4)
  {
    LODWORD(v15) = 0;
    goto LABEL_14;
  }

  if (v11 > 1)
  {
    v15 = 0;
    v16 = &a2[a5 + 1];
    do
    {
      LOBYTE(a6) = a2[v15];
      a6 = *v12 * *&a6;
      LOBYTE(a7) = a2[v15 + 1];
      a7 = *v12 * *&a7;
      LOBYTE(a8.f64[0]) = a2[v15 + 2];
      a8.f64[0] = *v12 * *&a8.f64[0];
      LOBYTE(a10.f64[0]) = a2[v15 + 3];
      v17 = *v12 * *&a10.f64[0];
      v18 = v16;
      result = (v11 - 1);
      v19 = v12 + 1;
      do
      {
        v20 = *v19++;
        a10.f64[0] = v20;
        LOBYTE(a11) = *(v18 - 1);
        *&v21 = *&a11;
        a6 = a6 + v20 * *&v21;
        LOBYTE(v21) = *v18;
        *&v22 = v21;
        a7 = a7 + v20 * *&v22;
        LOBYTE(v22) = v18[1];
        *&v23 = v22;
        a8.f64[0] = a8.f64[0] + v20 * *&v23;
        LOBYTE(v23) = v18[2];
        a11 = v23;
        v17 = v17 + v20 * a11;
        v18 += a5;
        result = (result - 1);
      }

      while (result);
      v24 = (a3 + 8 * v15);
      *v24 = a6;
      v24[1] = a7;
      v24[2] = a8.f64[0];
      v24[3] = v17;
      v15 += 4;
      v16 += 4;
    }

    while (v15 <= v14);
    goto LABEL_14;
  }

  if (v14 <= 0x3B)
  {
    v15 = 0;
LABEL_11:
    v25 = v15 + 3;
    v26 = &a2[v15 + 3];
    v27 = (a3 + 8 * v15 + 16);
    do
    {
      LOBYTE(a7) = *(v26 - 3);
      a7 = *v12 * *&a7;
      LOBYTE(a8.f64[0]) = *(v26 - 2);
      a8.f64[0] = *v12 * *&a8.f64[0];
      LOBYTE(a9) = *(v26 - 1);
      a9 = *v12 * *&a9;
      LOBYTE(a10.f64[0]) = *v26;
      a10.f64[0] = *&a10.f64[0];
      a6 = *v12 * a10.f64[0];
      *(v27 - 2) = a7;
      *(v27 - 1) = a8.f64[0];
      v28 = v25 + 4;
      v29 = v25 + 1;
      *v27 = a9;
      v27[1] = a6;
      v27 += 4;
      v26 += 4;
      v25 += 4;
    }

    while (v29 <= v14);
    LODWORD(v15) = v28 - 3;
    goto LABEL_14;
  }

  v15 = 0;
  v42 = a3 + ((8 * v14) & 0x3FFFFFFE0) + 32;
  v44 = &a2[(v14 & 0x7FFFFFFC) + 4] > a3 && v42 > a2;
  if (v12 < v42 && (v12 + 1) > a3)
  {
    goto LABEL_11;
  }

  if (v44)
  {
    goto LABEL_11;
  }

  v46 = (v14 >> 2) + 1;
  v15 = 4 * (v46 & 0x3FFFFFF0);
  *&a6 = 0xFF000000FFLL;
  v47 = v46 & 0x3FFFFFF0;
  v48 = a3;
  v49 = a2;
  do
  {
    a7 = *v12;
    v118 = vld4q_s8(v49);
    v49 += 64;
    v50 = vextq_s8(v118.val[0], v118.val[0], 8uLL).u64[0];
    v51.i32[0] = v118.val[0].u8[0];
    v51.i32[1] = v118.val[0].u8[1];
    v52 = vand_s8(v51, 0xFF000000FFLL);
    v53.i64[0] = v52.u32[0];
    v53.i64[1] = v52.u32[1];
    v54.i32[0] = v118.val[0].u8[2];
    v54.i32[1] = v118.val[0].u8[3];
    v55 = vcvtq_f64_u64(v53);
    v56 = vand_s8(v54, 0xFF000000FFLL);
    v53.i64[0] = v56.u32[0];
    v53.i64[1] = v56.u32[1];
    v57 = v53;
    v58.i32[0] = v118.val[1].u8[0];
    v58.i32[1] = v118.val[1].u8[1];
    v59 = vand_s8(v58, 0xFF000000FFLL);
    v53.i64[0] = v59.u32[0];
    v53.i64[1] = v59.u32[1];
    v119.val[1] = vmulq_n_f64(vcvtq_f64_u64(v53), *v12);
    v119.val[0] = vmulq_n_f64(v55, *v12);
    LODWORD(v55.f64[0]) = v118.val[3].u8[0];
    HIDWORD(v55.f64[0]) = v118.val[3].u8[1];
    *&v55.f64[0] = vand_s8(*&v55.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v55.f64[0]);
    v53.i64[1] = HIDWORD(v55.f64[0]);
    v119.val[3] = vmulq_n_f64(vcvtq_f64_u64(v53), *v12);
    LODWORD(v55.f64[0]) = v118.val[2].u8[0];
    HIDWORD(v55.f64[0]) = v118.val[2].u8[1];
    *&v55.f64[0] = vand_s8(*&v55.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v55.f64[0]);
    v53.i64[1] = HIDWORD(v55.f64[0]);
    v119.val[2] = vmulq_n_f64(vcvtq_f64_u64(v53), *v12);
    LODWORD(v55.f64[0]) = v118.val[1].u8[2];
    HIDWORD(v55.f64[0]) = v118.val[1].u8[3];
    *&v55.f64[0] = vand_s8(*&v55.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v55.f64[0]);
    v53.i64[1] = HIDWORD(v55.f64[0]);
    v60 = v48;
    vst4q_f64(v60, v119);
    v60 += 8;
    LODWORD(v119.val[0].f64[0]) = v118.val[3].u8[2];
    HIDWORD(v119.val[0].f64[0]) = v118.val[3].u8[3];
    v119.val[2] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    v119.val[1] = vmulq_n_f64(vcvtq_f64_u64(v57), a7);
    *&v55.f64[0] = vand_s8(*&v119.val[0].f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v55.f64[0]);
    v53.i64[1] = HIDWORD(v55.f64[0]);
    v61 = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    LODWORD(v55.f64[0]) = v118.val[2].u8[2];
    HIDWORD(v55.f64[0]) = v118.val[2].u8[3];
    *&v55.f64[0] = vand_s8(*&v55.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v55.f64[0]);
    v53.i64[1] = HIDWORD(v55.f64[0]);
    v119.val[3] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    LODWORD(v55.f64[0]) = v118.val[0].u8[4];
    HIDWORD(v55.f64[0]) = v118.val[0].u8[5];
    *&v55.f64[0] = vand_s8(*&v55.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v55.f64[0]);
    v53.i64[1] = HIDWORD(v55.f64[0]);
    v62 = vcvtq_f64_u64(v53);
    vst4q_f64(v60, *(&v119 + 16));
    v57.i32[0] = v118.val[1].u8[4];
    v57.i32[1] = v118.val[1].u8[5];
    *v57.i8 = vand_s8(*v57.i8, 0xFF000000FFLL);
    v53.i64[0] = v57.u32[0];
    v53.i64[1] = v57.u32[1];
    v119.val[0] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    v63 = vmulq_n_f64(v62, a7);
    LODWORD(v62.f64[0]) = v118.val[3].u8[4];
    HIDWORD(v62.f64[0]) = v118.val[3].u8[5];
    *&v62.f64[0] = vand_s8(*&v62.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v62.f64[0]);
    v53.i64[1] = HIDWORD(v62.f64[0]);
    v119.val[2] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    LODWORD(v62.f64[0]) = v118.val[2].u8[4];
    HIDWORD(v62.f64[0]) = v118.val[2].u8[5];
    *&v62.f64[0] = vand_s8(*&v62.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v62.f64[0]);
    v53.i64[1] = HIDWORD(v62.f64[0]);
    v119.val[1] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    LODWORD(v62.f64[0]) = v118.val[0].u8[6];
    HIDWORD(v62.f64[0]) = v118.val[0].u8[7];
    v64 = (v48 + 128);
    vst4q_f64(v64, v119);
    *&v62.f64[0] = vand_s8(*&v62.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v62.f64[0]);
    v53.i64[1] = HIDWORD(v62.f64[0]);
    v65 = vcvtq_f64_u64(v53);
    LODWORD(v63.f64[0]) = v118.val[1].u8[6];
    HIDWORD(v63.f64[0]) = v118.val[1].u8[7];
    *&v63.f64[0] = vand_s8(*&v63.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v63.f64[0]);
    v53.i64[1] = HIDWORD(v63.f64[0]);
    v119.val[0] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    v66 = vmulq_n_f64(v65, a7);
    LODWORD(v65.f64[0]) = v118.val[3].u8[6];
    HIDWORD(v65.f64[0]) = v118.val[3].u8[7];
    *&v65.f64[0] = vand_s8(*&v65.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v65.f64[0]);
    v53.i64[1] = HIDWORD(v65.f64[0]);
    v119.val[2] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    LODWORD(v65.f64[0]) = v118.val[2].u8[6];
    HIDWORD(v65.f64[0]) = v118.val[2].u8[7];
    *&v65.f64[0] = vand_s8(*&v65.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v65.f64[0]);
    v53.i64[1] = HIDWORD(v65.f64[0]);
    v119.val[1] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    LODWORD(v65.f64[0]) = v50;
    HIDWORD(v65.f64[0]) = BYTE1(v50);
    *&v65.f64[0] = vand_s8(*&v65.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v65.f64[0]);
    v53.i64[1] = HIDWORD(v65.f64[0]);
    v119.val[3] = vcvtq_f64_u64(v53);
    v67 = (v48 + 192);
    vst4q_f64(v67, v119);
    LODWORD(v65.f64[0]) = BYTE2(v50);
    HIDWORD(v65.f64[0]) = BYTE3(v50);
    *&v119.val[0].f64[0] = vand_s8(*&v65.f64[0], 0xFF000000FFLL);
    *&v65.f64[0] = vextq_s8(v118.val[1], v118.val[1], 8uLL).u64[0];
    LODWORD(v66.f64[0]) = LOBYTE(v65.f64[0]);
    HIDWORD(v66.f64[0]) = BYTE1(v65.f64[0]);
    *&v66.f64[0] = vand_s8(*&v66.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v66.f64[0]);
    v53.i64[1] = HIDWORD(v66.f64[0]);
    *&v66.f64[0] = vextq_s8(v118.val[2], v118.val[2], 8uLL).u64[0];
    *&a9 = vextq_s8(v118.val[3], v118.val[3], 8uLL).u64[0];
    v120.val[1] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    v120.val[0] = vmulq_n_f64(v119.val[3], a7);
    v118.val[1].i32[0] = LOBYTE(a9);
    v118.val[1].i32[1] = BYTE1(a9);
    v53.i64[0] = LODWORD(v119.val[0].f64[0]);
    v53.i64[1] = HIDWORD(v119.val[0].f64[0]);
    v118.val[2] = v53;
    *v118.val[1].i8 = vand_s8(*v118.val[1].i8, 0xFF000000FFLL);
    v53.i64[0] = v118.val[1].u32[0];
    v53.i64[1] = v118.val[1].u32[1];
    v120.val[3] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    v118.val[1].i32[0] = LOBYTE(v66.f64[0]);
    v118.val[1].i32[1] = BYTE1(v66.f64[0]);
    *v118.val[1].i8 = vand_s8(*v118.val[1].i8, 0xFF000000FFLL);
    v53.i64[0] = v118.val[1].u32[0];
    v53.i64[1] = v118.val[1].u32[1];
    v120.val[2] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    v118.val[1].i32[0] = BYTE4(v50);
    v118.val[1].i32[1] = BYTE5(v50);
    v68 = (v48 + 256);
    vst4q_f64(v68, v120);
    v118.val[3].i32[0] = BYTE2(v65.f64[0]);
    v118.val[3].i32[1] = BYTE3(v65.f64[0]);
    *v118.val[3].i8 = vand_s8(*v118.val[3].i8, 0xFF000000FFLL);
    v53.i64[0] = v118.val[3].u32[0];
    v53.i64[1] = v118.val[3].u32[1];
    v119.val[1] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    v119.val[0] = vmulq_n_f64(vcvtq_f64_u64(v118.val[2]), a7);
    v118.val[2].i32[0] = BYTE2(a9);
    *v118.val[1].i8 = vand_s8(*v118.val[1].i8, 0xFF000000FFLL);
    v118.val[2].i32[1] = BYTE3(a9);
    *v118.val[2].i8 = vand_s8(*v118.val[2].i8, 0xFF000000FFLL);
    v53.i64[0] = v118.val[2].u32[0];
    v53.i64[1] = v118.val[2].u32[1];
    v119.val[3] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    v118.val[2].i32[0] = BYTE2(v66.f64[0]);
    v53.i64[0] = v118.val[1].u32[0];
    v53.i64[1] = v118.val[1].u32[1];
    v118.val[1] = v53;
    v118.val[2].i32[1] = BYTE3(v66.f64[0]);
    *v118.val[2].i8 = vand_s8(*v118.val[2].i8, 0xFF000000FFLL);
    v53.i64[0] = v118.val[2].u32[0];
    v53.i64[1] = v118.val[2].u32[1];
    v119.val[2] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    v118.val[2].i32[0] = BYTE4(v65.f64[0]);
    v118.val[2].i32[1] = BYTE5(v65.f64[0]);
    *v118.val[2].i8 = vand_s8(*v118.val[2].i8, 0xFF000000FFLL);
    v53.i64[0] = v118.val[2].u32[0];
    v53.i64[1] = v118.val[2].u32[1];
    v69 = (v48 + 320);
    vst4q_f64(v69, v119);
    v118.val[3].i32[0] = BYTE4(v66.f64[0]);
    v118.val[3].i32[1] = BYTE5(v66.f64[0]);
    v119.val[1] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    v119.val[0] = vmulq_n_f64(vcvtq_f64_u64(v118.val[1]), a7);
    v118.val[1].i32[0] = BYTE4(a9);
    v118.val[1].i32[1] = BYTE5(a9);
    *v118.val[1].i8 = vand_s8(*v118.val[1].i8, 0xFF000000FFLL);
    v53.i64[0] = v118.val[1].u32[0];
    v53.i64[1] = v118.val[1].u32[1];
    v119.val[3] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    *v118.val[1].i8 = vand_s8(*v118.val[3].i8, 0xFF000000FFLL);
    v53.i64[0] = v118.val[1].u32[0];
    v53.i64[1] = v118.val[1].u32[1];
    v119.val[2] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    v70 = (v48 + 384);
    vst4q_f64(v70, v119);
    v118.val[1].i32[0] = BYTE6(v50);
    v118.val[1].i32[1] = HIBYTE(v50);
    v71 = vand_s8(*v118.val[1].i8, 0xFF000000FFLL);
    v53.i64[0] = v71.u32[0];
    v53.i64[1] = v71.u32[1];
    v72 = vcvtq_f64_u64(v53);
    v118.val[1].i32[0] = BYTE6(v65.f64[0]);
    v118.val[1].i32[1] = HIBYTE(v65.f64[0]);
    *v118.val[1].i8 = vand_s8(*v118.val[1].i8, 0xFF000000FFLL);
    v53.i64[0] = v118.val[1].u32[0];
    v53.i64[1] = v118.val[1].u32[1];
    a10 = vcvtq_f64_u64(v53);
    v118.val[2].i32[0] = BYTE6(v66.f64[0]);
    v118.val[2].i32[1] = HIBYTE(v66.f64[0]);
    v119.val[0] = vmulq_n_f64(a10, a7);
    v73 = vmulq_n_f64(v72, a7);
    LODWORD(v72.f64[0]) = BYTE6(a9);
    HIDWORD(v72.f64[0]) = HIBYTE(a9);
    *&v72.f64[0] = vand_s8(*&v72.f64[0], 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v72.f64[0]);
    v53.i64[1] = HIDWORD(v72.f64[0]);
    v119.val[2] = vmulq_n_f64(vcvtq_f64_u64(v53), a7);
    *&v72.f64[0] = vand_s8(*v118.val[2].i8, 0xFF000000FFLL);
    v53.i64[0] = LODWORD(v72.f64[0]);
    v53.i64[1] = HIDWORD(v72.f64[0]);
    a8 = vcvtq_f64_u64(v53);
    v119.val[1] = vmulq_n_f64(a8, a7);
    result = (v48 + 448);
    vst4q_f64(result, v119);
    v48 += 512;
    v47 -= 16;
  }

  while (v47);
  if (v46 != (v46 & 0x3FFFFFF0))
  {
    goto LABEL_11;
  }

LABEL_14:
  if (v15 >= v13)
  {
    return result;
  }

  v30 = v15;
  if (v11 <= 1)
  {
    v36 = v13 - v15;
    if (v36 < 4 || ((v74 = (a3 + 8 * v15), v75 = a3 + 8 * v13, v76 = &a2[v15], v74 < &a2[v13]) ? (v77 = v76 >= v75) : (v77 = 1), v77 ? (v78 = 0) : (v78 = 1), v12 < v75 ? (v79 = v74 >= (v12 + 1)) : (v79 = 1), !v79 || (v78 & 1) != 0))
    {
      v37 = v30;
      goto LABEL_23;
    }

    if (v36 >= 0x10)
    {
      v80 = v36 & 0xFFFFFFFFFFFFFFF0;
      v81 = vld1q_dup_f64(v12);
      v82 = &a2[v30];
      v83 = v36 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v84 = *v82;
        v82 += 16;
        v85 = vextq_s8(v84, v84, 8uLL).u64[0];
        v86.i32[0] = BYTE6(v85);
        v86.i32[1] = HIBYTE(v85);
        v87 = vand_s8(v86, 0xFF000000FFLL);
        v88.i64[0] = v87.u32[0];
        v88.i64[1] = v87.u32[1];
        v89.i32[0] = BYTE4(v85);
        v90 = vcvtq_f64_u64(v88);
        v89.i32[1] = BYTE5(v85);
        v91 = vand_s8(v89, 0xFF000000FFLL);
        v88.i64[0] = v91.u32[0];
        v88.i64[1] = v91.u32[1];
        v92.i32[0] = BYTE2(v85);
        v92.i32[1] = BYTE3(v85);
        v93 = vcvtq_f64_u64(v88);
        v94 = vand_s8(v92, 0xFF000000FFLL);
        v88.i64[0] = v94.u32[0];
        v88.i64[1] = v94.u32[1];
        v95 = vcvtq_f64_u64(v88);
        v92.i32[0] = v85;
        v92.i32[1] = BYTE1(v85);
        v96 = vand_s8(v92, 0xFF000000FFLL);
        v88.i64[0] = v96.u32[0];
        v88.i64[1] = v96.u32[1];
        v92.i32[0] = v84.u8[6];
        v97 = vcvtq_f64_u64(v88);
        v92.i32[1] = v84.u8[7];
        v98 = vand_s8(v92, 0xFF000000FFLL);
        v88.i64[0] = v98.u32[0];
        v88.i64[1] = v98.u32[1];
        v99.i32[0] = v84.u8[4];
        v99.i32[1] = v84.u8[5];
        v100 = vcvtq_f64_u64(v88);
        v101 = vand_s8(v99, 0xFF000000FFLL);
        v88.i64[0] = v101.u32[0];
        v88.i64[1] = v101.u32[1];
        v102 = vcvtq_f64_u64(v88);
        v103.i32[0] = v84.u8[2];
        v103.i32[1] = v84.u8[3];
        v104 = vand_s8(v103, 0xFF000000FFLL);
        v88.i64[0] = v104.u32[0];
        v88.i64[1] = v104.u32[1];
        v105.i32[0] = v84.u8[0];
        v106 = vcvtq_f64_u64(v88);
        v105.i32[1] = v84.u8[1];
        v107 = vand_s8(v105, 0xFF000000FFLL);
        v88.i64[0] = v107.u32[0];
        v88.i64[1] = v107.u32[1];
        v74[2] = vmulq_f64(v81, v102);
        v74[3] = vmulq_f64(v81, v100);
        *v74 = vmulq_f64(v81, vcvtq_f64_u64(v88));
        v74[1] = vmulq_f64(v81, v106);
        v74[6] = vmulq_f64(v81, v93);
        v74[7] = vmulq_f64(v81, v90);
        a8 = vmulq_f64(v81, v95);
        v74[4] = vmulq_f64(v81, v97);
        v74[5] = a8;
        v74 += 8;
        v83 -= 16;
      }

      while (v83);
      if (v36 == v80)
      {
        return result;
      }

      if ((v36 & 0xC) == 0)
      {
        v37 = v80 + v30;
        goto LABEL_23;
      }
    }

    else
    {
      v80 = 0;
    }

    v108 = vld1q_dup_f64(v12);
    v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL) + v30;
    v109 = v80 - (v36 & 0xFFFFFFFFFFFFFFFCLL);
    v110 = v80 + v30;
    v111 = &a2[v110];
    v112 = (a3 + 8 * v110);
    do
    {
      v113 = *v111;
      v111 += 4;
      LODWORD(a8.f64[0]) = v113;
      v114 = vmovl_u16(*&vmovl_u8(*&a8.f64[0]));
      v115 = vand_s8(*v114.i8, 0xFF000000FFLL);
      v116.i64[0] = v115.u32[0];
      v116.i64[1] = v115.u32[1];
      v117 = vcvtq_f64_u64(v116);
      *v114.i8 = vand_s8(*&vextq_s8(v114, v114, 8uLL), 0xFF000000FFLL);
      v116.i64[0] = v114.u32[0];
      v116.i64[1] = v114.u32[1];
      a8 = vmulq_f64(v108, vcvtq_f64_u64(v116));
      *v112 = vmulq_f64(v108, v117);
      v112[1] = a8;
      v112 += 2;
      v109 += 4;
    }

    while (v109);
    if (v36 == (v36 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

LABEL_23:
    v38 = (a3 + 8 * v37);
    v39 = &a2[v37];
    v40 = v13 - v37;
    do
    {
      v41 = *v39++;
      *v38++ = *v12 * v41;
      --v40;
    }

    while (v40);
    return result;
  }

  v31 = v11 - 1;
  do
  {
    LOBYTE(a6) = a2[v30];
    a6 = *v12 * *&a6;
    v32 = &a2[a5];
    v33 = v31;
    v34 = v12 + 1;
    do
    {
      v35 = *v34++;
      LOBYTE(a8.f64[0]) = v32[v30];
      a8.f64[0] = *&a8.f64[0];
      a6 = a6 + v35 * a8.f64[0];
      v32 += a5;
      --v33;
    }

    while (v33);
    *(a3 + 8 * v30++) = a6;
  }

  while (v30 != v13);
  return result;
}

uint64_t sub_100311930(void *a1)
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

uint64_t sub_1003119B4(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *a1 = off_100478EF8;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_17;
    }

    v8 = *(a2 + 56);
    if (v8)
    {
      atomic_fetch_add((v8 + 20), 1u);
      v9 = *(a1 + 72);
      if (v9)
      {
        if (atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
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
      *v6 = *a2;
      v13 = *(a2 + 4);
      if (v13 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v13;
        *(a1 + 24) = *(a2 + 8);
        v14 = *(a2 + 72);
        v15 = *(a1 + 88);
        *v15 = *v14;
        v15[1] = v14[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *v6 = *a2;
      if (v12 <= 2)
      {
        v13 = *(a2 + 4);
        if (v13 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v6, a2);
    goto LABEL_16;
  }

  LODWORD(v19) = 33619968;
  v20 = a1 + 16;
  v21 = 0;
  sub_10022B754(a2, &v19);
LABEL_17:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 5 || v17 != 1 && v16 != 1)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 77), "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v19, "RowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3053);
  }

  return a1;
}

uint64_t sub_100311C24(uint64_t a1)
{
  *a1 = off_100478EF8;
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

void sub_100311CD4(uint64_t a1)
{
  *a1 = off_100478EF8;
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

float *sub_100311DA4(float *result, const __int16 *a2, float *a3, int a4, int a5, float32x4_t a6, double a7, float32x4_t a8)
{
  v8 = *(result + 2);
  v9 = *(result + 4);
  v10 = (a5 * a4);
  v11 = (v10 - 4);
  if (v10 < 4)
  {
    LODWORD(v12) = 0;
    goto LABEL_15;
  }

  if (v8 <= 1)
  {
    if (v11 > 0x1B && (v9 + 1 <= a3 || v9 >= (a3 + ((4 * v11) & 0x1FFFFFFF0) + 16)))
    {
      v36 = (v11 >> 2) + 1;
      v12 = 4 * (v36 & 0x3FFFFFF8);
      v37 = v36 & 0x3FFFFFF8;
      v38 = a3;
      v39 = a2;
      do
      {
        a6.f32[0] = *v9;
        v55 = vld4q_s16(v39);
        v39 += 32;
        v56.val[1] = vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v55.val[1])), *v9);
        v56.val[0] = vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v55.val[0])), *v9);
        v56.val[3] = vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v55.val[3])), *v9);
        v56.val[2] = vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v55.val[2])), *v9);
        a8 = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v55.val[1].i8)), *v9);
        v55.val[0] = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v55.val[0].i8)), *v9);
        v55.val[3] = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v55.val[3].i8)), *v9);
        v55.val[2] = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v55.val[2].i8)), *v9);
        result = v38 + 32;
        vst4q_f32(v38, *(&a8 - 1));
        v40 = v38 + 16;
        vst4q_f32(v40, v56);
        v38 = result;
        v37 -= 8;
      }

      while (v37);
      if (v36 == (v36 & 0x3FFFFFF8))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v12 = 0;
    }

    v18 = &a3[v12];
    v19 = &a2[v12];
    do
    {
      v20 = *v19;
      v19 += 4;
      a6 = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(v20)), *v9);
      *v18++ = a6;
      v12 += 4;
    }

    while (v12 <= v11);
    goto LABEL_15;
  }

  v12 = 0;
  v13 = a5;
  v14 = &a2[v13];
  do
  {
    a6 = vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*&a2[v12])), *v9);
    v15 = v14;
    result = (v8 - 1);
    v16 = v9 + 1;
    do
    {
      v17 = *v16++;
      a8 = vcvtq_f32_u32(vmovl_u16(*v15));
      a6 = vmlaq_n_f32(a6, a8, v17);
      v15 = (v15 + v13 * 2);
      result = (result - 1);
    }

    while (result);
    *&a3[v12] = a6;
    v12 += 4;
    v14 += 4;
  }

  while (v12 <= v11);
LABEL_15:
  if (v12 >= v10)
  {
    return result;
  }

  v21 = v12;
  if (v8 <= 1)
  {
    v29 = v10 - v12;
    if (v29 < 4 || (v30 = &a3[v12], v30 < (v9 + 1)) && v9 < &a3[v10])
    {
      v31 = v12;
      goto LABEL_26;
    }

    if (v29 >= 0x10)
    {
      v41 = v29 & 0xFFFFFFFFFFFFFFF0;
      v42 = vld1q_dup_f32(v9);
      v43 = &a2[v21 + 8];
      v44 = (v30 + 32);
      v45 = v29 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v46 = v43[-1];
        v47 = vcvtq_f32_u32(vmovl_high_u16(*v43));
        v48 = vmulq_f32(v42, vcvtq_f32_u32(vmovl_u16(*v43->i8)));
        v44[-2] = vmulq_f32(v42, vcvtq_f32_u32(vmovl_u16(*v46.i8)));
        v44[-1] = vmulq_f32(v42, vcvtq_f32_u32(vmovl_high_u16(v46)));
        *v44 = v48;
        v44[1] = vmulq_f32(v42, v47);
        v44 += 4;
        v43 += 2;
        v45 -= 16;
      }

      while (v45);
      if (v29 == v41)
      {
        return result;
      }

      if ((v29 & 0xC) == 0)
      {
        v31 = v41 + v21;
        goto LABEL_26;
      }
    }

    else
    {
      v41 = 0;
    }

    v31 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + v21;
    v49 = vld1q_dup_f32(v9);
    v50 = v41 - (v29 & 0xFFFFFFFFFFFFFFFCLL);
    v51 = v41 + v21;
    v52 = &a2[v51];
    v53 = &a3[v51];
    do
    {
      v54 = *v52;
      v52 += 4;
      *v53++ = vmulq_f32(v49, vcvtq_f32_u32(vmovl_u16(v54)));
      v50 += 4;
    }

    while (v50);
    if (v29 == (v29 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

LABEL_26:
    v32 = &a3[v31];
    v33 = v10 - v31;
    v34 = &a2[v31];
    do
    {
      v35 = *v34++;
      *v32++ = *v9 * v35;
      --v33;
    }

    while (v33);
    return result;
  }

  v22 = v8 - 1;
  v23 = a5;
  v24 = &a2[v12 + v23];
  do
  {
    a6.i16[0] = a2[v21];
    a6.f32[0] = *v9 * a6.u32[0];
    v25 = v24;
    v26 = v22;
    v27 = v9 + 1;
    do
    {
      v28 = *v27++;
      a8.i16[0] = *v25;
      a8.f32[0] = a8.u32[0];
      a6.f32[0] = a6.f32[0] + (v28 * a8.f32[0]);
      v25 = (v25 + v23 * 2);
      --v26;
    }

    while (v26);
    a3[v21++] = a6.f32[0];
    ++v24;
  }

  while (v21 != v10);
  return result;
}

uint64_t sub_1003120FC(void *a1)
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

uint64_t sub_100312180(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *a1 = off_100478F78;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_17;
    }

    v8 = *(a2 + 56);
    if (v8)
    {
      atomic_fetch_add((v8 + 20), 1u);
      v9 = *(a1 + 72);
      if (v9)
      {
        if (atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
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
      *v6 = *a2;
      v13 = *(a2 + 4);
      if (v13 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v13;
        *(a1 + 24) = *(a2 + 8);
        v14 = *(a2 + 72);
        v15 = *(a1 + 88);
        *v15 = *v14;
        v15[1] = v14[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *v6 = *a2;
      if (v12 <= 2)
      {
        v13 = *(a2 + 4);
        if (v13 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v6, a2);
    goto LABEL_16;
  }

  LODWORD(v19) = 33619968;
  v20 = a1 + 16;
  v21 = 0;
  sub_10022B754(a2, &v19);
LABEL_17:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 6 || v17 != 1 && v16 != 1)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 77), "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v19, "RowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3053);
  }

  return a1;
}

uint64_t sub_1003123F0(uint64_t a1)
{
  *a1 = off_100478F78;
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

void sub_1003124A0(uint64_t a1)
{
  *a1 = off_100478F78;
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

double *sub_100312570(double *result, const __int16 *a2, unint64_t a3, int a4, int a5, double a6, float64x2_t a7, float64x2_t a8, float64x2_t a9, float64x2_t a10, double a11)
{
  v11 = *(result + 2);
  v12 = *(result + 4);
  v13 = (a5 * a4);
  v14 = (v13 - 4);
  if (v13 < 4)
  {
    LODWORD(v15) = 0;
    goto LABEL_15;
  }

  if (v11 <= 1)
  {
    if (v14 > 0x1B && ((v12 + 1) <= a3 || v12 >= a3 + ((8 * v14) & 0x3FFFFFFE0) + 32))
    {
      v43 = (v14 >> 2) + 1;
      v15 = 4 * (v43 & 0x3FFFFFF8);
      v44 = v43 & 0x3FFFFFF8;
      v45 = a3;
      v46 = a2;
      do
      {
        a6 = *v12;
        v86 = vld4q_s16(v46);
        v46 += 32;
        v47 = vmovl_u16(*v86.val[0].i8);
        v48.i64[0] = v47.u32[0];
        v48.i64[1] = v47.u32[1];
        v49 = vcvtq_f64_u64(v48);
        v48.i64[0] = v47.u32[2];
        v48.i64[1] = v47.u32[3];
        v50 = vcvtq_f64_u64(v48);
        v51 = vmovl_high_u16(v86.val[0]);
        v48.i64[0] = v51.u32[0];
        v48.i64[1] = v51.u32[1];
        v52 = vcvtq_f64_u64(v48);
        v48.i64[0] = v51.u32[2];
        v48.i64[1] = v51.u32[3];
        a7 = vcvtq_f64_u64(v48);
        v53 = vmovl_u16(*v86.val[1].i8);
        v48.i64[0] = v53.u32[0];
        v48.i64[1] = v53.u32[1];
        v54 = vcvtq_f64_u64(v48);
        v48.i64[0] = v53.u32[2];
        v48.i64[1] = v53.u32[3];
        v55 = vcvtq_f64_u64(v48);
        v56 = vmovl_high_u16(v86.val[1]);
        v48.i64[0] = v56.u32[0];
        v48.i64[1] = v56.u32[1];
        v57 = vcvtq_f64_u64(v48);
        v48.i64[0] = v56.u32[2];
        v48.i64[1] = v56.u32[3];
        v58 = vcvtq_f64_u64(v48);
        v59 = vmovl_u16(*v86.val[2].i8);
        v48.i64[0] = v59.u32[0];
        v48.i64[1] = v59.u32[1];
        v60 = vcvtq_f64_u64(v48);
        v48.i64[0] = v59.u32[2];
        v48.i64[1] = v59.u32[3];
        v61 = vcvtq_f64_u64(v48);
        v62 = vmovl_high_u16(v86.val[2]);
        v48.i64[0] = v62.u32[0];
        v48.i64[1] = v62.u32[1];
        v63 = vcvtq_f64_u64(v48);
        v48.i64[0] = v62.u32[2];
        v48.i64[1] = v62.u32[3];
        v64 = vcvtq_f64_u64(v48);
        v65 = vmovl_u16(*v86.val[3].i8);
        v48.i64[0] = v65.u32[0];
        v48.i64[1] = v65.u32[1];
        v66 = vcvtq_f64_u64(v48);
        v48.i64[0] = v65.u32[2];
        v48.i64[1] = v65.u32[3];
        v67 = vcvtq_f64_u64(v48);
        v86.val[0] = vmovl_high_u16(v86.val[3]);
        v48.i64[0] = v86.val[0].u32[0];
        v48.i64[1] = v86.val[0].u32[1];
        v86.val[1] = vcvtq_f64_u64(v48);
        v87.val[1] = vmulq_n_f64(v55, *v12);
        v87.val[0] = vmulq_n_f64(v50, *v12);
        v87.val[3] = vmulq_n_f64(v67, *v12);
        v87.val[2] = vmulq_n_f64(v61, *v12);
        v86.val[3] = vmulq_n_f64(v54, *v12);
        v86.val[2] = vmulq_n_f64(v49, *v12);
        v68 = vmulq_n_f64(v66, *v12);
        v69 = vmulq_n_f64(v60, *v12);
        v70 = v45;
        vst4q_f64(v70, *(&v86 + 32));
        v70 += 8;
        vst4q_f64(v70, v87);
        v48.i64[0] = v86.val[0].u32[2];
        v48.i64[1] = v86.val[0].u32[3];
        v86.val[3] = vmulq_n_f64(v57, a6);
        v86.val[2] = vmulq_n_f64(v52, a6);
        v71 = vmulq_n_f64(v86.val[1], a6);
        v72 = vmulq_n_f64(v63, a6);
        v73 = (v45 + 128);
        vst4q_f64(v73, *(&v86 + 32));
        a8 = vcvtq_f64_u64(v48);
        a10 = vmulq_n_f64(v58, a6);
        a9 = vmulq_n_f64(a7, a6);
        v74 = vmulq_n_f64(a8, a6);
        v75 = vmulq_n_f64(v64, a6);
        result = (v45 + 192);
        vst4q_f64(result, *a9.f64);
        v45 += 256;
        v44 -= 8;
      }

      while (v44);
      if (v43 == (v43 & 0x3FFFFFF8))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v15 = 0;
    }

    v27 = &a2[v15 + 2];
    v28 = (a3 + 8 * v15 + 16);
    do
    {
      LOWORD(a7.f64[0]) = *(v27 - 2);
      a7.f64[0] = *v12 * *&a7.f64[0];
      LOWORD(a8.f64[0]) = *(v27 - 1);
      a8.f64[0] = *v12 * *&a8.f64[0];
      LOWORD(a9.f64[0]) = *v27;
      a9.f64[0] = *v12 * *&a9.f64[0];
      LOWORD(a10.f64[0]) = v27[1];
      a10.f64[0] = *&a10.f64[0];
      a6 = *v12 * a10.f64[0];
      *(v28 - 2) = a7.f64[0];
      *(v28 - 1) = a8.f64[0];
      *v28 = a9.f64[0];
      v28[1] = a6;
      v28 += 4;
      v15 += 4;
      v27 += 4;
    }

    while (v15 <= v14);
    goto LABEL_15;
  }

  v15 = 0;
  v16 = a5;
  v17 = &a2[v16 + 2];
  do
  {
    v18 = &a2[v15];
    LOWORD(a6) = *v18;
    a6 = *v12 * *&a6;
    LOWORD(a7.f64[0]) = v18[1];
    a7.f64[0] = *v12 * *&a7.f64[0];
    LOWORD(a8.f64[0]) = v18[2];
    a8.f64[0] = *v12 * *&a8.f64[0];
    LOWORD(a10.f64[0]) = v18[3];
    v19 = *v12 * *&a10.f64[0];
    v20 = v17;
    result = (v11 - 1);
    v21 = v12 + 1;
    do
    {
      v22 = *v21++;
      a10.f64[0] = v22;
      LOWORD(a11) = *(v20 - 2);
      *&v23 = *&a11;
      a6 = a6 + v22 * *&v23;
      LOWORD(v23) = *(v20 - 1);
      *&v24 = v23;
      a7.f64[0] = a7.f64[0] + v22 * *&v24;
      LOWORD(v24) = *v20;
      *&v25 = v24;
      a8.f64[0] = a8.f64[0] + v22 * *&v25;
      LOWORD(v25) = v20[1];
      a11 = v25;
      v19 = v19 + v22 * a11;
      v20 = (v20 + v16 * 2);
      result = (result - 1);
    }

    while (result);
    v26 = (a3 + 8 * v15);
    *v26 = a6;
    v26[1] = a7.f64[0];
    v26[2] = a8.f64[0];
    v26[3] = v19;
    v15 += 4;
    v17 += 4;
  }

  while (v15 <= v14);
LABEL_15:
  if (v15 >= v13)
  {
    return result;
  }

  v29 = v15;
  if (v11 <= 1)
  {
    v37 = v13 - v15;
    if (v37 > 7 && ((v38 = (a3 + 8 * v15), v38 >= (v12 + 1)) || v12 >= a3 + 8 * v13))
    {
      v15 = (v37 & 0xFFFFFFFFFFFFFFF8) + v15;
      v76 = vld1q_dup_f64(v12);
      v77 = &a2[v29];
      v78 = v37 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v79 = *v77;
        v77 += 8;
        v80 = vmovl_high_u16(v79);
        v81.i64[0] = v80.u32[2];
        v81.i64[1] = v80.u32[3];
        v82 = vcvtq_f64_u64(v81);
        v81.i64[0] = v80.u32[0];
        v81.i64[1] = v80.u32[1];
        v83 = vcvtq_f64_u64(v81);
        v84 = vmovl_u16(*v79.i8);
        v81.i64[0] = v84.u32[2];
        v81.i64[1] = v84.u32[3];
        v85 = vcvtq_f64_u64(v81);
        v81.i64[0] = v84.u32[0];
        v81.i64[1] = v84.u32[1];
        v38[2] = vmulq_f64(v76, v83);
        v38[3] = vmulq_f64(v76, v82);
        *v38 = vmulq_f64(v76, vcvtq_f64_u64(v81));
        v38[1] = vmulq_f64(v76, v85);
        v38 += 4;
        v78 -= 8;
      }

      while (v78);
      if (v37 == (v37 & 0xFFFFFFFFFFFFFFF8))
      {
        return result;
      }
    }

    else
    {
      v15 = v15;
    }

    v39 = (a3 + 8 * v15);
    v40 = v13 - v15;
    v41 = &a2[v15];
    do
    {
      v42 = *v41++;
      *v39++ = *v12 * v42;
      --v40;
    }

    while (v40);
    return result;
  }

  v30 = v11 - 1;
  v31 = a5;
  v32 = &a2[v15 + v31];
  do
  {
    LOWORD(a6) = a2[v29];
    a6 = *v12 * *&a6;
    v33 = v32;
    v34 = v30;
    v35 = v12 + 1;
    do
    {
      v36 = *v35++;
      LOWORD(a8.f64[0]) = *v33;
      a8.f64[0] = *&a8.f64[0];
      a6 = a6 + v36 * a8.f64[0];
      v33 = (v33 + v31 * 2);
      --v34;
    }

    while (v34);
    *(a3 + 8 * v29++) = a6;
    ++v32;
  }

  while (v29 != v13);
  return result;
}

uint64_t sub_100312970(void *a1)
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

uint64_t sub_1003129F4(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *a1 = off_100478FF8;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_17;
    }

    v8 = *(a2 + 56);
    if (v8)
    {
      atomic_fetch_add((v8 + 20), 1u);
      v9 = *(a1 + 72);
      if (v9)
      {
        if (atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
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
      *v6 = *a2;
      v13 = *(a2 + 4);
      if (v13 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v13;
        *(a1 + 24) = *(a2 + 8);
        v14 = *(a2 + 72);
        v15 = *(a1 + 88);
        *v15 = *v14;
        v15[1] = v14[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *v6 = *a2;
      if (v12 <= 2)
      {
        v13 = *(a2 + 4);
        if (v13 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v6, a2);
    goto LABEL_16;
  }

  LODWORD(v19) = 33619968;
  v20 = a1 + 16;
  v21 = 0;
  sub_10022B754(a2, &v19);
LABEL_17:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 5 || v17 != 1 && v16 != 1)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 77), "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v19, "RowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3053);
  }

  return a1;
}

uint64_t sub_100312C64(uint64_t a1)
{
  *a1 = off_100478FF8;
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

void sub_100312D14(uint64_t a1)
{
  *a1 = off_100478FF8;
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

float *sub_100312DE4(float *result, const __int16 *a2, float *a3, int a4, int a5, double a6, float32x4_t a7, float32x4_t a8)
{
  v8 = *(result + 2);
  v9 = *(result + 4);
  v10 = (a5 * a4);
  v11 = (v10 - 4);
  if (v10 < 4)
  {
    LODWORD(v12) = 0;
    goto LABEL_15;
  }

  if (v8 <= 1)
  {
    if (v11 > 0x1B && (v9 + 1 <= a3 || v9 >= (a3 + ((4 * v11) & 0x1FFFFFFF0) + 16)))
    {
      v38 = (v11 >> 2) + 1;
      v12 = 4 * (v38 & 0x3FFFFFF8);
      v39 = v38 & 0x3FFFFFF8;
      v40 = a3;
      v41 = a2;
      do
      {
        v57 = vld4q_s16(v41);
        v41 += 32;
        v58.val[1] = vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v57.val[1])), *v9);
        v58.val[0] = vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v57.val[0])), *v9);
        v58.val[3] = vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v57.val[3])), *v9);
        v58.val[2] = vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v57.val[2])), *v9);
        a8 = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v57.val[1].i8)), *v9);
        a7 = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v57.val[0].i8)), *v9);
        v57.val[3] = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v57.val[3].i8)), *v9);
        v57.val[2] = vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v57.val[2].i8)), *v9);
        result = v40 + 32;
        vst4q_f32(v40, *a7.f32);
        v42 = v40 + 16;
        vst4q_f32(v42, v58);
        v40 = result;
        v39 -= 8;
      }

      while (v39);
      if (v38 == (v38 & 0x3FFFFFF8))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v12 = 0;
    }

    v19 = &a3[v12];
    v20 = &a2[v12];
    do
    {
      v21 = *v20;
      v20 += 4;
      a7 = vcvtq_f32_s32(vmovl_s16(v21));
      *v19++ = vmulq_n_f32(a7, *v9);
      v12 += 4;
    }

    while (v12 <= v11);
    goto LABEL_15;
  }

  v12 = 0;
  v13 = a5;
  v14 = &a2[v13];
  do
  {
    a7 = vcvtq_f32_s32(vmovl_s16(*&a2[v12]));
    v15 = vmulq_n_f32(a7, *v9);
    v16 = v14;
    result = (v8 - 1);
    v17 = v9 + 1;
    do
    {
      v18 = *v17++;
      a7.i16[1] = HIWORD(v18);
      a8 = vcvtq_f32_s32(vmovl_s16(*v16));
      v15 = vmlaq_n_f32(v15, a8, v18);
      v16 = (v16 + v13 * 2);
      result = (result - 1);
    }

    while (result);
    *&a3[v12] = v15;
    v12 += 4;
    v14 += 4;
  }

  while (v12 <= v11);
LABEL_15:
  if (v12 >= v10)
  {
    return result;
  }

  v22 = v12;
  if (v8 <= 1)
  {
    v31 = v10 - v12;
    if (v31 < 4 || (v32 = &a3[v12], v32 < (v9 + 1)) && v9 < &a3[v10])
    {
      v33 = v12;
      goto LABEL_26;
    }

    if (v31 >= 0x10)
    {
      v43 = v31 & 0xFFFFFFFFFFFFFFF0;
      v44 = vld1q_dup_f32(v9);
      v45 = &a2[v22 + 8];
      v46 = (v32 + 32);
      v47 = v31 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v48 = v45[-1];
        v49 = vcvtq_f32_s32(vmovl_high_s16(*v45));
        v50 = vmulq_f32(v44, vcvtq_f32_s32(vmovl_s16(*v45->i8)));
        v46[-2] = vmulq_f32(v44, vcvtq_f32_s32(vmovl_s16(*v48.i8)));
        v46[-1] = vmulq_f32(v44, vcvtq_f32_s32(vmovl_high_s16(v48)));
        *v46 = v50;
        v46[1] = vmulq_f32(v44, v49);
        v46 += 4;
        v45 += 2;
        v47 -= 16;
      }

      while (v47);
      if (v31 == v43)
      {
        return result;
      }

      if ((v31 & 0xC) == 0)
      {
        v33 = v43 + v22;
        goto LABEL_26;
      }
    }

    else
    {
      v43 = 0;
    }

    v33 = (v31 & 0xFFFFFFFFFFFFFFFCLL) + v22;
    v51 = vld1q_dup_f32(v9);
    v52 = v43 - (v31 & 0xFFFFFFFFFFFFFFFCLL);
    v53 = v43 + v22;
    v54 = &a2[v53];
    v55 = &a3[v53];
    do
    {
      v56 = *v54;
      v54 += 4;
      *v55++ = vmulq_f32(v51, vcvtq_f32_s32(vmovl_s16(v56)));
      v52 += 4;
    }

    while (v52);
    if (v31 == (v31 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

LABEL_26:
    v34 = &a3[v33];
    v35 = v10 - v33;
    v36 = &a2[v33];
    do
    {
      v37 = *v36++;
      *v34++ = *v9 * v37;
      --v35;
    }

    while (v35);
    return result;
  }

  v23 = v8 - 1;
  v24 = a5;
  v25 = &a2[v12 + v24];
  do
  {
    a7.i16[0] = a2[v22];
    a7.i64[0] = vmovl_s16(*a7.f32).u64[0];
    v26 = *v9 * a7.i32[0];
    v27 = v25;
    v28 = v23;
    v29 = v9 + 1;
    do
    {
      v30 = *v29++;
      a7.i16[1] = HIWORD(v30);
      a8.i16[0] = *v27;
      a8.i64[0] = vmovl_s16(*a8.f32).u64[0];
      a8.f32[0] = a8.i32[0];
      v26 = v26 + (v30 * a8.f32[0]);
      v27 = (v27 + v24 * 2);
      --v28;
    }

    while (v28);
    a3[v22++] = v26;
    ++v25;
  }

  while (v22 != v10);
  return result;
}

uint64_t sub_100313144(void *a1)
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

uint64_t sub_1003131C8(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *a1 = off_100479078;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_17;
    }

    v8 = *(a2 + 56);
    if (v8)
    {
      atomic_fetch_add((v8 + 20), 1u);
      v9 = *(a1 + 72);
      if (v9)
      {
        if (atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
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
      *v6 = *a2;
      v13 = *(a2 + 4);
      if (v13 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v13;
        *(a1 + 24) = *(a2 + 8);
        v14 = *(a2 + 72);
        v15 = *(a1 + 88);
        *v15 = *v14;
        v15[1] = v14[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *v6 = *a2;
      if (v12 <= 2)
      {
        v13 = *(a2 + 4);
        if (v13 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v6, a2);
    goto LABEL_16;
  }

  LODWORD(v19) = 33619968;
  v20 = a1 + 16;
  v21 = 0;
  sub_10022B754(a2, &v19);
LABEL_17:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 6 || v17 != 1 && v16 != 1)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 77), "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v19, "RowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3053);
  }

  return a1;
}

uint64_t sub_100313438(uint64_t a1)
{
  *a1 = off_100479078;
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

void sub_1003134E8(uint64_t a1)
{
  *a1 = off_100479078;
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

double *sub_1003135B8(double *result, const __int16 *a2, unint64_t a3, int a4, int a5, double a6, float64x2_t a7, float64x2_t a8, float64x2_t a9, float64x2_t a10, double a11)
{
  v11 = *(result + 2);
  v12 = *(result + 4);
  v13 = (a5 * a4);
  v14 = (v13 - 4);
  if (v13 < 4)
  {
    LODWORD(v15) = 0;
    goto LABEL_15;
  }

  if (v11 <= 1)
  {
    if (v14 > 0x1B && ((v12 + 1) <= a3 || v12 >= a3 + ((8 * v14) & 0x3FFFFFFE0) + 32))
    {
      v45 = (v14 >> 2) + 1;
      v15 = 4 * (v45 & 0x3FFFFFF8);
      v46 = v45 & 0x3FFFFFF8;
      v47 = a3;
      v48 = a2;
      do
      {
        v49 = *v12;
        v89 = vld4q_s16(v48);
        v48 += 32;
        v50 = vmovl_s16(*v89.val[0].i8);
        v51.i64[0] = v50.i32[0];
        v51.i64[1] = v50.i32[1];
        v52 = vcvtq_f64_s64(v51);
        v51.i64[0] = v50.i32[2];
        v51.i64[1] = v50.i32[3];
        v53 = vcvtq_f64_s64(v51);
        v54 = vmovl_high_s16(v89.val[0]);
        v51.i64[0] = v54.i32[0];
        v51.i64[1] = v54.i32[1];
        v55 = vcvtq_f64_s64(v51);
        v51.i64[0] = v54.i32[2];
        v51.i64[1] = v54.i32[3];
        a7 = vcvtq_f64_s64(v51);
        v56 = vmovl_s16(*v89.val[1].i8);
        v51.i64[0] = v56.i32[0];
        v51.i64[1] = v56.i32[1];
        v57 = vcvtq_f64_s64(v51);
        v51.i64[0] = v56.i32[2];
        v51.i64[1] = v56.i32[3];
        v58 = vcvtq_f64_s64(v51);
        v59 = vmovl_high_s16(v89.val[1]);
        v51.i64[0] = v59.i32[0];
        v51.i64[1] = v59.i32[1];
        v60 = vcvtq_f64_s64(v51);
        v51.i64[0] = v59.i32[2];
        v51.i64[1] = v59.i32[3];
        v61 = vcvtq_f64_s64(v51);
        v62 = vmovl_s16(*v89.val[2].i8);
        v51.i64[0] = v62.i32[0];
        v51.i64[1] = v62.i32[1];
        v63 = vcvtq_f64_s64(v51);
        v51.i64[0] = v62.i32[2];
        v51.i64[1] = v62.i32[3];
        v64 = vcvtq_f64_s64(v51);
        v65 = vmovl_high_s16(v89.val[2]);
        v51.i64[0] = v65.i32[0];
        v51.i64[1] = v65.i32[1];
        v66 = vcvtq_f64_s64(v51);
        v51.i64[0] = v65.i32[2];
        v51.i64[1] = v65.i32[3];
        v67 = vcvtq_f64_s64(v51);
        v68 = vmovl_s16(*v89.val[3].i8);
        v51.i64[0] = v68.i32[0];
        v51.i64[1] = v68.i32[1];
        v69 = vcvtq_f64_s64(v51);
        v51.i64[0] = v68.i32[2];
        v51.i64[1] = v68.i32[3];
        v70 = vcvtq_f64_s64(v51);
        v89.val[0] = vmovl_high_s16(v89.val[3]);
        v51.i64[0] = v89.val[0].i32[0];
        v51.i64[1] = v89.val[0].i32[1];
        v89.val[1] = vcvtq_f64_s64(v51);
        v90.val[1] = vmulq_n_f64(v58, *v12);
        v90.val[0] = vmulq_n_f64(v53, *v12);
        v90.val[3] = vmulq_n_f64(v70, *v12);
        v90.val[2] = vmulq_n_f64(v64, *v12);
        v89.val[3] = vmulq_n_f64(v57, *v12);
        v89.val[2] = vmulq_n_f64(v52, *v12);
        v71 = vmulq_n_f64(v69, *v12);
        v72 = vmulq_n_f64(v63, *v12);
        v73 = v47;
        vst4q_f64(v73, *(&v89 + 32));
        v73 += 8;
        vst4q_f64(v73, v90);
        v51.i64[0] = v89.val[0].i32[2];
        v51.i64[1] = v89.val[0].i32[3];
        v89.val[3] = vmulq_n_f64(v60, v49);
        v89.val[2] = vmulq_n_f64(v55, v49);
        v74 = vmulq_n_f64(v89.val[1], v49);
        v75 = vmulq_n_f64(v66, v49);
        v76 = (v47 + 128);
        vst4q_f64(v76, *(&v89 + 32));
        a8 = vcvtq_f64_s64(v51);
        a10 = vmulq_n_f64(v61, v49);
        a9 = vmulq_n_f64(a7, v49);
        v77 = vmulq_n_f64(a8, v49);
        v78 = vmulq_n_f64(v67, v49);
        result = (v47 + 192);
        vst4q_f64(result, *a9.f64);
        v47 += 256;
        v46 -= 8;
      }

      while (v46);
      if (v45 == (v45 & 0x3FFFFFF8))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v15 = 0;
    }

    v27 = &a2[v15 + 2];
    v28 = (a3 + 8 * v15 + 16);
    do
    {
      LOWORD(a7.f64[0]) = *(v27 - 2);
      a7.f64[0] = *v12 * vmovl_s16(*&a7.f64[0]).i32[0];
      LOWORD(a8.f64[0]) = *(v27 - 1);
      a8.f64[0] = *v12 * vmovl_s16(*&a8.f64[0]).i32[0];
      LOWORD(a9.f64[0]) = *v27;
      a9.f64[0] = *v12 * vmovl_s16(*&a9.f64[0]).i32[0];
      LOWORD(a10.f64[0]) = v27[1];
      a10.f64[0] = vmovl_s16(*&a10.f64[0]).i32[0];
      v29 = *v12 * a10.f64[0];
      *(v28 - 2) = a7.f64[0];
      *(v28 - 1) = a8.f64[0];
      *v28 = a9.f64[0];
      v28[1] = v29;
      v28 += 4;
      v15 += 4;
      v27 += 4;
    }

    while (v15 <= v14);
    goto LABEL_15;
  }

  v15 = 0;
  v16 = a5;
  v17 = &a2[v16 + 2];
  do
  {
    v18 = &a2[v15];
    LOWORD(a6) = *v18;
    a6 = *v12 * vmovl_s16(*&a6).i32[0];
    LOWORD(a7.f64[0]) = v18[1];
    a7.f64[0] = *v12 * vmovl_s16(*&a7.f64[0]).i32[0];
    LOWORD(a8.f64[0]) = v18[2];
    a8.f64[0] = *v12 * vmovl_s16(*&a8.f64[0]).i32[0];
    LOWORD(a10.f64[0]) = v18[3];
    v19 = *v12 * vmovl_s16(*&a10.f64[0]).i32[0];
    v20 = v17;
    result = (v11 - 1);
    v21 = v12 + 1;
    do
    {
      v22 = *v21++;
      a10.f64[0] = v22;
      LOWORD(a11) = *(v20 - 2);
      *&v23 = vmovl_s16(*&a11).i32[0];
      a6 = a6 + v22 * *&v23;
      v23.i16[0] = *(v20 - 1);
      *&v24 = vmovl_s16(v23).i32[0];
      a7.f64[0] = a7.f64[0] + v22 * *&v24;
      v24.i16[0] = *v20;
      *&v25 = vmovl_s16(v24).i32[0];
      a8.f64[0] = a8.f64[0] + v22 * *&v25;
      v25.i16[0] = v20[1];
      a11 = vmovl_s16(v25).i32[0];
      v19 = v19 + v22 * a11;
      v20 = (v20 + v16 * 2);
      result = (result - 1);
    }

    while (result);
    v26 = (a3 + 8 * v15);
    *v26 = a6;
    v26[1] = a7.f64[0];
    v26[2] = a8.f64[0];
    v26[3] = v19;
    v15 += 4;
    v17 += 4;
  }

  while (v15 <= v14);
LABEL_15:
  if (v15 >= v13)
  {
    return result;
  }

  v30 = v15;
  if (v11 <= 1)
  {
    v39 = v13 - v15;
    if (v39 > 7 && ((v40 = (a3 + 8 * v15), v40 >= (v12 + 1)) || v12 >= a3 + 8 * v13))
    {
      v15 = (v39 & 0xFFFFFFFFFFFFFFF8) + v15;
      v79 = vld1q_dup_f64(v12);
      v80 = &a2[v30];
      v81 = v39 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v82 = *v80;
        v80 += 8;
        v83 = vmovl_high_s16(v82);
        v84.i64[0] = v83.i32[2];
        v84.i64[1] = v83.i32[3];
        v85 = vcvtq_f64_s64(v84);
        v84.i64[0] = v83.i32[0];
        v84.i64[1] = v83.i32[1];
        v86 = vcvtq_f64_s64(v84);
        v87 = vmovl_s16(*v82.i8);
        v84.i64[0] = v87.i32[2];
        v84.i64[1] = v87.i32[3];
        v88 = vcvtq_f64_s64(v84);
        v84.i64[0] = v87.i32[0];
        v84.i64[1] = v87.i32[1];
        v40[2] = vmulq_f64(v79, v86);
        v40[3] = vmulq_f64(v79, v85);
        *v40 = vmulq_f64(v79, vcvtq_f64_s64(v84));
        v40[1] = vmulq_f64(v79, v88);
        v40 += 4;
        v81 -= 8;
      }

      while (v81);
      if (v39 == (v39 & 0xFFFFFFFFFFFFFFF8))
      {
        return result;
      }
    }

    else
    {
      v15 = v15;
    }

    v41 = (a3 + 8 * v15);
    v42 = v13 - v15;
    v43 = &a2[v15];
    do
    {
      v44 = *v43++;
      *v41++ = *v12 * v44;
      --v42;
    }

    while (v42);
    return result;
  }

  v31 = v11 - 1;
  v32 = a5;
  v33 = &a2[v15 + v32];
  do
  {
    LOWORD(a7.f64[0]) = a2[v30];
    v34 = *v12 * vmovl_s16(*&a7.f64[0]).i32[0];
    v35 = v33;
    v36 = v31;
    v37 = v12 + 1;
    do
    {
      v38 = *v37++;
      a7.f64[0] = v38;
      LOWORD(a8.f64[0]) = *v35;
      a8.f64[0] = vmovl_s16(*&a8.f64[0]).i32[0];
      v34 = v34 + v38 * a8.f64[0];
      v35 = (v35 + v32 * 2);
      --v36;
    }

    while (v36);
    *(a3 + 8 * v30++) = v34;
    ++v33;
  }

  while (v30 != v13);
  return result;
}

uint64_t sub_100313A28(void *a1)
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

uint64_t sub_100313AAC(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *a1 = off_1004790F8;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_17;
    }

    v8 = *(a2 + 56);
    if (v8)
    {
      atomic_fetch_add((v8 + 20), 1u);
      v9 = *(a1 + 72);
      if (v9)
      {
        if (atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
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
      *v6 = *a2;
      v13 = *(a2 + 4);
      if (v13 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v13;
        *(a1 + 24) = *(a2 + 8);
        v14 = *(a2 + 72);
        v15 = *(a1 + 88);
        *v15 = *v14;
        v15[1] = v14[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *v6 = *a2;
      if (v12 <= 2)
      {
        v13 = *(a2 + 4);
        if (v13 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v6, a2);
    goto LABEL_16;
  }

  LODWORD(v19) = 33619968;
  v20 = a1 + 16;
  v21 = 0;
  sub_10022B754(a2, &v19);
LABEL_17:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 5 || v17 != 1 && v16 != 1)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 77), "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v19, "RowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3053);
  }

  return a1;
}

uint64_t sub_100313D1C(uint64_t a1)
{
  *a1 = off_1004790F8;
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

void sub_100313DCC(uint64_t a1)
{
  *a1 = off_1004790F8;
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

float32x4_t *sub_100313E9C(float32x4_t *result, float32x4_t *a2, unint64_t a3, int a4, int a5)
{
  v5 = result->u32[2];
  v6 = result[2].i64[0];
  v7 = (a5 * a4);
  v8 = (v7 - 4);
  if (v7 < 4)
  {
    LODWORD(v9) = 0;
    goto LABEL_13;
  }

  if (v5 > 1)
  {
    v9 = 0;
    v10 = 4 * a5;
    v11 = (a2 + v10);
    do
    {
      v12 = vmulq_n_f32(a2[v9 / 4], *v6);
      result = v11;
      v13 = v5 - 1;
      v14 = v6 + 1;
      do
      {
        v15 = *v14++;
        v12 = vmlaq_n_f32(v12, *result, v15);
        result = (result + v10);
        --v13;
      }

      while (v13);
      *(a3 + 4 * v9) = v12;
      v9 += 4;
      ++v11;
    }

    while (v9 <= v8);
    goto LABEL_13;
  }

  if (v8 <= 0xB)
  {
    v9 = 0;
LABEL_11:
    v16 = (a3 + 4 * v9);
    v17 = &a2[v9 / 4];
    do
    {
      v18 = *v17++;
      *v16++ = vmulq_n_f32(v18, *v6);
      v9 += 4;
    }

    while (v9 <= v8);
    goto LABEL_13;
  }

  v9 = 0;
  v33 = ((4 * v8) & 0x1FFFFFFF0) + 16;
  v34 = a3 + v33;
  v36 = a2 + v33 > a3 && v34 > a2;
  if (v6 < v34 && (v6 + 1) > a3)
  {
    goto LABEL_11;
  }

  if (v36)
  {
    goto LABEL_11;
  }

  v38 = (v8 >> 2) + 1;
  v9 = 4 * (v38 & 0x3FFFFFFC);
  v39 = v38 & 0x3FFFFFFC;
  v40 = a3;
  v41 = a2;
  do
  {
    v42 = v41[2];
    v43 = v41[3];
    v44 = *v41;
    v45 = v41[1];
    v41 += 4;
    v46 = vmulq_n_f32(v45, *v6);
    v47 = vmulq_n_f32(v44, *v6);
    v48 = vmulq_n_f32(v43, *v6);
    *(v40 + 32) = vmulq_n_f32(v42, *v6);
    *(v40 + 48) = v48;
    *v40 = v47;
    *(v40 + 16) = v46;
    v40 += 64;
    v39 -= 4;
  }

  while (v39);
  if (v38 != (v38 & 0x3FFFFFFC))
  {
    goto LABEL_11;
  }

LABEL_13:
  if (v9 < v7)
  {
    v19 = v9;
    if (v5 <= 1)
    {
      v28 = v7 - v9;
      if (v28 <= 0xB)
      {
        goto LABEL_21;
      }

      v49 = 4 * v9;
      v50 = a3 + 4 * v7;
      v51 = a3 + v49 >= a2->u64 + 4 * v7 || a2->u64 + 4 * v9 >= v50;
      v52 = !v51;
      if (v6 < v50 && a3 + v49 < (v6 + 1))
      {
        goto LABEL_21;
      }

      if (v52)
      {
        goto LABEL_21;
      }

      v19 += v28 & 0xFFFFFFFFFFFFFFF8;
      v54 = vld1q_dup_f32(v6);
      v55 = v49 + 16;
      v56 = (a2 + v49 + 16);
      v57 = (a3 + v55);
      v58 = v28 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v59 = vmulq_f32(v54, *v56);
        v57[-1] = vmulq_f32(v54, v56[-1]);
        *v57 = v59;
        v56 += 2;
        v57 += 2;
        v58 -= 8;
      }

      while (v58);
      if (v28 != (v28 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_21:
        v29 = (a3 + 4 * v19);
        v30 = &a2->f32[v19];
        v31 = v7 - v19;
        do
        {
          v32 = *v30++;
          *v29++ = *v6 * v32;
          --v31;
        }

        while (v31);
      }
    }

    else
    {
      v20 = v5 - 1;
      v21 = a5;
      v22 = &a2->f32[v9 + v21];
      do
      {
        v23 = *v6 * a2->f32[v19];
        v24 = v22;
        v25 = v20;
        v26 = v6 + 1;
        do
        {
          v27 = *v26++;
          v23 = v23 + (v27 * *v24);
          v24 = (v24 + v21 * 4);
          --v25;
        }

        while (v25);
        *(a3 + 4 * v19++) = v23;
        ++v22;
      }

      while (v19 != v7);
    }
  }

  return result;
}

uint64_t sub_100314128(void *a1)
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

uint64_t sub_1003141AC(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *a1 = off_100479178;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_17;
    }

    v8 = *(a2 + 56);
    if (v8)
    {
      atomic_fetch_add((v8 + 20), 1u);
      v9 = *(a1 + 72);
      if (v9)
      {
        if (atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
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
      *v6 = *a2;
      v13 = *(a2 + 4);
      if (v13 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v13;
        *(a1 + 24) = *(a2 + 8);
        v14 = *(a2 + 72);
        v15 = *(a1 + 88);
        *v15 = *v14;
        v15[1] = v14[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *v6 = *a2;
      if (v12 <= 2)
      {
        v13 = *(a2 + 4);
        if (v13 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v6, a2);
    goto LABEL_16;
  }

  LODWORD(v19) = 33619968;
  v20 = a1 + 16;
  v21 = 0;
  sub_10022B754(a2, &v19);
LABEL_17:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 6 || v17 != 1 && v16 != 1)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 77), "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v19, "RowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3053);
  }

  return a1;
}

uint64_t sub_10031441C(uint64_t a1)
{
  *a1 = off_100479178;
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

void sub_1003144CC(uint64_t a1)
{
  *a1 = off_100479178;
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

double *sub_10031459C(double *result, const float *a2, double *a3, int a4, int a5)
{
  v5 = *(result + 2);
  v6 = *(result + 4);
  v7 = (a5 * a4);
  v8 = (v7 - 4);
  if (v7 < 4)
  {
    LODWORD(v9) = 0;
    goto LABEL_15;
  }

  if (v5 <= 1)
  {
    if (v8 > 0xB && (v6 + 1 <= a3 || v6 >= (a3 + ((8 * v8) & 0x3FFFFFFE0) + 32)))
    {
      v37 = (v8 >> 2) + 1;
      v9 = 4 * (v37 & 0x3FFFFFFC);
      v38 = v37 & 0x3FFFFFFC;
      v39 = a3;
      v40 = a2;
      do
      {
        v49 = vld4q_f32(v40);
        v40 += 16;
        v50.val[1] = vmulq_n_f64(vcvt_hight_f64_f32(v49.val[1]), *v6);
        v50.val[0] = vmulq_n_f64(vcvt_hight_f64_f32(v49.val[0]), *v6);
        v50.val[3] = vmulq_n_f64(vcvt_hight_f64_f32(v49.val[3]), *v6);
        v50.val[2] = vmulq_n_f64(vcvt_hight_f64_f32(v49.val[2]), *v6);
        v49.val[1] = vmulq_n_f64(vcvtq_f64_f32(*&v49.val[1].f64[0]), *v6);
        v49.val[0] = vmulq_n_f64(vcvtq_f64_f32(*&v49.val[0].f64[0]), *v6);
        v49.val[3] = vmulq_n_f64(vcvtq_f64_f32(*&v49.val[3].f64[0]), *v6);
        v49.val[2] = vmulq_n_f64(vcvtq_f64_f32(*&v49.val[2].f64[0]), *v6);
        result = v39 + 16;
        vst4q_f64(v39, v49);
        v41 = v39 + 8;
        vst4q_f64(v41, v50);
        v39 = result;
        v38 -= 4;
      }

      while (v38);
      if (v37 == (v37 & 0x3FFFFFFC))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v9 = 0;
    }

    v19 = &a3[v9 + 2];
    v20 = &a2[v9 + 2];
    do
    {
      v21 = vmulq_n_f64(vcvtq_f64_f32(*v20), *v6);
      v19[-1] = vmulq_n_f64(vcvtq_f64_f32(v20[-1]), *v6);
      *v19 = v21;
      v9 += 4;
      v19 += 2;
      v20 += 2;
    }

    while (v9 <= v8);
    goto LABEL_15;
  }

  v9 = 0;
  v10 = a5;
  v11 = &a2[v10 + 2];
  do
  {
    v12 = &a2[v9];
    v13 = vmulq_n_f64(vcvtq_f64_f32(*v12), *v6);
    v14 = vmulq_n_f64(vcvtq_f64_f32(v12[1]), *v6);
    v15 = v11;
    result = (v5 - 1);
    v16 = v6 + 1;
    do
    {
      v17 = vld1q_dup_f64(v16++);
      v13 = vmlaq_f64(v13, vcvtq_f64_f32(v15[-1]), v17);
      v14 = vmlaq_f64(v14, vcvtq_f64_f32(*v15), v17);
      v15 = (v15 + v10 * 4);
      result = (result - 1);
    }

    while (result);
    v18 = &a3[v9];
    *v18 = v13;
    v18[1] = v14;
    v9 += 4;
    v11 += 4;
  }

  while (v9 <= v8);
LABEL_15:
  if (v9 >= v7)
  {
    return result;
  }

  v22 = v9;
  if (v5 <= 1)
  {
    v31 = v7 - v9;
    if (v31 > 7 && ((v32 = &a3[v9], v32 >= (v6 + 1)) || v6 >= &a3[v7]))
    {
      v9 = (v31 & 0xFFFFFFFFFFFFFFF8) + v9;
      v42 = vld1q_dup_f64(v6);
      v43 = &a2[v22 + 4];
      v44 = (v32 + 32);
      v45 = v31 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v46 = v43[-1];
        v47 = vcvt_hight_f64_f32(*v43);
        v48 = vmulq_f64(v42, vcvtq_f64_f32(*v43->f32));
        v44[-2] = vmulq_f64(v42, vcvtq_f64_f32(*v46.f32));
        v44[-1] = vmulq_f64(v42, vcvt_hight_f64_f32(v46));
        *v44 = v48;
        v44[1] = vmulq_f64(v42, v47);
        v44 += 4;
        v43 += 2;
        v45 -= 8;
      }

      while (v45);
      if (v31 == (v31 & 0xFFFFFFFFFFFFFFF8))
      {
        return result;
      }
    }

    else
    {
      v9 = v9;
    }

    v33 = &a3[v9];
    v34 = v7 - v9;
    v35 = &a2[v9];
    do
    {
      v36 = *v35++;
      *v33++ = *v6 * v36;
      --v34;
    }

    while (v34);
    return result;
  }

  v23 = v5 - 1;
  v24 = a5;
  v25 = &a2[v9 + v24];
  do
  {
    v26 = *v6 * a2[v22];
    v27 = v25;
    v28 = v23;
    v29 = v6 + 1;
    do
    {
      v30 = *v29++;
      v26 = v26 + v30 * *v27;
      v27 = (v27 + v24 * 4);
      --v28;
    }

    while (v28);
    a3[v22++] = v26;
    ++v25;
  }

  while (v22 != v7);
  return result;
}

uint64_t sub_10031488C(void *a1)
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

uint64_t sub_100314910(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v6 = (a1 + 16);
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *a1 = off_1004791F8;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v6 == a2)
    {
      goto LABEL_17;
    }

    v8 = *(a2 + 56);
    if (v8)
    {
      atomic_fetch_add((v8 + 20), 1u);
      v9 = *(a1 + 72);
      if (v9)
      {
        if (atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
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
      *v6 = *a2;
      v13 = *(a2 + 4);
      if (v13 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v13;
        *(a1 + 24) = *(a2 + 8);
        v14 = *(a2 + 72);
        v15 = *(a1 + 88);
        *v15 = *v14;
        v15[1] = v14[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
        v12 = *v7;
      }

      while (v10 < v12);
      *v6 = *a2;
      if (v12 <= 2)
      {
        v13 = *(a2 + 4);
        if (v13 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v6, a2);
    goto LABEL_16;
  }

  LODWORD(v19) = 33619968;
  v20 = a1 + 16;
  v21 = 0;
  sub_10022B754(a2, &v19);
LABEL_17:
  v17 = *(a1 + 24);
  v16 = *(a1 + 28);
  *(a1 + 8) = v17 + v16 - 1;
  *(a1 + 12) = a3;
  if ((*(a1 + 16) & 0xFFF) != 6 || v17 != 1 && v16 != 1)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 77), "kernel.type() == DataType<DT>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v19, "RowFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3053);
  }

  return a1;
}

uint64_t sub_100314B80(uint64_t a1)
{
  *a1 = off_1004791F8;
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

void sub_100314C30(uint64_t a1)
{
  *a1 = off_1004791F8;
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

uint64_t sub_100314D00(uint64_t result, float64x2_t *a2, unint64_t a3, int a4, int a5)
{
  v5 = *(result + 8);
  v6 = *(result + 32);
  v7 = (a5 * a4);
  v8 = (v7 - 4);
  if (v7 < 4)
  {
    LODWORD(v9) = 0;
    goto LABEL_13;
  }

  if (v5 > 1)
  {
    v9 = 0;
    v10 = 8 * a5;
    v11 = (a2 + v10 + 16);
    do
    {
      v12 = &a2[v9 / 2];
      v13 = vmulq_n_f64(*v12, *v6);
      v14 = vmulq_n_f64(v12[1], *v6);
      v15 = v11;
      result = v5 - 1;
      v16 = v6 + 1;
      do
      {
        v17 = vld1q_dup_f64(v16++);
        v13 = vmlaq_f64(v13, v15[-1], v17);
        v14 = vmlaq_f64(v14, *v15, v17);
        v15 = (v15 + v10);
        --result;
      }

      while (result);
      v18 = (a3 + 8 * v9);
      *v18 = v13;
      v18[1] = v14;
      v9 += 4;
      v11 += 2;
    }

    while (v9 <= v8);
    goto LABEL_13;
  }

  if (v8 <= 0xB)
  {
    v9 = 0;
LABEL_11:
    v19 = 8 * v9 + 16;
    v20 = (a3 + v19);
    v21 = (a2 + v19);
    do
    {
      v22 = vmulq_n_f64(*v21, *v6);
      v20[-1] = vmulq_n_f64(v21[-1], *v6);
      *v20 = v22;
      v9 += 4;
      v20 += 2;
      v21 += 2;
    }

    while (v9 <= v8);
    goto LABEL_13;
  }

  v9 = 0;
  v37 = ((8 * v8) & 0x3FFFFFFE0) + 32;
  v38 = a3 + v37;
  v40 = a2 + v37 > a3 && v38 > a2;
  if (v6 < v38 && (v6 + 1) > a3)
  {
    goto LABEL_11;
  }

  if (v40)
  {
    goto LABEL_11;
  }

  v42 = (v8 >> 2) + 1;
  v9 = 4 * (v42 & 0x3FFFFFFE);
  v43 = v42 & 0x3FFFFFFE;
  v44 = a3;
  v45 = a2;
  do
  {
    v46 = v45[2];
    v47 = v45[3];
    v48 = *v45;
    v49 = v45[1];
    v45 += 4;
    v50 = vmulq_n_f64(v49, *v6);
    v51 = vmulq_n_f64(v48, *v6);
    v52 = vmulq_n_f64(v47, *v6);
    *(v44 + 32) = vmulq_n_f64(v46, *v6);
    *(v44 + 48) = v52;
    *v44 = v51;
    *(v44 + 16) = v50;
    v44 += 64;
    v43 -= 2;
  }

  while (v43);
  if (v42 != (v42 & 0x3FFFFFFE))
  {
    goto LABEL_11;
  }

LABEL_13:
  if (v9 < v7)
  {
    v23 = v9;
    if (v5 <= 1)
    {
      v32 = v7 - v9;
      if (v32 <= 9)
      {
        goto LABEL_21;
      }

      v53 = 8 * v9;
      v54 = a3 + 8 * v7;
      v55 = a3 + v53 >= &a2->f64[v7] || &a2->f64[v9] >= v54;
      v56 = !v55;
      if (v6 < v54 && a3 + v53 < (v6 + 1))
      {
        goto LABEL_21;
      }

      if (v56)
      {
        goto LABEL_21;
      }

      v23 += v32 & 0xFFFFFFFFFFFFFFFCLL;
      v58 = vld1q_dup_f64(v6);
      v59 = v53 + 16;
      v60 = (a2 + v53 + 16);
      v61 = (a3 + v59);
      v62 = v32 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v63 = vmulq_f64(v58, *v60);
        v61[-1] = vmulq_f64(v58, v60[-1]);
        *v61 = v63;
        v60 += 2;
        v61 += 2;
        v62 -= 4;
      }

      while (v62);
      if (v32 != (v32 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_21:
        v33 = (a3 + 8 * v23);
        v34 = &a2->f64[v23];
        v35 = v7 - v23;
        do
        {
          v36 = *v34++;
          *v33++ = *v6 * v36;
          --v35;
        }

        while (v35);
      }
    }

    else
    {
      v24 = v5 - 1;
      v25 = a5;
      v26 = &a2->f64[v9 + v25];
      do
      {
        v27 = *v6 * a2->f64[v23];
        v28 = v26;
        v29 = v24;
        v30 = v6 + 1;
        do
        {
          v31 = *v30++;
          v27 = v27 + v31 * *v28;
          v28 = (v28 + v25 * 8);
          --v29;
        }

        while (v29);
        *(a3 + 8 * v23++) = v27;
        ++v26;
      }

      while (v23 != v7);
    }
  }

  return result;
}

uint64_t sub_100314FAC(void *a1)
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

uint64_t sub_100315030(uint64_t a1, uint64_t a2, int a3, void *a4, double a5)
{
  *(a1 + 8) = -1;
  *a1 = off_100479278;
  *(a1 + 16) = 1124007936;
  v10 = (a1 + 16);
  *(a1 + 20) = 0u;
  v11 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v10 == a2)
    {
      goto LABEL_17;
    }

    v12 = *(a2 + 56);
    if (v12)
    {
      atomic_fetch_add((v12 + 20), 1u);
      v13 = *(a1 + 72);
      if (v13)
      {
        if (atomic_fetch_add((v13 + 20), 0xFFFFFFFF) == 1)
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
      *v10 = *a2;
      v17 = *(a2 + 4);
      if (v17 <= 2)
      {
LABEL_13:
        *(a1 + 20) = v17;
        *(a1 + 24) = *(a2 + 8);
        v18 = *(a2 + 72);
        v19 = *(a1 + 88);
        *v19 = *v18;
        v19[1] = v18[1];
LABEL_16:
        *(a1 + 32) = *(a2 + 16);
        *(a1 + 48) = *(a2 + 32);
        *(a1 + 64) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else
    {
      v14 = 0;
      v15 = *(a1 + 80);
      do
      {
        *(v15 + 4 * v14++) = 0;
        v16 = *v11;
      }

      while (v14 < v16);
      *v10 = *a2;
      if (v16 <= 2)
      {
        v17 = *(a2 + 4);
        if (v17 <= 2)
        {
          goto LABEL_13;
        }
      }
    }

    sub_100269B58(v10, a2);
    goto LABEL_16;
  }

  LODWORD(v23) = 33619968;
  v24 = a1 + 16;
  v25 = 0;
  sub_10022B754(a2, &v23);
LABEL_17:
  v21 = *(a1 + 24);
  v20 = *(a1 + 28);
  *(a1 + 8) = v21 + v20 - 1;
  *(a1 + 12) = a3;
  *(a1 + 124) = rint(a5);
  *(a1 + 112) = *a4;
  if ((*(a1 + 16) & 0xFFF) != 4 || v21 != 1 && v20 != 1)
  {
    v23 = 0;
    v24 = 0;
    qmemcpy(sub_1002A80E0(&v23, 77), "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v23, "ColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3251);
  }

  return a1;
}

uint64_t sub_1003152C4(uint64_t a1)
{
  *a1 = off_100479278;
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

void sub_100315374(uint64_t a1)
{
  *a1 = off_100479278;
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

uint64_t sub_100315444(uint64_t result, void *a2, uint64_t a3, int a4, int a5, int a6)
{
  if (a5)
  {
    v6 = *(result + 32);
    v7 = *(result + 124);
    v8 = *(result + 112);
    v9 = *(result + 116);
    v10 = *(result + 8);
    result = (v10 - 1) | 1;
    v11 = vdupq_n_s32(v7);
    v12 = vdupq_n_s32(v9);
    v13 = a2 + 2;
    v14 = vnegq_s32(vdupq_n_s32(v8));
    v15.i64[0] = 0xFF000000FFLL;
    v15.i64[1] = 0xFF000000FFLL;
    while (a6 < 4)
    {
      v16 = 0;
      if (a6 > 0)
      {
        goto LABEL_14;
      }

LABEL_3:
      a3 += a4;
      ++a2;
      ++v13;
      if (!--a5)
      {
        return result;
      }
    }

    v16 = 0;
    do
    {
      v17 = vld1q_dup_f32(v6);
      v18 = vmlaq_s32(v11, *(*a2 + 4 * v16), v17);
      if (v10 >= 2)
      {
        for (i = 1; i != v10; ++i)
        {
          v20 = &v6[i];
          v21 = vld1q_dup_f32(v20);
          v18 = vmlaq_s32(v18, *(a2[i] + 4 * v16), v21);
        }
      }

      *(a3 + v16) = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v18, v12), v14), 0), v15)), *v11.i8).u32[0];
      v16 += 4;
    }

    while (v16 <= a6 - 4);
    v16 = v16;
    if (v16 >= a6)
    {
      goto LABEL_3;
    }

LABEL_14:
    if (v10 <= 1)
    {
      do
      {
        v22 = (v7 + *(*a2 + 4 * v16) * *v6 + v9) >> v8;
        v23 = v22 & ~(v22 >> 31);
        if (v23 >= 255)
        {
          LOBYTE(v23) = -1;
        }

        *(a3 + v16++) = v23;
      }

      while (a6 != v16);
      goto LABEL_3;
    }

    while (1)
    {
      v25 = v7 + *(*a2 + 4 * v16) * *v6;
      if (v10 == 2)
      {
        v26 = 1;
      }

      else
      {
        v27 = 0;
        v28 = v13;
        v29 = v6 + 2;
        v30 = (v10 - 1) & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          v25 += *(*(v28 - 1) + 4 * v16) * *(v29 - 1);
          v27 += *(*v28 + 4 * v16) * *v29;
          v29 += 2;
          v28 += 2;
          v30 -= 2;
        }

        while (v30);
        v25 += v27;
        v26 = (v10 - 1) | 1;
        if (v10 - 1 == ((v10 - 1) & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_19;
        }
      }

      do
      {
        v25 += *(a2[v26] + 4 * v16) * LODWORD(v6[v26]);
        ++v26;
      }

      while (v10 != v26);
LABEL_19:
      v24 = ((v25 + v9) >> v8) & ~((v25 + v9) >> v8 >> 31);
      if (v24 >= 255)
      {
        LOBYTE(v24) = -1;
      }

      *(a3 + v16++) = v24;
      if (v16 == a6)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

uint64_t sub_10031567C(void *a1)
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

uint64_t sub_100315700(uint64_t a1, uint64_t a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *a1 = off_100479300;
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

  LODWORD(v22) = 33619968;
  v23 = a1 + 16;
  v24 = 0;
  sub_10022B754(a2, &v22);
LABEL_17:
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  *(a1 + 8) = v19 + v18 - 1;
  *(a1 + 12) = a3;
  v20 = a4;
  *(a1 + 116) = v20;
  if ((*(a1 + 16) & 0xFFF) != 5 || v19 != 1 && v18 != 1)
  {
    v22 = 0;
    v23 = 0;
    qmemcpy(sub_1002A80E0(&v22, 77), "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v22, "ColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3251);
  }

  return a1;
}

uint64_t sub_100315984(uint64_t a1)
{
  *a1 = off_100479300;
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

void sub_100315A34(uint64_t a1)
{
  *a1 = off_100479300;
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

unint64_t sub_100315B04(unint64_t result, uint64_t a2, _BYTE *a3, int a4, int a5, int a6, double a7)
{
  if (a5)
  {
    v7 = *(result + 32);
    LODWORD(a7) = *(result + 116);
    v8 = a5 - 1;
    v9 = a4;
    v10 = *(result + 8);
    if (a6 >= 4)
    {
      v24 = vdupq_lane_s32(*&a7, 0);
      v25 = a3 + 4;
      v26.i64[0] = 0xFF000000FFLL;
      v26.i64[1] = 0xFF000000FFLL;
      do
      {
        result = 0;
        v27 = v8;
        v28 = v25;
        v29 = 4;
        do
        {
          v30 = v29;
          v31 = v28;
          v32 = vmlaq_n_f32(v24, *(*a2 + 4 * result), *v7);
          if (v10 >= 2)
          {
            for (i = 1; i != v10; ++i)
            {
              v32 = vmlaq_n_f32(v32, *(*(a2 + 8 * i) + 4 * result), v7[i]);
            }
          }

          *&a3[result] = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v32.f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v32, v32, 8uLL))))), 0), v26)), *&a7).u32[0];
          result += 4;
          v29 = v30 + 4;
          v28 += 4;
        }

        while (result <= (a6 - 4));
        if (result < a6)
        {
          if (v10 <= 1)
          {
            do
            {
              v38 = rintf(*&a7 + (*v7 * *(*a2 + 4 * v30)));
              LODWORD(result) = v38 & ~(v38 >> 31);
              if (result >= 255)
              {
                result = 255;
              }

              else
              {
                result = result;
              }

              *v31++ = result;
              ++v30;
            }

            while (v30 < a6);
          }

          else
          {
            do
            {
              v34 = *&a7 + (*v7 * *(*a2 + 4 * v30));
              for (j = 1; j != v10; ++j)
              {
                result = *(a2 + 8 * j);
                v34 = v34 + (v7[j] * *(result + 4 * v30));
              }

              v36 = rintf(v34);
              v37 = v36 & ~(v36 >> 31);
              if (v37 >= 255)
              {
                LOBYTE(v37) = -1;
              }

              a3[v30++] = v37;
            }

            while (v30 < a6);
          }
        }

        a3 += v9;
        a2 += 8;
        v8 = v27 - 1;
        v25 += v9;
      }

      while (v27);
    }

    else if (a6 >= 1)
    {
      if (v10 <= 1)
      {
        v39 = a3 + 2;
        do
        {
          v40 = rintf(*&a7 + (*v7 * **a2));
          v41 = v40 & ~(v40 >> 31);
          if (v41 >= 255)
          {
            LOBYTE(v41) = -1;
          }

          *(v39 - 2) = v41;
          if (a6 != 1)
          {
            v42 = rintf(*&a7 + (*v7 * *(*a2 + 4)));
            v43 = v42 & ~(v42 >> 31);
            if (v43 >= 255)
            {
              LOBYTE(v43) = -1;
            }

            *(v39 - 1) = v43;
            if (a6 != 2)
            {
              v44 = rintf(*&a7 + (*v7 * *(*a2 + 8)));
              v45 = v44 & ~(v44 >> 31);
              if (v45 >= 255)
              {
                LOBYTE(v45) = -1;
              }

              *v39 = v45;
            }
          }

          a2 += 8;
          v39 += a4;
          --a5;
        }

        while (a5);
      }

      else
      {
        do
        {
          v11 = v8;
          v12 = *&a7 + (*v7 * **a2);
          for (k = 1; k != v10; ++k)
          {
            v12 = v12 + (v7[k] * **(a2 + 8 * k));
          }

          v14 = rintf(v12);
          v15 = v14 & ~(v14 >> 31);
          if (v15 >= 255)
          {
            LOBYTE(v15) = -1;
          }

          *a3 = v15;
          if (a6 != 1)
          {
            v16 = *&a7 + (*v7 * *(*a2 + 4));
            for (m = 1; m != v10; ++m)
            {
              v16 = v16 + (v7[m] * *(*(a2 + 8 * m) + 4));
            }

            v18 = rintf(v16);
            v19 = v18 & ~(v18 >> 31);
            if (v19 >= 255)
            {
              LOBYTE(v19) = -1;
            }

            a3[1] = v19;
            if (a6 != 2)
            {
              v20 = *&a7 + (*v7 * *(*a2 + 8));
              for (n = 1; n != v10; ++n)
              {
                v20 = v20 + (v7[n] * *(*(a2 + 8 * n) + 8));
              }

              v22 = rintf(v20);
              v23 = v22 & ~(v22 >> 31);
              if (v23 >= 255)
              {
                LOBYTE(v23) = -1;
              }

              a3[2] = v23;
            }
          }

          a3 += a4;
          a2 += 8;
          --v8;
        }

        while (v11);
      }
    }
  }

  return result;
}

uint64_t sub_100315E60(uint64_t a1)
{
  *a1 = off_100479300;
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

uint64_t sub_100315F28(void *a1)
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

uint64_t sub_100315FAC(uint64_t a1, uint64_t a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *a1 = off_100479388;
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
  *(a1 + 120) = a4;
  if ((*(a1 + 16) & 0xFFF) != 6 || v19 != 1 && v18 != 1)
  {
    v21 = 0;
    v22 = 0;
    qmemcpy(sub_1002A80E0(&v21, 77), "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v21, "ColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3251);
  }

  return a1;
}

uint64_t sub_10031622C(uint64_t a1)
{
  *a1 = off_100479388;
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

void sub_1003162DC(uint64_t a1)
{
  *a1 = off_100479388;
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

uint64_t sub_1003163AC(uint64_t result, uint64_t a2, _BYTE *a3, int a4, int a5, int a6)
{
  if (a5)
  {
    v6 = *(result + 32);
    v7 = *(result + 120);
    v8 = a5 - 1;
    v9 = a4;
    v10 = *(result + 8);
    if (a6 >= 4)
    {
      v25 = vdupq_lane_s64(v7, 0);
      v26 = 8 * v10;
      v27 = a3 + 4;
      v28.i64[0] = 0xFF000000FFLL;
      v28.i64[1] = 0xFF000000FFLL;
      do
      {
        v29 = 0;
        v30 = v8;
        v31 = v27;
        v32 = 4;
        do
        {
          v33 = v32;
          result = v31;
          v34 = (*a2 + 8 * v29);
          v35 = vmlaq_n_f64(v25, v34[1], *v6);
          v36 = vmlaq_n_f64(v25, *v34, *v6);
          if (v10 >= 2)
          {
            v37 = 8;
            do
            {
              v38 = (*(a2 + v37) + 8 * v29);
              v39 = v6[v37 / 8];
              v35 = vmlaq_n_f64(v35, v38[1], v39);
              v36 = vmlaq_n_f64(v36, *v38, v39);
              v37 += 8;
            }

            while (v26 != v37);
          }

          *&a3[v29] = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v36)), vcvtq_s64_f64(vrndxq_f64(v35))), 0), v28)), v7).u32[0];
          v29 += 4;
          v32 = v33 + 4;
          v31 = result + 4;
        }

        while (v29 <= (a6 - 4));
        if (v29 < a6)
        {
          if (v10 <= 1)
          {
            do
            {
              v43 = rint(*&v7 + *v6 * *(*a2 + 8 * v33));
              v44 = v43 & ~(v43 >> 31);
              if (v44 >= 255)
              {
                LOBYTE(v44) = -1;
              }

              *result++ = v44;
              ++v33;
            }

            while (v33 < a6);
          }

          else
          {
            do
            {
              v40 = *&v7 + *v6 * *(*a2 + 8 * v33);
              v41 = 8;
              do
              {
                v40 = v40 + v6[v41 / 8] * *(*(a2 + v41) + 8 * v33);
                v41 += 8;
              }

              while (v26 != v41);
              v42 = rint(v40);
              LODWORD(result) = v42 & ~(v42 >> 31);
              if (result >= 255)
              {
                result = 255;
              }

              else
              {
                result = result;
              }

              a3[v33++] = result;
            }

            while (v33 < a6);
          }
        }

        a3 += v9;
        a2 += 8;
        v8 = v30 - 1;
        v27 += v9;
      }

      while (v30);
    }

    else if (a6 >= 1)
    {
      if (v10 <= 1)
      {
        v45 = a3 + 2;
        do
        {
          v46 = rint(*&v7 + *v6 * **a2);
          v47 = v46 & ~(v46 >> 31);
          if (v47 >= 255)
          {
            LOBYTE(v47) = -1;
          }

          *(v45 - 2) = v47;
          if (a6 != 1)
          {
            v48 = rint(*&v7 + *v6 * *(*a2 + 8));
            v49 = v48 & ~(v48 >> 31);
            if (v49 >= 255)
            {
              LOBYTE(v49) = -1;
            }

            *(v45 - 1) = v49;
            if (a6 != 2)
            {
              v50 = rint(*&v7 + *v6 * *(*a2 + 16));
              v51 = v50 & ~(v50 >> 31);
              if (v51 >= 255)
              {
                LOBYTE(v51) = -1;
              }

              *v45 = v51;
            }
          }

          a2 += 8;
          v45 += a4;
          --a5;
        }

        while (a5);
      }

      else
      {
        v11 = 8 * v10;
        do
        {
          v12 = v8;
          v13 = *&v7 + *v6 * **a2;
          v14 = 8;
          do
          {
            v13 = v13 + v6[v14 / 8] * **(a2 + v14);
            v14 += 8;
          }

          while (v11 != v14);
          v15 = rint(v13);
          v16 = v15 & ~(v15 >> 31);
          if (v16 >= 255)
          {
            LOBYTE(v16) = -1;
          }

          *a3 = v16;
          if (a6 != 1)
          {
            v17 = *&v7 + *v6 * *(*a2 + 8);
            v18 = 8;
            do
            {
              v17 = v17 + v6[v18 / 8] * *(*(a2 + v18) + 8);
              v18 += 8;
            }

            while (v11 != v18);
            v19 = rint(v17);
            v20 = v19 & ~(v19 >> 31);
            if (v20 >= 255)
            {
              LOBYTE(v20) = -1;
            }

            a3[1] = v20;
            if (a6 != 2)
            {
              v21 = *&v7 + *v6 * *(*a2 + 16);
              v22 = 8;
              do
              {
                v21 = v21 + v6[v22 / 8] * *(*(a2 + v22) + 16);
                v22 += 8;
              }

              while (v11 != v22);
              v23 = rint(v21);
              v24 = v23 & ~(v23 >> 31);
              if (v24 >= 255)
              {
                LOBYTE(v24) = -1;
              }

              a3[2] = v24;
            }
          }

          a3 += a4;
          a2 += 8;
          --v8;
        }

        while (v12);
      }
    }
  }

  return result;
}

uint64_t sub_100316714(uint64_t a1)
{
  *a1 = off_100479388;
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

uint64_t sub_1003167DC(void *a1)
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

uint64_t sub_100316860(uint64_t a1, uint64_t a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *a1 = off_100479410;
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

  LODWORD(v22) = 33619968;
  v23 = a1 + 16;
  v24 = 0;
  sub_10022B754(a2, &v22);
LABEL_17:
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  *(a1 + 8) = v19 + v18 - 1;
  *(a1 + 12) = a3;
  v20 = a4;
  *(a1 + 116) = v20;
  if ((*(a1 + 16) & 0xFFF) != 5 || v19 != 1 && v18 != 1)
  {
    v22 = 0;
    v23 = 0;
    qmemcpy(sub_1002A80E0(&v22, 77), "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)", 77);
    sub_1002A8980(-215, &v22, "ColumnFilter", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/filter.cpp", 3251);
  }

  return a1;
}