void sub_1002D5894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_1002A8124(&a17);
  sub_100006D14(va);
  sub_100006D14(v28 - 224);
  sub_1001D8BF4(v28 - 120);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D620C(uint64_t a1, int a2, int a3, uint64_t a4, float32x2_t *a5, char a6)
{
  *a1 = a2;
  *(a1 + 40) = a6;
  sub_1002D6570(a1);
  if (a5)
  {
    v26 = vcvtq_f64_f32(*a5);
    v27 = a5[1].f32[0];
    if (atomic_load_explicit(&qword_1004B0280, memory_order_acquire))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v26 = xmmword_1004D3F70;
    v27 = *&qword_1004D3F80;
    if (atomic_load_explicit(&qword_1004B0280, memory_order_acquire))
    {
      goto LABEL_5;
    }
  }

  if (__cxa_guard_acquire(&qword_1004B0280))
  {
    sub_10029DA40(&qword_1004B0278, 0x1000u);
    __cxa_guard_release(&qword_1004B0280);
  }

LABEL_5:
  if (dword_1004B0270 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v21 = a1 + 4 * (a3 ^ 2) + 4;
    v11 = a1 + 4 * a3 + 4;
    v12 = (a1 + 8);
    v13 = &v26;
    do
    {
      v24 = 0uLL;
      v25[0] = 0;
      if (a4)
      {
        v14 = 4 * v9;
        v24 = vcvtq_f64_f32(*(a4 + v14));
        *v25 = *(a4 + 8 + v14);
      }

      else
      {
        v15 = &byte_1004D3E00[8 * v9];
        if (v15 + 416 != &v24)
        {
          v24.f64[0] = *(v15 + 52);
        }

        if (v15 + 424 != &v24.f64[1])
        {
          v24.f64[1] = *(v15 + 53);
        }

        v16 = (v15 + 432);
        if (v16 != v25)
        {
          v25[0] = *v16;
        }
      }

      sub_10029E004(&qword_1004B0278, &v24, &v23);
      sub_10029E2BC(&v23, v13, v22);
      *(v21 + 4 * v9) = sub_10029DC5C(v22);
      sub_10029E004(&qword_1004B0278, &v24.f64[1], &v23);
      sub_10029E2BC(&v23, v13, v22);
      *v12 = sub_10029DC5C(v22);
      sub_10029E004(&qword_1004B0278, v25, &v23);
      sub_10029E2BC(&v23, v13, v22);
      *(v11 + 4 * v9) = sub_10029DC5C(v22);
      v17 = *(v12 - 1);
      if (v17 < 0 || (*v12 & 0x80000000) != 0 || (v18 = v12[1], v18 < 0) || (*v12 + v17 + v18) >= 0x2000)
      {
        v22[0] = 0;
        v22[1] = 0;
        qmemcpy(sub_1002A80E0(v22, 128), "coeffs[i*3] >= 0 && coeffs[i*3+1] >= 0 && coeffs[i*3+2] >= 0 && coeffs[i*3] + coeffs[i*3+1] + coeffs[i*3+2] < 2*(1 << xyz_shift)", 128);
        sub_1002A8980(-215, v22, "RGB2Lab_b", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 6378);
      }

      ++v10;
      v9 += 3;
      v12 += 3;
      ++v13;
    }

    while (v10 < dword_1004B0270);
  }

  return a1;
}

void sub_1002D6548(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100008E3C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1002D6570(uint64_t a1)
{
  __chkstk_darwin(a1);
  if ((byte_1004D3E00[0] & 1) == 0)
  {
    bzero(v67, 0x1004uLL);
    bzero(v66, 0x1004uLL);
    bzero(v65, 0x1004uLL);
    LODWORD(v57[0]) = 1065353216;
    LODWORD(v56) = dword_1004D3E04;
    sub_10029D700(v57, &v56, &v55);
    v1 = -1025;
    for (i = v67; ; i = (i + 4))
    {
      sub_10029D334(&v56, v1 + 1025);
      sub_10029D4B4(&v55, &v56, v57);
      if (sub_10029D9C4(v57, &dword_1004D3E20))
      {
        sub_10029E6F4(v57, &dword_1004D3E24, &dword_1004D3E28, &v56);
      }

      else
      {
        sub_10029FD58(v57, &v56);
      }

      if (i != &v56)
      {
        *i = v56;
      }

      v3 = __CFADD__(v1++, 1);
      if (v3)
      {
        qword_1004D3EA0 = sub_1002D8934(v67);
        LODWORD(v56) = 1065353216;
        LODWORD(v68) = 1149239296;
        sub_10029D700(&v56, &v68, v57);
        v4 = 0;
        v55 = v57[0];
        for (j = -1025; ; ++j)
        {
          sub_10029D334(&v56, j + 1025);
          sub_10029D4B4(&v55, &v56, v57);
          LODWORD(v68) = v57[0];
          sub_1002D8BB8(&v56, &v68);
          if (&v66[v4] != &v56)
          {
            v66[v4] = v56;
          }

          LODWORD(v68) = v57[0];
          sub_1002D8C74(&v56, &v68);
          if (&v65[v4] != &v56)
          {
            v65[v4] = v56;
          }

          ++v4;
          v3 = __CFADD__(j, 1);
          if (v3)
          {
            qword_1004D3EA8 = sub_1002D8934(v66);
            qword_1004D3EB0 = sub_1002D8934(v65);
            if ((atomic_load_explicit(&qword_1004D3EB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3EB8))
            {
              sub_10029D334(&dword_1004D3E30, 0x7F8u);
              __cxa_guard_release(&qword_1004D3EB8);
            }

            for (k = 0; k != 256; ++k)
            {
              sub_10029D334(&v56, k);
              sub_10029D700(&v56, &dword_1004D3E2C, v57);
              LODWORD(v56) = v57[0];
              sub_1002D8BB8(&v68, &v56);
              sub_10029D4B4(&dword_1004D3E30, &v68, &v56);
              v7 = sub_10029DB98(&v56);
              v8 = &byte_1004D3E00[2 * k];
              *(v8 + 284) = v7;
              *(v8 + 540) = 8 * k;
            }

            if ((atomic_load_explicit(&qword_1004D3EC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3EC0))
            {
              LODWORD(v57[0]) = 1065353216;
              sub_10029D334(&v56, 0x1000u);
              sub_10029D700(v57, &v56, &dword_1004D3E34);
              __cxa_guard_release(&qword_1004D3EC0);
            }

            for (m = 0; m != 4096; ++m)
            {
              sub_10029D334(&v56, m);
              sub_10029D4B4(&dword_1004D3E34, &v56, v57);
              LODWORD(v56) = v57[0];
              sub_1002D8C74(&v68, &v56);
              sub_10029D4B4(&dword_1004D3E2C, &v68, &v56);
              word_1004BE600[m] = sub_10029DB98(&v56);
              sub_10029D4B4(&dword_1004D3E2C, v57, &v56);
              word_1004C0600[m] = sub_10029DB28(&v56);
            }

            if ((atomic_load_explicit(byte_1004D3EC8, memory_order_acquire) & 1) == 0)
            {
              sub_1003C8E24();
            }

            if ((atomic_load_explicit(&qword_1004D3ED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3ED0))
            {
              sub_10029D334(&dword_1004D3E3C, 0x8000u);
              __cxa_guard_release(&qword_1004D3ED0);
            }

            for (n = 0; n != 3072; ++n)
            {
              sub_10029D334(&v56, n);
              sub_10029D4B4(&dword_1004D3E38, &v56, v57);
              if (sub_10029D9C4(v57, &dword_1004D3E20))
              {
                sub_10029E6F4(v57, &dword_1004D3E24, &dword_1004D3E28, &v68);
              }

              else
              {
                sub_10029FD58(v57, &v68);
              }

              sub_10029D4B4(&dword_1004D3E3C, &v68, &v56);
              word_1004C2600[n] = sub_10029DB98(&v56);
            }

            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = &word_1004D443A;
            do
            {
              if (v14 > 0x14)
              {
                sub_10029D334(&v68, v11);
                sub_10029D334(&v64, 0x738Cu);
                sub_10029D700(&v68, &v64, &v56);
                sub_10029D334(&v62, 0x40000u);
                sub_10029D334(&v61, 0x74u);
                sub_10029D700(&v62, &v61, &v63);
                sub_10029D46C(&v56, &v63, v57);
                v17 = sub_10029DB98(v57);
                sub_10029D4B4(v57, v57, &v64);
                sub_10029D4B4(&v64, v57, &v68);
                sub_10029D334(&v63, 0x10000000u);
                sub_10029D700(&v68, &v63, &v56);
                v16 = sub_10029DB98(&v56);
              }

              else
              {
                sub_10029D334(&v56, v12);
                sub_10029D334(&v68, 0x65395u);
                sub_10029D700(&v56, &v68, v57);
                v16 = sub_10029DB98(v57);
                sub_10029D334(&v56, 0x4000u);
                sub_10029D334(&v63, 0x10u);
                sub_10029D334(&v62, 0x74u);
                sub_10029D700(&v63, &v62, &v64);
                sub_10029D334(&v60, v13);
                sub_10029D334(&v59, 0x5C7u);
                sub_10029D700(&v60, &v59, &v61);
                sub_10029D46C(&v64, &v61, &v68);
                sub_10029D4B4(&v56, &v68, v57);
                v17 = sub_10029DB98(v57);
              }

              ++v14;
              v13 += 5;
              *(v15 - 1) = v16;
              *v15 = v17;
              v15 += 2;
              v12 += 2949120;
              v11 += 1638400;
            }

            while (v14 != 256);
            v18 = sub_1001D8FE8(0x24000uLL);
            v19 = 0;
            v20 = -8145;
            for (ii = -879660; ; ii += 108)
            {
              v22 = (((v20 * v20) >> 14) * v20) >> 14;
              if (v20 <= 3390)
              {
                v22 = ii / 841 - 290;
              }

              *&v18[v19] = v22;
              ++v20;
              v19 += 4;
              if (v19 == 147456)
              {
                qword_1004D3ED8 = v18;
                sub_10029DA40(&v64, 0xFu);
                sub_10029E004(&xmmword_1004D3F70 + 1, &v64, &v68);
                sub_10029DFB4(&xmmword_1004D3F70, &v68, &v56);
                sub_10029DA40(&v62, 3u);
                sub_10029E004(&qword_1004D3F80, &v62, &v63);
                sub_10029DFB4(&v56, &v63, v57);
                sub_10029DE94(v57, &v54);
                LODWORD(v56) = 1065353216;
                LODWORD(v64) = 872415232;
                if (sub_10029D948(&v54, &v64))
                {
                  v23 = &v54;
                }

                else
                {
                  v23 = &v64;
                }

                LODWORD(v68) = *v23;
                sub_10029D700(&v56, &v68, v57);
                v54 = v57[0];
                sub_10029D334(&v56, 0x34u);
                sub_10029D4B4(&v54, &v56, v57);
                sub_10029DE94(&xmmword_1004D3F70, &v68);
                sub_10029D4B4(v57, &v68, &v53);
                sub_10029D334(&v56, 0x75u);
                sub_10029D4B4(&v54, &v56, v57);
                sub_10029DE94(&xmmword_1004D3F70 + 1, &v68);
                sub_10029D4B4(v57, &v68, &v52);
                LODWORD(v56) = 1065353216;
                sub_10029D334(&v68, 4u);
                sub_10029D700(&v56, &v68, v57);
                v48 = sub_1001D8FE8(0x40000uLL);
                v24 = sub_1001D8FE8(0x40000uLL);
                v25 = sub_1001D8FE8(0x80000uLL);
                v50 = 0;
                v26 = 0;
                for (jj = v48; ; jj += 256)
                {
                  v28 = sub_10029D334(&v68, 100 * v26);
                  sub_10029D700(v28, &dword_1004D3E2C, &v56);
                  for (kk = 0; kk != 256; ++kk)
                  {
                    sub_10029D334(&v62, kk);
                    sub_10029D4B4(&v62, &dword_1004D3E10, &v63);
                    sub_10029D700(&v63, &dword_1004D3E2C, &v64);
                    sub_10029D46C(&v64, &dword_1004D3E08, &v68);
                    sub_10029D334(&v63, 9u);
                    sub_10029D4B4(&v56, &v53, &v61);
                    sub_10029D46C(&v68, &v61, &v62);
                    sub_10029D4B4(&v63, &v62, &v64);
                    sub_10029D334(&v62, 0x10u);
                    sub_10029D4B4(&v64, &v62, &v63);
                    jj[kk] = sub_10029DB98(&v63);
                  }

                  v30 = -256;
                  v31 = v50;
                  do
                  {
                    sub_10029D334(&v62, v30 + 256);
                    sub_10029D4B4(&v62, &dword_1004D3E1C, &v63);
                    sub_10029D700(&v63, &dword_1004D3E2C, &v64);
                    sub_10029D46C(&v64, &dword_1004D3E14, &v68);
                    sub_10029D4B4(&v56, &v52, &v62);
                    sub_10029D46C(&v68, &v62, &v63);
                    sub_10029D700(v57, &v63, &v64);
                    if (sub_10029D948(&v64, v57))
                    {
                      LODWORD(v64) = v57[0];
                    }

                    LODWORD(v63) = LODWORD(v57[0]) ^ 0x80000000;
                    if (sub_10029D9C4(&v64, &v63))
                    {
                      LODWORD(v64) = LODWORD(v57[0]) ^ 0x80000000;
                    }

                    sub_10029D334(&v62, 0x1000000u);
                    sub_10029D4B4(&v64, &v62, &v63);
                    v32 = sub_10029DB98(&v63);
                    v24[v31] = v32;
                    v25[v31++] = 249600 * v32 * v26;
                    v3 = __CFADD__(v30++, 1);
                  }

                  while (!v3);
                  ++v26;
                  v50 += 256;
                  if (v26 == 256)
                  {
                    qword_1004D3EE0 = v48;
                    *algn_1004D3EE8 = v24;
                    qword_1004D3EF0 = v25;
                    v57[0] = 0x3FF0000000000000;
                    sub_10029E2BC(v57, &xmmword_1004D3F70, &v68);
                    v69 = 0x3FF0000000000000;
                    v56 = 0x3FF0000000000000;
                    sub_10029E2BC(&v56, &qword_1004D3F80, &v70);
                    sub_10029DE94(&xmmword_1004D3FA0, v57);
                    v51 = v57[0];
                    sub_10029DE94(&xmmword_1004D3FA0 + 1, v57);
                    v49 = v57[0];
                    sub_10029DE94(&qword_1004D3FB0, v57);
                    v47 = v57[0];
                    sub_10029E004(&qword_1004D3FB0, &v68, v57);
                    sub_10029DE94(v57, &v56);
                    v46 = v56;
                    sub_10029E004(&xmmword_1004D3FA0 + 1, &v68, v57);
                    sub_10029DE94(v57, &v56);
                    v45 = v56;
                    sub_10029E004(&xmmword_1004D3FA0, &v68, v57);
                    sub_10029DE94(v57, &v56);
                    v44 = v56;
                    sub_10029DE94(&qword_1004D3FB8, v57);
                    v43 = v57[0];
                    sub_10029DE94(&xmmword_1004D3FC0, v57);
                    v42 = v57[0];
                    sub_10029DE94(&xmmword_1004D3FC0 + 1, v57);
                    v33 = v57[0];
                    sub_10029E004(&xmmword_1004D3FC0 + 1, &v69, v57);
                    sub_10029DE94(v57, &v56);
                    v34 = v56;
                    sub_10029E004(&xmmword_1004D3FC0, &v69, v57);
                    sub_10029DE94(v57, &v56);
                    v35 = v56;
                    sub_10029E004(&qword_1004D3FB8, &v69, v57);
                    sub_10029DE94(v57, &v56);
                    v36 = v56;
                    sub_10029DE94(&qword_1004D3FD0, v57);
                    v37 = v57[0];
                    sub_10029DE94(&qword_1004D3FD8, v57);
                    v38 = v57[0];
                    sub_10029DE94(&qword_1004D3FE0, v57);
                    v39 = v57[0];
                    sub_10029E004(&qword_1004D3FE0, &v70, v57);
                    sub_10029DE94(v57, &v56);
                    v40 = v56;
                    sub_10029E004(&qword_1004D3FD8, &v70, v57);
                    sub_10029DE94(v57, &v56);
                    v41 = v56;
                    sub_10029E004(&qword_1004D3FD0, &v70, v57);
                    sub_10029DE94(v57, &v56);
                    v58[277] = v46;
                    v58[276] = v45;
                    v58[275] = v44;
                    v58[274] = v34;
                    v58[273] = v35;
                    v58[272] = v36;
                    v58[271] = v40;
                    v58[270] = v41;
                    v58[269] = v56;
                    v58[268] = v47;
                    v58[267] = v49;
                    v58[266] = v51;
                    v58[265] = v33;
                    v58[264] = v42;
                    v58[263] = v43;
                    v58[262] = v39;
                    v58[261] = v38;
                    v58[260] = v37;
                    if ((atomic_load_explicit(&qword_1004D3EF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3EF8))
                    {
                      sub_10029D334(&dword_1004D3E40, 0x20u);
                      __cxa_guard_release(&qword_1004D3EF8);
                    }

                    if ((atomic_load_explicit(&qword_1004D3F00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3F00))
                    {
                      sub_10029D334(&dword_1004D3E44, 0x74u);
                      __cxa_guard_release(&qword_1004D3F00);
                    }

                    if ((atomic_load_explicit(&qword_1004D3F08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3F08))
                    {
                      sub_10029D334(&dword_1004D3E48, 0x10u);
                      __cxa_guard_release(&qword_1004D3F08);
                    }

                    if ((atomic_load_explicit(&qword_1004D3F10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3F10))
                    {
                      sub_10029D334(&dword_1004D3E4C, 0x1F4u);
                      __cxa_guard_release(&qword_1004D3F10);
                    }

                    if ((atomic_load_explicit(&qword_1004D3F18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3F18))
                    {
                      sub_10029D334(&dword_1004D3E50, 0xC8u);
                      __cxa_guard_release(&qword_1004D3F18);
                    }

                    if ((atomic_load_explicit(&qword_1004D3F20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3F20))
                    {
                      sub_10029D334(&dword_1004D3E54, 0x64u);
                      __cxa_guard_release(&qword_1004D3F20);
                    }

                    if ((atomic_load_explicit(&qword_1004D3F28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3F28))
                    {
                      sub_10029D334(&dword_1004D3E58, 0x80u);
                      __cxa_guard_release(&qword_1004D3F28);
                    }

                    if ((atomic_load_explicit(&qword_1004D3F30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3F30))
                    {
                      sub_10029D334(&dword_1004D3E5C, 0x100u);
                      __cxa_guard_release(&qword_1004D3F30);
                    }

                    if ((atomic_load_explicit(&qword_1004D3F38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3F38))
                    {
                      sub_10029D334(&dword_1004D3E60, 0x4000u);
                      __cxa_guard_release(&qword_1004D3F38);
                    }

                    if ((atomic_load_explicit(&qword_1004D3F40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3F40))
                    {
                      sub_10029D334(v57, 0x5F45u);
                      sub_10029D334(&v56, 0x1Bu);
                      sub_10029D700(v57, &v56, &dword_1004D3E64);
                      __cxa_guard_release(&qword_1004D3F40);
                    }

                    if ((atomic_load_explicit(&qword_1004D3F48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3F48))
                    {
                      sub_10029D334(v57, 9u);
                      sub_10029D334(&v56, 4u);
                      sub_10029D700(v57, &v56, &dword_1004D3E68);
                      __cxa_guard_release(&qword_1004D3F48);
                    }

                    if ((atomic_load_explicit(&qword_1004D3F50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004D3F50))
                    {
                      sub_10029D334(&dword_1004D3E6C, 0xFu);
                      __cxa_guard_release(&qword_1004D3F50);
                    }

                    if ((atomic_load_explicit(&qword_1004D3F58, memory_order_acquire) & 1) == 0)
                    {
                      if (__cxa_guard_acquire(&qword_1004D3F58))
                      {
                        sub_10029D334(&unk_1004D3E70, 3u);
                        __cxa_guard_release(&qword_1004D3F58);
                      }
                    }

                    v57[0] = v58;
                    v57[1] = 107811;
                    operator new[]();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1002D8808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (a41 != a12 && a41 != 0)
  {
    operator delete[]();
  }

  if (STACK[0x520] != a13 && STACK[0x520] != 0)
  {
    operator delete[]();
  }

  _Unwind_Resume(a1);
}

void *sub_1002D8934(unsigned int *a1)
{
  v2 = sub_1001D8FE8(0x4000uLL);
  sub_10029D334(&v23, 2u);
  sub_10029D334(&v22, 3u);
  sub_10029D334(&v21, 4u);
  sub_10029D334(&v20, 0);
  v3 = 0;
  v4 = 1023;
  *v2 = 0;
  v5 = a1;
  do
  {
    sub_10029D4B4(v5 + 1, &v23, &v16);
    sub_10029D490(v5 + 2, &v16, &v17);
    sub_10029D46C(&v17, v5, &v18);
    sub_10029D4B4(&v18, &v22, &v19);
    v17 = 1065353216;
    v6 = &v2[v3];
    sub_10029D490(&v21, &v2[v3], &v16);
    sub_10029D700(&v17, &v16, &v18);
    if (&v2[v3 + 2] != &v18)
    {
      v6[4] = v18;
    }

    sub_10029D490(&v19, v6 + 1, &v16);
    sub_10029D4B4(&v16, &v18, &v17);
    if (v6 + 5 != &v17)
    {
      v6[5] = v17;
    }

    ++v5;
    v3 += 2;
    --v4;
  }

  while (v4);
  v7 = a1 + 1023;
  v8 = 2048;
  do
  {
    v9 = &v2[v8 - 1] - 1;
    v10 = &v2[v8 - 2];
    sub_10029D4B4(v10, &v20, &v18);
    sub_10029D490(v9, &v18, &v19);
    sub_10029D490(v7 + 1, v7, &v17);
    sub_10029D4B4(&v19, &v23, &v14);
    sub_10029D46C(&v20, &v14, &v15);
    sub_10029D700(&v15, &v22, &v16);
    sub_10029D490(&v17, &v16, &v18);
    sub_10029D490(&v20, &v19, &v16);
    sub_10029D700(&v16, &v22, &v17);
    if (v7 != v10)
    {
      *v10 = *v7;
    }

    if (v9 != &v18)
    {
      *v9 = v18;
    }

    v11 = &v2[v8 - 1];
    if (v11 != &v19)
    {
      *v11 = v19;
    }

    v12 = &v2[v8 - 1] + 1;
    if (v12 != &v17)
    {
      *v12 = v17;
    }

    v20 = v19;
    --v7;
    v8 -= 2;
  }

  while (v8 * 8);
  return v2;
}

uint64_t *sub_1002D8BB8(unsigned int *a1, unsigned int *a2)
{
  sub_10029D39C(a2, &v9);
  if (sub_10029E66C(&v9, &qword_1004D3E78))
  {
    sub_10029E2BC(&v9, &qword_1004D3E88, &v8);
  }

  else
  {
    sub_10029DFB4(&v9, &qword_1004D3E98, &v6);
    v4 = 0x3FF0000000000000;
    sub_10029DFB4(&v4, &qword_1004D3E98, &v5);
    sub_10029E2BC(&v6, &v5, &v7);
    sub_10029F608(&v7, &qword_1004D3E90, &v8);
  }

  return sub_10029DE94(&v8, a1);
}

uint64_t *sub_1002D8C74(unsigned int *a1, unsigned int *a2)
{
  sub_10029D39C(a2, &v11);
  if (sub_10029E66C(&v11, &qword_1004D3E80))
  {
    sub_10029E004(&v11, &qword_1004D3E88, &v10);
  }

  else
  {
    v6 = 0x3FF0000000000000;
    sub_10029E2BC(&v6, &qword_1004D3E90, &v7);
    sub_10029F608(&v11, &v7, &v8);
    v4 = 0x3FF0000000000000;
    sub_10029DFB4(&v4, &qword_1004D3E98, &v5);
    sub_10029E004(&v8, &v5, &v9);
    sub_10029DFDC(&v9, &qword_1004D3E98, &v10);
  }

  return sub_10029DE94(&v10, a1);
}

uint64_t sub_1002D8D4C(uint64_t a1, int a2, int a3, uint64_t a4, float32x2_t *a5, char a6)
{
  *a1 = a2;
  *(a1 + 40) = a6;
  *(a1 + 44) = a3;
  v24 = 3;
  sub_1002D6570(a1);
  if (a4 | a5)
  {
    *(a1 + 41) = 0;
    if (a5)
    {
      v29 = vcvtq_f64_f32(*a5);
      v30 = a5[1].f32[0];
      goto LABEL_6;
    }
  }

  else
  {
    *(a1 + 41) = *(a1 + 40);
  }

  v29 = xmmword_1004D3F70;
  v30 = *&qword_1004D3F80;
LABEL_6:
  v21[0] = 0x3FF0000000000000;
  sub_10029E2BC(v21, &v29, v27);
  v27[1] = 0x3FF0000000000000;
  v25 = 0x3FF0000000000000;
  sub_10029E2BC(&v25, &v30, &v28);
  if (v24 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = a1 + 4;
    v13 = (a4 + 4);
    v14 = &qword_1004D3FB0;
    do
    {
      v26 = 0.0;
      v25 = 0;
      if (a4)
      {
        v22 = *(v13 - 1);
        sub_10029E004(&v27[v9], &v22, v21);
        sub_10029DE94(v21, &v23);
        LODWORD(v25) = v23;
        v22 = *v13;
        sub_10029E004(&v27[v9], &v22, v21);
        sub_10029DE94(v21, &v23);
        HIDWORD(v25) = v23;
        v22 = v13[1];
        sub_10029E004(&v27[v9], &v22, v21);
        sub_10029DE94(v21, &v23);
        v15 = v10 + 1;
        v16 = v23;
      }

      else
      {
        sub_10029E004(&v27[v9], v14 - 2, v21);
        sub_10029DE94(v21, &v22);
        LODWORD(v25) = LODWORD(v22);
        sub_10029E004(&v27[v9], v14 - 1, v21);
        sub_10029DE94(v21, &v22);
        HIDWORD(v25) = LODWORD(v22);
        sub_10029E004(&v27[v9], v14, v21);
        sub_10029DE94(v21, &v22);
        v15 = 3 * v11 + 1;
        v16 = LODWORD(v22);
      }

      v26 = *&v16;
      v17 = *(a1 + 44);
      v18 = v25;
      *(v12 + 4 * (v10 + (v17 ^ 2))) = v25;
      *(v12 + 4 * v15) = HIDWORD(v18);
      v19 = v26;
      *(v12 + 4 * (v10 + v17)) = v26;
      if (*&v18 < 0.0 || *(&v18 + 1) < 0.0 || v19 < 0.0 || (sub_10029D46C(&v25, &v25 + 1, &v22), sub_10029D46C(&v22, &v26, v21), sub_10029D334(&v23, 0x400u), !sub_10029D9C4(v21, &v23)))
      {
        v21[0] = 0;
        v21[1] = 0;
        qmemcpy(sub_1002A80E0(v21, 93), "c[0] >= 0 && c[1] >= 0 && c[2] >= 0 && c[0] + c[1] + c[2] < softfloat((int)LAB_CBRT_TAB_SIZE)", 93);
        sub_1002A8980(-215, v21, "RGB2Lab_f", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 6454);
      }

      ++v11;
      v10 += 3;
      v13 += 3;
      v14 += 3;
      ++v9;
    }

    while (v11 < v24);
  }

  return a1;
}

void sub_1002D90B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100008E3C(a1);
  }

  _Unwind_Resume(a1);
}

float32x4_t *sub_1002D90D8(float32x4_t *a1, __int32 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v9 = a3;
  a1->i32[0] = a2;
  v12 = sub_1002D923C(a1->i64 + 4, 3, a3, a4, a5, a6);
  a1[3].i32[2] = a2;
  a1[3].i32[3] = v9;
  sub_1002D6570(v12);
  if (a4 | a5)
  {
    v13 = 0;
  }

  else
  {
    v13 = v6;
  }

  a1[10].i8[8] = v13;
  v22 = 1065353216;
  sub_10029D700(&v22, &dword_1004D3E2C, &v23);
  v14 = vld1q_dup_f32(&v23);
  a1[5] = v14;
  sub_10029D334(&v22, 0x64u);
  sub_10029D700(&dword_1004D3E2C, &v22, &v23);
  v15 = vld1q_dup_f32(&v23);
  a1[4] = v15;
  sub_10029D700(&dword_1004D3E2C, &dword_1004D3E10, &v23);
  v16 = vld1q_dup_f32(&v23);
  a1[6] = v16;
  v21 = dword_1004D3E08 ^ 0x80000000;
  sub_10029D4B4(&v21, &dword_1004D3E2C, &v22);
  sub_10029D700(&v22, &dword_1004D3E10, &v23);
  v17 = vld1q_dup_f32(&v23);
  a1[7] = v17;
  sub_10029D700(&dword_1004D3E2C, &dword_1004D3E1C, &v23);
  v18 = vld1q_dup_f32(&v23);
  a1[8] = v18;
  v21 = dword_1004D3E14 ^ 0x80000000;
  sub_10029D4B4(&v21, &dword_1004D3E2C, &v22);
  sub_10029D700(&v22, &dword_1004D3E1C, &v23);
  v19 = vld1q_dup_f32(&v23);
  a1[9] = v19;
  a1[10].i64[0] = -1;
  return a1;
}

uint64_t sub_1002D923C(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  *a1 = a2;
  *(a1 + 48) = a6;
  sub_1002D6570(a1);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  if (a5)
  {
    do
    {
      *(&v29 + v28) = *(a5 + 4 * v28);
      ++v28;
    }

    while (v28 < 3);
  }

  else
  {
    do
    {
      v17 = &byte_1004D3E00[8 * v28 + 368];
      v18 = &v29 + v28;
      if (v17 != v18)
      {
        *v18 = *v17;
      }

      ++v28;
    }

    while (v28 < 3);
  }

  v28 = 0;
  v9 = a1 + 4;
  do
  {
    if (a4)
    {
      *(v9 + 12 * v28) = *(a4 + 12 * v28);
      *(v9 + 12 * v28 + 4) = *(a4 + 4 + 12 * v28);
      *(v9 + 12 * v28 + 8) = *(a4 + 8 + 12 * v28);
      if (a3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = *(&xmmword_1004D3FA0 + 3 * v28);
      *(v9 + 12 * v28) = v10;
      v11 = *(&xmmword_1004D3FA0 + 3 * v28 + 1);
      *(v9 + 12 * v28 + 4) = v11;
      v12 = *(&xmmword_1004D3FA0 + 3 * v28 + 2);
      *(v9 + 12 * v28 + 8) = v12;
      if (a3)
      {
LABEL_6:
        if (*(v9 + 12 * v28) < 0.0)
        {
          goto LABEL_13;
        }

        goto LABEL_10;
      }
    }

    v13 = 12 * v28;
    v14 = *(v9 + v13);
    *(v9 + v13) = *(v9 + v13 + 8);
    *(v9 + v13 + 8) = v14;
    if (*(v9 + 12 * v28) < 0.0)
    {
      goto LABEL_13;
    }

LABEL_10:
    if (*(v9 + 12 * v28 + 4) < 0.0 || *(v9 + 12 * v28 + 8) < 0.0 || (LODWORD(v23) = *(v9 + 12 * v28), LODWORD(v22) = *(v9 + 12 * v28 + 4), sub_10029D46C(&v23, &v22, v24), LODWORD(v21) = *(v9 + 12 * v28 + 8), sub_10029D46C(v24, &v21, &v26), LODWORD(v20) = 1069547520, !sub_10029D9C4(&v26, &v20)))
    {
LABEL_13:
      v26 = 0;
      v27 = 0;
      qmemcpy(sub_1002A80E0(&v26, 158), "coeffs[i*3] >= 0 && coeffs[i*3+1] >= 0 && coeffs[i*3+2] >= 0 && softfloat(coeffs[i*3]) + softfloat(coeffs[i*3+1]) + softfloat(coeffs[i*3+2]) < softfloat(1.5f)", 158);
      sub_1002A8980(-215, &v26, "RGB2Luvfloat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 7532);
    }

    ++v28;
  }

  while (v28 < 3);
  sub_10029DA40(&v22, 0xFu);
  sub_10029E004(&v30, &v22, &v23);
  sub_10029DFB4(&v29, &v23, v24);
  sub_10029DA40(&v20, 3u);
  sub_10029E004(&v31, &v20, &v21);
  sub_10029DFB4(v24, &v21, &v26);
  sub_10029DE94(&v26, &v25);
  v24[0] = 1065353216;
  LODWORD(v22) = 872415232;
  if (sub_10029D948(&v25, &v22))
  {
    v15 = &v25;
  }

  else
  {
    v15 = &v22;
  }

  LODWORD(v23) = *v15;
  sub_10029D700(v24, &v23, &v26);
  v25 = v26;
  sub_10029D334(&v23, 0x34u);
  sub_10029D4B4(&v25, &v23, v24);
  sub_10029DE94(&v29, &v22);
  sub_10029D4B4(v24, &v22, &v26);
  *(a1 + 40) = v26;
  sub_10029D334(&v23, 0x75u);
  sub_10029D4B4(&v25, &v23, v24);
  sub_10029DE94(&v30, &v22);
  sub_10029D4B4(v24, &v22, &v26);
  *(a1 + 44) = v26;
  v26 = 0x3FF0000000000000;
  if (!sub_10029E5A0(&v30, &v26))
  {
    v26 = 0;
    v27 = 0;
    qmemcpy(sub_1002A80E0(&v26, 31), "whitePt[1] == softdouble::one()", 31);
    sub_1002A8980(-215, &v26, "RGB2Luvfloat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 7546);
  }

  return a1;
}

void sub_1002D9750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002D9798(uint64_t a1, int a2, int a3, float *a4, float32x2_t *a5, char a6)
{
  *a1 = a2;
  *(a1 + 40) = a6;
  *(a1 + 52) = a3;
  sub_1002D6570(a1);
  if (a5)
  {
    v31 = vcvtq_f64_f32(*a5);
    v32 = a5[1].f32[0];
    v9 = a1 + 4;
    v28 = 0.0;
    v29 = 0;
    v30 = 0;
    if (a4)
    {
LABEL_3:
      *&v10 = a4[3];
      v28 = *a4;
      v29 = v10;
      *&v11 = a4[6];
      goto LABEL_6;
    }
  }

  else
  {
    v31 = xmmword_1004D3F70;
    v32 = *&qword_1004D3F80;
    v9 = a1 + 4;
    v28 = 0.0;
    v29 = 0;
    v30 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v28 = *&xmmword_1004D3FF0;
  v29 = qword_1004D4008;
  v11 = qword_1004D4020;
LABEL_6:
  v30 = v11;
  sub_10029E004(&v28, &v31, &v27);
  v12 = v27;
  *(v9 + 12 * (*(a1 + 52) ^ 2)) = v12;
  sub_10029E004(&v29, &v31, &v27);
  v13 = v27;
  *(a1 + 16) = v13;
  sub_10029E004(&v30, &v31, &v27);
  v14 = v27;
  *(v9 + 12 * *(a1 + 52)) = v14;
  v28 = 0.0;
  v29 = 0;
  v30 = 0;
  if (a4)
  {
    *&v15 = a4[4];
    v28 = a4[1];
    v29 = v15;
    *&v16 = a4[7];
  }

  else
  {
    v28 = *(&xmmword_1004D3FF0 + 1);
    v29 = xmmword_1004D4010;
    v16 = qword_1004D4028;
  }

  v30 = v16;
  sub_10029E004(&v28, &v31.f64[1], &v27);
  v17 = v27;
  *(v9 + 12 * (*(a1 + 52) ^ 2) + 4) = v17;
  sub_10029E004(&v29, &v31.f64[1], &v27);
  v18 = v27;
  *(a1 + 20) = v18;
  sub_10029E004(&v30, &v31.f64[1], &v27);
  v19 = v27;
  *(v9 + 12 * *(a1 + 52) + 4) = v19;
  v28 = 0.0;
  v29 = 0;
  v30 = 0;
  if (a4)
  {
    *&v20 = a4[5];
    v28 = a4[2];
    v29 = v20;
    *&v21 = a4[8];
  }

  else
  {
    v28 = *&qword_1004D4000;
    v29 = *(&xmmword_1004D4010 + 1);
    v21 = qword_1004D4030;
  }

  v30 = v21;
  sub_10029E004(&v28, &v32, &v27);
  v22 = v27;
  *(v9 + 12 * (*(a1 + 52) ^ 2) + 8) = v22;
  sub_10029E004(&v29, &v32, &v27);
  v23 = v27;
  *(a1 + 24) = v23;
  sub_10029E004(&v30, &v32, &v27);
  v24 = v27;
  *(v9 + 12 * *(a1 + 52) + 8) = v24;
  sub_10029D334(&v28, 8u);
  *(a1 + 44) = LODWORD(v28);
  sub_10029D334(&v27, 6u);
  sub_10029D334(&v26, 0x1Du);
  sub_10029D700(&v27, &v26, &v28);
  *(a1 + 48) = LODWORD(v28);
  return a1;
}

uint64_t sub_1002D9AD0(uint64_t a1, int a2, int a3, float *a4, float32x2_t *a5, int a6)
{
  *a1 = a2;
  if (a5)
  {
    v26 = vcvtq_f64_f32(*a5);
    v27 = a5[1].f32[0];
    if (atomic_load_explicit(&qword_1004B0290, memory_order_acquire))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v26 = xmmword_1004D3F70;
    v27 = *&qword_1004D3F80;
    if (atomic_load_explicit(&qword_1004B0290, memory_order_acquire))
    {
      goto LABEL_5;
    }
  }

  if (__cxa_guard_acquire(&qword_1004B0290))
  {
    sub_10029DA40(&qword_1004B0288, 0x1000u);
    __cxa_guard_release(&qword_1004B0290);
  }

LABEL_5:
  v23 = 0.0;
  v24 = 0;
  v25 = 0;
  if (a4)
  {
    *&v10 = a4[3];
    v23 = *a4;
    v24 = v10;
    *&v11 = a4[6];
  }

  else
  {
    v23 = *&xmmword_1004D3FF0;
    v24 = qword_1004D4008;
    v11 = qword_1004D4020;
  }

  v25 = v11;
  sub_10029E004(&qword_1004B0288, &v23, &v21);
  sub_10029E004(&v21, &v26, &v22);
  v12 = a1 + 4;
  *(a1 + 4 + 12 * a3) = sub_10029DC5C(&v22);
  sub_10029E004(&qword_1004B0288, &v24, &v21);
  sub_10029E004(&v21, &v26, &v22);
  *(a1 + 16) = sub_10029DC5C(&v22);
  sub_10029E004(&qword_1004B0288, &v25, &v21);
  sub_10029E004(&v21, &v26, &v22);
  *(a1 + 4 + 12 * (a3 ^ 2)) = sub_10029DC5C(&v22);
  v23 = 0.0;
  v24 = 0;
  v25 = 0;
  if (a4)
  {
    *&v13 = a4[4];
    v23 = a4[1];
    v24 = v13;
    *&v14 = a4[7];
  }

  else
  {
    v23 = *(&xmmword_1004D3FF0 + 1);
    v24 = xmmword_1004D4010;
    v14 = qword_1004D4028;
  }

  v25 = v14;
  sub_10029E004(&qword_1004B0288, &v23, &v21);
  sub_10029E004(&v21, &v26.f64[1], &v22);
  v15 = v12 + 12 * a3;
  *(v15 + 4) = sub_10029DC5C(&v22);
  sub_10029E004(&qword_1004B0288, &v24, &v21);
  sub_10029E004(&v21, &v26.f64[1], &v22);
  *(a1 + 20) = sub_10029DC5C(&v22);
  sub_10029E004(&qword_1004B0288, &v25, &v21);
  sub_10029E004(&v21, &v26.f64[1], &v22);
  v16 = v12 + 12 * (a3 ^ 2);
  *(v16 + 4) = sub_10029DC5C(&v22);
  v23 = 0.0;
  v24 = 0;
  v25 = 0;
  if (a4)
  {
    *&v17 = a4[5];
    v23 = a4[2];
    v24 = v17;
    *&v18 = a4[8];
  }

  else
  {
    v23 = *&qword_1004D4000;
    v24 = *(&xmmword_1004D4010 + 1);
    v18 = qword_1004D4030;
  }

  v25 = v18;
  sub_10029E004(&qword_1004B0288, &v23, &v21);
  sub_10029E004(&v21, &v27, &v22);
  *(v15 + 8) = sub_10029DC5C(&v22);
  sub_10029E004(&qword_1004B0288, &v24, &v21);
  sub_10029E004(&v21, &v27, &v22);
  *(a1 + 24) = sub_10029DC5C(&v22);
  sub_10029E004(&qword_1004B0288, &v25, &v21);
  sub_10029E004(&v21, &v27, &v22);
  *(v16 + 8) = sub_10029DC5C(&v22);
  v19 = word_1004C0600;
  if (a6)
  {
    v19 = word_1004BE600;
  }

  *(a1 + 40) = v19;
  return a1;
}

uint64_t sub_1002D9ED8(uint64_t a1, int a2, int a3, _DWORD *a4, float32x2_t *a5, char a6)
{
  *a1 = a2;
  *(a1 + 48) = a6;
  sub_1002D6570(a1);
  if (a5)
  {
    v38 = vcvtq_f64_f32(*a5);
    v39 = a5[1].f32[0];
  }

  else
  {
    v38 = xmmword_1004D3F70;
    v39 = *&qword_1004D3F80;
  }

  v10 = a1 + 4;
  v11 = a3 ^ 2;
  v12 = 3 * v11;
  v13 = 3 * a3;
  v14 = (a1 + 4 + 12 * v11);
  v15 = (a1 + 4 + 12 * a3);
  if (a4)
  {
    v16 = a4[3];
    v17 = a4[6];
    *v14 = *a4;
    *(a1 + 16) = v16;
    *v15 = v17;
    v18 = a4[4];
    v19 = a4[7];
    v14[1] = a4[1];
    *(a1 + 20) = v18;
    v15[1] = v19;
    v20 = a4[2];
    v21 = a4[5];
    v22 = a4[8];
  }

  else
  {
    sub_10029DE94(&xmmword_1004D3FF0, v31);
    v23 = v31[0];
    sub_10029DE94(&qword_1004D4008, v31);
    v24 = v31[0];
    sub_10029DE94(&qword_1004D4020, v31);
    v25 = v31[0];
    *(v10 + 4 * v12) = v23;
    *(a1 + 16) = v24;
    *(v10 + 4 * v13) = v25;
    sub_10029DE94(&xmmword_1004D3FF0 + 1, v31);
    v26 = v31[0];
    sub_10029DE94(&xmmword_1004D4010, v31);
    v27 = v31[0];
    sub_10029DE94(&qword_1004D4028, v31);
    v28 = v31[0];
    v14[1] = v26;
    *(a1 + 20) = v27;
    v15[1] = v28;
    sub_10029DE94(&qword_1004D4000, v31);
    v20 = v31[0];
    sub_10029DE94(&xmmword_1004D4010 + 1, v31);
    v21 = v31[0];
    sub_10029DE94(&qword_1004D4030, v31);
    v22 = v31[0];
  }

  v14[2] = v20;
  *(a1 + 24) = v21;
  v15[2] = v22;
  sub_10029DA40(&v34, 0xFu);
  sub_10029E004(&v38.f64[1], &v34, &v35);
  sub_10029DFB4(&v38, &v35, v36);
  sub_10029DA40(&v32, 3u);
  sub_10029E004(&v39, &v32, &v33);
  sub_10029DFB4(v36, &v33, v31);
  sub_10029DE94(v31, &v37);
  v36[0] = 1065353216;
  LODWORD(v34) = 872415232;
  if (sub_10029D948(&v37, &v34))
  {
    v29 = &v37;
  }

  else
  {
    v29 = &v34;
  }

  LODWORD(v35) = *v29;
  sub_10029D700(v36, &v35, v31);
  v37 = v31[0];
  sub_10029D334(&v35, 0x34u);
  sub_10029D4B4(&v35, &v37, v36);
  sub_10029DE94(&v38, &v34);
  sub_10029D4B4(v36, &v34, v31);
  *(a1 + 40) = v31[0];
  sub_10029D334(&v35, 0x75u);
  sub_10029D4B4(&v35, &v37, v36);
  sub_10029DE94(&v38.f64[1], &v34);
  sub_10029D4B4(v36, &v34, v31);
  *(a1 + 44) = v31[0];
  v31[0] = 0x3FF0000000000000;
  if (!sub_10029E5A0(&v38.f64[1], v31))
  {
    v31[0] = 0;
    v31[1] = 0;
    qmemcpy(sub_1002A80E0(v31, 31), "whitePt[1] == softdouble::one()", 31);
    sub_1002A8980(-215, v31, "Luv2RGBfloat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/imgproc/src/color.cpp", 7871);
  }

  return a1;
}

void sub_1002DA278(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002DA2A8(uint64_t a1, int a2, int a3, float *a4, uint64_t a5, int a6)
{
  *a1 = a2;
  sub_1002D6570(a1);
  if ((atomic_load_explicit(&qword_1004B02A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1004B02A0))
  {
    sub_10029DA40(&qword_1004B0298, 0x1000u);
    __cxa_guard_release(&qword_1004B02A0);
  }

  v10 = a1 + 4;
  if (a4)
  {
    *&v11 = a4[3];
    v20 = *a4;
    v21 = v11;
    *&v22 = a4[6];
    sub_10029E004(&qword_1004B0298, &v20, &v19);
    *(v10 + 12 * a3) = sub_10029DC5C(&v19);
    sub_10029E004(&qword_1004B0298, &v21, &v19);
    *(a1 + 16) = sub_10029DC5C(&v19);
    sub_10029E004(&qword_1004B0298, &v22, &v19);
    *(v10 + 12 * (a3 ^ 2)) = sub_10029DC5C(&v19);
    v20 = a4[1];
    *&v12 = a4[7];
    *&v21 = a4[4];
    v22 = v12;
    sub_10029E004(&qword_1004B0298, &v20, &v19);
    v13 = v10 + 12 * a3;
    *(v13 + 4) = sub_10029DC5C(&v19);
    sub_10029E004(&qword_1004B0298, &v21, &v19);
    *(a1 + 20) = sub_10029DC5C(&v19);
    sub_10029E004(&qword_1004B0298, &v22, &v19);
    v14 = v10 + 12 * (a3 ^ 2);
    *(v14 + 4) = sub_10029DC5C(&v19);
    v20 = a4[2];
    *&v15 = a4[8];
    *&v21 = a4[5];
    v22 = v15;
    sub_10029E004(&qword_1004B0298, &v20, &v19);
    *(v13 + 8) = sub_10029DC5C(&v19);
  }

  else
  {
    v20 = *&xmmword_1004D3FF0;
    v21 = qword_1004D4008;
    v22 = qword_1004D4020;
    sub_10029E004(&qword_1004B0298, &v20, &v19);
    *(v10 + 12 * a3) = sub_10029DC5C(&v19);
    sub_10029E004(&qword_1004B0298, &v21, &v19);
    *(a1 + 16) = sub_10029DC5C(&v19);
    sub_10029E004(&qword_1004B0298, &v22, &v19);
    *(v10 + 12 * (a3 ^ 2)) = sub_10029DC5C(&v19);
    v20 = *(&xmmword_1004D3FF0 + 1);
    v21 = *&xmmword_1004D4010;
    v22 = qword_1004D4028;
    sub_10029E004(&qword_1004B0298, &v20, &v19);
    v16 = v10 + 12 * a3;
    *(v16 + 4) = sub_10029DC5C(&v19);
    sub_10029E004(&qword_1004B0298, &v21, &v19);
    *(a1 + 20) = sub_10029DC5C(&v19);
    sub_10029E004(&qword_1004B0298, &v22, &v19);
    v14 = v10 + 12 * (a3 ^ 2);
    *(v14 + 4) = sub_10029DC5C(&v19);
    v20 = *&qword_1004D4000;
    v21 = *(&xmmword_1004D4010 + 1);
    v22 = qword_1004D4030;
    sub_10029E004(&qword_1004B0298, &v20, &v19);
    *(v16 + 8) = sub_10029DC5C(&v19);
  }

  sub_10029E004(&qword_1004B0298, &v21, &v19);
  *(a1 + 24) = sub_10029DC5C(&v19);
  sub_10029E004(&qword_1004B0298, &v22, &v19);
  *(v14 + 8) = sub_10029DC5C(&v19);
  v17 = word_1004C0600;
  if (a6)
  {
    v17 = word_1004BE600;
  }

  *(a1 + 40) = v17;
  return a1;
}

void sub_1002DA6C4()
{
  nullsub_1();

  operator delete();
}

uint64_t sub_1002DA6FC(uint64_t result, int *a2)
{
  v2 = a2[1];
  v3 = *a2;
  if (v3 < v2)
  {
    v4 = *(result + 56);
    v5 = *(result + 48);
    v59 = *(result + 52) / 2;
    v60 = v5 / 2;
    v6 = 2 * v4;
    v7 = v4 * v5;
    v8 = 2 * v3;
    v57 = v4;
    v56 = v4 + 1;
    v9 = (2 * v3) | 1;
    do
    {
      v11 = *(result + 8);
      v10 = *(result + 16);
      v12 = v11 + v10 * 2 * v3;
      v13 = v11 + v10 * ((2 * v3) | 1);
      v14 = *(result + 60);
      if (v14 == 1)
      {
        v15 = v12 + 2;
      }

      else
      {
        v15 = v11 + v10 * 2 * v3;
      }

      v68 = v15;
      if (v14 == 1)
      {
        v16 = v11 + v10 * 2 * v3;
      }

      else
      {
        v16 = v12 + 2;
      }

      v67 = v16;
      if (v14 == 1)
      {
        v17 = v13 + 2;
      }

      else
      {
        v17 = v11 + v10 * ((2 * v3) | 1);
      }

      v66 = v17;
      if (v14 == 1)
      {
        v18 = v11 + v10 * ((2 * v3) | 1);
      }

      else
      {
        v18 = v13 + 2;
      }

      v65 = v18;
      v19 = *(result + 62);
      v21 = *(result + 32);
      v20 = *(result + 40);
      v22 = v21 + v20 * ((v3 + (v3 >> 31)) >> 1) + v3 % 2 * v60;
      v23 = v59 + v3 + ((v59 + v3) >> 31);
      v24 = v21 + v20 * (v23 >> 1);
      v25 = v23 & 0xFFFFFFFE;
      v26 = v21 + v20 * v3;
      v27 = v19 == 1;
      if (v19 == 1)
      {
        v28 = v26;
      }

      else
      {
        v28 = v22;
      }

      if (v27)
      {
        v29 = v26 + 1;
      }

      else
      {
        v29 = v24 + (v59 + v3 - v25) * v60;
      }

      if (*(result + 61))
      {
        v30 = v29;
      }

      else
      {
        v30 = v28;
      }

      if (*(result + 61))
      {
        v31 = v28;
      }

      else
      {
        v31 = v29;
      }

      if (v7 >= 1)
      {
        v62 = v8;
        v63 = v3;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v64 = *(result + 24) + v20 * v8;
        v35 = v10 * v8;
        v36 = v11 + v56 + v10 * v8;
        v37 = v18 + v57;
        v61 = v9;
        v38 = v10 * v9;
        v39 = v11 + v56 + v10 * v9;
        v40 = v11 + 1;
        v41 = v11 + 1 + v35;
        v42 = v40 + v38;
        do
        {
          v43 = *(v67 + v34);
          v44 = *(v41 + v34);
          v45 = *(v68 + v34);
          v46 = *(v37 + v34);
          v47 = *(v39 + v34);
          v48 = 528482 * *(v36 + v34) + 269484 * *(v67 + v57 + v34) + 102760 * *(v68 + v57 + v34);
          v49 = *(v66 + v57 + v34);
          v50 = 528482 * *(v42 + v34) + 269484 * *(v65 + v34) + 102760 * *(v66 + v34);
          v51 = (v64 + v32);
          *v51 = (528482 * v44 + 269484 * v43 + 102760 * v45 + 17301504) >> 20;
          v51[1] = (v48 + 17301504) >> 20;
          v51[*(result + 40)] = (v50 + 17301504) >> 20;
          v51[*(result + 40) + 1] = (528482 * v47 + 269484 * v46 + 102760 * v49 + 17301504) >> 20;
          v52 = 268130321 * v44 + 268280268 * v43;
          v53 = 268049581 * v44 + 460324 * v43 + 268361008 * v45;
          v54 = (v52 + 460324 * v45 + 134742016) >> 20;
          if (*(result + 62))
          {
            v55 = v32;
          }

          else
          {
            v55 = v33;
          }

          *(v30 + v55) = v54;
          *(v31 + v55) = (v53 + 134742016) >> 20;
          v34 += v6;
          ++v33;
          v32 += 2;
        }

        while (v34 < v7);
        v2 = a2[1];
        v8 = v62;
        v3 = v63;
        v9 = v61;
      }

      ++v3;
      v8 += 2;
      v9 += 2;
    }

    while (v3 < v2);
  }

  return result;
}

void sub_1002DAA34()
{
  nullsub_1();

  operator delete();
}

void sub_1002DAA6C(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477200);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    do
    {
      sub_1002DAB20(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

int *sub_1002DAB20(int *result, uint64_t a2, char *a3, int a4)
{
  v4 = *result;
  v5 = result[2];
  if (result[1] == 3)
  {
    v6 = 3 * a4;
    if (v4 == 3)
    {
      if (a4 >= 16)
      {
        v7 = 0;
        do
        {
          v14 = (a2 + v7);
          v45 = vld3q_s8(v14);
          *v43.val[0].i8 = v45;
          v45.val[0] = v43.val[v5];
          v45.val[2] = v43.val[(v5 ^ 2)];
          v15 = &a3[v7];
          vst3q_s8(v15, v45);
          v7 += 48;
        }

        while (v7 <= v6 - 48);
        a2 += v7;
        v8 = v6 - 24;
        if (v7 > v6 - 24)
        {
LABEL_18:
          if (v7 < v6)
          {
            v17 = &a3[v7 + 2];
            do
            {
              v18 = *(a2 + 1);
              v19 = *(a2 + (v5 ^ 2));
              *(v17 - 2) = *(a2 + v5);
              *(v17 - 1) = v18;
              *v17 = v19;
              v17 += 3;
              a2 += 3;
              LODWORD(v7) = v7 + 3;
            }

            while (v6 > v7);
          }

          return result;
        }
      }

      else
      {
        LODWORD(v7) = 0;
        v8 = v6 - 24;
        if (v6 - 24 < 0)
        {
          goto LABEL_18;
        }
      }

      v7 = v7;
      do
      {
        v44 = vld3_s8(a2);
        a2 += 24;
        *v43.val[0].i8 = v44;
        v44.val[0] = v43.val[0].i64[v5];
        v44.val[2] = v43.val[0].i64[(v5 ^ 2)];
        v16 = &a3[v7];
        vst3_s8(v16, v44);
        v7 += 24;
      }

      while (v7 <= v8);
      goto LABEL_18;
    }

    if (a4 >= 16)
    {
      v11 = 0;
      do
      {
        v50 = vld4q_s8(a2);
        a2 += 64;
        v43 = v50;
        v50.val[0] = v43.val[v5];
        v50.val[2] = v43.val[(v5 ^ 2)];
        v26 = &a3[v11];
        vst3q_s8(v26, *v50.val[0].i8);
        v11 += 48;
      }

      while (v11 <= v6 - 48);
    }

    else
    {
      LODWORD(v11) = 0;
    }

    if (v11 <= v6 - 24)
    {
      v11 = v11;
      do
      {
        v47 = vld4_s8(a2);
        a2 += 32;
        *v43.val[0].i8 = v47;
        v47.val[0] = v43.val[0].i64[v5];
        v47.val[2] = v43.val[0].i64[(v5 ^ 2)];
        v27 = &a3[v11];
        vst3_s8(v27, *v47.val[0].i8);
        v11 += 24;
      }

      while (v11 <= v6 - 24);
    }

    if (v11 < v6)
    {
      v28 = &a3[v11 + 2];
      do
      {
        v29 = *(a2 + 1);
        v30 = *(a2 + (v5 ^ 2));
        *(v28 - 2) = *(a2 + v5);
        *(v28 - 1) = v29;
        *v28 = v30;
        v28 += 3;
        a2 += 4;
        LODWORD(v11) = v11 + 3;
      }

      while (v6 > v11);
    }
  }

  else if (v4 == 3)
  {
    v9 = 3 * a4;
    if (a4 >= 16)
    {
      v10 = 0;
      do
      {
        v20 = (a2 + v10);
        *v49.val[0].i8 = vld3q_s8(v20);
        v43.val[v5] = v49.val[0];
        v43.val[1] = v49.val[1];
        v43.val[(v5 ^ 2)] = v49.val[2];
        v49.val[3] = *(result + 1);
        v49.val[0] = v43.val[0];
        v49.val[1] = v43.val[1];
        v49.val[2] = v43.val[2];
        vst4q_s8(a3, v49);
        a3 += 64;
        v10 += 48;
      }

      while (v10 <= v9 - 48);
    }

    else
    {
      LODWORD(v10) = 0;
    }

    if (v10 <= v9 - 24)
    {
      v10 = v10;
      do
      {
        v21 = (a2 + v10);
        *v46.val[0].i8 = vld3_s8(v21);
        v43.val[0].i64[v5] = v46.val[0];
        v43.val[0].i64[1] = v46.val[1];
        v43.val[0].i64[(v5 ^ 2)] = v46.val[2];
        v46.val[3] = *(result + 4);
        *v46.val[0].i8 = v43.val[0];
        v46.val[2] = v43.val[1].i64[0];
        vst4_s8(a3, v46);
        a3 += 32;
        v10 += 24;
      }

      while (v10 <= v9 - 24);
    }

    if (v10 < v9)
    {
      v22 = (a2 + v10 + 2);
      do
      {
        v23 = *(v22 - 2);
        v24 = *(v22 - 1);
        v25 = *v22;
        v22 += 3;
        a3[v5] = v23;
        a3[1] = v24;
        a3[v5 ^ 2] = v25;
        a3[3] = -1;
        a3 += 4;
        LODWORD(v10) = v10 + 3;
      }

      while (v9 > v10);
    }
  }

  else
  {
    v12 = 4 * a4;
    if (a4 >= 16)
    {
      v13 = 0;
      do
      {
        v31 = (a2 + v13);
        v51 = vld4q_s8(v31);
        v43 = v51;
        v51.val[0] = v43.val[v5];
        v51.val[2] = v43.val[(v5 ^ 2)];
        v32 = &a3[v13];
        vst4q_s8(v32, v51);
        v13 += 64;
      }

      while (v13 <= v12 - 64);
    }

    else
    {
      LODWORD(v13) = 0;
    }

    if (v13 <= v12 - 32)
    {
      v13 = v13;
      do
      {
        v33 = (a2 + v13);
        v48 = vld4_s8(v33);
        *v43.val[0].i8 = v48;
        v48.val[0] = v43.val[0].i64[v5];
        v48.val[2] = v43.val[0].i64[(v5 ^ 2)];
        v34 = &a3[v13];
        vst4_s8(v34, v48);
        v13 += 32;
      }

      while (v13 <= v12 - 32);
    }

    if (v13 < v12)
    {
      v35 = v13;
      v36 = &a3[v13];
      v37 = v35 + 3;
      v38 = (v35 + a2 + 1);
      do
      {
        v39 = *v38;
        v40 = v38[1];
        v41 = v38[2];
        v36[v5] = *(v38 - 1);
        v36[1] = v39;
        v36[v5 ^ 2] = v40;
        v36[3] = v41;
        v36 += 4;
        v42 = v37 + 1;
        v37 += 4;
        v38 += 4;
      }

      while (v42 < v12);
    }
  }

  return result;
}

void sub_1002DAEEC()
{
  nullsub_1();

  operator delete();
}

void sub_1002DAF24(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v43, &off_100477260);
  v4 = a2[1];
  v5 = *a2;
  if (v5 < v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    v8 = v6 + v7 * v5;
    v10 = *(a1 + 24);
    v9 = *(a1 + 32);
    v11 = v9 * v5;
    v12 = *(a1 + 48);
    v13 = *(a1 + 40);
    v14 = v12[1];
    v15 = *v12;
    v16 = v12[2];
    v17 = v16 ^ 2;
    v18 = 3 * v13;
    if (v14 == 3)
    {
      if (v13 >= 1)
      {
        v19 = 2 * v15;
        v20 = v11 + v10 + 4;
        do
        {
          v21 = 0;
          v22 = v20;
          v23 = v8;
          do
          {
            v24 = *(v23 + 2);
            v25 = *(v23 + 2 * v17);
            *(v22 - 2) = *(v23 + 2 * v16);
            *(v22 - 1) = v24;
            *v22 = v25;
            v22 += 3;
            v21 += 3;
            v23 += v19;
          }

          while (v21 < v18);
          LODWORD(v5) = v5 + 1;
          v8 += v7;
          v20 += v9;
        }

        while (v5 != v4);
      }
    }

    else
    {
      v26 = v10 + v11;
      if (v15 == 3)
      {
        if (v13 >= 1)
        {
          v27 = v7 * v5 + v6 + 4;
          do
          {
            v28 = 0;
            v29 = v27;
            v30 = v26;
            do
            {
              v31 = *(v29 - 2);
              v32 = *(v29 - 1);
              v33 = *v29;
              v29 += 3;
              *(v30 + 2 * v16) = v31;
              *(v30 + 2) = v32;
              *(v30 + 2 * v17) = v33;
              *(v30 + 6) = -1;
              v28 += 3;
              v30 += 8;
            }

            while (v28 < v18);
            LODWORD(v5) = v5 + 1;
            v26 += v9;
            v27 += v7;
          }

          while (v5 != v4);
        }
      }

      else if (v13 >= 1)
      {
        v34 = (4 * v13);
        v35 = v10 + v11 + 2 * v17;
        v36 = v10 + v11 + 2 * v16;
        do
        {
          v37 = 0;
          v38 = 0;
          do
          {
            v39 = *(v8 + v37 + 2);
            v40 = *(v8 + v37 + 4);
            v41 = *(v8 + v37 + 6);
            *(v36 + 2 * v38) = *(v8 + v37);
            v42 = v26 + v37;
            *(v42 + 2) = v39;
            *(v35 + 2 * v38) = v40;
            *(v42 + 6) = v41;
            v38 += 4;
            v37 += 8;
          }

          while (v38 < v34);
          LODWORD(v5) = v5 + 1;
          v8 += v7;
          v26 += v9;
          v35 += v9;
          v36 += v9;
        }

        while (v5 != v4);
      }
    }
  }

  if (v43[2])
  {
    sub_1002ACC1C(v43);
  }
}

void sub_1002DB108()
{
  nullsub_1();

  operator delete();
}

void sub_1002DB140(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v41, &off_1004772C0);
  v4 = a2[1];
  v5 = *a2;
  if (v5 < v4)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    v8 = v6 + v7 * v5;
    v10 = *(a1 + 24);
    v9 = *(a1 + 32);
    v11 = v9 * v5;
    v12 = *(a1 + 48);
    v13 = *(a1 + 40);
    v14 = v12[1];
    v15 = *v12;
    v16 = v12[2];
    v17 = v16 ^ 2;
    v18 = 3 * v13;
    if (v14 == 3)
    {
      if (v13 >= 1)
      {
        v19 = v11 + v10 + 8;
        do
        {
          v20 = 0;
          v21 = v19;
          v22 = v8;
          do
          {
            v23 = *(v22 + 4);
            v24 = *(v22 + 4 * v17);
            *(v21 - 2) = *(v22 + 4 * v16);
            *(v21 - 1) = v23;
            *v21 = v24;
            v21 += 3;
            v20 += 3;
            v22 += 4 * v15;
          }

          while (v20 < v18);
          LODWORD(v5) = v5 + 1;
          v8 += v7;
          v19 += v9;
        }

        while (v5 != v4);
      }
    }

    else
    {
      v25 = v10 + v11;
      if (v15 == 3)
      {
        if (v13 >= 1)
        {
          v26 = v7 * v5 + v6 + 8;
          do
          {
            v27 = 0;
            v28 = v26;
            v29 = v25;
            do
            {
              v30 = *(v28 - 2);
              v31 = *(v28 - 1);
              v32 = *v28;
              v28 += 3;
              *(v29 + 4 * v16) = v30;
              *(v29 + 4) = v31;
              *(v29 + 4 * v17) = v32;
              *(v29 + 12) = 1065353216;
              v27 += 3;
              v29 += 16;
            }

            while (v27 < v18);
            LODWORD(v5) = v5 + 1;
            v25 += v9;
            v26 += v7;
          }

          while (v5 != v4);
        }
      }

      else if (v13 >= 1)
      {
        v33 = v10 + v11 + 4 * v17;
        v34 = v10 + v11 + 4 * v16;
        do
        {
          v35 = 0;
          v36 = 0;
          do
          {
            v37 = *(v8 + v35 + 4);
            v38 = *(v8 + v35 + 8);
            v39 = *(v8 + v35 + 12);
            *(v34 + 4 * v36) = *(v8 + v35);
            v40 = v25 + v35;
            *(v40 + 4) = v37;
            *(v33 + 4 * v36) = v38;
            *(v40 + 12) = v39;
            v36 += 4;
            v35 += 16;
          }

          while (v36 < (4 * v13));
          LODWORD(v5) = v5 + 1;
          v8 += v7;
          v25 += v9;
          v33 += v9;
          v34 += v9;
        }

        while (v5 != v4);
      }
    }
  }

  if (v41[2])
  {
    sub_1002ACC1C(v41);
  }
}

void sub_1002DB314()
{
  nullsub_1();

  operator delete();
}

void sub_1002DB34C(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477320);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      sub_1002DB414(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 = (v5 + *(a1 + 32));
    }

    while (v4 < a2[1]);
  }

  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

int8x16_t *sub_1002DB414(int8x16_t *result, const char *a2, int8x16_t *a3, int a4)
{
  v4 = result->i32[0];
  v5 = result->i32[1];
  if (result->i32[2] != 6)
  {
    if (v4 == 3)
    {
      if (a4 >= 8)
      {
        v7 = 0;
        v22 = a3;
        do
        {
          v181 = vld3_s8(a2);
          a2 += 24;
          *v179.val[0].i8 = v181;
          *v22++ = vorrq_s8(vorrq_s8(vshll_n_u8(vand_s8(result[1].u64[1], v181.val[1]), 2uLL), vmovl_u8(vshr_n_u8(v179.val[v5], 3uLL))), vshll_n_u8(vand_s8(v179.val[(v5 ^ 2)], result[1].u64[1]), 7uLL));
          v7 += 8;
        }

        while (v7 <= (a4 - 8));
      }

      else
      {
        LODWORD(v7) = 0;
      }

      if (v7 >= a4)
      {
        return result;
      }

      v23 = v5 ^ 2;
      v24 = v7;
      v25 = a4 - v7;
      if (v25 >= 9)
      {
        v26 = &a3->i8[2 * v7];
        v27 = &a3->i8[2 * a4];
        result = &a2[3 * a4 + v23 - 3 * v7 - 2];
        v28 = v26 >= &a2[3 * a4 + ~(3 * v7)] || a2 + 1 >= v27;
        v29 = !v28;
        v30 = v26 >= &a2[3 * a4 + v5 - 3 * v7 - 2] || &a2[v5] >= v27;
        v31 = !v30;
        v32 = &a2[v23] >= v27 || v26 >= result;
        if (v32 && !v29 && !v31)
        {
          if (v25 < 0x11)
          {
            v33 = 0;
LABEL_133:
            if ((v25 & 7) != 0)
            {
              v108 = v25 & 7;
            }

            else
            {
              v108 = 8;
            }

            v109 = v25 - v108;
            v110 = a4 - v108;
            v111 = &a2[3 * v109];
            v112 = (a3 + 2 * v33 + 2 * v7);
            v113 = v108 + v33 + v7 - a4;
            v114 = &a2[2 * v33 + v33];
            do
            {
              v115 = (v114 + v5);
              v116 = vld3_s8(v115);
              v117 = (v114 + 1);
              v118 = vld3_s8(v117);
              v119 = (v114 + v23);
              v120 = vld3_s8(v119);
              *v112++ = vorrq_s8(vorrq_s8(vshll_n_u8(vand_s8(v118, 0xF8F8F8F8F8F8F8F8), 2uLL), vmovl_u8(vshr_n_u8(v116, 3uLL))), vshll_n_u8(vand_s8(v120, 0xF8F8F8F8F8F8F8F8), 7uLL));
              v114 += 24;
              v113 += 8;
            }

            while (v113);
            v24 = v110;
            a2 = v111;
            goto LABEL_139;
          }

          v95 = 16;
          if ((v25 & 0xF) != 0)
          {
            v95 = v25 & 0xF;
          }

          v33 = v25 - v95;
          v96 = (a3 + 2 * v7);
          v97 = v95 + v7 - a4;
          v98.i64[0] = 0xF8F8F8F8F8F8F8F8;
          v98.i64[1] = 0xF8F8F8F8F8F8F8F8;
          v99 = a2;
          do
          {
            v100 = (v99 + v5);
            v101 = vld3q_s8(v100);
            v102 = vshrq_n_u8(v101, 3uLL);
            v103 = (v99 + 1);
            v104 = vld3q_s8(v103);
            v105 = vandq_s8(v104, v98);
            result = (v99 + v23);
            v106 = vld3q_s8(result->i8);
            v107 = vandq_s8(v106, v98);
            *v96 = vorrq_s8(vorrq_s8(vshll_n_u8(*v105.i8, 2uLL), vmovl_u8(*v102.i8)), vshll_n_u8(*v107.i8, 7uLL));
            v96[1] = vorrq_s8(vorrq_s8(vshll_high_n_u8(v105, 2uLL), vmovl_high_u8(v102)), vshll_high_n_u8(v107, 7uLL));
            v96 += 2;
            v99 += 48;
            v97 += 16;
          }

          while (v97);
          if (v95 > 8)
          {
            goto LABEL_133;
          }

          a2 += 3 * v33;
          v24 = v33 + v7;
        }
      }

LABEL_139:
      v121 = &a3->i16[v24];
      v122 = a4 - v24;
      do
      {
        *v121++ = (a2[v5] >> 3) & 0x1F | (32 * (((a2[1] & 0xF8) >> 3) & 0x1F)) & 0x83FF | ((((a2[v23] & 0xF8) >> 3) & 0x1F) << 10);
        a2 += 3;
        --v122;
      }

      while (v122);
      return result;
    }

    if (a4 >= 8)
    {
      v9 = 0;
      v48 = a3;
      do
      {
        v183 = vld4_s8(a2);
        a2 += 32;
        v179 = v183;
        v49 = result[1].u64[1];
        v50 = vshll_n_u8(vand_s8(v49, v183.val[1]), 2uLL);
        *v183.val[1].i8 = result[3];
        *v183.val[0].i8 = veorq_s8(result[4], vceqq_s16(*v183.val[1].i8, vmovl_u8(v183.val[3])));
        *v48++ = vorrq_s8(vorrq_s8(vorrq_s8(v50, vmovl_u8(vshr_n_u8(v179.val[v5], 3uLL))), vshll_n_u8(vand_s8(v179.val[(v5 ^ 2)], v49), 7uLL)), vorrq_s8(vbicq_s8(*v183.val[1].i8, *v183.val[0].i8), vandq_s8(*v183.val[0].i8, result[2])));
        v9 += 8;
      }

      while (v9 <= (a4 - 8));
    }

    else
    {
      LODWORD(v9) = 0;
    }

    if (v9 >= a4)
    {
      return result;
    }

    v51 = v5 ^ 2;
    v52 = v9;
    v53 = a4 - v9;
    if (v53 >= 9)
    {
      v54 = (a3 + 2 * v9);
      v55 = &a3->i8[2 * a4];
      result = &a2[4 * a4 - 4 * v9];
      v56 = v54 >= &a2[4 * a4 + v51 - 4 * v9 - 3] || &a2[v51] >= v55;
      v57 = !v56;
      v58 = v54 >= &a2[4 * a4 + v5 - 4 * v9 - 3] || &a2[v5] >= v55;
      v59 = !v58;
      v60 = a2 + 1 >= v55 || v54 >= result;
      if (v60 && !v57 && !v59)
      {
        if (v53 < 0x11)
        {
          v61 = 0;
LABEL_163:
          if ((v53 & 7) != 0)
          {
            v167 = v53 & 7;
          }

          else
          {
            v167 = 8;
          }

          v168 = (a3 + 2 * v61 + 2 * v9);
          v169 = &a2[4 * v61];
          v170 = v167 + v61 + v9 - a4;
          v171.i64[0] = 0x8000800080008000;
          v171.i64[1] = 0x8000800080008000;
          do
          {
            v172 = &v169[v5];
            v173 = vld4_s8(v172);
            v174 = v169 + 1;
            v184 = vld4_s8(v174);
            v175 = &v169[v51];
            v176 = vld4_s8(v175);
            *v168++ = vorrq_s8(vorrq_s8(vorrq_s8(vshll_n_u8(vand_s8(v184.val[0], 0xF8F8F8F8F8F8F8F8), 2uLL), vmovl_u8(vshr_n_u8(v173, 3uLL))), vshll_n_u8(vand_s8(v176, 0xF8F8F8F8F8F8F8F8), 7uLL)), vbicq_s8(v171, vmovl_s8(vceqz_s8(v184.val[2]))));
            v169 += 32;
            v170 += 8;
          }

          while (v170);
          v52 = a4 - v167;
          a2 += 4 * (v53 - v167);
          goto LABEL_169;
        }

        v152 = 16;
        if ((v53 & 0xF) != 0)
        {
          v152 = v53 & 0xF;
        }

        v61 = v53 - v152;
        v153 = v152 + v9 - a4;
        v154.i64[0] = 0xF8F8F8F8F8F8F8F8;
        v154.i64[1] = 0xF8F8F8F8F8F8F8F8;
        v155.i64[0] = 0x8000800080008000;
        v155.i64[1] = 0x8000800080008000;
        v156 = a2;
        do
        {
          v157 = (v156 + v5);
          v158 = vld4q_s8(v157);
          v159 = vshrq_n_u8(v158, 3uLL);
          v160 = vmovl_high_u8(v159);
          v161 = (v156 + 1);
          v185 = vld4q_s8(v161);
          v162 = vandq_s8(v185.val[0], v154);
          v163 = vorrq_s8(vshll_n_u8(*v162.i8, 2uLL), vmovl_u8(*v159.i8));
          result = (v156 + v51);
          v164 = vld4q_s8(result->i8);
          v165 = vorrq_s8(vshll_high_n_u8(v162, 2uLL), v160);
          v166 = vandq_s8(v164, v154);
          v185.val[0] = vceqzq_s8(v185.val[2]);
          *v54 = vorrq_s8(vorrq_s8(v163, vshll_n_u8(*v166.i8, 7uLL)), vbicq_s8(v155, vmovl_s8(*v185.val[0].i8)));
          v54[1] = vorrq_s8(vorrq_s8(v165, vshll_high_n_u8(v166, 7uLL)), vbicq_s8(v155, vmovl_high_s8(v185.val[0])));
          v54 += 2;
          v156 += 64;
          v153 += 16;
        }

        while (v153);
        if (v152 > 8)
        {
          goto LABEL_163;
        }

        a2 += 4 * v61;
        v52 = v61 + v9;
      }
    }

LABEL_169:
    v177 = &a3->i16[v52];
    v178 = a4 - v52;
    do
    {
      *v177++ = (a2[v5] >> 3) & 0x1F | (32 * (((a2[1] & 0xF8) >> 3) & 0x1F)) & 0x83FF | ((((a2[v51] & 0xF8) >> 3) & 0x1F) << 10) | ((a2[3] != 0) << 15);
      a2 += 4;
      --v178;
    }

    while (v178);
    return result;
  }

  if (v4 != 3)
  {
    if (a4 >= 8)
    {
      v8 = 0;
      v34 = a3;
      do
      {
        v182 = vld4_s8(a2);
        a2 += 32;
        v179 = v182;
        *v34++ = vorrq_s8(vorrq_s8(vshll_n_u8(vand_s8(*result[1].i8, v182.val[1]), 3uLL), vmovl_u8(vshr_n_u8(v179.val[v5], 3uLL))), vshll_n_s8(vand_s8(result[1].u64[1], v179.val[(v5 ^ 2)]), 8uLL));
        v8 += 8;
      }

      while (v8 <= (a4 - 8));
    }

    else
    {
      LODWORD(v8) = 0;
    }

    if (v8 >= a4)
    {
      return result;
    }

    v35 = v5 ^ 2;
    v36 = v8;
    v37 = a4;
    v38 = a4 - v36;
    if (v38 >= 9)
    {
      v39 = (a3 + 2 * v36);
      v40 = &a3->i8[2 * a4];
      v41 = &a2[4 * a4 + v35 - 4 * v36 - 3];
      result = &a2[4 * v37 + v5 - 4 * v36 - 3];
      v42 = v39 >= &a2[4 * v37 - 4 * v36 - 2] || a2 + 1 >= v40;
      v43 = !v42;
      v44 = v39 >= result || &a2[v5] >= v40;
      v45 = !v44;
      v46 = &a2[v35] >= v40 || v39 >= v41;
      if (v46 && !v43 && !v45)
      {
        if (v38 < 0x11)
        {
          v47 = 0;
LABEL_148:
          if ((v38 & 7) != 0)
          {
            v137 = v38 & 7;
          }

          else
          {
            v137 = 8;
          }

          v138 = v38 - v137;
          v139 = v38 - v137 + v36;
          v140 = &a2[4 * v138];
          v141 = (a3 + 2 * v47 + 2 * v36);
          v142 = &a2[4 * v47];
          v143 = v137 + v47 + v36 - v37;
          do
          {
            v144 = &v142[v5];
            v145 = vld4_s8(v144);
            v146 = v142 + 1;
            v147 = vld4_s8(v146);
            v148 = &v142[v35];
            v149 = vld4_s8(v148);
            *v141++ = vorrq_s8(vorrq_s8(vshll_n_u8(vand_s8(v147, 0xFCFCFCFCFCFCFCFCLL), 3uLL), vmovl_u8(vshr_n_u8(v145, 3uLL))), vshll_n_s8(vand_s8(v149, 0xF8F8F8F8F8F8F8F8), 8uLL));
            v142 += 32;
            v143 += 8;
          }

          while (v143);
          v36 = v139;
          a2 = v140;
          goto LABEL_154;
        }

        v123 = 16;
        if ((v38 & 0xF) != 0)
        {
          v123 = v38 & 0xF;
        }

        v47 = v38 - v123;
        v124 = v123 + v36 - v37;
        v125.i64[0] = 0xFCFCFCFCFCFCFCFCLL;
        v125.i64[1] = 0xFCFCFCFCFCFCFCFCLL;
        v126.i64[0] = 0xF8F8F8F8F8F8F8F8;
        v126.i64[1] = 0xF8F8F8F8F8F8F8F8;
        v127 = a2;
        do
        {
          v128 = (v127 + v5);
          v129 = vld4q_s8(v128);
          v130 = vshrq_n_u8(v129, 3uLL);
          v131 = (v127 + 1);
          v132 = vld4q_s8(v131);
          v133 = vandq_s8(v132, v125);
          result = (v127 + v35);
          v134 = vld4q_s8(result->i8);
          _Q4 = vandq_s8(v134, v126);
          __asm { SHLL2           V5.8H, V4.16B, #8 }

          *v39 = vorrq_s8(vorrq_s8(vshll_n_u8(*v133.i8, 3uLL), vmovl_u8(*v130.i8)), vshll_n_s8(*_Q4.i8, 8uLL));
          v39[1] = vorrq_s8(vorrq_s8(vshll_high_n_u8(v133, 3uLL), vmovl_high_u8(v130)), _Q5);
          v39 += 2;
          v127 += 64;
          v124 += 16;
        }

        while (v124);
        if (v123 > 8)
        {
          goto LABEL_148;
        }

        a2 += 4 * v47;
        v36 += v47;
      }
    }

LABEL_154:
    v150 = &a3->i16[v36];
    v151 = v37 - v36;
    do
    {
      *v150++ = (a2[v5] >> 3) & 0x1F | (32 * (((a2[1] & 0xFC) >> 2) & 0x3F)) & 0x7FF | ((((a2[v35] & 0xF8) >> 3) & 0x1F) << 11);
      a2 += 4;
      --v151;
    }

    while (v151);
    return result;
  }

  if (a4 >= 8)
  {
    v6 = 0;
    v10 = a3;
    do
    {
      v180 = vld3_s8(a2);
      a2 += 24;
      *v179.val[0].i8 = v180;
      *v10++ = vorrq_s8(vorrq_s8(vshll_n_u8(vand_s8(*result[1].i8, v180.val[1]), 3uLL), vmovl_u8(vshr_n_u8(v179.val[v5], 3uLL))), vshll_n_s8(vand_s8(result[1].u64[1], v179.val[(v5 ^ 2)]), 8uLL));
      v6 += 8;
    }

    while (v6 <= (a4 - 8));
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 < a4)
  {
    v11 = v5 ^ 2;
    v12 = v6;
    v13 = a4 - v6;
    if (v13 < 9)
    {
      goto LABEL_124;
    }

    v14 = &a3->i8[2 * v6];
    v15 = &a3->i8[2 * a4];
    result = &a2[3 * a4 + v11 - 3 * v6 - 2];
    _CF = v14 >= &a2[3 * a4 + ~(3 * v6)] || a2 + 1 >= v15;
    v17 = !_CF;
    v18 = v14 >= &a2[3 * a4 + v5 - 3 * v6 - 2] || &a2[v5] >= v15;
    v19 = !v18;
    v20 = &a2[v11] >= v15 || v14 >= result;
    if (!v20 || v17 || v19)
    {
      goto LABEL_124;
    }

    if (v13 >= 0x11)
    {
      v62 = 16;
      if ((v13 & 0xF) != 0)
      {
        v62 = v13 & 0xF;
      }

      v21 = v13 - v62;
      v63 = (a3 + 2 * v6);
      v64 = v62 + v6 - a4;
      v65.i64[0] = 0xFCFCFCFCFCFCFCFCLL;
      v65.i64[1] = 0xFCFCFCFCFCFCFCFCLL;
      v66.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v66.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v67 = a2;
      do
      {
        v68 = (v67 + v5);
        v69 = vld3q_s8(v68);
        v70 = vshrq_n_u8(v69, 3uLL);
        v71 = (v67 + 1);
        v72 = vld3q_s8(v71);
        v73 = vandq_s8(v72, v65);
        result = (v67 + v11);
        v74 = vld3q_s8(result->i8);
        _Q4 = vandq_s8(v74, v66);
        __asm { SHLL2           V5.8H, V4.16B, #8 }

        *v63 = vorrq_s8(vorrq_s8(vshll_n_u8(*v73.i8, 3uLL), vmovl_u8(*v70.i8)), vshll_n_s8(*_Q4.i8, 8uLL));
        v63[1] = vorrq_s8(vorrq_s8(vshll_high_n_u8(v73, 3uLL), vmovl_high_u8(v70)), _Q5);
        v63 += 2;
        v67 += 48;
        v64 += 16;
      }

      while (v64);
      if (v62 <= 8)
      {
        a2 += 3 * v21;
        v12 = v21 + v6;
LABEL_124:
        v93 = &a3->i16[v12];
        v94 = a4 - v12;
        do
        {
          *v93++ = (a2[v5] >> 3) & 0x1F | (32 * (((a2[1] & 0xFC) >> 2) & 0x3F)) & 0x7FF | ((((a2[v11] & 0xF8) >> 3) & 0x1F) << 11);
          a2 += 3;
          --v94;
        }

        while (v94);
        return result;
      }
    }

    else
    {
      v21 = 0;
    }

    if ((v13 & 7) != 0)
    {
      v80 = v13 & 7;
    }

    else
    {
      v80 = 8;
    }

    v81 = v13 - v80;
    v82 = a4 - v80;
    v83 = &a2[3 * v81];
    v84 = (a3 + 2 * v21 + 2 * v6);
    v85 = v80 + v21 + v6 - a4;
    v86 = &a2[2 * v21 + v21];
    do
    {
      v87 = (v86 + v5);
      v88 = vld3_s8(v87);
      v89 = (v86 + 1);
      v90 = vld3_s8(v89);
      v91 = (v86 + v11);
      v92 = vld3_s8(v91);
      *v84++ = vorrq_s8(vorrq_s8(vshll_n_u8(vand_s8(v90, 0xFCFCFCFCFCFCFCFCLL), 3uLL), vmovl_u8(vshr_n_u8(v88, 3uLL))), vshll_n_s8(vand_s8(v92, 0xF8F8F8F8F8F8F8F8), 8uLL));
      v86 += 24;
      v85 += 8;
    }

    while (v85);
    v12 = v82;
    a2 = v83;
    goto LABEL_124;
  }

  return result;
}

void sub_1002DBE88()
{
  nullsub_1();

  operator delete();
}

void sub_1002DBEC0(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477380);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      sub_1002DBF88(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 = (v6 + *(a1 + 16));
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

int8x16_t *sub_1002DBF88(int8x16_t *result, int8x16_t *a2, char *a3, int a4)
{
  v4 = result->i32[0];
  v5 = result->i32[1];
  if (result->i32[2] == 6)
  {
    v6 = (a4 - 16);
    if (a4 >= 16)
    {
      v7 = 0;
      v10 = v5 ^ 2;
      v11 = 16 * v4;
      v12 = a2 + 1;
      do
      {
        while (1)
        {
          v13 = v12[-1];
          v14 = vshlq_n_s8(vuzp1q_s8(v13, *v12), 3uLL);
          v15 = vuzp1q_s8(vandq_s8(result[1], vshrq_n_u16(v13, 3uLL)), vandq_s8(vshrq_n_u16(*v12, 3uLL), result[1]));
          v16 = vuzp1q_s8(vandq_s8(result[2], vshrq_n_u16(v13, 8uLL)), vandq_s8(result[2], vshrq_n_u16(*v12, 8uLL)));
          if (v4 == 3)
          {
            break;
          }

          v38.val[v5] = v14;
          v38.val[1] = v15;
          v38.val[v10] = v16;
          v41.val[3] = result[4];
          v41.val[0] = v38.val[0];
          v41.val[1] = v38.val[1];
          v41.val[2] = v38.val[2];
          vst4q_s8(a3, v41);
          v7 += 16;
          a3 += v11;
          v12 += 2;
          if (v7 > v6)
          {
            goto LABEL_10;
          }
        }

        v38.val[v5] = v14;
        v38.val[1] = v15;
        v38.val[v10] = v16;
        v39 = v38;
        vst3q_s8(a3, v39);
        v7 += 16;
        a3 += v11;
        v12 += 2;
      }

      while (v7 <= v6);
    }

    else
    {
      LODWORD(v7) = 0;
    }

LABEL_10:
    if (v7 < a4)
    {
      v17 = v5 ^ 2;
      v18 = v7;
      v19 = a2 + v7;
      v20 = a4 - v18;
      if (v4 == 4)
      {
        do
        {
          v21 = *v19++;
          a3[v5] = 8 * v21;
          a3[1] = (v21 >> 3) & 0xFC;
          a3[v17] = BYTE1(v21) & 0xF8;
          a3[3] = -1;
          a3 += v4;
          --v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v22 = *v19++;
          a3[v5] = 8 * v22;
          a3[1] = (v22 >> 3) & 0xFC;
          a3[v17] = BYTE1(v22) & 0xF8;
          a3 += v4;
          --v20;
        }

        while (v20);
      }
    }
  }

  else
  {
    v8 = (a4 - 16);
    if (a4 >= 16)
    {
      v9 = 0;
      v23 = v5 ^ 2;
      v24 = 16 * v4;
      v25 = a2 + 1;
      do
      {
        while (1)
        {
          v27 = v25[-1];
          v26 = *v25;
          v28 = vshlq_n_s8(vuzp1q_s8(v27, *v25), 3uLL);
          v29 = result[2];
          v30 = vuzp1q_s8(vandq_s8(v29, vshrq_n_u16(v27, 2uLL)), vandq_s8(vshrq_n_u16(*v25, 2uLL), v29));
          v31 = vuzp1q_s8(vandq_s8(v29, vshrq_n_u16(v27, 7uLL)), vandq_s8(vshrq_n_u16(*v25, 7uLL), v29));
          if (v4 == 3)
          {
            break;
          }

          v38.val[v5] = v28;
          v38.val[1] = v30;
          v38.val[v23] = v31;
          v42.val[3] = vbslq_s8(vqmovn_high_u16(vqmovn_u16(vandq_s8(result[3], v27)), vandq_s8(result[3], v26)), result[4], result[5]);
          v42.val[0] = v38.val[0];
          v42.val[1] = v38.val[1];
          v42.val[2] = v38.val[2];
          vst4q_s8(a3, v42);
          v9 += 16;
          a3 += v24;
          v25 += 2;
          if (v9 > v8)
          {
            goto LABEL_20;
          }
        }

        v38.val[v5] = v28;
        v38.val[1] = v30;
        v38.val[v23] = v31;
        v40 = v38;
        vst3q_s8(a3, v40);
        v9 += 16;
        a3 += v24;
        v25 += 2;
      }

      while (v9 <= v8);
    }

    else
    {
      LODWORD(v9) = 0;
    }

LABEL_20:
    if (v9 < a4)
    {
      v32 = v5 ^ 2;
      v33 = v9;
      v34 = a2 + v9;
      v35 = a4 - v33;
      if (v4 == 4)
      {
        do
        {
          v36 = *v34++;
          a3[v5] = 8 * v36;
          a3[1] = (v36 >> 2) & 0xF8;
          a3[v32] = (v36 >> 7) & 0xF8;
          a3[3] = v36 >> 15;
          a3 += v4;
          --v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v37 = *v34++;
          a3[v5] = 8 * v37;
          a3[1] = (v37 >> 2) & 0xF8;
          a3[v32] = (v37 >> 7) & 0xF8;
          a3 += v4;
          --v35;
        }

        while (v35);
      }
    }
  }

  return result;
}

void sub_1002DC26C()
{
  nullsub_1();

  operator delete();
}

void sub_1002DC2A4(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v16, &off_1004773E0);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 < v5 && *(a1 + 40) >= 1)
  {
    v6 = *(a1 + 32);
    v7 = (*(a1 + 24) + v6 * v4);
    v8 = *(a1 + 16);
    v9 = *(a1 + 8) + v8 * v4;
    do
    {
      v10 = *(a1 + 40);
      if (v10 >= 1)
      {
        v11 = *(a1 + 48);
        v12 = v11 + 1;
        v13 = *v11;
        v14 = (v9 + 2);
        v15 = v7;
        do
        {
          *v15++ = (v12[*(v14 - 1) + 256] + v12[*(v14 - 2)] + v12[*v14 + 512]) >> 14;
          v14 += v13;
          --v10;
        }

        while (v10);
        v8 = *(a1 + 16);
        v6 = *(a1 + 32);
        v5 = a2[1];
      }

      ++v4;
      v9 += v8;
      v7 += v6;
    }

    while (v4 < v5);
  }

  if (v16[2])
  {
    sub_1002ACC1C(v16);
  }
}

void sub_1002DC3A8()
{
  nullsub_1();

  operator delete();
}

void sub_1002DC3E0(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477440);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      sub_1002DC4A8(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 = (v6 + *(a1 + 16));
      v5 = (v5 + *(a1 + 32));
    }

    while (v4 < a2[1]);
  }

  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

int32x4_t *sub_1002DC4A8(int32x4_t *result, const __int16 *a2, int16x8_t *a3, int a4)
{
  v4 = result->i32[1];
  v5 = result->i32[0];
  v6 = result->i32[2];
  v7 = result->i32[3];
  if (a4 >= 8)
  {
    v8 = 0;
    v16 = a3;
    do
    {
      if (v5 == 3)
      {
        *v19.val[0].i8 = vld3q_s16(a2);
      }

      else
      {
        v19 = vld4q_s16(a2);
      }

      *v16++ = vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(*v19.val[1].i8, result[1].u64[1]), *v19.val[0].i8, *result[1].i8), *v19.val[2].i8, *result[2].i8), result[3]), 0xEuLL), vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(*&vextq_s8(v19.val[1], v19.val[1], 8uLL), result[1].u64[1]), *&vextq_s8(v19.val[0], v19.val[0], 8uLL), *result[1].i8), *&vextq_s8(v19.val[2], v19.val[2], 8uLL), *result[2].i8), result[3]), 0xEuLL);
      v8 += 8;
      a2 += 8 * v5;
    }

    while (v8 <= (a4 - 8));
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v9 = a4 - 4;
  if (v8 <= a4 - 4)
  {
    v8 = v8;
    v10 = 8 * v5;
    v11 = (a3 + 2 * v8);
    if (v5 == 3)
    {
      do
      {
        v17 = vld3_s16(a2);
        a2 = (a2 + v10);
        *v11++ = vshrn_n_s32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(v17.val[1], result[1].u64[1]), v17.val[0], *result[1].i8), v17.val[2], *result[2].i8), result[3]), 0xEuLL);
        v8 += 4;
      }

      while (v8 <= v9);
    }

    else
    {
      do
      {
        v18 = vld4_s16(a2);
        a2 = (a2 + v10);
        *v11++ = vshrn_n_s32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(v18.val[1], result[1].u64[1]), v18.val[0], *result[1].i8), v18.val[2], *result[2].i8), result[3]), 0xEuLL);
        v8 += 4;
      }

      while (v8 <= v9);
    }
  }

  if (v8 < a4)
  {
    v12 = &a3->i16[v8];
    v13 = a2 + 2;
    v14 = 2 * v5;
    v15 = a4 - v8;
    do
    {
      *v12++ = (v6 * *(v13 - 1) + v4 * *(v13 - 2) + v7 * *v13 + 0x2000) >> 14;
      v13 = (v13 + v14);
      --v15;
    }

    while (v15);
  }

  return result;
}

void sub_1002DC628()
{
  nullsub_1();

  operator delete();
}

void sub_1002DC660(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v30, &off_1004774A0);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = v8;
      v10 = v7->i32[0];
      v11 = v7->f32[1];
      v12 = v7->f32[2];
      v13 = v7->f32[3];
      if (v10 == 3)
      {
        if (v8 >= 8)
        {
          v14 = 0;
          v18 = v5 + 1;
          v15 = v6;
          do
          {
            v19 = v15;
            v31 = vld3q_f32(v19);
            v19 += 12;
            v18[-1] = vmlaq_f32(vmlaq_f32(vmulq_f32(v31.val[0], v7[1]), v7[2], v31.val[1]), v7[3], v31.val[2]);
            v32 = vld3q_f32(v19);
            *v18 = vmlaq_f32(vmlaq_f32(vmulq_f32(v32.val[0], v7[1]), v7[2], v32.val[1]), v7[3], v32.val[2]);
            v18 += 2;
            v14 += 8;
            v15 += 24;
          }

          while (v14 <= (v8 - 8));
          v14 = v14;
          v16 = v8 - 4;
          if (v14 > v16)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v14 = 0;
          v15 = v6;
          v16 = v8 - 4;
          if (v16 < 0)
          {
            goto LABEL_23;
          }
        }

        v20 = (v5 + 4 * v14);
        do
        {
          v33 = vld3q_f32(v15);
          v15 += 12;
          *v20++ = vmlaq_f32(vmlaq_f32(vmulq_f32(v33.val[0], v7[1]), v7[2], v33.val[1]), v7[3], v33.val[2]);
          v14 += 4;
        }

        while (v14 <= v16);
      }

      else
      {
        if (v8 >= 8)
        {
          v14 = 0;
          v21 = v5 + 1;
          v15 = v6;
          do
          {
            v23 = &v15[4 * v10];
            v34 = vld4q_f32(v15);
            v22 = 32 * v10;
            v15 = (v15 + v22);
            v21[-1] = vmlaq_f32(vmlaq_f32(vmulq_f32(v34.val[0], v7[1]), v7[2], v34.val[1]), v7[3], v34.val[2]);
            v35 = vld4q_f32(v23);
            *v21 = vmlaq_f32(vmlaq_f32(vmulq_f32(v35.val[0], v7[1]), v7[2], v35.val[1]), v7[3], v35.val[2]);
            v21 += 2;
            v14 += 8;
          }

          while (v14 <= (v8 - 8));
          v14 = v14;
          v17 = v8 - 4;
          if (v14 > v17)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v14 = 0;
          v15 = v6;
          v17 = v8 - 4;
          if (v17 < 0)
          {
            goto LABEL_23;
          }
        }

        v24 = (v5 + 4 * v14);
        do
        {
          v36 = vld4q_f32(v15);
          v25 = 16 * v10;
          v15 = (v15 + v25);
          *v24++ = vmlaq_f32(vmlaq_f32(vmulq_f32(v36.val[0], v7[1]), v7[2], v36.val[1]), v7[3], v36.val[2]);
          v14 += 4;
        }

        while (v14 <= v17);
      }

      v14 = v14;
LABEL_23:
      if (v14 < v9)
      {
        v26 = v9 - v14;
        v27 = (v15 + 2);
        v28 = 4 * v10;
        v29 = &v5->f32[v14];
        do
        {
          *v29++ = ((v12 * *(v27 - 1)) + (*(v27 - 2) * v11)) + (*v27 * v13);
          v27 = (v27 + v28);
          --v26;
        }

        while (v26);
      }

      ++v4;
      v6 = (v6 + *(a1 + 16));
      v5 = (v5 + *(a1 + 32));
    }

    while (v4 < a2[1]);
  }

  if (v30[2])
  {
    sub_1002ACC1C(v30);
  }
}

void sub_1002DC8E4()
{
  nullsub_1();

  operator delete();
}

void sub_1002DC91C(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v49, &off_100477500);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    v7.i64[0] = -1;
    v7.i64[1] = -1;
    v8 = -1;
    do
    {
      v9 = *(a1 + 40);
      if (**(a1 + 48) == 3)
      {
        if (v9 >= 1)
        {
          if (v9 < 8 || (v5 < v6 + v9 ? (v10 = v6 >= &v5[3 * v9]) : (v10 = 1), !v10))
          {
            v11 = 0;
            v14 = v5;
            goto LABEL_24;
          }

          if (v9 >= 0x20)
          {
            v11 = v9 & 0x7FFFFFE0;
            v24 = (v6 + 16);
            v25 = v5;
            v26 = v11;
            do
            {
              v51.val[0] = v24[-1];
              v52.val[0] = *v24;
              v51.val[1] = v51.val[0];
              v51.val[2] = v51.val[0];
              v52.val[1] = *v24;
              v52.val[2] = *v24;
              v27 = v25 + 96;
              vst3q_s8(v25, v51);
              v28 = v25 + 48;
              vst3q_s8(v28, v52);
              v24 += 2;
              v25 = v27;
              v26 -= 32;
            }

            while (v26);
            if (v11 == v9)
            {
              goto LABEL_3;
            }

            if ((v9 & 0x18) == 0)
            {
              v14 = &v5[3 * v11];
LABEL_24:
              v15 = v9 - v11;
              v16 = (v6 + v11);
              v17 = v14 + 2;
              do
              {
                v18 = *v16++;
                *v17 = v18;
                *(v17 - 1) = v18;
                *(v17 - 2) = v18;
                v17 += 3;
                --v15;
              }

              while (v15);
              goto LABEL_3;
            }
          }

          else
          {
            v11 = 0;
          }

          v29 = v11;
          v11 = v9 & 0x7FFFFFF8;
          v14 = &v5[3 * v11];
          v30 = (v6 + v29);
          v31 = v29 - v11;
          v32 = &v5[3 * v29];
          do
          {
            v33 = *v30++;
            v50.val[0] = v33;
            v50.val[1] = v33;
            v50.val[2] = v33;
            vst3_s8(v32, v50);
            v32 += 24;
            v31 += 8;
          }

          while (v31);
          if (v11 == v9)
          {
            goto LABEL_3;
          }

          goto LABEL_24;
        }
      }

      else if (v9 >= 1)
      {
        if (v9 < 8 || (v5 < v6 + v9 ? (v12 = v6 >= &v5[4 * v9]) : (v12 = 1), !v12))
        {
          v13 = 0;
          v19 = v5;
          goto LABEL_28;
        }

        if (v9 >= 0x20)
        {
          v13 = v9 & 0x7FFFFFE0;
          v34 = v5 + 64;
          v35 = (v6 + 16);
          v36 = v13;
          do
          {
            v37 = v34 - 64;
            v38 = v35[-1];
            v53.val[0] = *v35;
            v39 = v38;
            v40 = v38;
            v53.val[1] = *v35;
            v53.val[2] = *v35;
            v53.val[3] = v7;
            vst4q_s8(v37, *(&v7 - 3));
            vst4q_s8(v34, v53);
            v34 += 128;
            v35 += 2;
            v36 -= 32;
          }

          while (v36);
          if (v13 == v9)
          {
            goto LABEL_3;
          }

          if ((v9 & 0x18) == 0)
          {
            v19 = &v5[4 * v13];
LABEL_28:
            v20 = v9 - v13;
            v21 = (v6 + v13);
            v22 = v19 + 3;
            do
            {
              v23 = *v21++;
              *(v22 - 1) = v23;
              *(v22 - 2) = v23;
              *(v22 - 3) = v23;
              *v22 = -1;
              v22 += 4;
              --v20;
            }

            while (v20);
            goto LABEL_3;
          }
        }

        else
        {
          v13 = 0;
        }

        v41 = v13;
        v13 = v9 & 0x7FFFFFF8;
        v19 = &v5[4 * v13];
        v42 = &v5[4 * v41];
        v43 = (v6 + v41);
        v44 = v41 - v13;
        do
        {
          v45 = *v43++;
          v46 = v45;
          v47 = v45;
          v48 = v45;
          vst4_s8(v42, *(&v8 - 3));
          v42 += 32;
          v44 += 8;
        }

        while (v44);
        if (v13 == v9)
        {
          goto LABEL_3;
        }

        goto LABEL_28;
      }

LABEL_3:
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v49[2])
  {
    sub_1002ACC1C(v49);
  }
}

void sub_1002DCBE0()
{
  nullsub_1();

  operator delete();
}

void sub_1002DCC18(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v77, &off_100477560);
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 - *a2;
  if (v5 <= *a2)
  {
    goto LABEL_66;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = v8 * v4;
  v10 = v7 + v9;
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = v12 * v4;
  v14 = v11 + v13;
  v15 = *(a1 + 40);
  if (**(a1 + 48) == 3)
  {
    if (v15 < 1)
    {
      goto LABEL_66;
    }

    if (v15 <= 3)
    {
      v16 = (v9 + v7 + 4);
      v17 = (v13 + v11 + 8);
      do
      {
        v18 = *(v16 - 2);
        *(v17 - 2) = v18;
        *(v17 - 3) = v18;
        *(v17 - 4) = v18;
        if (v15 != 1)
        {
          v19 = *(v16 - 1);
          v17[1] = v19;
          *v17 = v19;
          *(v17 - 1) = v19;
          if (v15 != 2)
          {
            v20 = *v16;
            v17[4] = *v16;
            v17[3] = v20;
            v17[2] = v20;
          }
        }

        v16 = (v16 + v8);
        v17 = (v17 + v12);
        --v6;
      }

      while (v6);
      goto LABEL_66;
    }

    v26 = v4 + (v5 + ~v4);
    v27 = v10 >= v11 + v12 * v26 + 6 * v15 || v14 >= v7 + v8 * v26 + 2 * v15;
    if (!v27 || (v12 | v8) < 0)
    {
      v67 = 2 * v15;
      v68 = v13 + v11 + 2;
      do
      {
        v69 = 0;
        v70 = v68;
        do
        {
          v71 = *(v10 + v69);
          v70[1] = v71;
          *v70 = v71;
          *(v70 - 1) = v71;
          v69 += 2;
          v70 += 3;
        }

        while (v67 != v69);
        ++v4;
        v10 += v8;
        v68 += v12;
      }

      while (v4 != v5);
      goto LABEL_66;
    }

    v28 = v9 + v7 + 16;
    while (v15 >= 0x10)
    {
      v30 = v15 & 0x7FFFFFF0;
      v31 = v28;
      v32 = v14;
      do
      {
        v79.val[0] = v31[-1];
        v80.val[0] = *v31;
        v79.val[1] = v79.val[0];
        v79.val[2] = v79.val[0];
        v80.val[1] = *v31;
        v80.val[2] = *v31;
        v33 = v32 + 48;
        vst3q_s16(v32, v79);
        v34 = v32 + 24;
        vst3q_s16(v34, v80);
        v31 += 2;
        v32 = v33;
        v30 -= 16;
      }

      while (v30);
      if ((v15 & 0x7FFFFFF0) == v15)
      {
        goto LABEL_24;
      }

      v29 = v15 & 0x7FFFFFF0;
      v35 = v29;
      if ((v15 & 0xC) != 0)
      {
        goto LABEL_31;
      }

LABEL_34:
      v40 = 6 * v35;
      do
      {
        v41 = (v14 + v40);
        v42 = *(v10 + 2 * v35);
        v41[2] = v42;
        v41[1] = v42;
        *v41 = v42;
        ++v35;
        v40 += 6;
      }

      while (v15 != v35);
LABEL_24:
      ++v4;
      v10 += v8;
      v14 += v12;
      v28 += v8;
      if (v4 == v5)
      {
        goto LABEL_66;
      }
    }

    v29 = 0;
LABEL_31:
    v36 = 2 * v29;
    v37 = v29 - (v15 & 0x7FFFFFFC);
    v38 = 6 * v29;
    do
    {
      v39 = (v14 + v38);
      v78.val[0] = *(v10 + v36);
      v78.val[1] = v78.val[0];
      v78.val[2] = v78.val[0];
      vst3_s16(v39, v78);
      v36 += 8;
      v38 += 24;
      v37 += 4;
    }

    while (v37);
    v35 = v15 & 0x7FFFFFFC;
    if (v35 == v15)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

  if (v15 < 1)
  {
    goto LABEL_66;
  }

  if (v15 > 3)
  {
    v43 = v4 + (v5 + ~v4);
    v44 = v10 >= v11 + v12 * v43 + 8 * v15 || v14 >= v7 + v8 * v43 + 2 * v15;
    if (!v44 || (v12 | v8) < 0)
    {
      v72 = 2 * v15;
      v73 = v13 + v11 + 4;
      do
      {
        v74 = 0;
        v75 = v73;
        do
        {
          v76 = *(v10 + v74);
          *v75 = v76;
          *(v75 - 1) = v76;
          *(v75 - 2) = v76;
          v75[1] = -1;
          v74 += 2;
          v75 += 4;
        }

        while (v72 != v74);
        ++v4;
        v10 += v8;
        v73 += v12;
      }

      while (v4 != v5);
      goto LABEL_66;
    }

    v45 = v13 + v11 + 64;
    v46 = v9 + v7 + 16;
    v47.i64[0] = -1;
    v47.i64[1] = -1;
    v48 = -1;
    while (v15 >= 0x10)
    {
      v50 = v46;
      v51 = v45;
      v52 = v15 & 0x7FFFFFF0;
      do
      {
        v53 = v51 - 32;
        v54 = v50[-1];
        v81.val[0] = *v50;
        v55 = v54;
        v56 = v54;
        v81.val[1] = *v50;
        v81.val[2] = *v50;
        v81.val[3] = v47;
        vst4q_s16(v53, *(&v47 - 3));
        vst4q_s16(v51, v81);
        v51 += 64;
        v50 += 2;
        v52 -= 16;
      }

      while (v52);
      if ((v15 & 0x7FFFFFF0) == v15)
      {
        goto LABEL_44;
      }

      v49 = v15 & 0x7FFFFFF0;
      v57 = v49;
      if ((v15 & 0xC) != 0)
      {
        goto LABEL_51;
      }

LABEL_54:
      v65 = (v14 + 8 * v57);
      do
      {
        v66 = *(v10 + 2 * v57);
        v65[2] = v66;
        v65[1] = v66;
        *v65 = v66;
        v65[3] = -1;
        ++v57;
        v65 += 4;
      }

      while (v15 != v57);
LABEL_44:
      ++v4;
      v10 += v8;
      v14 += v12;
      v45 += v12;
      v46 += v8;
      if (v4 == v5)
      {
        goto LABEL_66;
      }
    }

    v49 = 0;
LABEL_51:
    v58 = 8 * v49;
    v59 = 2 * v49;
    v60 = v49 - (v15 & 0x7FFFFFFC);
    do
    {
      v61 = (v14 + v58);
      v62 = *(v10 + v59);
      v63 = v62;
      v64 = v62;
      vst4_s16(v61, *(&v48 - 3));
      v58 += 32;
      v59 += 8;
      v60 += 4;
    }

    while (v60);
    v57 = v15 & 0x7FFFFFFC;
    if (v57 == v15)
    {
      goto LABEL_44;
    }

    goto LABEL_54;
  }

  v21 = (v9 + v7 + 4);
  v22 = (v13 + v11 + 12);
  do
  {
    v23 = *(v21 - 2);
    *(v22 - 4) = v23;
    *(v22 - 5) = v23;
    *(v22 - 6) = v23;
    *(v22 - 3) = -1;
    if (v15 != 1)
    {
      v24 = *(v21 - 1);
      *v22 = v24;
      *(v22 - 1) = v24;
      *(v22 - 2) = v24;
      v22[1] = -1;
      if (v15 != 2)
      {
        v25 = *v21;
        v22[4] = *v21;
        v22[3] = v25;
        v22[2] = v25;
        v22[5] = -1;
      }
    }

    v21 = (v21 + v8);
    v22 = (v22 + v12);
    --v6;
  }

  while (v6);
LABEL_66:
  if (v77[2])
  {
    sub_1002ACC1C(v77);
  }
}

void sub_1002DD0CC()
{
  nullsub_1();

  operator delete();
}

void sub_1002DD104(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v81, &off_1004775C0);
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 - *a2;
  if (v5 > *a2)
  {
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    v9 = v7 * v4;
    v10 = v8 + v9;
    v12 = *(a1 + 24);
    v11 = *(a1 + 32);
    v13 = v11 * v4;
    v14 = v12 + v13;
    v15 = *(a1 + 40);
    if (**(a1 + 48) == 3)
    {
      if (v15 >= 1)
      {
        if (v15 > 7)
        {
          v45 = v4 + (v5 + ~v4);
          _CF = v10 >= v12 + v11 * v45 + 12 * v15 || v14 >= v8 + v7 * v45 + 4 * v15;
          if (!_CF || (v11 | v7) < 0)
          {
            v72 = 4 * v15;
            v73 = v13 + v12 + 4;
            do
            {
              v74 = 0;
              v75 = v73;
              do
              {
                v76 = *(v10 + v74);
                *v75 = v76;
                v75[1] = v76;
                *(v75 - 1) = v76;
                v74 += 4;
                v75 += 3;
              }

              while (v72 != v74);
              ++v4;
              v10 += v7;
              v73 += v11;
            }

            while (v4 != v5);
          }

          else
          {
            v47 = v9 + v8 + 16;
            v48 = v13 + 12 * (v15 & 0x7FFFFFF8) + v12 + 4;
            do
            {
              v49 = v15 & 0x7FFFFFF8;
              v50 = v47;
              v51 = v14;
              do
              {
                v82.val[0] = v50[-1];
                v83.val[0] = *v50;
                v82.val[1] = v82.val[0];
                v82.val[2] = v82.val[0];
                v83.val[1] = *v50;
                v83.val[2] = *v50;
                v52 = v51 + 24;
                vst3q_f32(v51, v82);
                v53 = v51 + 12;
                vst3q_f32(v53, v83);
                v50 += 2;
                v51 = v52;
                v49 -= 8;
              }

              while (v49);
              if ((v15 & 0x7FFFFFF8) != v15)
              {
                v54 = v48;
                v55 = v15 & 0x7FFFFFF8;
                do
                {
                  v56 = *(v10 + 4 * v55);
                  *v54 = v56;
                  v54[1] = v56;
                  *(v54 - 1) = v56;
                  ++v55;
                  v54 += 3;
                }

                while (v15 != v55);
              }

              ++v4;
              v10 += v7;
              v14 += v11;
              v47 += v7;
              v48 += v11;
            }

            while (v4 != v5);
          }
        }

        else
        {
          v16 = (v9 + v8 + 12);
          v17 = (v13 + v12 + 40);
          do
          {
            v18 = *(v16 - 3);
            *(v17 - 9) = v18;
            *(v17 - 8) = v18;
            *(v17 - 10) = v18;
            if (v15 != 1)
            {
              v19 = *(v16 - 2);
              *(v17 - 6) = v19;
              *(v17 - 5) = v19;
              *(v17 - 7) = v19;
              if (v15 != 2)
              {
                v20 = *(v16 - 1);
                *(v17 - 3) = v20;
                *(v17 - 2) = v20;
                *(v17 - 4) = v20;
                if (v15 != 3)
                {
                  v21 = *v16;
                  *v17 = *v16;
                  v17[1] = v21;
                  *(v17 - 1) = v21;
                  if (v15 != 4)
                  {
                    v22 = v16[1];
                    v17[3] = v22;
                    v17[4] = v22;
                    v17[2] = v22;
                    if (v15 != 5)
                    {
                      v23 = v16[2];
                      v17[6] = v23;
                      v17[7] = v23;
                      v17[5] = v23;
                      if (v15 != 6)
                      {
                        v24 = v16[3];
                        v17[9] = v24;
                        v17[10] = v24;
                        v17[8] = v24;
                      }
                    }
                  }
                }
              }
            }

            v16 = (v16 + v7);
            v17 = (v17 + v11);
            --v6;
          }

          while (v6);
        }
      }
    }

    else if (v15 >= 1)
    {
      if (v15 > 7)
      {
        v57 = v4 + (v5 + ~v4);
        v58 = v10 >= v12 + v11 * v57 + 16 * v15 || v14 >= v8 + v7 * v57 + 4 * v15;
        if (!v58 || (v11 | v7) < 0)
        {
          __asm { FMOV            V0.4S, #1.0 }

          do
          {
            for (i = 0; i != v15; ++i)
            {
              v79 = _Q0;
              v79.i32[0] = *(v10 + 4 * i);
              v80 = vzip1q_s32(v79, v79);
              v80.i32[2] = *(v10 + 4 * i);
              *(v14 + 16 * i) = v80;
            }

            ++v4;
            v10 += v7;
            v14 += v11;
          }

          while (v4 != v5);
        }

        else
        {
          v59 = v13 + v12 + 64;
          v60 = v9 + v8 + 16;
          __asm { FMOV            V3.4S, #1.0 }

          do
          {
            v62 = v60;
            v63 = v59;
            v64 = v15 & 0x7FFFFFF8;
            do
            {
              v65 = v63 - 16;
              v66 = v62[-1];
              v84.val[0] = *v62;
              v67 = v66;
              v68 = v66;
              v84.val[1] = *v62;
              v84.val[2] = *v62;
              v84.val[3] = _Q3;
              vst4q_f32(v65, *(&_Q3 - 3));
              vst4q_f32(v63, v84);
              v63 += 32;
              v62 += 2;
              v64 -= 8;
            }

            while (v64);
            if ((v15 & 0x7FFFFFF8) != v15)
            {
              v69 = v15 & 0x7FFFFFF8;
              do
              {
                v70 = _Q3;
                v70.i32[0] = *(v10 + 4 * v69);
                v71 = vzip1q_s32(v70, v70);
                v71.i32[2] = *(v10 + 4 * v69);
                *(v14 + 16 * v69++) = v71;
              }

              while (v15 != v69);
            }

            ++v4;
            v10 += v7;
            v14 += v11;
            v59 += v11;
            v60 += v7;
          }

          while (v4 != v5);
        }
      }

      else
      {
        v25 = (v9 + v8 + 12);
        v26 = (v13 + v12 + 48);
        __asm { FMOV            V0.4S, #1.0 }

        do
        {
          v31 = _Q0;
          v31.i32[0] = *(v25 - 3);
          v32 = vzip1q_s32(v31, v31);
          v32.i32[2] = *(v25 - 3);
          v26[-3] = v32;
          if (v15 != 1)
          {
            v33 = _Q0;
            v33.i32[0] = *(v25 - 2);
            v34 = vzip1q_s32(v33, v33);
            v34.i32[2] = *(v25 - 2);
            v26[-2] = v34;
            if (v15 != 2)
            {
              v35 = _Q0;
              v35.i32[0] = *(v25 - 1);
              v36 = vzip1q_s32(v35, v35);
              v36.i32[2] = *(v25 - 1);
              v26[-1] = v36;
              if (v15 != 3)
              {
                v37 = _Q0;
                v37.i32[0] = *v25;
                v38 = vzip1q_s32(v37, v37);
                v38.i32[2] = *v25;
                *v26 = v38;
                if (v15 != 4)
                {
                  v39 = _Q0;
                  v39.i32[0] = v25[1];
                  v40 = vzip1q_s32(v39, v39);
                  v40.i32[2] = v25[1];
                  v26[1] = v40;
                  if (v15 != 5)
                  {
                    v41 = _Q0;
                    v41.i32[0] = v25[2];
                    v42 = vzip1q_s32(v41, v41);
                    v42.i32[2] = v25[2];
                    v26[2] = v42;
                    if (v15 != 6)
                    {
                      v43 = _Q0;
                      v43.i32[0] = v25[3];
                      v44 = vzip1q_s32(v43, v43);
                      v44.i32[2] = v25[3];
                      v26[3] = v44;
                    }
                  }
                }
              }
            }
          }

          v25 = (v25 + v7);
          v26 = (v26 + v11);
          --v6;
        }

        while (v6);
      }
    }
  }

  if (v81[2])
  {
    sub_1002ACC1C(v81);
  }
}

void sub_1002DD5A8()
{
  nullsub_1();

  operator delete();
}

void sub_1002DD5E0(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477620);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = *(a1 + 24) + *(a1 + 32) * v4;
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      sub_1002DD6A8(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 = (v6 + *(a1 + 16));
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

uint64_t sub_1002DD6A8(uint64_t result, int16x8_t *a2, uint64_t a3, int a4)
{
  if (*result != 6)
  {
    if (a4 >= 8)
    {
      v5 = 0;
      v24 = a2;
      do
      {
        v25 = *v24++;
        v27 = *(result + 32);
        v26 = *(result + 48);
        v28 = vandq_s8(vshlq_n_s16(v25, 3uLL), v26);
        v29 = vandq_s8(vshrq_n_u16(v25, 2uLL), v26);
        v30 = vandq_s8(vshrq_n_u16(v25, 7uLL), v26);
        v26.i64[0] = *(result + 8);
        v31 = *(result + 16);
        v32 = *(result + 24);
        v33 = vmlal_u16(vmlal_u16(vmull_u16(*v29.i8, v31), *v28.i8, *v26.i8), *v30.i8, v32);
        v34 = vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(*&vextq_s8(v29, v29, 8uLL), v31), *&vextq_s8(v28, v28, 8uLL), *v26.i8), *&vextq_s8(v30, v30, 8uLL), v32), v27);
        v93.val[0] = vshrq_n_u32(vaddq_s32(v33, v27), 0xEuLL);
        v93.val[1] = vshrq_n_u32(v34, 0xEuLL);
        *(a3 + v5) = vqtbl2q_s8(v93, xmmword_1003E3780).u64[0];
        v5 += 8;
      }

      while (v5 <= (a4 - 8));
    }

    else
    {
      LODWORD(v5) = 0;
    }

    if (v5 >= a4)
    {
      return result;
    }

    v35 = a4 - v5;
    if (v35 < 4 || (v36 = (a2 + 2 * v5), a3 + v5 < a2 + 2 * a4) && v36 < a3 + a4)
    {
      v37 = v5;
      goto LABEL_23;
    }

    if (v35 >= 0x10)
    {
      v43 = v35 & 0xFFFFFFFFFFFFFFF0;
      v69 = (a3 + v5);
      v70.i64[0] = 0xF8000000F8;
      v70.i64[1] = 0xF8000000F8;
      v71 = vdup_n_s16(0x74Cu);
      v72 = vdup_n_s16(0x2591u);
      v73 = vdup_n_s16(0x1323u);
      v74.i64[0] = 0x200000002000;
      v74.i64[1] = 0x200000002000;
      v75 = v35 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v77 = *v36;
        v76 = v36[1];
        v36 += 2;
        v78 = vmovl_u16(*v77.i8);
        v79 = vmovl_u16(*v76.i8);
        v80 = vmovl_high_u16(v77);
        v81 = vmovl_high_u16(v76);
        v94.val[3] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v81, 2uLL), v70)), v72), vmovn_s32(vandq_s8(vshll_high_n_u16(v76, 3uLL), v70)), v71), vmovn_s32(vandq_s8(vshrq_n_u32(v81, 7uLL), v70)), v73), v74), 0xEuLL);
        v94.val[1] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v80, 2uLL), v70)), v72), vmovn_s32(vandq_s8(vshll_high_n_u16(v77, 3uLL), v70)), v71), vmovn_s32(vandq_s8(vshrq_n_u32(v80, 7uLL), v70)), v73), v74), 0xEuLL);
        v94.val[2] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v79, 2uLL), v70)), v72), vmovn_s32(vandq_s8(vshll_n_u16(*v76.i8, 3uLL), v70)), v71), vmovn_s32(vandq_s8(vshrq_n_u32(v79, 7uLL), v70)), v73), v74), 0xEuLL);
        v94.val[0] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v78, 2uLL), v70)), v72), vmovn_s32(vandq_s8(vshll_n_u16(*v77.i8, 3uLL), v70)), v71), vmovn_s32(vandq_s8(vshrq_n_u32(v78, 7uLL), v70)), v73), v74), 0xEuLL);
        *v69++ = vqtbl4q_s8(v94, xmmword_1003E36F0);
        v75 -= 16;
      }

      while (v75);
      if (v35 == v43)
      {
        return result;
      }

      if ((v35 & 0xC) == 0)
      {
        v37 = v43 + v5;
        goto LABEL_23;
      }
    }

    else
    {
      v43 = 0;
    }

    v37 = (v35 & 0xFFFFFFFFFFFFFFFCLL) + v5;
    v82 = v43 - (v35 & 0xFFFFFFFFFFFFFFFCLL);
    v83 = v43 + v5;
    v84 = (a3 + v83);
    v85.i64[0] = 0xF8000000F8;
    v85.i64[1] = 0xF8000000F8;
    v86 = vdup_n_s16(0x74Cu);
    v87 = vdup_n_s16(0x2591u);
    v88 = (a2 + 2 * v83);
    v89 = vdup_n_s16(0x1323u);
    do
    {
      v90 = *v88++;
      v91 = vmovl_u16(v90);
      *v84++ = vuzp1_s8(vrshrn_n_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v91, 2uLL), v85)), v87), vmovn_s32(vandq_s8(vshll_n_u16(v90, 3uLL), v85)), v86), vmovn_s32(vandq_s8(vshrq_n_u32(v91, 7uLL), v85)), v89), 0xEuLL), *v85.i8).u32[0];
      v82 += 4;
    }

    while (v82);
    if (v35 == (v35 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

LABEL_23:
    v38 = (a3 + v37);
    v39 = a4 - v37;
    v40 = a2 + v37;
    do
    {
      v41 = *v40++;
      *v38++ = (14944 * (v41 & 0x1F) + 9617 * ((v41 >> 2) & 0xF8) + 4899 * ((v41 >> 7) & 0xF8) + 0x2000) >> 14;
      --v39;
    }

    while (v39);
    return result;
  }

  if (a4 >= 8)
  {
    v4 = 0;
    v6 = a2;
    do
    {
      v7 = *v6++;
      v9 = *(result + 32);
      v8 = *(result + 48);
      v10 = vandq_s8(vshlq_n_s16(v7, 3uLL), v8);
      v11 = vandq_s8(*(result + 64), vshrq_n_u16(v7, 3uLL));
      v12 = vandq_s8(vshrq_n_u16(v7, 8uLL), v8);
      v8.i64[0] = *(result + 8);
      v13 = *(result + 16);
      v14 = *(result + 24);
      v15 = vmlal_u16(vmlal_u16(vmull_u16(*v11.i8, v13), *v10.i8, *v8.i8), *v12.i8, v14);
      v16 = vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(*&vextq_s8(v11, v11, 8uLL), v13), *&vextq_s8(v10, v10, 8uLL), *v8.i8), *&vextq_s8(v12, v12, 8uLL), v14), v9);
      v92.val[0] = vshrq_n_u32(vaddq_s32(v15, v9), 0xEuLL);
      v92.val[1] = vshrq_n_u32(v16, 0xEuLL);
      *(a3 + v4) = vqtbl2q_s8(v92, xmmword_1003E3780).u64[0];
      v4 += 8;
    }

    while (v4 <= (a4 - 8));
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 < a4)
  {
    v17 = a4 - v4;
    if (v17 < 4 || (v18 = (a2 + 2 * v4), a3 + v4 < a2 + 2 * a4) && v18 < a3 + a4)
    {
      v19 = v4;
      goto LABEL_13;
    }

    if (v17 >= 0x10)
    {
      v42 = v17 & 0xFFFFFFFFFFFFFFF0;
      v44 = (a3 + v4);
      v45 = vdup_n_s16(0x74Cu);
      v46.i64[0] = 0xF8000000F8;
      v46.i64[1] = 0xF8000000F8;
      v47.i64[0] = 0xFC000000FCLL;
      v47.i64[1] = 0xFC000000FCLL;
      v48 = vdup_n_s16(0x2591u);
      v49 = vdup_n_s16(0x1323u);
      v50.i64[0] = 0x200000002000;
      v50.i64[1] = 0x200000002000;
      v51 = v17 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v53 = *v18;
        v52 = v18[1];
        v18 += 2;
        v54 = vmovl_u16(*v53.i8);
        v55 = vmovl_u16(*v52.i8);
        v56 = vmovl_high_u16(v53);
        v57 = vmovl_high_u16(v52);
        v95.val[3] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v57, 3uLL), v47)), v48), vmovn_s32(vandq_s8(vshll_high_n_u16(v52, 3uLL), v46)), v45), vmovn_s32((*&vshrq_n_u32(v57, 8uLL) & __PAIR128__(0xFFFFFFF8FFFFFFF8, 0xFFFFFFF8FFFFFFF8))), v49), v50), 0xEuLL);
        v95.val[1] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v56, 3uLL), v47)), v48), vmovn_s32(vandq_s8(vshll_high_n_u16(v53, 3uLL), v46)), v45), vmovn_s32((*&vshrq_n_u32(v56, 8uLL) & __PAIR128__(0xFFFFFFF8FFFFFFF8, 0xFFFFFFF8FFFFFFF8))), v49), v50), 0xEuLL);
        v95.val[2] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v55, 3uLL), v47)), v48), vmovn_s32(vandq_s8(vshll_n_u16(*v52.i8, 3uLL), v46)), v45), vmovn_s32((*&vshrq_n_u32(v55, 8uLL) & __PAIR128__(0xFFFFFFF8FFFFFFF8, 0xFFFFFFF8FFFFFFF8))), v49), v50), 0xEuLL);
        v95.val[0] = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v54, 3uLL), v47)), v48), vmovn_s32(vandq_s8(vshll_n_u16(*v53.i8, 3uLL), v46)), v45), vmovn_s32((*&vshrq_n_u32(v54, 8uLL) & __PAIR128__(0xFFFFFFF8FFFFFFF8, 0xFFFFFFF8FFFFFFF8))), v49), v50), 0xEuLL);
        *v44++ = vqtbl4q_s8(v95, xmmword_1003E36F0);
        v51 -= 16;
      }

      while (v51);
      if (v17 == v42)
      {
        return result;
      }

      if ((v17 & 0xC) == 0)
      {
        v19 = v42 + v4;
LABEL_13:
        v20 = (a3 + v19);
        v21 = a4 - v19;
        v22 = a2 + v19;
        do
        {
          v23 = *v22++;
          *v20++ = (14944 * (v23 & 0x1F) + 9617 * ((v23 >> 3) & 0xFC) + 4899 * ((v23 >> 8) & 0xF8) + 0x2000) >> 14;
          --v21;
        }

        while (v21);
        return result;
      }
    }

    else
    {
      v42 = 0;
    }

    v19 = (v17 & 0xFFFFFFFFFFFFFFFCLL) + v4;
    v58 = v42 - (v17 & 0xFFFFFFFFFFFFFFFCLL);
    v59 = v42 + v4;
    v60 = (a3 + v59);
    v61.i64[0] = 0xF8000000F8;
    v61.i64[1] = 0xF8000000F8;
    v62 = vdup_n_s16(0x74Cu);
    v63.i64[0] = 0xFC000000FCLL;
    v63.i64[1] = 0xFC000000FCLL;
    v64 = (a2 + 2 * v59);
    v65 = vdup_n_s16(0x2591u);
    v66 = vdup_n_s16(0x1323u);
    do
    {
      v67 = *v64++;
      v68 = vmovl_u16(v67);
      *v60++ = vuzp1_s8(vrshrn_n_s32(vmlal_u16(vmlal_u16(vmull_u16(vmovn_s32(vandq_s8(vshrq_n_u32(v68, 3uLL), v63)), v65), vmovn_s32(vandq_s8(vshll_n_u16(v67, 3uLL), v61)), v62), vmovn_s32((*&vshrq_n_u32(v68, 8uLL) & __PAIR128__(0xFFFFFFF8FFFFFFF8, 0xFFFFFFF8FFFFFFF8))), v66), 0xEuLL), *v61.i8).u32[0];
      v58 += 4;
    }

    while (v58);
    if (v17 != (v17 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_13;
    }
  }

  return result;
}

void sub_1002DDCE4()
{
  nullsub_1();

  operator delete();
}

void sub_1002DDD1C(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v56, &off_100477680);
  v5 = *a2;
  if (*a2 < a2[1])
  {
    v6 = (*(a1 + 24) + *(a1 + 32) * v5);
    v7 = *(a1 + 8) + *(a1 + 16) * v5;
    v8 = vdup_n_s16(0x421u);
    v9 = vdupq_n_s16(0x421u);
    do
    {
      v10 = *(a1 + 48);
      v11 = *(a1 + 40);
      if (v10->i32[0] == 6)
      {
        if (v11 >= 8)
        {
          v12 = 0;
          v14 = v6;
          do
          {
            v4 = vorrq_s8(vorrq_s8(vshll_n_u8(vand_s8(v10[2], *(v7 + v12)), 3uLL), vmovl_u8(vshr_n_u8(*(v7 + v12), 3uLL))), vshll_n_s8(vand_s8(v10[1], *(v7 + v12)), 8uLL));
            *v14++ = v4;
            v12 += 8;
          }

          while (v12 <= (v11 - 8));
          v12 = v12;
          if (v12 >= v11)
          {
            goto LABEL_3;
          }

LABEL_14:
          v15 = v11 - v12;
          if (v11 - v12 < 4 || (v16 = (v6 + 2 * v12), v16 < v7 + v11) && v7 + v12 < v6 + 2 * v11)
          {
            v17 = v12;
            goto LABEL_18;
          }

          if (v15 >= 0x10)
          {
            v31 = v15 & 0xFFFFFFFFFFFFFFF0;
            v33 = (v7 + v12);
            v34 = v15 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v35 = *v33++;
              v36 = vqtbl1q_s8(v35, xmmword_1003E3710);
              v37 = vqtbl1q_s8(v35, xmmword_1003E3700);
              v38 = vqtbl1q_s8(v35, xmmword_1003E3730);
              v39 = vqtbl1q_s8(v35, xmmword_1003E3720);
              v4 = vuzp1q_s16(vorrq_s8(vsraq_n_u32((*&vshlq_n_s32(v39, 3uLL) & __PAIR128__(0xFFFFFFE7FFFFFFE7, 0xFFFFFFE7FFFFFFE7)), v39, 3uLL), (*&vshlq_n_s32(v39, 8uLL) & __PAIR128__(0xFFFFF8FFFFFFF8FFLL, 0xFFFFF8FFFFFFF8FFLL))), vorrq_s8(vsraq_n_u32((*&vshlq_n_s32(v38, 3uLL) & __PAIR128__(0xFFFFFFE7FFFFFFE7, 0xFFFFFFE7FFFFFFE7)), v38, 3uLL), (*&vshlq_n_s32(v38, 8uLL) & __PAIR128__(0xFFFFF8FFFFFFF8FFLL, 0xFFFFF8FFFFFFF8FFLL))));
              *v16 = v4;
              v16[1] = vuzp1q_s16(vorrq_s8(vsraq_n_u32((*&vshlq_n_s32(v37, 3uLL) & __PAIR128__(0xFFFFFFE7FFFFFFE7, 0xFFFFFFE7FFFFFFE7)), v37, 3uLL), (*&vshlq_n_s32(v37, 8uLL) & __PAIR128__(0xFFFFF8FFFFFFF8FFLL, 0xFFFFF8FFFFFFF8FFLL))), vorrq_s8(vsraq_n_u32((*&vshlq_n_s32(v36, 3uLL) & __PAIR128__(0xFFFFFFE7FFFFFFE7, 0xFFFFFFE7FFFFFFE7)), v36, 3uLL), (*&vshlq_n_s32(v36, 8uLL) & __PAIR128__(0xFFFFF8FFFFFFF8FFLL, 0xFFFFF8FFFFFFF8FFLL))));
              v16 += 2;
              v34 -= 16;
            }

            while (v34);
            if (v15 == v31)
            {
              goto LABEL_3;
            }

            if ((v15 & 0xC) == 0)
            {
              v17 = v31 + v12;
LABEL_18:
              v18 = v11 - v17;
              v19 = &v6->i16[v17];
              v20 = (v7 + v17);
              do
              {
                v21 = *v20++;
                *v19++ = (v21 >> 3) & 0x1F | (32 * (v21 >> 2)) & 0x7FF | (v21 >> 3 << 11);
                --v18;
              }

              while (v18);
              goto LABEL_3;
            }
          }

          else
          {
            v31 = 0;
          }

          v17 = (v15 & 0xFFFFFFFFFFFFFFFCLL) + v12;
          v40 = v31 - (v15 & 0xFFFFFFFFFFFFFFFCLL);
          v41 = v31 + v12;
          v42 = (v7 + v41);
          v43 = (v6->i64 + 2 * v41);
          do
          {
            v44 = *v42++;
            v4.i32[0] = v44;
            v45 = vmovl_u8(*v4.i8).u64[0];
            *v4.i8 = vmovn_s32(vorrq_s8(vsraq_n_u32((*&vshll_n_u16(v45, 3uLL) & __PAIR128__(0xFFFFFFE7FFFFFFE7, 0xFFFFFFE7FFFFFFE7)), vmovl_u16(v45), 3uLL), (*&vshll_n_u16(v45, 8uLL) & __PAIR128__(0xFFFFF8FFFFFFF8FFLL, 0xFFFFF8FFFFFFF8FFLL))));
            *v43++ = v4.i64[0];
            v40 += 4;
          }

          while (v40);
          if (v15 == (v15 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_3;
          }

          goto LABEL_18;
        }

        v12 = 0;
        if (v11 > 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v11 >= 8)
        {
          v22 = 0;
          v23 = v6;
          do
          {
            v4 = vmulq_s16(vmovl_u8(vshr_n_u8(*(v7 + v22), 3uLL)), v9);
            *v23++ = v4;
            v22 += 8;
          }

          while (v22 <= (v11 - 8));
          v13 = v22;
          if (v22 >= v11)
          {
            goto LABEL_3;
          }

LABEL_24:
          v24 = v11 - v13;
          if ((v11 - v13) < 4 || (v25 = (v6 + 2 * v13), v25 < v7 + v11) && v7 + v13 < v6 + 2 * v11)
          {
            v26 = v13;
            goto LABEL_28;
          }

          if (v24 >= 0x20)
          {
            v32 = v24 & 0xFFFFFFFFFFFFFFE0;
            v46 = (v7 + v13 + 16);
            v47 = v25 + 2;
            v48 = v24 & 0xFFFFFFFFFFFFFFE0;
            do
            {
              v49 = vshrq_n_u8(v46[-1], 3uLL);
              v50 = vshrq_n_u8(*v46, 3uLL);
              v47[-2] = vmulq_s16(vmovl_u8(*v49.i8), v9);
              v47[-1] = vmulq_s16(vmovl_high_u8(v49), v9);
              v4 = vmulq_s16(vmovl_high_u8(v50), v9);
              *v47 = vmulq_s16(vmovl_u8(*v50.i8), v9);
              v47[1] = v4;
              v47 += 4;
              v46 += 2;
              v48 -= 32;
            }

            while (v48);
            if (v24 == v32)
            {
              goto LABEL_3;
            }

            if ((v24 & 0x1C) == 0)
            {
              v26 = v32 + v13;
LABEL_28:
              v27 = v11 - v26;
              v28 = &v6->i16[v26];
              v29 = (v7 + v26);
              do
              {
                v30 = *v29++;
                *v28++ = 1057 * (v30 >> 3);
                --v27;
              }

              while (v27);
              goto LABEL_3;
            }
          }

          else
          {
            v32 = 0;
          }

          v26 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + v13;
          v51 = v32 - (v24 & 0xFFFFFFFFFFFFFFFCLL);
          v52 = v32 + v13;
          v53 = (v7 + v52);
          v54 = (v6->i64 + 2 * v52);
          do
          {
            v55 = *v53++;
            v4.i32[0] = v55;
            *v4.i8 = vmul_s16(vshr_n_u16(*&vmovl_u8(*v4.i8), 3uLL), v8);
            *v54++ = v4.i64[0];
            v51 += 4;
          }

          while (v51);
          if (v24 == (v24 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_3;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 > 0)
        {
          goto LABEL_24;
        }
      }

LABEL_3:
      ++v5;
      v7 += *(a1 + 16);
      v6 = (v6 + *(a1 + 32));
    }

    while (v5 < a2[1]);
  }

  if (v56[2])
  {
    sub_1002ACC1C(v56);
  }
}

void sub_1002DE138()
{
  nullsub_1();

  operator delete();
}

void sub_1002DE170(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_1004776E0);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = *(a1 + 24) + *(a1 + 32) * v4;
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      sub_1002DE238(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

uint64_t sub_1002DE238(uint64_t result, const char *a2, uint64_t a3, int a4)
{
  v4 = *result;
  v5 = *(result + 4);
  v6 = *(result + 28) ^ 1;
  v7 = *(result + 8);
  v8 = *(result + 12);
  v9 = *(result + 16);
  v10 = *(result + 20);
  v11 = *(result + 24);
  v12 = 3 * a4;
  if (a4 >= 8)
  {
    v13 = 0;
    v22 = v5 ^ 2;
    do
    {
      if (v4 == 3)
      {
        *v44.val[0].i8 = vld3_s8(a2);
      }

      else
      {
        v44 = vld4_s8(a2);
      }

      v23 = vmovl_u8(v44.val[2]);
      v24 = vmovl_u8(v44.val[1]);
      v25 = vmovl_u8(v44.val[0]);
      v27 = *(result + 32);
      v26 = *(result + 40);
      v28 = vmlal_s16(vmull_s16(*v24.i8, v26), *v25.i8, v27);
      v29 = vextq_s8(v25, v25, 8uLL).u64[0];
      v25.i64[1] = v24.i64[0];
      *v42 = v25;
      *&v42[16] = v23.i64[0];
      v25.i64[0] = *(result + 48);
      v30 = *(result + 112);
      v31 = vshrq_n_s32(vaddq_s32(vmlal_s16(v28, *v23.i8, *v25.i8), v30), 0xEuLL);
      v32 = vaddq_s32(*(result + 96), v30);
      v33 = *(result + 64);
      v34 = *(result + 80);
      v35 = vshrq_n_s32(vmlaq_s32(v32, vsubq_s32(vmovl_s16(*&v42[8 * v22]), v31), v33), 0xEuLL);
      v36 = vshrq_n_s32(vmlaq_s32(v32, vsubq_s32(vmovl_s16(*&v42[8 * v5]), v31), v34), 0xEuLL);
      *v42 = v29;
      v24.i64[0] = vextq_s8(v24, v24, 8uLL).u64[0];
      v24.i64[1] = vextq_s8(v23, v23, 8uLL).u64[0];
      *&v42[8] = v24;
      v37 = vshrq_n_s32(vmlal_s16(vmlal_s16(vmlal_s16(v30, v29, v27), *v24.i8, v26), v24.u64[1], *v25.i8), 0xEuLL);
      v38 = vshrq_n_s32(vmlaq_s32(v32, vsubq_s32(vmovl_s16(*&v42[8 * v22]), v37), v33), 0xEuLL);
      v39 = vshrq_n_s32(vmlaq_s32(v32, vsubq_s32(vmovl_s16(*&v42[8 * v5]), v37), v34), 0xEuLL);
      v40 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v31), v37));
      v43[0] = v40;
      v43[v6 + 1] = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v35), v38));
      v43[(2 - v6)] = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v36), v39));
      v25.i64[0] = v43[1];
      v31.i64[0] = v43[2];
      v41 = (a3 + v13);
      vst3_s8(v41, *(&v25 - 8));
      v13 += 24;
      a2 += 8 * v4;
    }

    while (v13 <= v12 - 24);
  }

  else
  {
    LODWORD(v13) = 0;
  }

  if (v13 < v12)
  {
    result = 2105344;
    v13 = v13;
    v14 = a3 + v6 + 1;
    v15 = 2 - v6;
    do
    {
      v16 = v8 * *(a2 + 1) + v7 * *a2 + v9 * *(a2 + 2) + 0x2000;
      v17 = (a2[v5 ^ 2] - (v16 >> 14)) * v10 + 2105344;
      v18 = (a2[v5] - (v16 >> 14)) * v11 + 2105344;
      v19 = (v16 >> 14) & ~(v16 >> 31);
      if (v19 >= 255)
      {
        LOBYTE(v19) = -1;
      }

      *(a3 + v13) = v19;
      v20 = (v17 >> 14) & ~(v17 >> 31);
      if (v20 >= 255)
      {
        LOBYTE(v20) = -1;
      }

      *(v14 + v13) = v20;
      v21 = (v18 >> 14) & ~(v18 >> 31);
      if (v21 >= 255)
      {
        LOBYTE(v21) = -1;
      }

      *(a3 + (v15 + v13)) = v21;
      v13 += 3;
      a2 += v4;
    }

    while (v13 < v12);
  }

  return result;
}

void sub_1002DE488()
{
  nullsub_1();

  operator delete();
}

void sub_1002DE4C0(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477740);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      sub_1002DE588(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 = (v6 + *(a1 + 16));
      v5 = (v5 + *(a1 + 32));
    }

    while (v4 < a2[1]);
  }

  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

int *sub_1002DE588(int *result, const __int16 *a2, __int16 *a3, int a4)
{
  v5 = *result;
  v4 = result[1];
  v6 = *(result + 28) ^ 1;
  v7 = result[2];
  v8 = result[3];
  v9 = result[4];
  v10 = result[5];
  v11 = result[6];
  v12 = 3 * a4;
  if (a4 >= 8)
  {
    v13 = 0;
    v31 = a3;
    do
    {
      if (v5 == 3)
      {
        *v54.val[0].i8 = vld3q_s16(a2);
      }

      else
      {
        v54 = vld4q_s16(a2);
      }

      v45 = vmovl_u16(*v54.val[0].i8);
      v46 = vmovl_u16(*v54.val[1].i8);
      v47 = vmovl_u16(*v54.val[2].i8);
      v32 = *(result + 2);
      v33 = *(result + 3);
      v34 = *(result + 4);
      v35 = *(result + 5);
      v36 = *(result + 8);
      v37 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v32, v45), v33, v46), v34, v47), v36), 0xEuLL);
      v38 = *(result + 6);
      v39 = vaddq_s32(*(result + 7), v36);
      v40 = vshrq_n_s32(vmlaq_s32(v39, vsubq_s32(*(&v45 + (v4 ^ 2)), v37), v35), 0xEuLL);
      v41 = vshrq_n_s32(vmlaq_s32(v39, vsubq_s32(*(&v45 + v4), v37), v38), 0xEuLL);
      v45 = vmovl_high_u16(v54.val[0]);
      v46 = vmovl_high_u16(v54.val[1]);
      v47 = vmovl_high_u16(v54.val[2]);
      v42 = vshrq_n_s32(vaddq_s32(vmlaq_s32(vmlaq_s32(vmulq_s32(v32, v45), v33, v46), v34, v47), v36), 0xEuLL);
      v43 = vshrq_n_s32(vmlaq_s32(v39, vsubq_s32(*(&v45 + (v4 ^ 2)), v42), v35), 0xEuLL);
      v44 = vshrq_n_s32(vmlaq_s32(v39, vsubq_s32(*(&v45 + v4), v42), v38), 0xEuLL);
      v52.val[0] = vqmovun_high_s32(vqmovun_s32(v37), v42);
      v48 = v52.val[0];
      *(&v48 + v6 + 1) = vqmovun_high_s32(vqmovun_s32(v40), v43);
      *(&v48 + (2 - v6)) = vqmovun_high_s32(vqmovun_s32(v41), v44);
      v52.val[1] = v49;
      v52.val[2] = v50;
      vst3q_s16(v31, v52);
      v31 += 24;
      v13 += 24;
      a2 += 8 * v5;
    }

    while (v13 <= v12 - 24);
  }

  else
  {
    LODWORD(v13) = 0;
  }

  v14 = v12 - 12;
  if (v13 <= v12 - 12)
  {
    v15 = v4 ^ 2;
    v16 = v6 + 1;
    v17 = 2 - v6;
    v18 = 8 * v5;
    v19 = &a3[v13];
    if (v5 == 3)
    {
      do
      {
        v51 = vld3_s16(a2);
        a2 = (a2 + v18);
        v48 = vmovl_u16(v51.val[0]);
        v49 = vmovl_u16(v51.val[1]);
        *v51.val[0].i8 = vmovl_u16(v51.val[2]);
        *v51.val[2].i8 = *(result + 3);
        *v51.val[1].i8 = vmulq_s32(*(result + 2), v48);
        v50 = *v51.val[0].i8;
        *v51.val[1].i8 = vmlaq_s32(vmlaq_s32(*v51.val[1].i8, *v51.val[2].i8, v49), *(result + 4), *v51.val[0].i8);
        *v51.val[0].i8 = *(result + 8);
        *v51.val[1].i8 = vshrq_n_s32(vaddq_s32(*v51.val[1].i8, *v51.val[0].i8), 0xEuLL);
        *v51.val[0].i8 = vaddq_s32(*(result + 7), *v51.val[0].i8);
        v20 = vshrq_n_s32(vmlaq_s32(*v51.val[0].i8, vsubq_s32(*(&v48 + v15), *v51.val[1].i8), *(result + 5)), 0xEuLL);
        *v51.val[0].i8 = vshrq_n_s32(vmlaq_s32(*v51.val[0].i8, vsubq_s32(*(&v48 + v4), *v51.val[1].i8), *(result + 6)), 0xEuLL);
        *&v45.i8[8 * v16] = vqmovun_s32(v20);
        v51.val[1] = vqmovun_s32(*v51.val[1].i8);
        *&v45.i8[8 * v17] = vqmovun_s32(*v51.val[0].i8);
        v51.val[2] = v45.i64[1];
        v20.i64[0] = v46.i64[0];
        v45.i64[0] = v51.val[1];
        vst3_s16(v19, *(&v51 + 8));
        v19 += 12;
        LODWORD(v13) = v13 + 12;
      }

      while (v14 >= v13);
    }

    else
    {
      do
      {
        v53 = vld4_s16(a2);
        a2 = (a2 + v18);
        v48 = vmovl_u16(v53.val[0]);
        v49 = vmovl_u16(v53.val[1]);
        *v53.val[0].i8 = vmovl_u16(v53.val[2]);
        *v53.val[2].i8 = *(result + 3);
        *v53.val[1].i8 = vmulq_s32(*(result + 2), v48);
        v50 = *v53.val[0].i8;
        *v53.val[1].i8 = vmlaq_s32(vmlaq_s32(*v53.val[1].i8, *v53.val[2].i8, v49), *(result + 4), *v53.val[0].i8);
        *v53.val[0].i8 = *(result + 8);
        *v53.val[1].i8 = vshrq_n_s32(vaddq_s32(*v53.val[1].i8, *v53.val[0].i8), 0xEuLL);
        *v53.val[0].i8 = vaddq_s32(*(result + 7), *v53.val[0].i8);
        *v53.val[3].i8 = vshrq_n_s32(vmlaq_s32(*v53.val[0].i8, vsubq_s32(*(&v48 + v15), *v53.val[1].i8), *(result + 5)), 0xEuLL);
        *v53.val[0].i8 = vshrq_n_s32(vmlaq_s32(*v53.val[0].i8, vsubq_s32(*(&v48 + v4), *v53.val[1].i8), *(result + 6)), 0xEuLL);
        *&v45.i8[8 * v16] = vqmovun_s32(*v53.val[3].i8);
        v53.val[1] = vqmovun_s32(*v53.val[1].i8);
        *&v45.i8[8 * v17] = vqmovun_s32(*v53.val[0].i8);
        v53.val[2] = v45.i64[1];
        v53.val[3] = v46.i64[0];
        v45.i64[0] = v53.val[1];
        vst3_s16(v19, *v53.val[1].i8);
        v19 += 12;
        LODWORD(v13) = v13 + 12;
      }

      while (v14 >= v13);
    }
  }

  if (v13 < v12)
  {
    result = 0;
    v21 = v13;
    v22 = &a3[v6 + 1 + v21];
    v23 = v13 - v6 + 2;
    v24 = 2 * v5;
    do
    {
      v25 = v8 * *(a2 + 1) + v7 * *a2 + v9 * *(a2 + 2) + 0x2000;
      v26 = (a2[v4 ^ 2] - (v25 >> 14)) * v10 + 536879104;
      v27 = (a2[v4] - (v25 >> 14)) * v11 + 536879104;
      v28 = (v25 >> 14) & ~(v25 >> 31);
      if (v28 >= 0xFFFF)
      {
        LOWORD(v28) = -1;
      }

      a3[v21 + result] = v28;
      v29 = (v26 >> 14) & ~(v26 >> 31);
      if (v29 >= 0xFFFF)
      {
        LOWORD(v29) = -1;
      }

      v22[result] = v29;
      v30 = (v27 >> 14) & ~(v27 >> 31);
      if (v30 >= 0xFFFF)
      {
        LOWORD(v30) = -1;
      }

      a3[v23 + result] = v30;
      result = (result + 3);
      a2 = (a2 + v24);
    }

    while (v12 > v13 + result);
  }

  return result;
}

void sub_1002DE940()
{
  nullsub_1();

  operator delete();
}

void sub_1002DE978(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_1004777A0);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    do
    {
      sub_1002DEA40(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 = (v5 + *(a1 + 32));
    }

    while (v4 < a2[1]);
  }

  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

float32_t sub_1002DEA40(float32x4_t *a1, uint64_t a2, float *a3, int a4)
{
  v5 = a1->i32[0];
  v4 = a1->i32[1];
  v6 = a1->u8[8] ^ 1;
  result = a1->f32[3];
  v8 = a1[1].f32[0];
  v9 = a1[1].f32[1];
  v10 = a1[1].f32[2];
  v11 = a1[1].f32[3];
  v12 = 3 * a4;
  if (v5 == 3)
  {
    if (a4 >= 4)
    {
      v13 = 0;
      v14 = a3;
      do
      {
        v34 = vld3q_f32(a2);
        a2 += 48;
        v27 = v34.val[0];
        v28 = v34.val[1];
        v15 = a1[2];
        v16 = a1[3];
        v29 = v34.val[2];
        v35.val[0] = vmlaq_f32(vmlaq_f32(vmulq_f32(v34.val[0], v15), v16, v34.val[1]), a1[4], v34.val[2]);
        v34.val[1] = vmlaq_f32(a1[7], a1[6], vsubq_f32(*(&v27 + v4), v35.val[0]));
        *(&v31 + (v6 + 1)) = vmlaq_f32(a1[7], a1[5], vsubq_f32(*(&v27 + (v4 ^ 2)), v35.val[0]));
        *(&v31 + (2 - v6)) = v34.val[1];
        v35.val[1] = v32;
        v35.val[2] = v33;
        v31 = v35.val[0];
        vst3q_f32(v14, v35);
        v14 += 12;
        v13 += 12;
      }

      while (v13 <= v12 - 12);
      if (v13 >= v12)
      {
        return result;
      }

LABEL_13:
      v21 = &a3[v6 + 1];
      v22 = 2 - v6;
      v23 = 4 * v5;
      v13 = v13;
      do
      {
        v24 = ((v8 * *(a2 + 4)) + (*a2 * result)) + (*(a2 + 8) * v9);
        v25 = ((*(a2 + 4 * (v4 ^ 2)) - v24) * v10) + 0.5;
        v26 = ((*(a2 + 4 * v4) - v24) * v11) + 0.5;
        a3[v13] = v24;
        v21[v13] = v25;
        a3[(v22 + v13)] = v26;
        v13 += 3;
        a2 += v23;
      }

      while (v13 < v12);
      return result;
    }

LABEL_8:
    LODWORD(v13) = 0;
    if (v12 <= 0)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (a4 < 4)
  {
    goto LABEL_8;
  }

  v13 = 0;
  v17 = a3;
  do
  {
    v37 = vld4q_f32(a2);
    a2 += 64;
    v27 = v37.val[0];
    v28 = v37.val[1];
    v18 = a1[2];
    v19 = a1[3];
    v29 = v37.val[2];
    v30 = v37.val[3];
    v36.val[0] = vmlaq_f32(vmlaq_f32(vmulq_f32(v37.val[0], v18), v19, v37.val[1]), a1[4], v37.val[2]);
    v20 = vmlaq_f32(a1[7], a1[6], vsubq_f32(*(&v27 + v4), v36.val[0]));
    *(&v31 + v6 + 1) = vmlaq_f32(a1[7], a1[5], vsubq_f32(*(&v27 + (v4 ^ 2)), v36.val[0]));
    *(&v31 + (2 - v6)) = v20;
    v36.val[1] = v32;
    v36.val[2] = v33;
    v31 = v36.val[0];
    vst3q_f32(v17, v36);
    v17 += 12;
    v13 += 12;
  }

  while (v13 <= v12 - 12);
  if (v13 < v12)
  {
    goto LABEL_13;
  }

  return result;
}

void sub_1002DEC2C()
{
  nullsub_1();

  operator delete();
}

void sub_1002DEC64(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477800);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    do
    {
      sub_1002DED2C(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

int32x4_t *sub_1002DED2C(int32x4_t *result, uint64_t a2, char *a3, int a4)
{
  v4 = result->i32[0];
  v5 = result->i32[1];
  v6 = result->u8[8] ^ 1;
  v7 = result->i32[3];
  v8 = result[1].i32[0];
  v9 = result[1].i32[1];
  v10 = result[1].i32[2];
  v11 = 3 * a4;
  if (a4 >= 8)
  {
    v12 = 0;
    v13 = v5 ^ 2;
    v14 = 8 * v4;
    v15 = v11 - 24;
    do
    {
      while (1)
      {
        v16 = (a2 + v12);
        v52 = vld3_s8(v16);
        v49 = vmovl_u8(v52.val[1]);
        v50 = vmovl_u8(v52.val[2]);
        v17 = *v48[2].val[2 * v6].i8;
        v18 = *v48[1].val[2 * (2 - v6) + 1].i8;
        v19 = *result[7].i8;
        v20 = vsubl_s16(*v18.i8, v19);
        v21 = vsubl_s16(*v17.i8, v19);
        v22 = vsubl_s16(*&vextq_s8(v18, v18, 8uLL), v19);
        v23 = vsubl_s16(*&vextq_s8(v17, v17, 8uLL), v19);
        v24 = vqmovun_s16(vaddw_u8(vshrn_high_n_s32(vshrn_n_s32(vmlaq_s32(result[6], v20, result[5]), 0xEuLL), vmlaq_s32(result[6], v22, result[5]), 0xEuLL), v52.val[0]));
        v25 = vqmovun_s16(vaddw_u8(vshrn_high_n_s32(vshrn_n_s32(vmlaq_s32(vmlaq_s32(result[6], v21, result[3]), result[4], v20), 0xEuLL), vmlaq_s32(vmlaq_s32(result[6], v23, result[3]), result[4], v22), 0xEuLL), v52.val[0]));
        v26 = vqmovun_s16(vaddw_u8(vshrn_high_n_s32(vshrn_n_s32(vmlaq_s32(result[6], result[2], v21), 0xEuLL), vmlaq_s32(result[6], result[2], v23), 0xEuLL), v52.val[0]));
        if (v4 == 3)
        {
          break;
        }

        v48[0].val[v5] = v24;
        v48[0].val[1] = v25;
        v48[0].val[v13] = v26;
        v53.val[3] = result[7].i64[1];
        v53.val[0] = v48[0].val[0];
        v53.val[1] = v48[0].val[1];
        v53.val[2] = v48[0].val[2];
        vst4_s8(a3, v53);
        v12 += 24;
        a3 += v14;
        if (v12 > v15)
        {
          goto LABEL_7;
        }
      }

      v48[0].val[v5] = v24;
      v48[0].val[1] = v25;
      v48[0].val[v13] = v26;
      v51 = v48[0];
      vst3_s8(a3, v51);
      v12 += 24;
      a3 += v14;
    }

    while (v12 <= v15);
  }

  else
  {
    LODWORD(v12) = 0;
  }

LABEL_7:
  if (v12 < v11)
  {
    v27 = v5 ^ 2;
    v12 = v12;
    result = (a2 + v6 + 1);
    if (v4 == 4)
    {
      v28 = 2 - v6;
      do
      {
        v29 = *(a2 + v12);
        v30 = *(a2 + (v28 + v12)) - 128;
        v31 = v29 + ((v30 * v10 + 0x2000) >> 14);
        v32 = result->u8[v12] - 128;
        v33 = v29 + ((v30 * v9 + v32 * v8 + 0x2000) >> 14);
        v34 = v29 + ((v32 * v7 + 0x2000) >> 14);
        v35 = v31 & ~(v31 >> 31);
        if (v35 >= 255)
        {
          LOBYTE(v35) = -1;
        }

        a3[v5] = v35;
        v36 = v33 & ~(v33 >> 31);
        if (v36 >= 255)
        {
          LOBYTE(v36) = -1;
        }

        a3[1] = v36;
        v37 = v34 & ~(v34 >> 31);
        if (v37 >= 255)
        {
          LOBYTE(v37) = -1;
        }

        a3[v27] = v37;
        a3[3] = -1;
        v12 += 3;
        a3 += v4;
      }

      while (v12 < v11);
    }

    else
    {
      v38 = 2 - v6;
      do
      {
        v39 = *(a2 + v12);
        v40 = *(a2 + (v38 + v12)) - 128;
        v41 = v39 + ((v40 * v10 + 0x2000) >> 14);
        v42 = result->u8[v12] - 128;
        v43 = v39 + ((v40 * v9 + v42 * v8 + 0x2000) >> 14);
        v44 = v39 + ((v42 * v7 + 0x2000) >> 14);
        v45 = v41 & ~(v41 >> 31);
        if (v45 >= 255)
        {
          LOBYTE(v45) = -1;
        }

        a3[v5] = v45;
        v46 = v43 & ~(v43 >> 31);
        if (v46 >= 255)
        {
          LOBYTE(v46) = -1;
        }

        a3[1] = v46;
        v47 = v44 & ~(v44 >> 31);
        if (v47 >= 255)
        {
          LOBYTE(v47) = -1;
        }

        a3[v27] = v47;
        v12 += 3;
        a3 += v4;
      }

      while (v12 < v11);
    }
  }

  return result;
}

void sub_1002DEFE0()
{
  nullsub_1();

  operator delete();
}

void sub_1002DF018(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477860);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      sub_1002DF0E0(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 = (v6 + *(a1 + 16));
      v5 = (v5 + *(a1 + 32));
    }

    while (v4 < a2[1]);
  }

  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

unint64_t sub_1002DF0E0(unint64_t result, const __int16 *a2, __int16 *a3, int a4)
{
  v4 = *result;
  v5 = *(result + 4);
  v6 = *(result + 8) ^ 1;
  v7 = *(result + 12);
  v8 = *(result + 16);
  v9 = *(result + 20);
  v10 = *(result + 24);
  v11 = 3 * a4;
  if (a4 >= 8)
  {
    v12 = 0;
    v13 = v5 ^ 2;
    v14 = v11 - 24;
    v15 = 16 * v4;
    v16 = a2;
    do
    {
      while (1)
      {
        v71 = vld3q_s16(v16);
        v65 = v71.val[1];
        v66 = v71.val[2];
        v17 = *&v63[16 * v6 + 80];
        v18 = vmovl_u16(*v71.val[0].i8);
        v19 = *&v63[16 * (2 - v6) + 64];
        v20 = *(result + 112);
        v21 = vsubq_s32(vmovl_u16(*v19.i8), v20);
        v23 = *(result + 64);
        v22 = *(result + 80);
        v24 = vsraq_n_s32(v18, vmlaq_s32(*(result + 96), v21, v22), 0xEuLL);
        v25 = vsubq_s32(vmovl_u16(*v17.i8), v20);
        v27 = *(result + 32);
        v26 = *(result + 48);
        v28 = vsraq_n_s32(v18, vmlaq_s32(vmlaq_s32(*(result + 96), v26, v25), v23, v21), 0xEuLL);
        v29 = vsraq_n_s32(v18, vmlaq_s32(*(result + 96), v27, v25), 0xEuLL);
        v30 = vsubq_s32(vmovl_high_u16(v19), v20);
        v31 = vaddw_high_u16(vshrq_n_s32(vmlaq_s32(*(result + 96), v30, v22), 0xEuLL), v71.val[0]);
        v32 = vsubq_s32(vmovl_high_u16(v17), v20);
        v33 = vaddw_high_u16(vshrq_n_s32(vmlaq_s32(vmlaq_s32(*(result + 96), v26, v32), v23, v30), 0xEuLL), v71.val[0]);
        v34 = vaddw_high_u16(vshrq_n_s32(vmlaq_s32(*(result + 96), v27, v32), 0xEuLL), v71.val[0]);
        v35 = vqmovun_high_s32(vqmovun_s32(v24), v31);
        v36 = vqmovun_high_s32(vqmovun_s32(v28), v33);
        v37 = vqmovun_high_s32(vqmovun_s32(v29), v34);
        if (v4 == 3)
        {
          break;
        }

        *&v63[16 * v5] = v35;
        *&v63[16] = v36;
        *&v63[16 * v13] = v37;
        v73.val[3] = *(result + 128);
        v73.val[0] = *v63;
        v73.val[1] = *&v63[16];
        v73.val[2] = *&v63[32];
        vst4q_s16(a3, v73);
        v12 += 24;
        v16 += 24;
        a3 = (a3 + v15);
        if (v12 > v14)
        {
          goto LABEL_7;
        }
      }

      *&v63[16 * v5] = v35;
      *&v63[16] = v36;
      *&v63[16 * v13] = v37;
      v72 = *v63;
      vst3q_s16(a3, v72);
      v12 += 24;
      v16 += 24;
      a3 = (a3 + v15);
    }

    while (v12 <= v14);
  }

  else
  {
    LODWORD(v12) = 0;
  }

LABEL_7:
  v38 = v11 - 12;
  if (v12 <= v11 - 12)
  {
    v39 = v6 + 1;
    v40 = 2 - v6;
    v41 = v5 ^ 2;
    v42 = 8 * v4;
    v43 = &a2[v12];
    if (v4 == 3)
    {
      do
      {
        v67 = vld3_s16(v43);
        v43 += 12;
        v64 = v67.val[1];
        v65.i64[0] = v67.val[2];
        *v67.val[0].i8 = vmovl_u16(v67.val[0]);
        v44 = *(result + 112);
        *v67.val[2].i8 = vsubq_s32(vmovl_u16(*&v63[8 * v40 + 64]), v44);
        *v67.val[1].i8 = vsubq_s32(vmovl_u16(*&v63[8 * v39 + 64]), v44);
        v45 = vsraq_n_s32(*v67.val[0].i8, vmlaq_s32(*(result + 96), *v67.val[2].i8, *(result + 80)), 0xEuLL);
        *v67.val[2].i8 = vsraq_n_s32(*v67.val[0].i8, vmlaq_s32(vmlaq_s32(*(result + 96), *(result + 48), *v67.val[1].i8), *(result + 64), *v67.val[2].i8), 0xEuLL);
        *v67.val[0].i8 = vsraq_n_s32(*v67.val[0].i8, vmlaq_s32(*(result + 96), *(result + 32), *v67.val[1].i8), 0xEuLL);
        *&v63[8 * v5] = vqmovun_s32(v45);
        *&v63[8] = vqmovun_s32(*v67.val[2].i8);
        *&v63[8 * v41] = vqmovun_s32(*v67.val[0].i8);
        v68 = *v63;
        vst3_s16(a3, v68);
        a3 = (a3 + v42);
        LODWORD(v12) = v12 + 12;
      }

      while (v38 >= v12);
    }

    else
    {
      do
      {
        v69 = vld3_s16(v43);
        v43 += 12;
        v64 = v69.val[1];
        v65.i64[0] = v69.val[2];
        *v69.val[0].i8 = vmovl_u16(v69.val[0]);
        v47 = *(result + 96);
        v46 = *(result + 112);
        *v69.val[2].i8 = vsubq_s32(vmovl_u16(*&v63[8 * v40 + 64]), v46);
        *v69.val[1].i8 = vsubq_s32(vmovl_u16(*&v63[8 * v39 + 64]), v46);
        v48 = vmlaq_s32(vmlaq_s32(v47, *(result + 48), *v69.val[1].i8), *(result + 64), *v69.val[2].i8);
        *v69.val[2].i8 = vsraq_n_s32(*v69.val[0].i8, vmlaq_s32(v47, *v69.val[2].i8, *(result + 80)), 0xEuLL);
        v49 = vsraq_n_s32(*v69.val[0].i8, v48, 0xEuLL);
        *v69.val[0].i8 = vsraq_n_s32(*v69.val[0].i8, vmlaq_s32(v47, *(result + 32), *v69.val[1].i8), 0xEuLL);
        *&v63[8 * v5] = vqmovun_s32(*v69.val[2].i8);
        *&v63[8] = vqmovun_s32(v49);
        *&v63[8 * v41] = vqmovun_s32(*v69.val[0].i8);
        v49.i64[0] = *(result + 144);
        v70 = *v63;
        vst4_s16(a3, *(&v49 - 24));
        a3 = (a3 + v42);
        LODWORD(v12) = v12 + 12;
      }

      while (v38 >= v12);
    }
  }

  if (v12 < v11)
  {
    v50 = 0;
    result = v12;
    v51 = v12;
    v52 = &a2[v6 + 1 + v51];
    v53 = v12 - v6 + 2;
    do
    {
      v54 = a2[v51 + v50];
      v55 = a2[(v53 + v50)] - 0x8000;
      v56 = v54 + ((v55 * v10 + 0x2000) >> 14);
      v57 = v52[v50] - 0x8000;
      v58 = v54 + ((v55 * v9 + v57 * v8 + 0x2000) >> 14);
      v59 = v54 + ((v57 * v7 + 0x2000) >> 14);
      v60 = v56 & ~(v56 >> 31);
      if (v60 >= 0xFFFF)
      {
        LOWORD(v60) = -1;
      }

      a3[v5] = v60;
      v61 = v58 & ~(v58 >> 31);
      if (v61 >= 0xFFFF)
      {
        LOWORD(v61) = -1;
      }

      a3[1] = v61;
      v62 = v59 & ~(v59 >> 31);
      if (v62 >= 0xFFFF)
      {
        LOWORD(v62) = -1;
      }

      a3[(v5 ^ 2)] = v62;
      if (v4 == 4)
      {
        a3[3] = -1;
      }

      v50 += 3;
      a3 += v4;
    }

    while (v11 > v12 + v50);
  }

  return result;
}

void sub_1002DF4A4()
{
  nullsub_1();

  operator delete();
}

void sub_1002DF4DC(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_1004778C0);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = *(a1 + 24) + *(a1 + 32) * v4;
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      sub_1002DF5A4(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 = (v6 + *(a1 + 16));
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

float32x4_t *sub_1002DF5A4(float32x4_t *result, const float *a2, uint64_t a3, int a4)
{
  v5 = result->i32[0];
  v4 = result->i32[1];
  v6 = result->u8[8] ^ 1;
  v7 = result->f32[3];
  v8 = result[1].f32[0];
  v9 = result[1].f32[1];
  v10 = result[1].f32[2];
  v11 = 3 * a4;
  if (v5 != 3)
  {
    if (a4 >= 4)
    {
      v12 = 0;
      v23 = a2;
      do
      {
        v46 = vld3q_f32(v23);
        v23 += 12;
        v43.val[1] = v46.val[1];
        v43.val[2] = v46.val[2];
        v47.val[3] = result[6];
        v24 = result[7];
        v25 = vsubq_f32(v43.val[(2 - v6)], v24);
        v26 = vsubq_f32(v43.val[v6 + 1], v24);
        v27 = vmlaq_f32(v46.val[0], result[5], v25);
        v28 = vaddq_f32(v46.val[0], vmlaq_f32(vmulq_f32(v25, result[4]), result[3], v26));
        v46.val[0] = vmlaq_f32(v46.val[0], result[2], v26);
        *(&v40 + v4) = v27;
        v41 = v28;
        *(&v40 + (v4 ^ 2)) = v46.val[0];
        v47.val[0] = v40;
        v47.val[1] = v41;
        v47.val[2] = v42;
        vst4q_f32(a3, v47);
        a3 += 64;
        v12 += 12;
      }

      while (v12 <= v11 - 12);
      if (v12 >= v11)
      {
        return result;
      }
    }

    else
    {
      LODWORD(v12) = 0;
      if (v11 <= 0)
      {
        return result;
      }
    }

    goto LABEL_15;
  }

  if (a4 < 4)
  {
    if (a4 < 1)
    {
      return result;
    }

    LODWORD(v12) = 0;
    v13 = v6 + 1;
    v14 = 2 - v6;
    v15 = (v4 ^ 2);
    v5 = 3;
    goto LABEL_20;
  }

  v12 = 0;
  v16 = a2;
  do
  {
    v44 = vld3q_f32(v16);
    v16 += 12;
    v41 = v44.val[1];
    v42 = v44.val[2];
    v17 = result[7];
    v18 = vsubq_f32(*(&v40 + (2 - v6)), v17);
    v19 = vmlaq_f32(v44.val[0], result[5], v18);
    v20 = vmulq_f32(v18, result[4]);
    v21 = vsubq_f32(*(&v40 + (v6 + 1)), v17);
    v43.val[v4] = v19;
    v22 = vaddq_f32(v44.val[0], vmlaq_f32(v20, result[3], v21));
    v44.val[0] = vmlaq_f32(v44.val[0], result[2], v21);
    v43.val[1] = v22;
    v43.val[(v4 ^ 2)] = v44.val[0];
    v45 = v43;
    vst3q_f32(a3, v45);
    a3 += 48;
    v12 += 12;
  }

  while (v12 <= v11 - 12);
  if (v12 < v11)
  {
LABEL_15:
    v13 = v6 + 1;
    v15 = (v4 ^ 2);
    if (v5 != 4)
    {
      v14 = 2 - v6;
LABEL_20:
      v12 = v12;
      v35 = &a2[v13];
      v36 = 4 * v5;
      do
      {
        v37 = a2[v12];
        v38 = a2[(v14 + v12)] + -0.5;
        v39 = v35[v12] + -0.5;
        *(a3 + 4 * v4) = v37 + (v38 * v10);
        *(a3 + 4) = (v37 + (v38 * v9)) + (v39 * v8);
        *(a3 + 4 * v15) = v37 + (v39 * v7);
        v12 += 3;
        a3 += v36;
      }

      while (v12 < v11);
      return result;
    }

    v12 = v12;
    v29 = 2 - v6;
    v30 = 4 * v5;
    v31 = &a2[v13];
    do
    {
      v32 = a2[v12];
      v33 = a2[(v29 + v12)] + -0.5;
      v34 = v31[v12] + -0.5;
      *(a3 + 4 * v4) = v32 + (v33 * v10);
      *(a3 + 4) = (v32 + (v33 * v9)) + (v34 * v8);
      *(a3 + 4 * v15) = v32 + (v34 * v7);
      *(a3 + 12) = 1065353216;
      v12 += 3;
      a3 += v30;
    }

    while (v12 < v11);
  }

  return result;
}

void sub_1002DF828()
{
  nullsub_1();

  operator delete();
}

void sub_1002DF860(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477920);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = *(a1 + 24) + *(a1 + 32) * v4;
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      sub_1002DF928(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

uint64_t sub_1002DF928(uint64_t result, const char *a2, uint64_t a3, int a4)
{
  v4 = *(result + 4);
  v5 = *result;
  v6 = *(result + 8);
  v7 = *(result + 12);
  v8 = *(result + 16);
  v9 = *(result + 20);
  v10 = *(result + 24);
  v11 = *(result + 28);
  v12 = 3 * a4;
  v13 = *(result + 32);
  v14 = *(result + 36);
  if (a4 >= 8)
  {
    v15 = 0;
    do
    {
      if (v5 == 3)
      {
        *v43.val[0].i8 = vld3_s8(a2);
      }

      else
      {
        v43 = vld4_s8(a2);
      }

      v29 = vmovl_u8(v43.val[2]);
      v30 = vmovl_u8(v43.val[1]);
      v31 = vmovl_u8(v43.val[0]);
      v32 = *(result + 48);
      v33 = vmull_u16(*v30.i8, v32);
      v34 = *(result + 72);
      v35 = vmull_u16(*v30.i8, v34);
      v36 = *(result + 96);
      v37 = vmull_u16(*v30.i8, v36);
      v38 = *(result + 112);
      v39 = vextq_s8(v31, v31, 8uLL).u64[0];
      v30.i64[0] = vextq_s8(v30, v30, 8uLL).u64[0];
      v40 = vextq_s8(v29, v29, 8uLL).u64[0];
      v42.val[0] = vqmovn_u16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_u16(vmlal_u16(v33, *v31.i8, *(result + 40)), *v29.i8, *(result + 56)), v38), 0xCuLL), vmlal_u16(vmlal_u16(vmlal_u16(v38, v39, *(result + 40)), *v30.i8, v32), v40, *(result + 56)), 0xCuLL));
      v42.val[1] = vqmovn_u16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_u16(vmlal_u16(v35, *v31.i8, *(result + 64)), *v29.i8, *(result + 80)), v38), 0xCuLL), vmlal_u16(vmlal_u16(vmlal_u16(v38, v39, *(result + 64)), *v30.i8, v34), v40, *(result + 80)), 0xCuLL));
      v42.val[2] = vqmovn_u16(vshrn_high_n_s32(vshrn_n_s32(vaddq_s32(vmlal_u16(vmlal_u16(v37, *v31.i8, *(result + 88)), *v29.i8, *(result + 104)), v38), 0xCuLL), vmlal_u16(vmlal_u16(vmlal_u16(v38, v39, *(result + 88)), *v30.i8, v36), v40, *(result + 104)), 0xCuLL));
      v41 = (a3 + v15);
      vst3_s8(v41, v42);
      v15 += 24;
      a2 += 8 * v5;
    }

    while (v15 <= v12 - 24);
  }

  else
  {
    LODWORD(v15) = 0;
  }

  if (v15 < v12)
  {
    result = v12;
    v16 = a2 + 1;
    v17 = v15 + 2;
    v18 = (a3 + v17);
    do
    {
      v19 = *(v16 - 1);
      v20 = *v16;
      v21 = *(v16 + 1);
      v22 = v6 * v20 + v4 * v19 + v7 * v21 + 2048;
      v23 = v9 * v20 + v8 * v19 + v10 * v21 + 2048;
      v24 = v13 * v20 + v11 * v19 + v14 * v21 + 2048;
      v25 = (v22 >> 12) & ~(v22 >> 31);
      if (v25 >= 255)
      {
        LOBYTE(v25) = -1;
      }

      *(v18 - 2) = v25;
      v26 = (v23 >> 12) & ~(v23 >> 31);
      if (v26 >= 255)
      {
        LOBYTE(v26) = -1;
      }

      *(v18 - 1) = v26;
      v27 = (v24 >> 12) & ~(v24 >> 31);
      if (v27 >= 255)
      {
        LOBYTE(v27) = -1;
      }

      *v18 = v27;
      v18 += 3;
      v16 += v5;
      v28 = v17 + 1;
      v17 += 3;
    }

    while (v28 < result);
  }

  return result;
}

void sub_1002DFB04()
{
  nullsub_1();

  operator delete();
}

void sub_1002DFB3C(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477980);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      sub_1002DFC04(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 = (v6 + *(a1 + 16));
      v5 = (v5 + *(a1 + 32));
    }

    while (v4 < a2[1]);
  }

  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

int32x4_t *sub_1002DFC04(int32x4_t *result, const __int16 *a2, __int16 *a3, int a4)
{
  v4 = result->i32[1];
  v5 = result->i32[0];
  v6 = result->i32[2];
  v7 = result->i32[3];
  v8 = result[1].i32[0];
  v9 = result[1].i32[1];
  v10 = result[1].i32[2];
  v11 = result[1].i32[3];
  v12 = 3 * a4;
  v13 = result[2].i32[0];
  v14 = result[2].i32[1];
  if (a4 >= 8)
  {
    v15 = 0;
    v35 = a3;
    do
    {
      if (v5 == 3)
      {
        *v56.val[0].i8 = vld3q_s16(a2);
      }

      else
      {
        v56 = vld4q_s16(a2);
      }

      v36 = result[2].u64[1];
      v37 = *result[3].i8;
      v38 = result[3].u64[1];
      v39 = *result[4].i8;
      v40 = result[4].u64[1];
      v41 = *result[5].i8;
      v42 = result[5].u64[1];
      v43 = *result[6].i8;
      v44 = result[6].u64[1];
      v45 = result[7];
      v46 = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(*v56.val[1].i8, v37), *v56.val[0].i8, v36), *v56.val[2].i8, v38), v45), 0xCuLL);
      v47 = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(*v56.val[1].i8, v40), *v56.val[0].i8, v39), *v56.val[2].i8, v41), v45), 0xCuLL);
      v48 = vshrq_n_u32(vaddq_s32(vmlal_u16(vmlal_u16(vmull_u16(*v56.val[1].i8, v43), *v56.val[0].i8, v42), *v56.val[2].i8, v44), v45), 0xCuLL);
      v49 = vextq_s8(v56.val[0], v56.val[0], 8uLL).u64[0];
      v50 = vextq_s8(v56.val[1], v56.val[1], 8uLL).u64[0];
      v51 = vextq_s8(v56.val[2], v56.val[2], 8uLL).u64[0];
      v54.val[0] = vqmovn_high_u32(vqmovn_u32(v46), vshrq_n_u32(vmlal_u16(vmlal_u16(vmlal_u16(v45, v49, v36), v50, v37), v51, v38), 0xCuLL));
      v54.val[1] = vqmovn_high_u32(vqmovn_u32(v47), vshrq_n_u32(vmlal_u16(vmlal_u16(vmlal_u16(v45, v49, v39), v50, v40), v51, v41), 0xCuLL));
      v54.val[2] = vqmovn_high_u32(vqmovn_u32(v48), vshrq_n_u32(vmlal_u16(vmlal_u16(vmlal_u16(v45, v49, v42), v50, v43), v51, v44), 0xCuLL));
      vst3q_s16(v35, v54);
      v35 += 24;
      v15 += 24;
      a2 += 8 * v5;
    }

    while (v15 <= v12 - 24);
  }

  else
  {
    LODWORD(v15) = 0;
  }

  v16 = v12 - 12;
  if (v15 <= v12 - 12)
  {
    v17 = 8 * v5;
    v18 = &a3[v15];
    if (v5 == 3)
    {
      do
      {
        v52 = vld3_s16(a2);
        a2 = (a2 + v17);
        v19 = vmlal_u16(vmlal_u16(vmull_u16(v52.val[1], *result[3].i8), v52.val[0], result[2].u64[1]), v52.val[2], result[3].u64[1]);
        v20 = vmlal_u16(vmlal_u16(vmull_u16(v52.val[1], result[4].u64[1]), v52.val[0], *result[4].i8), v52.val[2], *result[5].i8);
        v21 = vmlal_u16(vmlal_u16(vmull_u16(v52.val[1], *result[6].i8), v52.val[0], result[5].u64[1]), v52.val[2], result[6].u64[1]);
        *v52.val[0].i8 = result[7];
        v53.val[0] = vqmovn_u32(vshrq_n_u32(vaddq_s32(v19, *v52.val[0].i8), 0xCuLL));
        v53.val[1] = vqmovn_u32(vshrq_n_u32(vaddq_s32(v20, *v52.val[0].i8), 0xCuLL));
        v53.val[2] = vqmovn_u32(vshrq_n_u32(vaddq_s32(v21, *v52.val[0].i8), 0xCuLL));
        vst3_s16(v18, v53);
        v18 += 12;
        LODWORD(v15) = v15 + 12;
      }

      while (v16 >= v15);
    }

    else
    {
      do
      {
        v55 = vld4_s16(a2);
        a2 = (a2 + v17);
        v22 = vmlal_u16(vmlal_u16(vmull_u16(v55.val[1], *result[3].i8), v55.val[0], result[2].u64[1]), v55.val[2], result[3].u64[1]);
        v23 = vmlal_u16(vmlal_u16(vmull_u16(v55.val[1], result[4].u64[1]), v55.val[0], *result[4].i8), v55.val[2], *result[5].i8);
        v24 = vmlal_u16(vmlal_u16(vmull_u16(v55.val[1], *result[6].i8), v55.val[0], result[5].u64[1]), v55.val[2], result[6].u64[1]);
        *v55.val[0].i8 = result[7];
        v55.val[1] = vqmovn_u32(vshrq_n_u32(vaddq_s32(v22, *v55.val[0].i8), 0xCuLL));
        v55.val[2] = vqmovn_u32(vshrq_n_u32(vaddq_s32(v23, *v55.val[0].i8), 0xCuLL));
        v55.val[3] = vqmovn_u32(vshrq_n_u32(vaddq_s32(v24, *v55.val[0].i8), 0xCuLL));
        vst3_s16(v18, *v55.val[1].i8);
        v18 += 12;
        LODWORD(v15) = v15 + 12;
      }

      while (v16 >= v15);
    }
  }

  if (v15 < v12)
  {
    result = (a2 + 1);
    v25 = &a3[v15 + 1];
    do
    {
      v26 = result[-1].u16[7];
      v27 = result->u16[0];
      v28 = result->u16[1];
      v29 = v6 * v27 + v4 * v26 + v7 * v28 + 2048;
      v30 = v9 * v27 + v8 * v26 + v10 * v28 + 2048;
      v31 = v13 * v27 + v11 * v26 + v14 * v28 + 2048;
      v32 = (v29 >> 12) & ~(v29 >> 31);
      if (v32 >= 0xFFFF)
      {
        LOWORD(v32) = -1;
      }

      *(v25 - 1) = v32;
      v33 = (v30 >> 12) & ~(v30 >> 31);
      if (v33 >= 0xFFFF)
      {
        LOWORD(v33) = -1;
      }

      *v25 = v33;
      v34 = (v31 >> 12) & ~(v31 >> 31);
      if (v34 >= 0xFFFF)
      {
        LOWORD(v34) = -1;
      }

      v25[1] = v34;
      result = (result + 2 * v5);
      LODWORD(v15) = v15 + 3;
      v25 += 3;
    }

    while (v12 > v15);
  }

  return result;
}

void sub_1002DFEF4()
{
  nullsub_1();

  operator delete();
}

void sub_1002DFF2C(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v33, &off_1004779E0);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v9 = v7->i32[0];
      v10 = v7->f32[1];
      v11 = v7->f32[2];
      v12 = v7->f32[3];
      v13 = v7[1].f32[0];
      v14 = v7[1].f32[1];
      v15 = v7[1].f32[2];
      v16 = v7[1].f32[3];
      v17 = v7[2].f32[0];
      v18 = v7[2].f32[1];
      v19 = 3 * v8;
      if (v9 == 3)
      {
        if (v8 < 4)
        {
          goto LABEL_10;
        }

        v20 = 0;
        v21 = v5;
        v22 = v6;
        do
        {
          v34 = vld3q_f32(v22);
          v22 += 12;
          v35.val[0] = vmlaq_f32(vmlaq_f32(vmulq_f32(v34.val[0], v7[3]), v7[4], v34.val[1]), v7[5], v34.val[2]);
          v35.val[1] = vmlaq_f32(vmlaq_f32(vmulq_f32(v34.val[0], v7[6]), v7[7], v34.val[1]), v7[8], v34.val[2]);
          v35.val[2] = vmlaq_f32(vmlaq_f32(vmulq_f32(v34.val[0], v7[9]), v7[10], v34.val[1]), v7[11], v34.val[2]);
          vst3q_f32(v21, v35);
          v21 += 12;
          v20 += 12;
        }

        while (v20 <= v19 - 12);
      }

      else
      {
        if (v8 < 4)
        {
LABEL_10:
          v23 = 0;
          v22 = v6;
          if (v19 > 0)
          {
            goto LABEL_15;
          }

          goto LABEL_3;
        }

        v20 = 0;
        v24 = v5;
        v22 = v6;
        do
        {
          v37 = vld4q_f32(v22);
          v22 += 16;
          v36.val[0] = vmlaq_f32(vmlaq_f32(vmulq_f32(v37.val[0], v7[3]), v7[4], v37.val[1]), v7[5], v37.val[2]);
          v36.val[1] = vmlaq_f32(vmlaq_f32(vmulq_f32(v37.val[0], v7[6]), v7[7], v37.val[1]), v7[8], v37.val[2]);
          v36.val[2] = vmlaq_f32(vmlaq_f32(vmulq_f32(v37.val[0], v7[9]), v7[10], v37.val[1]), v7[11], v37.val[2]);
          vst3q_f32(v24, v36);
          v24 += 12;
          v20 += 12;
        }

        while (v20 <= v19 - 12);
      }

      v23 = v20;
      if (v20 < v19)
      {
LABEL_15:
        v25 = (v22 + 2);
        v26 = 4 * v9;
        v27 = &v5[v23 + 1];
        do
        {
          v28 = *(v25 - 2);
          v29 = *(v25 - 1);
          v30 = ((v11 * v29) + (v28 * v10)) + (*v25 * v12);
          v31 = ((v14 * v29) + (v28 * v13)) + (*v25 * v15);
          v32 = ((v17 * v29) + (v28 * v16)) + (*v25 * v18);
          *(v27 - 1) = v30;
          *v27 = v31;
          v27[1] = v32;
          v23 += 3;
          v25 = (v25 + v26);
          v27 += 3;
        }

        while (v23 < v19);
      }

LABEL_3:
      ++v4;
      v6 = (v6 + *(a1 + 16));
      v5 = (v5 + *(a1 + 32));
    }

    while (v4 < a2[1]);
  }

  if (v33[2])
  {
    sub_1002ACC1C(v33);
  }
}

void sub_1002E0140()
{
  nullsub_1();

  operator delete();
}

void sub_1002E0178(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477A40);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    do
    {
      sub_1002E0240(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

uint64_t sub_1002E0240(uint64_t result, uint64_t a2, char *a3, int a4)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *(result + 12);
  v7 = *(result + 16);
  v8 = *(result + 20);
  v9 = *(result + 24);
  v10 = *(result + 28);
  v11 = *(result + 32);
  v12 = *(result + 36);
  v13 = 3 * a4;
  v14 = *(result + 40);
  if (a4 >= 8)
  {
    v15 = 0;
    v16 = 8 * v4;
    v17 = v13 - 24;
    do
    {
      while (1)
      {
        v19 = (a2 + v15);
        v64 = vld3_s8(v19);
        v20 = vmovl_u8(v64.val[0]);
        v21 = vmovl_u8(v64.val[1]);
        *v64.val[0].i8 = vmovl_u8(v64.val[2]);
        v64.val[1] = *(result + 48);
        v64.val[2] = *(result + 56);
        v22 = *(result + 64);
        v23 = *(result + 72);
        v24 = *(result + 80);
        v25 = *(result + 88);
        v26 = *(result + 96);
        v27 = *(result + 104);
        v28 = *(result + 112);
        v29 = *(result + 128);
        v30 = vshrq_n_s32(vaddq_s32(vmlal_s16(vmlal_s16(vmull_s16(*v21.i8, v64.val[2]), *v20.i8, v64.val[1]), v64.val[0], v22), v29), 0xCuLL);
        v31 = vshrq_n_s32(vaddq_s32(vmlal_s16(vmlal_s16(vmull_s16(*v21.i8, v24), *v20.i8, v23), v64.val[0], v25), v29), 0xCuLL);
        v32 = vshrq_n_s32(vaddq_s32(vmlal_s16(vmlal_s16(vmull_s16(*v21.i8, v27), *v20.i8, v26), v64.val[0], v28), v29), 0xCuLL);
        v20.i64[0] = vextq_s8(v20, v20, 8uLL).u64[0];
        v21.i64[0] = vextq_s8(v21, v21, 8uLL).u64[0];
        v64.val[0] = vextq_s8(*v64.val[0].i8, *v64.val[0].i8, 8uLL).u64[0];
        *v64.val[1].i8 = vshrq_n_s32(vmlal_s16(vmlal_s16(vmlal_s16(v29, *v20.i8, v64.val[1]), *v21.i8, v64.val[2]), v64.val[0], v22), 0xCuLL);
        v33 = vshrq_n_s32(vmlal_s16(vmlal_s16(vmlal_s16(v29, *v20.i8, v23), *v21.i8, v24), v64.val[0], v25), 0xCuLL);
        v34 = vshrq_n_s32(vmlal_s16(vmlal_s16(vmlal_s16(v29, *v20.i8, v26), *v21.i8, v27), v64.val[0], v28), 0xCuLL);
        v35 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v30), *v64.val[1].i8));
        v36 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v31), v33));
        v37 = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(v32), v34));
        if (v4 == 3)
        {
          break;
        }

        v18 = *(result + 120);
        vst4_s8(a3, *v35.i8);
        v15 += 24;
        a3 += v16;
        if (v15 > v17)
        {
          goto LABEL_7;
        }
      }

      vst3_s8(a3, *v35.i8);
      v15 += 24;
      a3 += v16;
    }

    while (v15 <= v17);
  }

  else
  {
    LODWORD(v15) = 0;
  }

LABEL_7:
  if (v15 < v13)
  {
    result = v13;
    if (v4 == 4)
    {
      v38 = a3 + 3;
      v39 = v15 + 2;
      v40 = (a2 + v39);
      do
      {
        v41 = *(v40 - 2);
        v42 = *(v40 - 1);
        v43 = *v40;
        v40 += 3;
        v44 = v6 * v42 + v5 * v41 + v7 * v43 + 2048;
        v45 = v9 * v42 + v8 * v41 + v10 * v43 + 2048;
        v46 = v12 * v42 + v11 * v41 + v14 * v43 + 2048;
        v47 = (v44 >> 12) & ~(v44 >> 31);
        if (v47 >= 255)
        {
          LOBYTE(v47) = -1;
        }

        *(v38 - 3) = v47;
        v48 = (v45 >> 12) & ~(v45 >> 31);
        if (v48 >= 255)
        {
          LOBYTE(v48) = -1;
        }

        *(v38 - 2) = v48;
        v49 = (v46 >> 12) & ~(v46 >> 31);
        if (v49 >= 255)
        {
          LOBYTE(v49) = -1;
        }

        *(v38 - 1) = v49;
        *v38 = -1;
        v38 += v4;
        v50 = v39 + 1;
        v39 += 3;
      }

      while (v50 < result);
    }

    else
    {
      v51 = a3 + 1;
      v52 = v15 + 2;
      v53 = (a2 + v52);
      do
      {
        v54 = *(v53 - 2);
        v55 = *(v53 - 1);
        v56 = *v53;
        v53 += 3;
        v57 = v6 * v55 + v5 * v54 + v7 * v56 + 2048;
        v58 = v9 * v55 + v8 * v54 + v10 * v56 + 2048;
        v59 = v12 * v55 + v11 * v54 + v14 * v56 + 2048;
        v60 = (v57 >> 12) & ~(v57 >> 31);
        if (v60 >= 255)
        {
          LOBYTE(v60) = -1;
        }

        *(v51 - 1) = v60;
        v61 = (v58 >> 12) & ~(v58 >> 31);
        if (v61 >= 255)
        {
          LOBYTE(v61) = -1;
        }

        *v51 = v61;
        v62 = (v59 >> 12) & ~(v59 >> 31);
        if (v62 >= 255)
        {
          LOBYTE(v62) = -1;
        }

        v51[1] = v62;
        v51 += v4;
        v63 = v52 + 1;
        v52 += 3;
      }

      while (v63 < result);
    }
  }

  return result;
}

void sub_1002E04F4()
{
  nullsub_1();

  operator delete();
}

void sub_1002E052C(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477AA0);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = (*(a1 + 24) + *(a1 + 32) * v4);
    v6 = (*(a1 + 8) + *(a1 + 16) * v4);
    do
    {
      sub_1002E05E0(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 = (v6 + *(a1 + 16));
      v5 = (v5 + *(a1 + 32));
    }

    while (v4 < a2[1]);
  }

  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

int32x4_t *sub_1002E05E0(int32x4_t *result, const __int16 *a2, __int16 *a3, int a4)
{
  v4 = result->i32[0];
  v5 = result->i32[2];
  v6 = result->i32[3];
  v7 = result[1].i32[0];
  v8 = result[1].i32[1];
  v9 = result[1].i32[2];
  v10 = result[1].i32[3];
  v11 = result[2].i32[0];
  v12 = result[2].i32[1];
  v13 = 3 * a4;
  v14 = result[2].i32[2];
  if (a4 >= 8)
  {
    v15 = 0;
    v16 = v13 - 24;
    v17 = 16 * v4;
    v18 = a2;
    do
    {
      while (1)
      {
        v70 = vld3q_s16(v18);
        v20 = vmovl_u16(*v70.val[0].i8);
        v21 = vmovl_u16(*v70.val[1].i8);
        v22 = vmovl_u16(*v70.val[2].i8);
        v23 = result[3];
        v24 = result[4];
        v25 = result[5];
        v26 = result[6];
        v27 = vmlaq_s32(vmlaq_s32(vmulq_s32(v23, v20), v24, v21), v25, v22);
        v28 = result[7];
        v29 = result[8];
        v30 = vmlaq_s32(vmlaq_s32(vmulq_s32(v26, v20), v28, v21), v29, v22);
        v31 = result[9];
        v32 = result[10];
        v33 = vmlaq_s32(vmulq_s32(v31, v20), v32, v21);
        v34 = result[11];
        v35 = result[12];
        v36 = vmlaq_s32(v33, v34, v22);
        v37 = vshrq_n_s32(vaddq_s32(v27, v35), 0xCuLL);
        v38 = vshrq_n_s32(vaddq_s32(v30, v35), 0xCuLL);
        v39 = vshrq_n_s32(vaddq_s32(v36, v35), 0xCuLL);
        v40 = vmovl_high_u16(v70.val[0]);
        v41 = vmovl_high_u16(v70.val[1]);
        v70.val[0] = vmovl_high_u16(v70.val[2]);
        v70.val[1] = vmlaq_s32(vmlaq_s32(vmulq_s32(v23, v40), v24, v41), v25, v70.val[0]);
        v70.val[2] = vmlaq_s32(vmlaq_s32(vmulq_s32(v26, v40), v28, v41), v29, v70.val[0]);
        v42 = vmlaq_s32(vmlaq_s32(vmulq_s32(v31, v40), v32, v41), v34, v70.val[0]);
        v43 = vqmovun_high_s32(vqmovun_s32(v37), vshrq_n_s32(vaddq_s32(v70.val[1], v35), 0xCuLL));
        v44 = vqmovun_high_s32(vqmovun_s32(v38), vshrq_n_s32(vaddq_s32(v70.val[2], v35), 0xCuLL));
        v45 = vqmovun_high_s32(vqmovun_s32(v39), vshrq_n_s32(vaddq_s32(v42, v35), 0xCuLL));
        if (v4 == 3)
        {
          break;
        }

        v19 = result[14];
        vst4q_s16(a3, *v43.i8);
        v15 += 24;
        v18 += 24;
        a3 = (a3 + v17);
        if (v15 > v16)
        {
          goto LABEL_7;
        }
      }

      vst3q_s16(a3, *v43.i8);
      v15 += 24;
      v18 += 24;
      a3 = (a3 + v17);
    }

    while (v15 <= v16);
  }

  else
  {
    LODWORD(v15) = 0;
  }

LABEL_7:
  v46 = v13 - 12;
  if (v15 <= v13 - 12)
  {
    v47 = 8 * v4;
    v48 = &a2[v15];
    if (v4 == 3)
    {
      do
      {
        v68 = vld3_s16(v48);
        v48 += 12;
        v49 = vmovl_u16(v68.val[0]);
        v50 = vmovl_u16(v68.val[1]);
        *v68.val[0].i8 = vmovl_u16(v68.val[2]);
        *v68.val[1].i8 = vmlaq_s32(vmlaq_s32(vmulq_s32(result[3], v49), result[4], v50), result[5], *v68.val[0].i8);
        *v68.val[2].i8 = vmlaq_s32(vmlaq_s32(vmulq_s32(result[6], v49), result[7], v50), result[8], *v68.val[0].i8);
        v51 = result[12];
        v52 = vmlaq_s32(vmlaq_s32(vmulq_s32(result[9], v49), result[10], v50), result[11], *v68.val[0].i8);
        *v68.val[0].i8 = vshrq_n_s32(vaddq_s32(*v68.val[1].i8, v51), 0xCuLL);
        *v68.val[1].i8 = vshrq_n_s32(vaddq_s32(*v68.val[2].i8, v51), 0xCuLL);
        *v68.val[2].i8 = vshrq_n_s32(vaddq_s32(v52, v51), 0xCuLL);
        *v52.i8 = vqmovun_s32(*v68.val[0].i8);
        *v50.i8 = vqmovun_s32(*v68.val[1].i8);
        *v51.i8 = vqmovun_s32(*v68.val[2].i8);
        vst3_s16(a3, *(&v50 - 8));
        a3 = (a3 + v47);
        LODWORD(v15) = v15 + 12;
      }

      while (v46 >= v15);
    }

    else
    {
      do
      {
        v69 = vld3_s16(v48);
        v48 += 12;
        v53 = vmovl_u16(v69.val[0]);
        v54 = vmovl_u16(v69.val[1]);
        *v69.val[0].i8 = vmovl_u16(v69.val[2]);
        *v69.val[1].i8 = vmlaq_s32(vmlaq_s32(vmulq_s32(result[3], v53), result[4], v54), result[5], *v69.val[0].i8);
        *v69.val[2].i8 = vmlaq_s32(vmlaq_s32(vmulq_s32(result[6], v53), result[7], v54), result[8], *v69.val[0].i8);
        v55 = result[12];
        v56 = vmlaq_s32(vmlaq_s32(vmulq_s32(result[9], v53), result[10], v54), result[11], *v69.val[0].i8);
        *v69.val[0].i8 = vshrq_n_s32(vaddq_s32(*v69.val[1].i8, v55), 0xCuLL);
        *v69.val[1].i8 = vshrq_n_s32(vaddq_s32(*v69.val[2].i8, v55), 0xCuLL);
        *v69.val[2].i8 = vshrq_n_s32(vaddq_s32(v56, v55), 0xCuLL);
        *v56.i8 = vqmovun_s32(*v69.val[0].i8);
        *v54.i8 = vqmovun_s32(*v69.val[1].i8);
        *v55.i8 = vqmovun_s32(*v69.val[2].i8);
        v57 = result[13].i64[0];
        vst4_s16(a3, *(&v54 - 8));
        a3 = (a3 + v47);
        LODWORD(v15) = v15 + 12;
      }

      while (v46 >= v15);
    }
  }

  if (v15 < v13)
  {
    result = (a3 + 2);
    v58 = &a2[v15 + 1];
    do
    {
      v59 = *(v58 - 1);
      v60 = *v58;
      v61 = *(v58 + 1);
      v62 = v6 * v60 + v5 * v59 + v7 * v61 + 2048;
      v63 = v9 * v60 + v8 * v59 + v10 * v61 + 2048;
      v64 = v12 * v60 + v11 * v59 + v14 * v61 + 2048;
      v65 = (v62 >> 12) & ~(v62 >> 31);
      if (v65 >= 0xFFFF)
      {
        LOWORD(v65) = -1;
      }

      result[-1].i16[6] = v65;
      v66 = (v63 >> 12) & ~(v63 >> 31);
      if (v66 >= 0xFFFF)
      {
        LOWORD(v66) = -1;
      }

      result[-1].i16[7] = v66;
      v67 = (v64 >> 12) & ~(v64 >> 31);
      if (v67 >= 0xFFFF)
      {
        LOWORD(v67) = -1;
      }

      result->i16[0] = v67;
      if (v4 == 4)
      {
        result->i16[1] = -1;
      }

      v58 += 3;
      result = (result + 2 * v4);
      LODWORD(v15) = v15 + 3;
    }

    while (v13 > v15);
  }

  return result;
}

void sub_1002E0928()
{
  nullsub_1();

  operator delete();
}

void sub_1002E0960(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v53, &off_100477B00);
  v4 = a2[1];
  v5 = *a2;
  if (v5 < v4)
  {
    v6 = *(a1 + 40);
    if (v6 >= 1)
    {
      v8 = *(a1 + 8);
      v7 = *(a1 + 16);
      v9 = v7 * v5;
      v10 = *(a1 + 32);
      v11 = *(a1 + 48);
      v12 = 3 * v6;
      v13 = *v11;
      v14 = v10 * v5 + *(a1 + 24) + 8;
      if (v13 == 4)
      {
        v15 = 4 * v13;
        v16 = v9 + v8 + 4;
        do
        {
          v17 = 0;
          v18 = v11[2];
          v19 = v11[3];
          v20 = v11[4];
          v21 = v11[5];
          v22 = v11[6];
          v23 = v11[7];
          v24 = v11[8];
          v25 = v11[9];
          v26 = v16;
          v27 = v14;
          v28 = v11[10];
          do
          {
            v29 = *(v26 - 1);
            v30 = v26[1];
            v31 = ((v19 * *v26) + (v29 * v18)) + (v30 * v20);
            v32 = ((v22 * *v26) + (v29 * v21)) + (v30 * v23);
            v33 = ((v25 * *v26) + (v29 * v24)) + (v30 * v28);
            *(v27 - 8) = v31;
            *(v27 - 4) = v32;
            *v27 = v33;
            *(v27 + 4) = 1065353216;
            v17 += 3;
            v27 += v15;
            v26 += 3;
          }

          while (v17 < v12);
          LODWORD(v5) = v5 + 1;
          v14 += v10;
          v16 += v7;
        }

        while (v5 != v4);
      }

      else
      {
        v34 = 4 * v13;
        v35 = v9 + v8 + 4;
        do
        {
          v36 = 0;
          v37 = v11[2];
          v38 = v11[3];
          v39 = v11[4];
          v40 = v11[5];
          v41 = v11[6];
          v42 = v11[7];
          v43 = v11[8];
          v44 = v11[9];
          v45 = v35;
          v46 = v14;
          v47 = v11[10];
          do
          {
            v48 = *(v45 - 1);
            v49 = v45[1];
            v50 = ((v38 * *v45) + (v48 * v37)) + (v49 * v39);
            v51 = ((v41 * *v45) + (v48 * v40)) + (v49 * v42);
            v52 = ((v44 * *v45) + (v48 * v43)) + (v49 * v47);
            *(v46 - 2) = v50;
            *(v46 - 1) = v51;
            *v46 = v52;
            v36 += 3;
            v46 = (v46 + v34);
            v45 += 3;
          }

          while (v36 < v12);
          LODWORD(v5) = v5 + 1;
          v14 += v10;
          v35 += v7;
        }

        while (v5 != v4);
      }
    }
  }

  if (v53[2])
  {
    sub_1002ACC1C(v53);
  }
}

void sub_1002E0B18()
{
  nullsub_1();

  operator delete();
}

void sub_1002E0B50(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477B60);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = *(a1 + 24) + *(a1 + 32) * v4;
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    do
    {
      sub_1002E0C18(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

uint64_t sub_1002E0C18(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *result;
  v4 = *(result + 4);
  v6 = *(result + 8);
  if (v6 == 180)
  {
    v7 = &dword_1004B0778;
  }

  else
  {
    v7 = &dword_1004B0B78;
  }

  if ((byte_1004B0F78 & 1) == 0)
  {
    dword_1004B0B78 = 0;
    dword_1004B0778 = 0;
    dword_1004B0378[0] = 0;
    v8 = xmmword_1003E6860;
    v9 = &dword_100000004;
    v10 = vdupq_n_s64(0x412FE00000000000uLL);
    v11.i64[0] = 0x600000006;
    v11.i64[1] = 0x600000006;
    v12 = vdupq_n_s64(0x4126800000000000uLL);
    v13.i64[0] = 0x400000004;
    v13.i64[1] = 0x400000004;
    v14 = vdupq_n_s64(0x4130000000000000uLL);
    do
    {
      v15.i64[0] = v8.u32[2];
      v15.i64[1] = v8.u32[3];
      v16 = vcvtq_f64_u64(v15);
      v15.i64[0] = v8.u32[0];
      v15.i64[1] = v8.u32[1];
      *(dword_1004B0378 + v9) = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vdivq_f64(v10, vcvtq_f64_u64(v15)))), vcvtq_s64_f64(vrndxq_f64(vdivq_f64(v10, v16))));
      v17 = vmulq_s32(v8, v11);
      v15.i64[0] = v17.u32[2];
      v15.i64[1] = v17.u32[3];
      v18 = vcvtq_f64_u64(v15);
      v15.i64[0] = v17.u32[0];
      v15.i64[1] = v17.u32[1];
      v19 = vcvtq_f64_u64(v15);
      *(&dword_1004B0778 + v9) = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vdivq_f64(v12, v19))), vcvtq_s64_f64(vrndxq_f64(vdivq_f64(v12, v18))));
      *(&dword_1004B0B78 + v9) = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vdivq_f64(v14, v19))), vcvtq_s64_f64(vrndxq_f64(vdivq_f64(v14, v18))));
      v8 = vaddq_s32(v8, v13);
      v9 += 16;
    }

    while (v9 != 1012);
    result = rint(690.761528);
    dword_1004B076C = rint(4128.37945);
    unk_1004B0770 = rint(4112.12598);
    dword_1004B0B6C = rint(485.6917);
    unk_1004B0B70 = rint(483.779528);
    dword_1004B0F6C = result;
    unk_1004B0F70 = rint(688.041995);
    dword_1004B0774 = rint(4096.0);
    dword_1004B0B74 = rint(481.882353);
    dword_1004B0F74 = rint(685.343791);
    byte_1004B0F78 = 1;
  }

  if (a4 >= 1)
  {
    v20 = 0;
    v21 = (a3 + 2);
    result = 2048;
    v22 = (3 * a4);
    do
    {
      v32 = *(a2 + v4);
      v33 = *(a2 + 1);
      v34 = *(a2 + (v4 ^ 2));
      v35 = v33 - v32;
      v36 = byte_1003EAE70[(v33 - v32 + 256)] + v32;
      if (v34 - v36 < -256)
      {
        v37 = 0;
      }

      else
      {
        v37 = byte_1003EAE70[v34 - v36 + 256];
      }

      v38 = v32 - byte_1003EAE70[(v32 | 0x100) - v33];
      if (v38 - v34 >= -256)
      {
        v23 = byte_1003EAE70[v38 - v34 + 256];
      }

      else
      {
        v23 = 0;
      }

      v24 = v37 + v36;
      v25 = (v24 - v38 + v23) & ~((v24 - v38 + v23) >> 31);
      if (v25 >= 255)
      {
        v25 = 255;
      }

      v26 = (v25 * dword_1004B0378[v24] + 2048) >> 12;
      v27 = v32 - v34 + 2 * v25;
      if (v24 == v33)
      {
        v28 = v27;
      }

      else
      {
        v28 = v34 - v33 + 4 * v25;
      }

      if (v24 == v34)
      {
        v29 = v35;
      }

      else
      {
        v29 = v28;
      }

      v30 = v29 * v7[v25] + 2048;
      v31 = ((v6 & (v30 >> 31)) + (v30 >> 12)) & ~(((v6 & (v30 >> 31)) + (v30 >> 12)) >> 31);
      if (v31 >= 255)
      {
        LOBYTE(v31) = -1;
      }

      *(v21 - 2) = v31;
      *(v21 - 1) = v26;
      *v21 = v24;
      v21 += 3;
      v20 += 3;
      a2 += v5;
    }

    while (v20 < v22);
  }

  return result;
}

void sub_1002E0F1C()
{
  nullsub_1();

  operator delete();
}

void sub_1002E0F54(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v32, &off_100477BC0);
  v4 = a2[1];
  v5 = *a2;
  if (v5 < v4)
  {
    v6 = *(a1 + 40);
    if (v6 >= 1)
    {
      v7 = *(a1 + 16);
      v8 = *(a1 + 8) + v7 * v5;
      v9 = *(a1 + 32);
      v10 = *(a1 + 48);
      v11 = 3 * v6;
      v12 = *(v10 + 1);
      v14 = 4 * *v10;
      v15 = v9 * v5 + *(a1 + 24) + 8;
      do
      {
        v16 = 0;
        v17 = v10[2] * 0.0027778;
        v18 = v15;
        v19 = v8;
        do
        {
          v20 = *(v19 + 4 * v12);
          v21 = *(v19 + 4);
          v13 = v12 ^ 2;
          v22 = *(v19 + 4 * (v12 ^ 2));
          if (v22 >= v21)
          {
            v23 = *(v19 + 4 * v13);
          }

          else
          {
            v23 = *(v19 + 4);
          }

          if (v22 <= v21)
          {
            v24 = *(v19 + 4 * v13);
          }

          else
          {
            v24 = *(v19 + 4);
          }

          if (v23 < v20)
          {
            v23 = *(v19 + 4 * v12);
          }

          if (v24 > v20)
          {
            v24 = *(v19 + 4 * v12);
          }

          v25 = v23 - v24;
          v26 = v25 / (fabsf(v23) + 0.00000011921);
          v27 = 60.0 / (v25 + 0.00000011921);
          v28 = v23 == v21;
          v29 = (v21 - v20) * v27;
          v30 = ((v20 - v22) * v27) + 120.0;
          v31 = ((v22 - v21) * v27) + 240.0;
          if (!v28)
          {
            v30 = v31;
          }

          if (v23 == v22)
          {
            v30 = v29;
          }

          if (v30 < 0.0)
          {
            v30 = v30 + 360.0;
          }

          *(v18 - 2) = v17 * v30;
          *(v18 - 1) = v26;
          *v18 = v23;
          v18 += 3;
          v16 += 3;
          v19 += v14;
        }

        while (v16 < v11);
        LODWORD(v5) = v5 + 1;
        v8 += v7;
        v15 += v9;
      }

      while (v5 != v4);
    }
  }

  if (v32[2])
  {
    sub_1002ACC1C(v32);
  }
}

void sub_1002E10D8()
{
  nullsub_1();

  operator delete();
}

void sub_1002E1110(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v8, &off_100477C20);
  v5 = *a2;
  if (*a2 < a2[1])
  {
    v6 = *(a1 + 24) + *(a1 + 32) * v5;
    v7 = *(a1 + 8) + *(a1 + 16) * v5;
    do
    {
      sub_1002E11D8(*(a1 + 48), v7, v6, *(a1 + 40), v4);
      ++v5;
      v7 += *(a1 + 16);
      v6 += *(a1 + 32);
    }

    while (v5 < a2[1]);
  }

  if (v8[2])
  {
    sub_1002ACC1C(v8);
  }
}

float32x4_t *sub_1002E11D8(float32x4_t *result, uint64_t a2, uint64_t a3, int a4, float32x4_t a5)
{
  if (a4 >= 1)
  {
    v5 = 0;
    v6 = result->i32[0];
    v7 = &v139;
    while (1)
    {
      if (a4 - v5 >= 256)
      {
        v8 = 256;
      }

      else
      {
        v8 = a4 - v5;
      }

      v9 = (3 * v8);
      v10 = 0;
      v11 = (v9 - 24);
      if (v9 - 24 >= 0)
      {
        a5 = result[2];
        v12 = v138;
        do
        {
          if (v6 == 3)
          {
            *v143.val[0].i8 = vld3_s8(a2);
          }

          else
          {
            v143 = vld4_s8(a2);
          }

          v13 = vmovl_u8(v143.val[0]);
          v14 = vmovl_u8(v143.val[1]);
          v15 = vmovl_u8(v143.val[2]);
          v140.val[0] = vmulq_f32(a5, vcvtq_f32_u32(vmovl_u16(*v13.i8)));
          v140.val[1] = vmulq_f32(a5, vcvtq_f32_u32(vmovl_u16(*v14.i8)));
          v140.val[2] = vmulq_f32(a5, vcvtq_f32_u32(vmovl_u16(*v15.i8)));
          v16 = v12;
          vst3q_f32(v16, v140);
          v16 += 12;
          v140.val[0] = vmulq_f32(a5, vcvtq_f32_u32(vmovl_high_u16(v13)));
          v140.val[1] = vmulq_f32(a5, vcvtq_f32_u32(vmovl_high_u16(v14)));
          v140.val[2] = vmulq_f32(a5, vcvtq_f32_u32(vmovl_high_u16(v15)));
          vst3q_f32(v16, v140);
          v10 += 24;
          a2 += 8 * v6;
          v12 += 24;
        }

        while (v10 <= v11);
        v10 = v10;
      }

      if (v10 < v9)
      {
        v17 = &v7[v10];
        do
        {
          a5.i8[0] = *a2;
          *&v18 = a5.u32[0] * 0.0039216;
          *(v17 - 1) = *&v18;
          LOBYTE(v18) = *(a2 + 1);
          *&v19 = v18 * 0.0039216;
          *v17 = *&v19;
          LOBYTE(v19) = *(a2 + 2);
          a5.f32[0] = v19 * 0.0039216;
          v17[1] = a5.f32[0];
          v10 += 3;
          a2 += v6;
          v17 += 3;
        }

        while (v10 < v9);
      }

      if (a4 - v5 >= 1)
      {
        v20 = 0;
        v21 = result->i32[2];
        a5.i32[0] = result->i32[3];
        v23 = 4 * result->i32[1];
        v24 = v138;
        v25 = v7;
        do
        {
          v26 = v24[v21];
          v27 = v24[1];
          v22 = v21 ^ 2;
          v28 = v24[v21 ^ 2];
          if (v28 >= v27)
          {
            v29 = v24[v22];
          }

          else
          {
            v29 = v24[1];
          }

          if (v28 <= v27)
          {
            v30 = v24[v22];
          }

          else
          {
            v30 = v24[1];
          }

          if (v29 >= v26)
          {
            v31 = v29;
          }

          else
          {
            v31 = v24[v21];
          }

          if (v30 <= v26)
          {
            v32 = v30;
          }

          else
          {
            v32 = v24[v21];
          }

          v33 = v31 - v32;
          v34 = (v31 + v32) * 0.5;
          v35 = 0.0;
          v36 = 0.0;
          if ((v31 - v32) > 0.00000011921)
          {
            v37 = (2.0 - v31) - v32;
            if (v34 < 0.5)
            {
              v37 = v31 + v32;
            }

            v36 = v33 / v37;
            v38 = 60.0 / v33;
            v39 = ((v28 - v27) * (60.0 / v33)) + 240.0;
            if (v31 == v27)
            {
              v39 = ((v26 - v28) * v38) + 120.0;
            }

            v40 = (v27 - v26) * v38;
            if (v31 == v28)
            {
              v35 = v40;
            }

            else
            {
              v35 = v39;
            }

            if (v35 < 0.0)
            {
              v35 = v35 + 360.0;
            }
          }

          *(v25 - 1) = v35 * a5.f32[0];
          *v25 = v34;
          v25[1] = v36;
          v20 += 3;
          v24 = (v24 + v23);
          v25 += 3;
        }

        while (v20 < v9);
      }

      if ((v11 & 0x80000000) == 0)
      {
        break;
      }

      v56 = 0;
      if (v9 > 0)
      {
LABEL_61:
        v57 = &v7[v56];
        do
        {
          v58 = *v57;
          v59 = rintf(*(v57 - 1));
          v60 = v59 & ~(v59 >> 31);
          if (v60 >= 255)
          {
            LOBYTE(v60) = -1;
          }

          v61 = a3 + v56;
          *(a3 + v56) = v60;
          v62 = rintf(v58 * 255.0);
          v63 = v62 & ~(v62 >> 31);
          if (v63 >= 255)
          {
            LOBYTE(v63) = -1;
          }

          *(v61 + 1) = v63;
          a5.f32[0] = rintf(v57[1] * 255.0);
          v64 = a5.f32[0] & ~(a5.f32[0] >> 31);
          if (v64 >= 255)
          {
            LOBYTE(v64) = -1;
          }

          *(v61 + 2) = v64;
          v56 += 3;
          v57 += 3;
        }

        while (v9 > v56);
      }

LABEL_3:
      v5 += 256;
      a3 += 768;
      if (v5 >= a4)
      {
        return result;
      }
    }

    v41 = 0;
    v42 = v138;
    while (1)
    {
      v43 = v42;
      v142 = vld3q_f32(v43);
      v43 += 12;
      v141 = vld3q_f32(v43);
      if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
      {
        v44 = xmmword_1004B0050;
        if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
        {
          goto LABEL_46;
        }
      }

      else
      {
        v132 = a4;
        v120 = a3;
        v126 = a2;
        v114 = result;
        v108 = v5;
        v102 = v7;
        v96 = v141;
        v90 = v142;
        sub_1003C8E70();
        v142 = v90;
        v141 = v96;
        v7 = v102;
        v5 = v108;
        result = v114;
        a3 = v120;
        a2 = v126;
        a4 = v132;
        v44 = xmmword_1004B0050;
        if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
        {
LABEL_46:
          v45 = xmmword_1004B0050;
          v46 = result[1];
          if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
          {
            goto LABEL_47;
          }

          goto LABEL_54;
        }
      }

      v133 = a4;
      v121 = a3;
      v127 = a2;
      v115 = result;
      v109 = v5;
      v103 = v7;
      v97 = v141;
      v91 = v142;
      v85 = v44;
      sub_1003C8E70();
      v44 = v85;
      v142 = v91;
      v141 = v97;
      v7 = v103;
      v5 = v109;
      result = v115;
      a3 = v121;
      a2 = v127;
      a4 = v133;
      v45 = xmmword_1004B0050;
      v46 = v115[1];
      if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
      {
LABEL_47:
        v47 = xmmword_1004B0050;
        v48 = result[1];
        if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
        {
          goto LABEL_48;
        }

        goto LABEL_55;
      }

LABEL_54:
      v134 = a4;
      v122 = a3;
      v128 = a2;
      v116 = result;
      v110 = v5;
      v104 = v7;
      v98 = v141;
      v92 = v142;
      v81 = v46;
      v86 = v44;
      v77 = v45;
      sub_1003C8E70();
      v45 = v77;
      v46 = v81;
      v44 = v86;
      v142 = v92;
      v141 = v98;
      v7 = v104;
      v5 = v110;
      result = v116;
      a3 = v122;
      a2 = v128;
      a4 = v134;
      v47 = xmmword_1004B0050;
      v48 = v116[1];
      if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
      {
LABEL_48:
        v49 = xmmword_1004B0050;
        v50 = result[1];
        if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
        {
          goto LABEL_49;
        }

        goto LABEL_56;
      }

LABEL_55:
      v135 = a4;
      v123 = a3;
      v129 = a2;
      v117 = result;
      v111 = v5;
      v105 = v7;
      v99 = v141;
      v93 = v142;
      v82 = v46;
      v87 = v44;
      v74 = v48;
      v78 = v45;
      v71 = v47;
      sub_1003C8E70();
      v47 = v71;
      v48 = v74;
      v45 = v78;
      v46 = v82;
      v44 = v87;
      v142 = v93;
      v141 = v99;
      v7 = v105;
      v5 = v111;
      result = v117;
      a3 = v123;
      a2 = v129;
      a4 = v135;
      v49 = xmmword_1004B0050;
      v50 = v117[1];
      if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
      {
LABEL_49:
        v51 = xmmword_1004B0050;
        v52 = result[1];
        if ((atomic_load_explicit(byte_1004B0060, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_50;
      }

LABEL_56:
      v136 = a4;
      v124 = a3;
      v130 = a2;
      v118 = result;
      v112 = v5;
      v106 = v7;
      v100 = v141;
      v94 = v142;
      v83 = v46;
      v88 = v44;
      v75 = v48;
      v79 = v45;
      v69 = v50;
      v72 = v47;
      v67 = v49;
      sub_1003C8E70();
      v49 = v67;
      v50 = v69;
      v47 = v72;
      v48 = v75;
      v45 = v79;
      v46 = v83;
      v44 = v88;
      v142 = v94;
      v141 = v100;
      v7 = v106;
      v5 = v112;
      result = v118;
      a3 = v124;
      a2 = v130;
      a4 = v136;
      v51 = xmmword_1004B0050;
      v52 = v118[1];
      if ((atomic_load_explicit(byte_1004B0060, memory_order_acquire) & 1) == 0)
      {
LABEL_57:
        v137 = a4;
        v125 = a3;
        v131 = a2;
        v119 = result;
        v113 = v5;
        v107 = v7;
        v101 = v141;
        v95 = v142;
        v84 = v46;
        v89 = v44;
        v76 = v48;
        v80 = v45;
        v70 = v50;
        v73 = v47;
        v66 = v52;
        v68 = v49;
        v65 = v51;
        sub_1003C8E70();
        v51 = v65;
        v52 = v66;
        v49 = v68;
        v50 = v70;
        v47 = v73;
        v48 = v76;
        v45 = v80;
        v46 = v84;
        v44 = v89;
        v142 = v95;
        v141 = v101;
        v7 = v107;
        v5 = v113;
        result = v119;
        a3 = v125;
        a2 = v131;
        a4 = v137;
      }

LABEL_50:
      *a5.f32 = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(v142.val[0], v44))), vcvtq_u32_f32(vaddq_f32(v141.val[0], v45))));
      v53 = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vmulq_f32(v142.val[1], v46), v47))), vcvtq_u32_f32(vaddq_f32(vmulq_f32(v141.val[1], v48), v49))));
      v54 = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vmulq_f32(v142.val[2], v50), v51))), vcvtq_u32_f32(vaddq_f32(vmulq_f32(v141.val[2], v52), xmmword_1004B0050))));
      v55 = (a3 + v41);
      vst3_s8(v55, *a5.f32);
      v41 += 24;
      v42 += 24;
      if (v11 < v41)
      {
        v56 = v41;
        if (v41 < v9)
        {
          goto LABEL_61;
        }

        goto LABEL_3;
      }
    }
  }

  return result;
}

void sub_1002E1980()
{
  nullsub_1();

  operator delete();
}

void sub_1002E19B8(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v36, &off_100477C80);
  v4 = a2[1];
  v5 = *a2;
  if (v5 < v4)
  {
    v6 = *(a1 + 40);
    if (v6 >= 1)
    {
      v7 = *(a1 + 16);
      v8 = *(a1 + 8) + v7 * v5;
      v9 = *(a1 + 32);
      v10 = 3 * v6;
      v11 = *(a1 + 48);
      v12 = *(v11 + 1);
      v14 = 4 * *v11;
      v15 = v9 * v5 + *(a1 + 24) + 8;
      do
      {
        v16 = 0;
        v17 = v15;
        v18 = v8;
        do
        {
          v19 = *(v18 + 4 * v12);
          v20 = *(v18 + 4);
          v13 = v12 ^ 2;
          v21 = *(v18 + 4 * (v12 ^ 2));
          if (v21 >= v20)
          {
            v22 = *(v18 + 4 * v13);
          }

          else
          {
            v22 = *(v18 + 4);
          }

          if (v21 <= v20)
          {
            v23 = *(v18 + 4 * v13);
          }

          else
          {
            v23 = *(v18 + 4);
          }

          if (v22 >= v19)
          {
            v24 = v22;
          }

          else
          {
            v24 = *(v18 + 4 * v12);
          }

          if (v23 <= v19)
          {
            v25 = v23;
          }

          else
          {
            v25 = *(v18 + 4 * v12);
          }

          v26 = v24 - v25;
          v27 = (v24 + v25) * 0.5;
          v28 = 0.0;
          v29 = 0.0;
          if ((v24 - v25) > 0.00000011921)
          {
            v30 = (2.0 - v24) - v25;
            if (v27 < 0.5)
            {
              v30 = v24 + v25;
            }

            v29 = v26 / v30;
            v31 = 60.0 / v26;
            v32 = (v20 - v19) * (60.0 / v26);
            v33 = v24 == v20;
            v34 = ((v19 - v21) * v31) + 120.0;
            v35 = ((v21 - v20) * v31) + 240.0;
            if (v33)
            {
              v35 = v34;
            }

            if (v24 == v21)
            {
              v28 = v32;
            }

            else
            {
              v28 = v35;
            }

            if (v28 < 0.0)
            {
              v28 = v28 + 360.0;
            }
          }

          *(v17 - 2) = v28 * v11[2];
          *(v17 - 1) = v27;
          *v17 = v29;
          v17 += 3;
          v16 += 3;
          v18 += v14;
        }

        while (v16 < v10);
        LODWORD(v5) = v5 + 1;
        v8 += v7;
        v15 += v9;
      }

      while (v5 != v4);
    }
  }

  if (v36[2])
  {
    sub_1002ACC1C(v36);
  }
}

void sub_1002E1B60()
{
  nullsub_1();

  operator delete();
}

void sub_1002E1B98(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v10, &off_100477CE0);
  v7 = *a2;
  if (*a2 < a2[1])
  {
    v8 = (*(a1 + 24) + *(a1 + 32) * v7);
    v9 = *(a1 + 8) + *(a1 + 16) * v7;
    do
    {
      sub_1002E1C60(*(a1 + 48), v9, v8, *(a1 + 40), v4, v5, v6);
      ++v7;
      v9 += *(a1 + 16);
      v8 += *(a1 + 32);
    }

    while (v7 < a2[1]);
  }

  if (v10[2])
  {
    sub_1002ACC1C(v10);
  }
}

void sub_1002E1C60(float32x4_t *result, uint64_t a2, char *a3, int a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  if (a4 >= 1)
  {
    v7 = a4;
    v11 = 0;
    v12 = 0;
    v13 = result->i32[0];
    v14 = vdup_n_s32(0x3B808081u);
    v15 = xmmword_1003E3720;
    v16 = xmmword_1003E3730;
    v17 = vdupq_n_s32(0x3B808081u);
    v18 = xmmword_1003E3700;
    v19 = xmmword_1003E3710;
    v20 = a4;
    v134 = v17;
    do
    {
      v24 = v20 - 256;
      if (v20 >= 256)
      {
        v25 = 256;
      }

      else
      {
        v25 = v20;
      }

      v26 = v7 - (v11 << 8);
      if (v26 >= 256)
      {
        v26 = 256;
      }

      if (v7 - v12 >= 256)
      {
        v27 = 256;
      }

      else
      {
        v27 = v7 - v12;
      }

      v28 = 3 * v27;
      v29 = 0;
      v30 = (3 * v27 - 24);
      if (3 * v27 - 24 >= 0)
      {
        a5 = result[2];
        v31 = v139;
        do
        {
          v32 = (a2 + v29);
          v140 = vld3_s8(v32);
          v33 = vmovl_u8(v140.val[0]);
          v34 = vmovl_u8(v140.val[1]);
          *v140.val[0].i8 = vmovl_u8(v140.val[2]);
          v143.val[0] = vcvtq_f32_u32(vmovl_u16(*v33.i8));
          v143.val[1] = vmulq_f32(a5, vcvtq_f32_u32(vmovl_u16(*v34.i8)));
          v143.val[2] = vmulq_f32(a5, vcvtq_f32_u32(vmovl_u16(v140.val[0])));
          v35 = v31;
          vst3q_f32(v35, v143);
          v35 += 12;
          a7 = vcvtq_f32_u32(vmovl_high_u16(v33));
          *v140.val[2].i8 = vmulq_f32(a5, vcvtq_f32_u32(vmovl_high_u16(v34)));
          a6 = vcvtq_f32_u32(vmovl_high_u16(*v140.val[0].i8));
          v36 = vmulq_f32(a5, a6);
          vst3q_f32(v35, *a7.f32);
          v29 += 24;
          v31 += 24;
        }

        while (v29 <= v30);
        v29 = v29;
      }

      if (v29 < v28)
      {
        v37 = 3 * v26;
        v38 = v29 + 3;
        if ((v29 + 3) > v37)
        {
          v37 = v29 + 3;
        }

        v39 = v37 - 3;
        if (v39 == v29)
        {
          v40 = 0;
        }

        else
        {
          v40 = -1;
        }

        v41 = 1;
        if (v39 != v29)
        {
          v41 = 2;
        }

        v42 = v41 + (v39 - (v39 != v29) - v29) / 3;
        if (v42 < 8)
        {
          v43 = v29;
          goto LABEL_43;
        }

        v44 = 3 * v25;
        if (v42 >= 0x10)
        {
          v45 = v42 & 0x7FFFFFFFFFFFFFF0;
          if (v38 <= v44)
          {
            v52 = v44;
          }

          else
          {
            v52 = v29 + 3;
          }

          v53 = (v41 + (v52 + v40 - v29 - 3) / 3) & 0xFFFFFFFFFFFFFFF0;
          v54 = &v139[4 * v29];
          v55 = v29;
          do
          {
            v56 = (a2 + v55);
            *(&a6 - 1) = vld3q_s8(v56);
            v145.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v57, v15));
            v145.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a6, v15)), v17);
            v145.val[2] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a7, v15)), v17);
            v58 = v54;
            vst3q_f32(v58, v145);
            v58 += 12;
            v145.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v57, v19));
            v142.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v57, v18));
            v148.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v57, v16));
            v148.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a6, v16)), v17);
            v148.val[2] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a7, v16)), v17);
            vst3q_f32(v58, v148);
            v142.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a6, v18)), v17);
            v142.val[2] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a7, v18)), v17);
            v59 = v54 + 24;
            vst3q_f32(v59, v142);
            v145.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a6, v19)), v17);
            a5 = vcvtq_f32_u32(vqtbl1q_s8(a7, v19));
            v145.val[2] = vmulq_f32(a5, v17);
            v60 = v54 + 36;
            vst3q_f32(v60, v145);
            v55 += 48;
            v54 += 48;
            v53 -= 16;
          }

          while (v53);
          if (v42 == v45)
          {
            goto LABEL_45;
          }

          if ((v42 & 8) == 0)
          {
            v43 = 3 * v45 + v29;
LABEL_43:
            v61 = &v139[4 * v43 + 4];
            do
            {
              a5.i8[0] = *(a2 + v43);
              *(v61 - 1) = a5.u32[0];
              v62.i32[0] = *(a2 + v43 + 1);
              v62.i32[1] = *(a2 + v43 + 2);
              *a5.f32 = vmul_f32(vcvt_f32_u32(v62), v14);
              *v61 = a5.i64[0];
              v61 = (v61 + 12);
              v43 += 3;
            }

            while (v43 < v28);
            goto LABEL_45;
          }
        }

        else
        {
          v45 = 0;
        }

        v43 = 3 * (v42 & 0x7FFFFFFFFFFFFFF8) + v29;
        if (v38 <= v44)
        {
          v38 = v44;
        }

        v46 = v45 - ((v41 + (v38 + v40 - v29 - 3) / 3) & 0xFFFFFFFFFFFFFFF8);
        v47 = 3 * v45 + v29;
        v48 = &v139[12 * v45 + 4 * v29];
        do
        {
          v49 = (a2 + v47);
          *a5.f32 = vld3_s8(v49);
          v141.val[0] = vcvtq_f32_u32(vqtbl1q_s8(a5, v16));
          v141.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a6, v16)), v17);
          v141.val[2] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a7, v16)), v17);
          v144.val[0] = vcvtq_f32_u32(vqtbl1q_s8(a5, v15));
          v144.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a6, v15)), v17);
          a5 = vcvtq_f32_u32(vqtbl1q_s8(a7, v15));
          v144.val[2] = vmulq_f32(a5, v17);
          v50 = v48 + 24;
          vst3q_f32(v48, v144);
          v51 = v48 + 12;
          vst3q_f32(v51, v141);
          v47 += 24;
          v48 = v50;
          v46 += 8;
        }

        while (v46);
        if (v42 != (v42 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_43;
        }
      }

LABEL_45:
      v135 = 3 * v27;
      v136 = v24;
      v137 = v12;
      v138 = v11;
      sub_1002E2504(&result->f32[1], v139, v139, v27);
      v63 = 0;
      if ((v30 & 0x80000000) == 0)
      {
        v64 = v139;
        v65 = 8 * v13;
        v16 = xmmword_1003E3730;
        v15 = xmmword_1003E3720;
        v18 = xmmword_1003E3700;
        v17 = v134;
        v19 = xmmword_1003E3710;
        while (1)
        {
          v66 = v64;
          v147 = vld3q_f32(v66);
          v66 += 12;
          v146 = vld3q_f32(v66);
          v67 = result[1];
          if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
          {
            a7 = xmmword_1004B0050;
            v68 = result[1];
            if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
            {
              goto LABEL_50;
            }
          }

          else
          {
            v127 = v146;
            v121 = v147;
            v115 = v67;
            sub_1003C8E70();
            v67 = v115;
            v147 = v121;
            v146 = v127;
            v19 = xmmword_1003E3710;
            v18 = xmmword_1003E3700;
            v17 = v134;
            v16 = xmmword_1003E3730;
            v15 = xmmword_1003E3720;
            v65 = 8 * v13;
            a7 = xmmword_1004B0050;
            v68 = result[1];
            if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
            {
LABEL_50:
              v69 = xmmword_1004B0050;
              v70 = result[1];
              if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
              {
                goto LABEL_51;
              }

              goto LABEL_59;
            }
          }

          v128 = v146;
          v122 = v147;
          v110 = v68;
          v116 = v67;
          v105 = a7;
          sub_1003C8E70();
          a7 = v105;
          v68 = v110;
          v67 = v116;
          v147 = v122;
          v146 = v128;
          v19 = xmmword_1003E3710;
          v18 = xmmword_1003E3700;
          v17 = v134;
          v16 = xmmword_1003E3730;
          v15 = xmmword_1003E3720;
          v65 = 8 * v13;
          v69 = xmmword_1004B0050;
          v70 = result[1];
          if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
          {
LABEL_51:
            v71 = xmmword_1004B0050;
            v72 = result[1];
            if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
            {
              goto LABEL_52;
            }

            goto LABEL_60;
          }

LABEL_59:
          v129 = v146;
          v123 = v147;
          v111 = v68;
          v117 = v67;
          v101 = v70;
          v106 = a7;
          v97 = v69;
          sub_1003C8E70();
          v69 = v97;
          v70 = v101;
          a7 = v106;
          v68 = v111;
          v67 = v117;
          v147 = v123;
          v146 = v129;
          v19 = xmmword_1003E3710;
          v18 = xmmword_1003E3700;
          v17 = v134;
          v16 = xmmword_1003E3730;
          v15 = xmmword_1003E3720;
          v65 = 8 * v13;
          v71 = xmmword_1004B0050;
          v72 = result[1];
          if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
          {
LABEL_52:
            v73 = xmmword_1004B0050;
            v74 = result[1];
            if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
            {
              goto LABEL_53;
            }

            goto LABEL_61;
          }

LABEL_60:
          v130 = v146;
          v124 = v147;
          v112 = v68;
          v118 = v67;
          v102 = v70;
          v107 = a7;
          v94 = v72;
          v98 = v69;
          v91 = v71;
          sub_1003C8E70();
          v71 = v91;
          v72 = v94;
          v69 = v98;
          v70 = v102;
          a7 = v107;
          v68 = v112;
          v67 = v118;
          v147 = v124;
          v146 = v130;
          v19 = xmmword_1003E3710;
          v18 = xmmword_1003E3700;
          v17 = v134;
          v16 = xmmword_1003E3730;
          v15 = xmmword_1003E3720;
          v65 = 8 * v13;
          v73 = xmmword_1004B0050;
          v74 = result[1];
          if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
          {
LABEL_53:
            v75 = xmmword_1004B0050;
            v76 = result[1];
            if ((atomic_load_explicit(byte_1004B0060, memory_order_acquire) & 1) == 0)
            {
              goto LABEL_62;
            }

            goto LABEL_54;
          }

LABEL_61:
          v131 = v146;
          v125 = v147;
          v113 = v68;
          v119 = v67;
          v103 = v70;
          v108 = a7;
          v95 = v72;
          v99 = v69;
          v89 = v74;
          v92 = v71;
          v87 = v73;
          sub_1003C8E70();
          v73 = v87;
          v74 = v89;
          v71 = v92;
          v72 = v95;
          v69 = v99;
          v70 = v103;
          a7 = v108;
          v68 = v113;
          v67 = v119;
          v147 = v125;
          v146 = v131;
          v19 = xmmword_1003E3710;
          v18 = xmmword_1003E3700;
          v17 = v134;
          v16 = xmmword_1003E3730;
          v15 = xmmword_1003E3720;
          v65 = 8 * v13;
          v75 = xmmword_1004B0050;
          v76 = result[1];
          if ((atomic_load_explicit(byte_1004B0060, memory_order_acquire) & 1) == 0)
          {
LABEL_62:
            v132 = v146;
            v126 = v147;
            v114 = v68;
            v120 = v67;
            v104 = v70;
            v109 = a7;
            v96 = v72;
            v100 = v69;
            v90 = v74;
            v93 = v71;
            v86 = v76;
            v88 = v73;
            v85 = v75;
            sub_1003C8E70();
            v75 = v85;
            v76 = v86;
            v73 = v88;
            v74 = v90;
            v71 = v93;
            v72 = v96;
            v69 = v100;
            v70 = v104;
            a7 = v109;
            v68 = v114;
            v67 = v120;
            v147 = v126;
            v146 = v132;
            v19 = xmmword_1003E3710;
            v18 = xmmword_1003E3700;
            v17 = v134;
            v16 = xmmword_1003E3730;
            v15 = xmmword_1003E3720;
            v65 = 8 * v13;
          }

LABEL_54:
          a6 = vcvtq_u32_f32(vaddq_f32(vmulq_f32(v146.val[0], v68), v69));
          a5 = vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vmulq_f32(v147.val[0], v67), a7))), a6);
          *a5.f32 = vqmovn_u16(a5);
          *a6.f32 = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vmulq_f32(v147.val[1], v70), v71))), vcvtq_u32_f32(vaddq_f32(vmulq_f32(v146.val[1], v72), v73))));
          v77 = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vmulq_f32(v147.val[2], v74), v75))), vcvtq_u32_f32(vaddq_f32(vmulq_f32(v146.val[2], v76), xmmword_1004B0050))));
          if (v13 == 4)
          {
            v78 = result[3].i64[0];
            vst4_s8(a3, *a5.f32);
            a3 += v65;
            v64 += 24;
            v63 += 24;
            if (v30 < v63)
            {
              goto LABEL_64;
            }
          }

          else
          {
            vst3_s8(a3, *a5.f32);
            a3 += v65;
            v64 += 24;
            v63 += 24;
            if (v30 < v63)
            {
              goto LABEL_64;
            }
          }
        }
      }

      v16 = xmmword_1003E3730;
      v15 = xmmword_1003E3720;
      v18 = xmmword_1003E3700;
      v17 = v134;
      v19 = xmmword_1003E3710;
LABEL_64:
      if (v63 >= v135)
      {
        v7 = a4;
        v21 = v138;
        v22 = v137;
        v23 = v136;
      }

      else
      {
        v79 = &v139[4 * v63 + 4];
        v7 = a4;
        v21 = v138;
        v22 = v137;
        v23 = v136;
        do
        {
          v80 = rintf(*(v79 - 1) * 255.0);
          v81 = v80 & ~(v80 >> 31);
          if (v81 >= 255)
          {
            LOBYTE(v81) = -1;
          }

          *a3 = v81;
          v82 = rintf(*v79 * 255.0);
          v83 = v82 & ~(v82 >> 31);
          if (v83 >= 255)
          {
            LOBYTE(v83) = -1;
          }

          a3[1] = v83;
          a5.f32[0] = rintf(v79[1] * 255.0);
          v84 = a5.f32[0] & ~(a5.f32[0] >> 31);
          if (v84 >= 255)
          {
            LOBYTE(v84) = -1;
          }

          a3[2] = v84;
          if (v13 == 4)
          {
            a3[3] = -1;
          }

          a3 += v13;
          v79 += 3;
          v63 += 3;
        }

        while (v135 > v63);
      }

      v12 = v22 + 256;
      a2 += 768;
      v11 = v21 + 1;
      v20 = v23;
    }

    while (v12 < v7);
  }
}

float *sub_1002E2504(float *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = result[2];
    v6 = *result;
    v7 = *(result + 1);
    v8 = v7 ^ 2;
    while (1)
    {
      v9 = (a2 + 4 * v4);
      v11 = v9[1];
      v10 = v9[2];
      if (v11 != 0.0)
      {
        break;
      }

      *(a3 + 4 * v7) = v10;
      *(a3 + 4) = v10;
      *(a3 + 4 * v8) = v10;
      if (v6 == 4)
      {
        goto LABEL_12;
      }

LABEL_3:
      v4 += 3;
      a3 += 4 * v6;
      if (v4 >= (3 * a4))
      {
        return result;
      }
    }

    v12 = v5 * *v9;
    if (v12 >= 0.0)
    {
      while (v12 >= 6.0)
      {
        v12 = v12 + -6.0;
      }
    }

    else
    {
      do
      {
        v12 = v12 + 6.0;
      }

      while (v12 < 0.0);
    }

    v13 = (__PAIR64__(v12, LODWORD(v12)) - COERCE_UNSIGNED_INT(v12)) >> 32;
    v14 = v12 - v13;
    if (v13 > 5)
    {
      v14 = 0.0;
      v13 = 0;
    }

    *v18 = v10;
    *&v18[1] = v10 * (1.0 - v11);
    *&v18[2] = v10 * (1.0 - (v11 * v14));
    *&v18[3] = v10 * (1.0 - (v11 * (1.0 - v14)));
    v15 = (&unk_1003E6FE0 + 12 * v13);
    result = *v15;
    v16 = v18[v15[1]];
    v17 = v18[v15[2]];
    *(a3 + 4 * v7) = v18[result];
    *(a3 + 4) = v16;
    *(a3 + 4 * v8) = v17;
    if (v6 != 4)
    {
      goto LABEL_3;
    }

LABEL_12:
    *(a3 + 12) = 1065353216;
    goto LABEL_3;
  }

  return result;
}

void sub_1002E2684()
{
  nullsub_1();

  operator delete();
}

void sub_1002E26BC(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477D40);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = *(a1 + 24) + *(a1 + 32) * v4;
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    do
    {
      sub_1002E2504(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

void sub_1002E2788()
{
  nullsub_1();

  operator delete();
}

void sub_1002E27C0(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v10, &off_100477DA0);
  v7 = *a2;
  if (*a2 < a2[1])
  {
    v8 = (*(a1 + 24) + *(a1 + 32) * v7);
    v9 = *(a1 + 8) + *(a1 + 16) * v7;
    do
    {
      sub_1002E2888(*(a1 + 48), v9, v8, *(a1 + 40), v4, v5, v6);
      ++v7;
      v9 += *(a1 + 16);
      v8 += *(a1 + 32);
    }

    while (v7 < a2[1]);
  }

  if (v10[2])
  {
    sub_1002ACC1C(v10);
  }
}

void sub_1002E2888(float32x4_t *result, uint64_t a2, char *a3, int a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  if (a4 >= 1)
  {
    v7 = a4;
    v11 = 0;
    v12 = 0;
    v13 = result->i32[0];
    v14 = vdup_n_s32(0x3B808081u);
    v15 = xmmword_1003E3720;
    v16 = xmmword_1003E3730;
    v17 = vdupq_n_s32(0x3B808081u);
    v18 = xmmword_1003E3700;
    v19 = xmmword_1003E3710;
    v20 = a4;
    v134 = v17;
    do
    {
      v24 = v20 - 256;
      if (v20 >= 256)
      {
        v25 = 256;
      }

      else
      {
        v25 = v20;
      }

      v26 = v7 - (v11 << 8);
      if (v26 >= 256)
      {
        v26 = 256;
      }

      if (v7 - v12 >= 256)
      {
        v27 = 256;
      }

      else
      {
        v27 = v7 - v12;
      }

      v28 = 3 * v27;
      v29 = 0;
      v30 = (3 * v27 - 24);
      if (3 * v27 - 24 >= 0)
      {
        a5 = result[2];
        v31 = v139;
        do
        {
          v32 = (a2 + v29);
          v140 = vld3_s8(v32);
          v33 = vmovl_u8(v140.val[0]);
          v34 = vmovl_u8(v140.val[1]);
          *v140.val[0].i8 = vmovl_u8(v140.val[2]);
          v143.val[0] = vcvtq_f32_u32(vmovl_u16(*v33.i8));
          v143.val[1] = vmulq_f32(a5, vcvtq_f32_u32(vmovl_u16(*v34.i8)));
          v143.val[2] = vmulq_f32(a5, vcvtq_f32_u32(vmovl_u16(v140.val[0])));
          v35 = v31;
          vst3q_f32(v35, v143);
          v35 += 12;
          a7 = vcvtq_f32_u32(vmovl_high_u16(v33));
          *v140.val[2].i8 = vmulq_f32(a5, vcvtq_f32_u32(vmovl_high_u16(v34)));
          a6 = vcvtq_f32_u32(vmovl_high_u16(*v140.val[0].i8));
          v36 = vmulq_f32(a5, a6);
          vst3q_f32(v35, *a7.f32);
          v29 += 24;
          v31 += 24;
        }

        while (v29 <= v30);
        v29 = v29;
      }

      if (v29 < v28)
      {
        v37 = 3 * v26;
        v38 = v29 + 3;
        if ((v29 + 3) > v37)
        {
          v37 = v29 + 3;
        }

        v39 = v37 - 3;
        if (v39 == v29)
        {
          v40 = 0;
        }

        else
        {
          v40 = -1;
        }

        v41 = 1;
        if (v39 != v29)
        {
          v41 = 2;
        }

        v42 = v41 + (v39 - (v39 != v29) - v29) / 3;
        if (v42 < 8)
        {
          v43 = v29;
          goto LABEL_43;
        }

        v44 = 3 * v25;
        if (v42 >= 0x10)
        {
          v45 = v42 & 0x7FFFFFFFFFFFFFF0;
          if (v38 <= v44)
          {
            v52 = v44;
          }

          else
          {
            v52 = v29 + 3;
          }

          v53 = (v41 + (v52 + v40 - v29 - 3) / 3) & 0xFFFFFFFFFFFFFFF0;
          v54 = &v139[4 * v29];
          v55 = v29;
          do
          {
            v56 = (a2 + v55);
            *(&a6 - 1) = vld3q_s8(v56);
            v145.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v57, v15));
            v145.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a6, v15)), v17);
            v145.val[2] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a7, v15)), v17);
            v58 = v54;
            vst3q_f32(v58, v145);
            v58 += 12;
            v145.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v57, v19));
            v142.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v57, v18));
            v148.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v57, v16));
            v148.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a6, v16)), v17);
            v148.val[2] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a7, v16)), v17);
            vst3q_f32(v58, v148);
            v142.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a6, v18)), v17);
            v142.val[2] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a7, v18)), v17);
            v59 = v54 + 24;
            vst3q_f32(v59, v142);
            v145.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a6, v19)), v17);
            a5 = vcvtq_f32_u32(vqtbl1q_s8(a7, v19));
            v145.val[2] = vmulq_f32(a5, v17);
            v60 = v54 + 36;
            vst3q_f32(v60, v145);
            v55 += 48;
            v54 += 48;
            v53 -= 16;
          }

          while (v53);
          if (v42 == v45)
          {
            goto LABEL_45;
          }

          if ((v42 & 8) == 0)
          {
            v43 = 3 * v45 + v29;
LABEL_43:
            v61 = &v139[4 * v43 + 4];
            do
            {
              a5.i8[0] = *(a2 + v43);
              *(v61 - 1) = a5.u32[0];
              v62.i32[0] = *(a2 + v43 + 1);
              v62.i32[1] = *(a2 + v43 + 2);
              *a5.f32 = vmul_f32(vcvt_f32_u32(v62), v14);
              *v61 = a5.i64[0];
              v61 = (v61 + 12);
              v43 += 3;
            }

            while (v43 < v28);
            goto LABEL_45;
          }
        }

        else
        {
          v45 = 0;
        }

        v43 = 3 * (v42 & 0x7FFFFFFFFFFFFFF8) + v29;
        if (v38 <= v44)
        {
          v38 = v44;
        }

        v46 = v45 - ((v41 + (v38 + v40 - v29 - 3) / 3) & 0xFFFFFFFFFFFFFFF8);
        v47 = 3 * v45 + v29;
        v48 = &v139[12 * v45 + 4 * v29];
        do
        {
          v49 = (a2 + v47);
          *a5.f32 = vld3_s8(v49);
          v141.val[0] = vcvtq_f32_u32(vqtbl1q_s8(a5, v16));
          v141.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a6, v16)), v17);
          v141.val[2] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a7, v16)), v17);
          v144.val[0] = vcvtq_f32_u32(vqtbl1q_s8(a5, v15));
          v144.val[1] = vmulq_f32(vcvtq_f32_u32(vqtbl1q_s8(a6, v15)), v17);
          a5 = vcvtq_f32_u32(vqtbl1q_s8(a7, v15));
          v144.val[2] = vmulq_f32(a5, v17);
          v50 = v48 + 24;
          vst3q_f32(v48, v144);
          v51 = v48 + 12;
          vst3q_f32(v51, v141);
          v47 += 24;
          v48 = v50;
          v46 += 8;
        }

        while (v46);
        if (v42 != (v42 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_43;
        }
      }

LABEL_45:
      v135 = 3 * v27;
      v136 = v24;
      v137 = v12;
      v138 = v11;
      sub_1002E312C(&result->f32[1], v139, v139, v27);
      v63 = 0;
      if ((v30 & 0x80000000) == 0)
      {
        v64 = v139;
        v65 = 8 * v13;
        v16 = xmmword_1003E3730;
        v15 = xmmword_1003E3720;
        v18 = xmmword_1003E3700;
        v17 = v134;
        v19 = xmmword_1003E3710;
        while (1)
        {
          v66 = v64;
          v147 = vld3q_f32(v66);
          v66 += 12;
          v146 = vld3q_f32(v66);
          v67 = result[1];
          if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
          {
            a7 = xmmword_1004B0050;
            v68 = result[1];
            if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
            {
              goto LABEL_50;
            }
          }

          else
          {
            v127 = v146;
            v121 = v147;
            v115 = v67;
            sub_1003C8E70();
            v67 = v115;
            v147 = v121;
            v146 = v127;
            v19 = xmmword_1003E3710;
            v18 = xmmword_1003E3700;
            v17 = v134;
            v16 = xmmword_1003E3730;
            v15 = xmmword_1003E3720;
            v65 = 8 * v13;
            a7 = xmmword_1004B0050;
            v68 = result[1];
            if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
            {
LABEL_50:
              v69 = xmmword_1004B0050;
              v70 = result[1];
              if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
              {
                goto LABEL_51;
              }

              goto LABEL_59;
            }
          }

          v128 = v146;
          v122 = v147;
          v110 = v68;
          v116 = v67;
          v105 = a7;
          sub_1003C8E70();
          a7 = v105;
          v68 = v110;
          v67 = v116;
          v147 = v122;
          v146 = v128;
          v19 = xmmword_1003E3710;
          v18 = xmmword_1003E3700;
          v17 = v134;
          v16 = xmmword_1003E3730;
          v15 = xmmword_1003E3720;
          v65 = 8 * v13;
          v69 = xmmword_1004B0050;
          v70 = result[1];
          if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
          {
LABEL_51:
            v71 = xmmword_1004B0050;
            v72 = result[1];
            if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
            {
              goto LABEL_52;
            }

            goto LABEL_60;
          }

LABEL_59:
          v129 = v146;
          v123 = v147;
          v111 = v68;
          v117 = v67;
          v101 = v70;
          v106 = a7;
          v97 = v69;
          sub_1003C8E70();
          v69 = v97;
          v70 = v101;
          a7 = v106;
          v68 = v111;
          v67 = v117;
          v147 = v123;
          v146 = v129;
          v19 = xmmword_1003E3710;
          v18 = xmmword_1003E3700;
          v17 = v134;
          v16 = xmmword_1003E3730;
          v15 = xmmword_1003E3720;
          v65 = 8 * v13;
          v71 = xmmword_1004B0050;
          v72 = result[1];
          if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
          {
LABEL_52:
            v73 = xmmword_1004B0050;
            v74 = result[1];
            if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
            {
              goto LABEL_53;
            }

            goto LABEL_61;
          }

LABEL_60:
          v130 = v146;
          v124 = v147;
          v112 = v68;
          v118 = v67;
          v102 = v70;
          v107 = a7;
          v94 = v72;
          v98 = v69;
          v91 = v71;
          sub_1003C8E70();
          v71 = v91;
          v72 = v94;
          v69 = v98;
          v70 = v102;
          a7 = v107;
          v68 = v112;
          v67 = v118;
          v147 = v124;
          v146 = v130;
          v19 = xmmword_1003E3710;
          v18 = xmmword_1003E3700;
          v17 = v134;
          v16 = xmmword_1003E3730;
          v15 = xmmword_1003E3720;
          v65 = 8 * v13;
          v73 = xmmword_1004B0050;
          v74 = result[1];
          if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
          {
LABEL_53:
            v75 = xmmword_1004B0050;
            v76 = result[1];
            if ((atomic_load_explicit(byte_1004B0060, memory_order_acquire) & 1) == 0)
            {
              goto LABEL_62;
            }

            goto LABEL_54;
          }

LABEL_61:
          v131 = v146;
          v125 = v147;
          v113 = v68;
          v119 = v67;
          v103 = v70;
          v108 = a7;
          v95 = v72;
          v99 = v69;
          v89 = v74;
          v92 = v71;
          v87 = v73;
          sub_1003C8E70();
          v73 = v87;
          v74 = v89;
          v71 = v92;
          v72 = v95;
          v69 = v99;
          v70 = v103;
          a7 = v108;
          v68 = v113;
          v67 = v119;
          v147 = v125;
          v146 = v131;
          v19 = xmmword_1003E3710;
          v18 = xmmword_1003E3700;
          v17 = v134;
          v16 = xmmword_1003E3730;
          v15 = xmmword_1003E3720;
          v65 = 8 * v13;
          v75 = xmmword_1004B0050;
          v76 = result[1];
          if ((atomic_load_explicit(byte_1004B0060, memory_order_acquire) & 1) == 0)
          {
LABEL_62:
            v132 = v146;
            v126 = v147;
            v114 = v68;
            v120 = v67;
            v104 = v70;
            v109 = a7;
            v96 = v72;
            v100 = v69;
            v90 = v74;
            v93 = v71;
            v86 = v76;
            v88 = v73;
            v85 = v75;
            sub_1003C8E70();
            v75 = v85;
            v76 = v86;
            v73 = v88;
            v74 = v90;
            v71 = v93;
            v72 = v96;
            v69 = v100;
            v70 = v104;
            a7 = v109;
            v68 = v114;
            v67 = v120;
            v147 = v126;
            v146 = v132;
            v19 = xmmword_1003E3710;
            v18 = xmmword_1003E3700;
            v17 = v134;
            v16 = xmmword_1003E3730;
            v15 = xmmword_1003E3720;
            v65 = 8 * v13;
          }

LABEL_54:
          a6 = vcvtq_u32_f32(vaddq_f32(vmulq_f32(v146.val[0], v68), v69));
          a5 = vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vmulq_f32(v147.val[0], v67), a7))), a6);
          *a5.f32 = vqmovn_u16(a5);
          *a6.f32 = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vmulq_f32(v147.val[1], v70), v71))), vcvtq_u32_f32(vaddq_f32(vmulq_f32(v146.val[1], v72), v73))));
          v77 = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vmulq_f32(v147.val[2], v74), v75))), vcvtq_u32_f32(vaddq_f32(vmulq_f32(v146.val[2], v76), xmmword_1004B0050))));
          if (v13 == 4)
          {
            v78 = result[3].i64[0];
            vst4_s8(a3, *a5.f32);
            a3 += v65;
            v64 += 24;
            v63 += 24;
            if (v30 < v63)
            {
              goto LABEL_64;
            }
          }

          else
          {
            vst3_s8(a3, *a5.f32);
            a3 += v65;
            v64 += 24;
            v63 += 24;
            if (v30 < v63)
            {
              goto LABEL_64;
            }
          }
        }
      }

      v16 = xmmword_1003E3730;
      v15 = xmmword_1003E3720;
      v18 = xmmword_1003E3700;
      v17 = v134;
      v19 = xmmword_1003E3710;
LABEL_64:
      if (v63 >= v135)
      {
        v7 = a4;
        v21 = v138;
        v22 = v137;
        v23 = v136;
      }

      else
      {
        v79 = &v139[4 * v63 + 4];
        v7 = a4;
        v21 = v138;
        v22 = v137;
        v23 = v136;
        do
        {
          v80 = rintf(*(v79 - 1) * 255.0);
          v81 = v80 & ~(v80 >> 31);
          if (v81 >= 255)
          {
            LOBYTE(v81) = -1;
          }

          *a3 = v81;
          v82 = rintf(*v79 * 255.0);
          v83 = v82 & ~(v82 >> 31);
          if (v83 >= 255)
          {
            LOBYTE(v83) = -1;
          }

          a3[1] = v83;
          a5.f32[0] = rintf(v79[1] * 255.0);
          v84 = a5.f32[0] & ~(a5.f32[0] >> 31);
          if (v84 >= 255)
          {
            LOBYTE(v84) = -1;
          }

          a3[2] = v84;
          if (v13 == 4)
          {
            a3[3] = -1;
          }

          a3 += v13;
          v79 += 3;
          v63 += 3;
        }

        while (v135 > v63);
      }

      v12 = v22 + 256;
      a2 += 768;
      v11 = v21 + 1;
      v20 = v23;
    }

    while (v12 < v7);
  }
}

float *sub_1002E312C(float *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = 0;
    v5 = result[2];
    v6 = *result;
    v7 = *(result + 1);
    v8 = v7 ^ 2;
    while (1)
    {
      v9 = (a2 + 4 * v4);
      v10 = v9[1];
      v11 = v9[2];
      if (v11 != 0.0)
      {
        break;
      }

      *(a3 + 4 * v7) = v10;
      *(a3 + 4) = v10;
      *(a3 + 4 * v8) = v10;
      if (v6 == 4)
      {
        goto LABEL_12;
      }

LABEL_3:
      v4 += 3;
      a3 += 4 * v6;
      if (v4 >= (3 * a4))
      {
        return result;
      }
    }

    v12 = (v10 + v11) - (v10 * v11);
    v13 = v10 * (v11 + 1.0);
    if (v10 > 0.5)
    {
      v13 = v12;
    }

    v14 = v5 * *v9;
    if (v14 >= 0.0)
    {
      while (v14 >= 6.0)
      {
        v14 = v14 + -6.0;
      }
    }

    else
    {
      do
      {
        v14 = v14 + 6.0;
      }

      while (v14 < 0.0);
    }

    v15 = (__PAIR64__(v14, LODWORD(v14)) - COERCE_UNSIGNED_INT(v14)) >> 32;
    v16 = v14 - v15;
    v21 = v13;
    v22 = -(v13 - (v10 * 2.0));
    v17 = v13 - v22;
    v23 = v22 + (v17 * (1.0 - v16));
    v24 = v22 + (v17 * v16);
    v18 = (&unk_1003E7080 + 12 * v15);
    result = *v18;
    v19 = *(&v21 + v18[1]);
    v20 = *(&v21 + v18[2]);
    *(a3 + 4 * v7) = *(&v21 + result);
    *(a3 + 4) = v19;
    *(a3 + 4 * v8) = v20;
    if (v6 != 4)
    {
      goto LABEL_3;
    }

LABEL_12:
    *(a3 + 12) = 1065353216;
    goto LABEL_3;
  }

  return result;
}

void sub_1002E32B4()
{
  nullsub_1();

  operator delete();
}

void sub_1002E32EC(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477E00);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = *(a1 + 24) + *(a1 + 32) * v4;
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    do
    {
      sub_1002E312C(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

void sub_1002E33A4()
{
  nullsub_1();

  operator delete();
}

void sub_1002E33DC(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v7, &off_100477E60);
  v4 = *a2;
  if (*a2 < a2[1])
  {
    v5 = *(a1 + 24) + *(a1 + 32) * v4;
    v6 = *(a1 + 8) + *(a1 + 16) * v4;
    do
    {
      sub_1002E3490(*(a1 + 48), v6, v5, *(a1 + 40));
      ++v4;
      v6 += *(a1 + 16);
      v5 += *(a1 + 32);
    }

    while (v4 < a2[1]);
  }

  if (v7[2])
  {
    sub_1002ACC1C(v7);
  }
}

int *sub_1002E3490(int *result, uint64_t a2, uint64_t a3, int a4)
{
  if (*(result + 40))
  {
    v4 = 568;
  }

  else
  {
    v4 = 1080;
  }

  if (a4 >= 1)
  {
    v5 = 0;
    v6 = result[2];
    v7 = result[3];
    v8 = &byte_1004D3E00[v4];
    v9 = result[4];
    v10 = result[5];
    v11 = result[6];
    v12 = result[7];
    v13 = (a3 + 2);
    v14 = (a2 + 1);
    v15 = result[8];
    v16 = result[9];
    v17 = result[1];
    result = *result;
    do
    {
      v18 = *&v8[2 * *v14];
      v19 = *&v8[2 * *(v14 - 1)];
      v20 = *&v8[2 * v14[1]];
      v21 = word_1004C2600[(v10 * v18 + v9 * v19 + v11 * v20 + 2048) >> 12];
      v22 = 500 * (word_1004C2600[(v6 * v18 + v17 * v19 + v7 * v20 + 2048) >> 12] - v21) + 4210688;
      v23 = 200 * (v21 - word_1004C2600[(v15 * v18 + v12 * v19 + v16 * v20 + 2048) >> 12]) + 4210688;
      v24 = ((296 * v21 - 1320550) >> 15) & ~((296 * v21 - 1320550) >> 31);
      if (v24 >= 255)
      {
        LOBYTE(v24) = -1;
      }

      *(v13 - 2) = v24;
      v25 = (v22 >> 15) & ~(v22 >> 31);
      if (v25 >= 255)
      {
        LOBYTE(v25) = -1;
      }

      v26 = (v23 >> 15) & ~(v23 >> 31);
      *(v13 - 1) = v25;
      if (v26 >= 255)
      {
        LOBYTE(v26) = -1;
      }

      *v13 = v26;
      v13 += 3;
      v5 += 3;
      v14 = result + v14;
    }

    while (v5 < (3 * a4));
  }

  return result;
}

void sub_1002E35F8()
{
  nullsub_1();

  operator delete();
}

void sub_1002E3630(uint64_t a1, int *a2)
{
  sub_1002ACE7C(v13, &off_100477EC0);
  v10 = *a2;
  if (*a2 < a2[1])
  {
    v11 = (*(a1 + 24) + *(a1 + 32) * v10);
    v12 = *(a1 + 8) + *(a1 + 16) * v10;
    do
    {
      sub_1002E36F8(*(a1 + 48), v12, v11, *(a1 + 40), v4, v5, v6, v7, v8, v9);
      ++v10;
      v12 += *(a1 + 16);
      v11 = (v11 + *(a1 + 32));
    }

    while (v10 < a2[1]);
  }

  if (v13[2])
  {
    sub_1002ACC1C(v13);
  }
}

void sub_1002E36F8(int *a1, uint64_t a2, float *a3, int a4, double a5, double a6, double a7, double a8, float32x4_t a9, float32x4_t a10)
{
  v228 = *a1;
  if (*(a1 + 40))
  {
    v11 = qword_1004D3EA8;
  }

  else
  {
    v11 = 0;
  }

  v224 = *(a1 + 2);
  v225 = *(a1 + 1);
  v222 = *(a1 + 4);
  v223 = *(a1 + 3);
  v221 = *(a1 + 5);
  v220 = *(a1 + 6);
  v219 = *(a1 + 7);
  v218 = *(a1 + 8);
  v217 = *(a1 + 9);
  v212 = 3 * a4;
  if (*(a1 + 41) == 1)
  {
    v12 = a1[11];
    if (a4 >= 9)
    {
      v13 = 0;
      v226 = 3 * a4 - 24;
      __asm { FMOV            V1.4S, #1.0 }

      v215 = vdupq_n_s32(0x46800000u);
      v216 = _Q1;
      v213 = vdupq_n_s32(0x3BC80000u);
      v19 = a3;
      while (1)
      {
        if (v228 == 3)
        {
          v20 = a2;
          v233 = vld3q_f32(v20);
          v20 += 12;
          v235 = vld3q_f32(v20);
          if (v12)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v44 = a2;
          v45 = 4 * v228;
          *v233.val[0].f32 = vld4q_f32(v44);
          v46 = &v44[v45];
          *v235.val[0].f32 = vld4q_f32(v46);
          if (v12)
          {
LABEL_9:
            v21 = v235.val[0];
            v22 = v233.val[0];
            if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
            {
              goto LABEL_10;
            }

            goto LABEL_25;
          }
        }

        v21 = v235.val[2];
        v235.val[2] = v235.val[0];
        v22 = v233.val[2];
        v233.val[2] = v233.val[0];
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
LABEL_10:
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
            goto LABEL_11;
          }

          goto LABEL_26;
        }

LABEL_25:
        v187 = v233.val[1];
        v199 = v233.val[2];
        v163 = v235.val[1];
        v175 = v235.val[2];
        v139 = v22;
        v151 = v21;
        sub_1003C83B4();
        v22 = v139;
        v21 = v151;
        v235.val[1] = v163;
        v235.val[2] = v175;
        v233.val[1] = v187;
        v233.val[2] = v199;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_11:
          v23 = xmmword_1004B0030;
          v24 = xmmword_1004B0010;
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_12;
          }

          goto LABEL_27;
        }

LABEL_26:
        v188 = v233.val[1];
        v200 = v233.val[2];
        v164 = v235.val[1];
        v176 = v235.val[2];
        v140 = v22;
        v152 = v21;
        sub_1003C83FC();
        v22 = v140;
        v21 = v152;
        v235.val[1] = v164;
        v235.val[2] = v176;
        v233.val[1] = v188;
        v233.val[2] = v200;
        v23 = xmmword_1004B0030;
        v24 = xmmword_1004B0010;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
LABEL_12:
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
            goto LABEL_13;
          }

          goto LABEL_28;
        }

LABEL_27:
        v189 = v233.val[1];
        v201 = v233.val[2];
        v165 = v235.val[1];
        v177 = v235.val[2];
        v141 = v22;
        v153 = v21;
        v119 = v24;
        v129 = v23;
        sub_1003C83B4();
        v24 = v119;
        v23 = v129;
        v22 = v141;
        v21 = v153;
        v235.val[1] = v165;
        v235.val[2] = v177;
        v233.val[1] = v189;
        v233.val[2] = v201;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_13:
          v25 = xmmword_1004B0030;
          v26 = xmmword_1004B0010;
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_14;
          }

          goto LABEL_29;
        }

LABEL_28:
        v190 = v233.val[1];
        v202 = v233.val[2];
        v166 = v235.val[1];
        v178 = v235.val[2];
        v142 = v22;
        v154 = v21;
        v120 = v24;
        v130 = v23;
        sub_1003C83FC();
        v24 = v120;
        v23 = v130;
        v22 = v142;
        v21 = v154;
        v235.val[1] = v166;
        v235.val[2] = v178;
        v233.val[1] = v190;
        v233.val[2] = v202;
        v25 = xmmword_1004B0030;
        v26 = xmmword_1004B0010;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
LABEL_14:
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
            goto LABEL_15;
          }

          goto LABEL_30;
        }

LABEL_29:
        v191 = v233.val[1];
        v203 = v233.val[2];
        v167 = v235.val[1];
        v179 = v235.val[2];
        v143 = v22;
        v155 = v21;
        v121 = v24;
        v131 = v23;
        v103 = v26;
        v111 = v25;
        sub_1003C83B4();
        v26 = v103;
        v25 = v111;
        v24 = v121;
        v23 = v131;
        v22 = v143;
        v21 = v155;
        v235.val[1] = v167;
        v235.val[2] = v179;
        v233.val[1] = v191;
        v233.val[2] = v203;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_15:
          v27 = xmmword_1004B0030;
          v28 = xmmword_1004B0010;
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_16;
          }

          goto LABEL_31;
        }

LABEL_30:
        v192 = v233.val[1];
        v204 = v233.val[2];
        v168 = v235.val[1];
        v180 = v235.val[2];
        v144 = v22;
        v156 = v21;
        v122 = v24;
        v132 = v23;
        v104 = v26;
        v112 = v25;
        sub_1003C83FC();
        v26 = v104;
        v25 = v112;
        v24 = v122;
        v23 = v132;
        v22 = v144;
        v21 = v156;
        v235.val[1] = v168;
        v235.val[2] = v180;
        v233.val[1] = v192;
        v233.val[2] = v204;
        v27 = xmmword_1004B0030;
        v28 = xmmword_1004B0010;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
LABEL_16:
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
            goto LABEL_17;
          }

          goto LABEL_32;
        }

LABEL_31:
        v193 = v233.val[1];
        v205 = v233.val[2];
        v169 = v235.val[1];
        v181 = v235.val[2];
        v145 = v22;
        v157 = v21;
        v123 = v24;
        v133 = v23;
        v105 = v26;
        v113 = v25;
        v91 = v28;
        v97 = v27;
        sub_1003C83B4();
        v28 = v91;
        v27 = v97;
        v26 = v105;
        v25 = v113;
        v24 = v123;
        v23 = v133;
        v22 = v145;
        v21 = v157;
        v235.val[1] = v169;
        v235.val[2] = v181;
        v233.val[1] = v193;
        v233.val[2] = v205;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_17:
          v29 = xmmword_1004B0030;
          v30 = xmmword_1004B0010;
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_18;
          }

          goto LABEL_33;
        }

LABEL_32:
        v194 = v233.val[1];
        v206 = v233.val[2];
        v170 = v235.val[1];
        v182 = v235.val[2];
        v146 = v22;
        v158 = v21;
        v124 = v24;
        v134 = v23;
        v106 = v26;
        v114 = v25;
        v92 = v28;
        v98 = v27;
        sub_1003C83FC();
        v28 = v92;
        v27 = v98;
        v26 = v106;
        v25 = v114;
        v24 = v124;
        v23 = v134;
        v22 = v146;
        v21 = v158;
        v235.val[1] = v170;
        v235.val[2] = v182;
        v233.val[1] = v194;
        v233.val[2] = v206;
        v29 = xmmword_1004B0030;
        v30 = xmmword_1004B0010;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
LABEL_18:
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
            goto LABEL_19;
          }

          goto LABEL_34;
        }

LABEL_33:
        v195 = v233.val[1];
        v207 = v233.val[2];
        v171 = v235.val[1];
        v183 = v235.val[2];
        v147 = v22;
        v159 = v21;
        v125 = v24;
        v135 = v23;
        v107 = v26;
        v115 = v25;
        v93 = v28;
        v99 = v27;
        v83 = v30;
        v87 = v29;
        sub_1003C83B4();
        v30 = v83;
        v29 = v87;
        v28 = v93;
        v27 = v99;
        v26 = v107;
        v25 = v115;
        v24 = v125;
        v23 = v135;
        v22 = v147;
        v21 = v159;
        v235.val[1] = v171;
        v235.val[2] = v183;
        v233.val[1] = v195;
        v233.val[2] = v207;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_19:
          v31 = xmmword_1004B0030;
          v32 = xmmword_1004B0010;
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_20;
          }

          goto LABEL_35;
        }

LABEL_34:
        v196 = v233.val[1];
        v208 = v233.val[2];
        v172 = v235.val[1];
        v184 = v235.val[2];
        v148 = v22;
        v160 = v21;
        v126 = v24;
        v136 = v23;
        v108 = v26;
        v116 = v25;
        v94 = v28;
        v100 = v27;
        v84 = v30;
        v88 = v29;
        sub_1003C83FC();
        v30 = v84;
        v29 = v88;
        v28 = v94;
        v27 = v100;
        v26 = v108;
        v25 = v116;
        v24 = v126;
        v23 = v136;
        v22 = v148;
        v21 = v160;
        v235.val[1] = v172;
        v235.val[2] = v184;
        v233.val[1] = v196;
        v233.val[2] = v208;
        v31 = xmmword_1004B0030;
        v32 = xmmword_1004B0010;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
LABEL_20:
          if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_36;
          }

          goto LABEL_21;
        }

LABEL_35:
        v197 = v233.val[1];
        v209 = v233.val[2];
        v173 = v235.val[1];
        v185 = v235.val[2];
        v149 = v22;
        v161 = v21;
        v127 = v24;
        v137 = v23;
        v109 = v26;
        v117 = v25;
        v95 = v28;
        v101 = v27;
        v85 = v30;
        v89 = v29;
        sub_1003C83B4();
        v30 = v85;
        v29 = v89;
        v28 = v95;
        v27 = v101;
        v26 = v109;
        v25 = v117;
        v24 = v127;
        v23 = v137;
        v22 = v149;
        v21 = v161;
        v235.val[1] = v173;
        v235.val[2] = v185;
        v233.val[1] = v197;
        v233.val[2] = v209;
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
LABEL_36:
          v198 = v233.val[1];
          v210 = v233.val[2];
          v174 = v235.val[1];
          v186 = v235.val[2];
          v150 = v22;
          v162 = v21;
          v128 = v24;
          v138 = v23;
          v110 = v26;
          v118 = v25;
          v96 = v28;
          v102 = v27;
          v86 = v30;
          v90 = v29;
          sub_1003C83FC();
          v30 = v86;
          v29 = v90;
          v28 = v96;
          v27 = v102;
          v26 = v110;
          v25 = v118;
          v24 = v128;
          v23 = v138;
          v22 = v150;
          v21 = v162;
          v235.val[1] = v174;
          v235.val[2] = v186;
          v233.val[1] = v198;
          v233.val[2] = v210;
        }

LABEL_21:
        v33 = vmulq_f32(vminq_f32(vmaxq_f32(v233.val[2], 0), v216), v215);
        v34 = vmulq_f32(vminq_f32(vmaxq_f32(v233.val[1], 0), v216), v215);
        v35 = vmulq_f32(vminq_f32(vmaxq_f32(v22, 0), v216), v215);
        v36 = vmulq_f32(vminq_f32(vmaxq_f32(v235.val[2], 0), v216), v215);
        v37 = vmulq_f32(vminq_f32(vmaxq_f32(v235.val[1], 0), v216), v215);
        v38 = vmulq_f32(vminq_f32(vmaxq_f32(v21, 0), v216), v215);
        sub_1002E423C(qword_1004D3F60, v232, &v231, &v230, vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v33, vorrq_s8(vandq_s8(v24, v33), v23)))), vcvtq_s32_f32(vaddq_f32(v36, vorrq_s8(vandq_s8(v26, v36), v25)))), vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v34, vorrq_s8(vandq_s8(v28, v34), v27)))), vcvtq_s32_f32(vaddq_f32(v37, vorrq_s8(vandq_s8(v30, v37), v29)))), vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v35, vorrq_s8(vandq_s8(v32, v35), v31)))), vcvtq_s32_f32(vaddq_f32(v38, vorrq_s8(vandq_s8(xmmword_1004B0010, v38), xmmword_1004B0030)))));
        v39 = vdupq_n_s32(0x3C800000u);
        v234.val[0] = vmulq_f32(vcvtq_f32_s32(vmovl_s16(*v232[0].i8)), v213);
        v40.i64[0] = 0xC3000000C3000000;
        v40.i64[1] = 0xC3000000C3000000;
        v234.val[1] = vaddq_f32(vmulq_f32(vcvtq_f32_s32(vmovl_s16(*v231.i8)), v39), v40);
        v234.val[2] = vaddq_f32(vmulq_f32(vcvtq_f32_s32(vmovl_s16(*v230.i8)), v39), v40);
        v41 = vmulq_f32(vcvtq_f32_s32(vmovl_high_s16(v232[0])), v213);
        a9 = vaddq_f32(vmulq_f32(vcvtq_f32_s32(vmovl_high_s16(v231)), v39), v40);
        a10 = vaddq_f32(vmulq_f32(vcvtq_f32_s32(vmovl_high_s16(v230)), v39), v40);
        v42 = v19 + 24;
        vst3q_f32(v19, v234);
        v43 = v19 + 12;
        vst3q_f32(v43, *(&a9 - 1));
        v13 += 24;
        a2 += 32 * v228;
        v19 = v42;
        if (v226 <= v13)
        {
          goto LABEL_39;
        }
      }
    }

    v13 = 0;
LABEL_39:
    if (v13 < v212)
    {
      v47 = qword_1004D3F60;
      v48 = &a3[v13 + 1];
      v49 = vdup_n_s32(0x38800000u);
      v50 = vdup_n_s32(0x43800000u);
      do
      {
        v51 = *(a2 + 4 * v12);
        v52 = v51 * 16384.0;
        if (v51 > 1.0)
        {
          v52 = 16384.0;
        }

        if (v51 >= 0.0)
        {
          v53 = v52;
        }

        else
        {
          v53 = 0.0;
        }

        v54 = *(a2 + 4);
        v55 = v54 * 16384.0;
        if (v54 > 1.0)
        {
          v55 = 16384.0;
        }

        _NF = v54 < 0.0;
        v56 = *(a2 + 4 * (v12 ^ 2));
        if (_NF)
        {
          v55 = 0.0;
        }

        v57 = v56 * 16384.0;
        if (v56 > 1.0)
        {
          v57 = 16384.0;
        }

        if (v56 >= 0.0)
        {
          v58 = v57;
        }

        else
        {
          v58 = 0.0;
        }

        v232[0].i32[0] = 0;
        v231.i32[0] = 0;
        v230.i32[0] = 0;
        sub_1002E4664(rintf(v53), rintf(v55), rintf(v58), v47, v232[0].i32, v231.i32, v230.i32);
        v48[-1].f32[1] = (v232[0].i32[0] * 0.000061035) * 100.0;
        *v48 = vmla_f32(0xC3000000C3000000, v50, vmul_f32(vcvt_f32_s32(__PAIR64__(v230.u32[0], v231.u32[0])), v49));
        v48 = (v48 + 12);
        v13 += 3;
        a2 += 4 * v228;
      }

      while (v212 > v13);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((atomic_load_explicit(qword_1004B0FD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_1004B0FD8))
  {
    sub_10029D334(&v231, 0x10u);
    sub_10029D334(&v230, 0x74u);
    sub_10029D700(&v231, &v230, v232);
    dword_1004B0FD0 = v232[0].i32[0];
    __cxa_guard_release(qword_1004B0FD8);
  }

  if (v13 < v212)
  {
    v59 = v13;
    v60 = (a2 + 4);
    v61 = 4 * v228;
    v62 = &a3[v13 + 1];
    v214 = vdup_n_s32(0x44800000u);
    do
    {
      v66 = *(v60 - 1);
      v65 = *v60;
      if (v66 <= 1.0)
      {
        v67 = *(v60 - 1);
      }

      else
      {
        v67 = 1.0;
      }

      if (v66 >= 0.0)
      {
        a9.f32[0] = v67;
      }

      else
      {
        a9.f32[0] = 0.0;
      }

      a10.i64[0] = 0;
      if (v65 >= 0.0)
      {
        a10.i32[0] = 1.0;
        if (v65 <= 1.0)
        {
          a10.f32[0] = *v60;
        }
      }

      v68 = v60[1];
      if (v68 <= 1.0)
      {
        v69 = v60[1];
      }

      else
      {
        v69 = 1.0;
      }

      if (v68 >= 0.0)
      {
        v70 = v69;
      }

      else
      {
        v70 = 0.0;
      }

      if (v11)
      {
        a9.i32[1] = a10.i32[0];
        v71 = vmul_f32(*a9.f32, v214);
        v72 = vmin_s32(vmax_s32(vcvt_n_s32_f32(*a9.f32, 0xAuLL), 0), 0x300000003);
        v73 = vshl_n_s32(v72, 2uLL);
        a9.f32[0] = *(v11 + 4 * v73.u32[0]) + ((*(v11 + 4 * v73.u32[0] + 4) + ((*(v11 + 4 * v73.u32[0] + 8) + (*(v11 + 4 * v73.u32[0] + 12) * (v71.f32[0] - v72.u32[0]))) * (v71.f32[0] - v72.u32[0]))) * (v71.f32[0] - v72.u32[0]));
        a10.f32[0] = *(v11 + 4 * v73.u32[1]) + ((*(v11 + 4 * v73.u32[1] + 4) + ((*(v11 + 4 * v73.u32[1] + 8) + (*(v11 + 4 * v73.u32[1] + 12) * (v71.f32[1] - v72.u32[1]))) * (v71.f32[1] - v72.u32[1]))) * (v71.f32[1] - v72.u32[1]));
        v74 = vcvts_n_s32_f32(v70, 0xAuLL);
        v75 = v74 & ~(v74 >> 31);
        if (v75 >= 1023)
        {
          v75 = 1023;
        }

        v70 = *(v11 + 16 * v75) + ((*(v11 + 16 * v75 + 4) + ((*(v11 + 16 * v75 + 8) + (*(v11 + 16 * v75 + 12) * ((v70 * 1024.0) - v75))) * ((v70 * 1024.0) - v75))) * ((v70 * 1024.0) - v75));
      }

      v76 = ((v224 * a10.f32[0]) + (a9.f32[0] * v225)) + (v70 * v223);
      v227 = a10;
      v229 = a9;
      if (v76 <= 0.008856)
      {
        v78 = *&dword_1004B0FD0 + (v76 * 7.787);
      }

      else
      {
        v77 = sub_100242450(v76);
        a10 = v227;
        a9 = v229;
        v78 = v77;
      }

      v79 = ((v221 * a10.f32[0]) + (a9.f32[0] * v222)) + (v70 * v220);
      if (v79 <= 0.008856)
      {
        v81 = *&dword_1004B0FD0 + (v79 * 7.787);
      }

      else
      {
        v80 = sub_100242450(((v221 * a10.f32[0]) + (a9.f32[0] * v222)) + (v70 * v220));
        a10 = v227;
        a9 = v229;
        v81 = v80;
      }

      v82 = ((v218 * a10.f32[0]) + (a9.f32[0] * v219)) + (v70 * v217);
      if (v82 <= 0.008856)
      {
        v63 = *&dword_1004B0FD0 + (v82 * 7.787);
      }

      else
      {
        v63 = sub_100242450(v82);
      }

      v64 = (v81 * 116.0) + -16.0;
      if (v79 <= 0.008856)
      {
        v64 = v79 * 903.3;
      }

      *(v62 - 1) = v64;
      *v62 = (v78 - v81) * 500.0;
      v62[1] = (v81 - v63) * 200.0;
      v59 += 3;
      v60 = (v60 + v61);
      v62 += 3;
    }

    while (v59 < v212);
  }
}