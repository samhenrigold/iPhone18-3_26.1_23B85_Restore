void sub_2337BBD5C(os_signpost_id_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CPacked12Unpacker", &unk_233945DBE, buf, 2u);
  }

  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = sub_2337BC3FC;
  v52[3] = &unk_2789EE800;
  v52[4] = a1;
  v4 = MEMORY[0x2383AC810](v52);
  v6 = *(a1 + 44);
  v5 = *(a1 + 48);
  if (*(a1 + 196) == 1)
  {
    v7 = 16;
  }

  else
  {
    v7 = 15;
  }

  if (*(a1 + 196) == 1)
  {
    v8 = (2 * ((3435973837u * (v6 + 9)) >> 32)) & 0xFFFFFFF0;
  }

  else
  {
    v8 = ((3 * v6) >> 1) & 0x1FFFFFFF;
  }

  v47 = *(a1 + 188);
  if (v5 * v6 > (*(*a1 + 152))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = *(a1 + 192);
  *buf = 0;
  if (v9)
  {
    if (v9 == 2)
    {
      v10 = v8 * (v5 >> 1);
      if (v10 > (*(*a1 + 152))(a1) >> 1)
      {
        v42 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v42, "RawCameraException");
        __cxa_throw(v42, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      *buf = ((*(*a1 + 152))(a1) >> 1) - v10;
    }

    v44 = 0;
    v11 = 0;
    v46 = 2 * v6;
    v12 = v6 & 0xFFFFFFF8;
    v45 = (v9 - 1) * v6;
    v48 = v5;
    v49 = v9;
    v43 = v4;
    do
    {
      v13 = sub_2337ADCC4(a1);
      if (v44 < v5)
      {
        v14 = (v13 + 2 * v6 * v44);
        v15 = v44;
        do
        {
          v16 = &v14[v46 - v8];
          if (&v16[v8] > (*(*a1 + 120))(a1))
          {
            v40 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](v40, "RawCameraException");
            __cxa_throw(v40, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          (*(**(a1 + 24) + 32))(*(a1 + 24), &v14[v46 - v8], v8);
          v17 = &v16[v11];
          v18 = v47;
          if (v15)
          {
            v18 = 0;
          }

          else
          {
            v11 = v47;
          }

          if (*(a1 + 197))
          {
            if (v12)
            {
              v19 = 0;
              v5 = v48;
              do
              {
                v20 = bswap32(*v17);
                v21 = bswap32(*(v17 + 1));
                v22 = bswap32(*(v17 + 2));
                *v14 = (16 * v20) | (v20 >> 12);
                *(v14 + 1) = v20 & 0xF00 | BYTE2(v20);
                *(v14 + 2) = (v20 >> 20) & 0xFF0 | (v21 >> 4);
                *(v14 + 3) = BYTE1(v21) | ((v21 & 0xF) << 8);
                *(v14 + 4) = (v21 >> 12) & 0xFF0 | (v21 >> 28);
                *(v14 + 5) = v22 | ((HIBYTE(v21) & 0xF) << 8);
                *(v14 + 6) = (v22 & 0xFF00 | BYTE2(v22)) >> 4;
                *(v14 + 7) = (v22 >> 8) & 0xF00 | HIBYTE(v22);
                v17 += 12;
                v14 += 16;
                v19 += 8;
              }

              while (v19 < v12);
              v23 = (((v6 & 0xFFFFFFF8) - 1) & 0xFFFFFFF8) + 8;
            }

            else
            {
              v23 = 0;
              v5 = v48;
            }

            if (v23 < v6)
            {
              v14 += 4 * ((v6 + ~v23) >> 1) + 4;
            }
          }

          else
          {
            if (v6 == v6 % 0xA)
            {
              v24 = 0;
              v5 = v48;
            }

            else
            {
              v24 = 0;
              v5 = v48;
              do
              {
                v25 = v17[1];
                v26 = (v25 >> 4) | (16 * *v17);
                v27 = v17[2] | ((v25 & 0xF) << 8);
                v28 = v17[4];
                LOWORD(v25) = (v28 >> 4) | (16 * v17[3]);
                v29 = v17[5] | ((v28 & 0xF) << 8);
                *v14 = v26;
                *(v14 + 1) = v27;
                v30 = v17[7];
                v31 = (v30 >> 4) | (16 * v17[6]);
                LOWORD(v28) = v17[8] | ((v30 & 0xF) << 8);
                *(v14 + 2) = v25;
                *(v14 + 3) = v29;
                v32 = v17[10];
                v33 = (v32 >> 4) | (16 * v17[9]);
                v34 = v17[11] | ((v32 & 0xF) << 8);
                *(v14 + 4) = v31;
                *(v14 + 5) = v28;
                v35 = v17[13];
                v36 = (v35 >> 4) | (16 * v17[12]);
                LOWORD(v28) = v17[14] | ((v35 & 0xF) << 8);
                *(v14 + 6) = v33;
                *(v14 + 7) = v34;
                *(v14 + 8) = v36;
                *(v14 + 9) = v28;
                v17 += v7;
                v14 += 20;
                v24 += 10;
              }

              while (v24 < 10 * (v6 / 0xA));
            }

            while (v24 < v6)
            {
              v37 = v17[1];
              v38 = v17[2] | ((v37 & 0xF) << 8);
              *v14 = (v37 >> 4) | (16 * *v17);
              *(v14 + 1) = v38;
              v17 += 3;
              v14 += 4;
              v24 += 2;
            }
          }

          v8 += v18;
          v14 += 2 * v45;
          v15 += v49;
        }

        while (v15 < v5);
      }

      v4 = v43;
      if (!v44 && *buf)
      {
        v39 = *(a1 + 24);
        sub_233723AE0(&v50, buf);
        (*(*v39 + 40))(v39, &v50, 1);
        v5 = v48;
      }

      ++v44;
    }

    while (v44 != v49);
  }

  v4[2](v4);
}

void sub_2337BC3FC(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CPacked12Unpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337BC49C(void *a1)
{
  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337BC4D4(os_signpost_id_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "COlympus2FieldPacked12Unpacker", &unk_233945DBE, &buf, 2u);
  }

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_2337BC98C;
  v43[3] = &unk_2789EE800;
  v43[4] = a1;
  v4 = MEMORY[0x2383AC810](v43);
  v5 = *(a1 + 44);
  if ((v5 - 7001) < 0xFFFFE88F || (v6 = *(a1 + 48), (v6 - 7001) <= 0xFFFFE88E))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v7 = (*(*a1 + 152))(a1);
  v8 = ((3 * v5) >> 1) & 0x1FFFFFFF;
  if (v7 < v8 * v6)
  {
    v38 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v38, "RawCameraException");
    __cxa_throw(v38, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = 0;
  v41 = (2 * v5);
  v10 = -v8;
  v11 = (v5 * v6);
  v12 = 1;
  v39 = v4;
  do
  {
    v40 = v12;
    v13 = sub_2337ADCC4(a1);
    v14 = v6;
    if (v9 < v6)
    {
      v15 = (v13 + 2 * v9 * v5);
      do
      {
        v16 = sub_2337ADCC4(a1);
        v17 = v15 + v41;
        if (v15 + v41 > v16 + 2 * v11)
        {
          v36 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v36, "RawCameraException");
          __cxa_throw(v36, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v18 = &v17[v10];
        (*(**(a1 + 24) + 32))(*(a1 + 24), &v17[v10], ((3 * v5) >> 1) & 0x1FFFFFFF);
        v19 = 0;
        do
        {
          v20 = v18[1];
          v21 = (v20 >> 4) | (16 * *v18);
          v22 = v18[2] | ((v20 & 0xF) << 8);
          v23 = v18[4];
          LOWORD(v20) = (v23 >> 4) | (16 * v18[3]);
          v24 = v18[5] | ((v23 & 0xF) << 8);
          *v15 = v21;
          v15[1] = v22;
          v25 = v18[7];
          v26 = (v25 >> 4) | (16 * v18[6]);
          LOWORD(v23) = v18[8] | ((v25 & 0xF) << 8);
          v15[2] = v20;
          v15[3] = v24;
          v27 = v18[10];
          v28 = (v27 >> 4) | (16 * v18[9]);
          v29 = v18[11] | ((v27 & 0xF) << 8);
          v15[4] = v26;
          v15[5] = v23;
          v30 = v18[13];
          v31 = (v30 >> 4) | (16 * v18[12]);
          LOWORD(v23) = v18[14] | ((v30 & 0xF) << 8);
          v15[6] = v28;
          v15[7] = v29;
          v15[8] = v31;
          v15[9] = v23;
          v18 += 15;
          v15 += 10;
          v19 += 10;
        }

        while (v19 < v5 - v5 % 0xAu);
        if (v19 < v5)
        {
          v32 = 0;
          do
          {
            v33 = v18[v32 + 1];
            v34 = v18[v32 + 2] | ((v33 & 0xF) << 8);
            *v15 = (v33 >> 4) | (16 * v18[v32]);
            v15[1] = v34;
            v15 += 2;
            v19 += 2;
            v32 += 3;
          }

          while (v19 < v5);
        }

        v15 += v5;
        LODWORD(v9) = v9 + 2;
      }

      while (v9 < v14);
    }

    v6 = v14;
    if ((v40 & (*(a1 + 188) != 0)) != 0)
    {
      v35 = *(a1 + 24);
      sub_233723AE0(&buf, (a1 + 188));
      (*(*v35 + 40))(v35, &buf, 1);
    }

    v12 = 0;
    v9 = 1;
  }

  while ((v40 & 1) != 0);
  v39[2](v39);
}

void sub_2337BC98C(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "COlympus2FieldPacked12Unpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337BCA14(void *a1)
{
  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337BCA4C(os_signpost_id_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CUnpackedUnpacker", &unk_233945DBE, buf, 2u);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2337BCD64;
  v24[3] = &unk_2789EE800;
  v24[4] = a1;
  v4 = MEMORY[0x2383AC810](v24);
  if (*(a1 + 188) >= 0x11u)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = *(a1 + 44);
  v6 = *(a1 + 48);
  if (2 * v5 * v6 > (*(*a1 + 152))(a1))
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v22, "RawCameraException");
    __cxa_throw(v22, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v23 = v4;
  v7 = sub_2337AF4A8(a1);
  v8 = *(a1 + 188);
  v9 = sub_2337ADCC4(a1);
  if (v6 >= 1)
  {
    v10 = v9;
    v11 = 0;
    v12 = 16 - v8;
    v13 = v7 == 1;
    v14 = v7 != 1;
    v15 = v13;
    do
    {
      (*(**(a1 + 24) + 32))(*(a1 + 24), v10, 2 * v5);
      v16 = v10 + v15;
      v17 = v10 + v14;
      if (v5 >> 1 >= 1)
      {
        v18 = v10 + 1;
        v19 = v5 >> 1;
        do
        {
          v20 = (v17[2] | (v16[2] << 8)) >> v12;
          *(v18 - 1) = (*v17 | (*v16 << 8)) >> v12;
          *v18 = v20;
          v18 += 2;
          v16 += 4;
          v17 += 4;
          --v19;
        }

        while (v19);
        v10 = v18 - 1;
      }

      if (v5)
      {
        *v10++ = (*v17 | (*v16 << 8)) >> v12;
      }

      ++v11;
    }

    while (v11 != v6);
  }

  v23[2](v23);
}

void sub_2337BCD64(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CUnpackedUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337BCDEC(os_signpost_id_t a1, _WORD *a2, unsigned int *a3, uint64_t a4)
{
  v7 = sub_23378E038(a1);
  v8 = v7;
  if (a1 + 1 >= 2 && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CUnpackedUnpacker", &unk_233945DBE, buf, 2u);
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_2337BD118;
  v31[3] = &unk_2789EE800;
  v31[4] = a1;
  v9 = MEMORY[0x2383AC810](v31);
  if (*(a1 + 188) >= 0x11u)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = *(a1 + 44);
  v11 = *(a1 + 48);
  v25 = *a3;
  v12 = a3[2];
  v24 = a3[1];
  v27 = a3[3];
  if ((*(*a1 + 152))(a1) < 2 * v10 * v11)
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v22, "RawCameraException");
    __cxa_throw(v22, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v23 = v9;
  v13 = sub_2337AF4A8(a1);
  if (v27)
  {
    v14 = 0;
    v15 = 16 - *(a1 + 188);
    v16 = v13 != 1;
    v17 = v13 == 1;
    do
    {
      v18 = *(a1 + 24);
      *buf = 2 * (v25 + (v14 + v24) * v10);
      v32 = *(a1 + 40);
      v29 = *sub_233785BD0(&v32, buf);
      sub_233726938(&v30, &v29);
      (*(*v18 + 24))(v18, a2, (2 * v12), &v30);
      v19 = v12;
      v20 = a2;
      if (v12)
      {
        do
        {
          *v20 = (*(v20 + v16) | (*(v20 + v17) << 8)) >> v15;
          ++v20;
          --v19;
        }

        while (v19);
      }

      ++v14;
      a2 = (a2 + a4);
    }

    while (v14 != v27);
  }

  v23[2](v23);
}

void sub_2337BD118(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CUnpackedUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337BD1A0(void *a1)
{
  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337BD1D8(os_signpost_id_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CUnpackedLE16Shift4Unpacker", &unk_233945DBE, buf, 2u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2337BD430;
  v12[3] = &unk_2789EE800;
  v12[4] = a1;
  v4 = MEMORY[0x2383AC810](v12);
  v5 = sub_2337ADCC4(a1);
  v6 = *(a1 + 44);
  v7 = *(a1 + 48);
  if ((*(*a1 + 152))(a1) < 2 * v6 * v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      (*(**(a1 + 24) + 32))(*(a1 + 24), v5, 2 * v6);
      v9 = v6 >> 1;
      if (v6 >= 2)
      {
        do
        {
          v10 = v5[1] >> 4;
          *v5 >>= 4;
          v5[1] = v10;
          v5 += 2;
          --v9;
        }

        while (v9);
      }

      if (v6)
      {
        *v5++ >>= 4;
      }
    }
  }

  v4[2](v4);
}

void sub_2337BD430(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CUnpackedLE16Shift4Unpacker", &unk_233945DBE, v5, 2u);
  }
}

uint64_t sub_2337BD4C4(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if ((v2 + a2) < 0x21)
  {
    v7 = 0;
    if (!a2)
    {
      return v7;
    }

    goto LABEL_8;
  }

  v3 = 0;
  v5 = *(a1 + 24);
  v4 = *(a1 + 28);
  v6 = *(a1 + 20) + 1;
  *(a1 + 16) = 0;
  *(a1 + 20) = v6;
  if (4 * v6 < v5)
  {
    v3 = bswap32(*(*(a1 + 32) + 4 * v6));
  }

  *(a1 + 28) = v3;
  if (4 * v6 > v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    sub_2338F90E4(exception);
  }

  v7 = v4 & ~(-1 << -v2);
  a2 -= 32 - v2;
  v2 = 0;
  if (a2)
  {
LABEL_8:
    v8 = v2 + a2;
    v7 = (*(a1 + 28) >> -v8) & ~(-1 << a2) | (v7 << a2);
    *(a1 + 16) = v8;
    if (v8 == 32)
    {
      v9 = 0;
      v10 = *(a1 + 24);
      v11 = *(a1 + 20) + 1;
      *(a1 + 16) = 0;
      *(a1 + 20) = v11;
      if (v10 > 4 * v11)
      {
        v9 = bswap32(*(*(a1 + 32) + 4 * v11));
      }

      *(a1 + 28) = v9;
    }
  }

  return v7;
}

uint64_t sub_2337BD5E8(uint64_t a1)
{
  v1 = *(a1 + 28);
  v2 = *(a1 + 16);
  *(a1 + 16) = v2 + 1;
  if (v2 == 31)
  {
    v3 = 0;
    v4 = *(a1 + 24);
    v5 = *(a1 + 20) + 1;
    *(a1 + 16) = 0;
    *(a1 + 20) = v5;
    if (v4 > 4 * v5)
    {
      v3 = bswap32(*(*(a1 + 32) + 4 * v5));
    }

    *(a1 + 28) = v3;
  }

  return (v1 >> ~v2) & 1;
}

uint64_t sub_2337BD638(uint64_t result, unsigned int a2)
{
  v2 = result;
  LODWORD(result) = 0;
  v3 = *(v2 + 28);
  v4 = *(v2 + 16);
  do
  {
    while (1)
    {
      v5 = (0x80000000 >> v4) & v3;
      result = v5 ? result : (result + 1);
      if (v4 != 31)
      {
        break;
      }

      v3 = 0;
      v6 = *(v2 + 24);
      v7 = *(v2 + 20) + 1;
      *(v2 + 16) = 0;
      *(v2 + 20) = v7;
      v8 = 4 * v7;
      if (4 * v7 < v6)
      {
        v3 = bswap32(*(*(v2 + 32) + 4 * v7));
      }

      v4 = 0;
      *(v2 + 28) = v3;
      if (v8 > v6 || v5 != 0 || result >= a2)
      {
        return result;
      }
    }

    ++v4;
  }

  while (!v5 && result < a2);
  *(v2 + 16) = v4;
  return result;
}

void sub_2337BD6E0(_DWORD *a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CUnpackedLE16Shift4Remove0Unpacker", &unk_233945DBE, buf, 2u);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2337BD978;
  v24[3] = &unk_2789EE800;
  v24[4] = a1;
  v4 = MEMORY[0x2383AC810](v24);
  sub_2337BD1D8(a1);
  v5 = a1[11];
  if (v5 <= 1 || (v6 = a1[12], v6 <= 1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v7 = a1[47];
  if ((v7 & 0xC000) == 0x8000)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  if ((v7 & 0xC00) == 0x800)
  {
    v9 = 3;
  }

  else
  {
    v9 = v8;
  }

  if ((v7 & 0x3000) == 0x2000)
  {
    v10 = 3;
  }

  else
  {
    v10 = v8;
  }

  v11 = v6 - 2;
  if (v10 < v6 - 2)
  {
    v12 = v5 - 2;
    v13 = -2 * v5;
    do
    {
      v14 = sub_2337ADCC4(a1);
      if (v9 < v12)
      {
        v15 = (v14 + 2 * v10 * v5 + 2 * v9);
        v16 = v9;
        do
        {
          if (!*v15)
          {
            v17 = v15[2 * v5];
            v18 = *(v15 - 2);
            v19 = v15[2];
            if (v15[v13])
            {
              v20 = v17 == 0;
            }

            else
            {
              v20 = 1;
            }

            if (!v20 && v19 != 0 && v18 != 0)
            {
              *v15 = (v15[v13] + v17 + v18 + v19 + 2) >> 2;
            }
          }

          v16 += 2;
          v15 += 2;
        }

        while (v16 < v12);
      }

      v10 += 2;
    }

    while (v10 < v11);
  }

  v4[2](v4);
}

void sub_2337BD978(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CUnpackedLE16Shift4Remove0Unpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337BDA00(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v24 = *MEMORY[0x277D85DE8];
  v2 = sub_23378E038(v1);
  v3 = v2;
  if ((v1 + 1) >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "CSonyUnpacker", &unk_233945DBE, buf, 2u);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2337BDCB8;
  v21[3] = &unk_2789EE800;
  v21[4] = v1;
  v19 = MEMORY[0x2383AC810](v21);
  v20 = 0;
  v4 = sub_2337ADCC4(v1);
  v5 = *(v1 + 44);
  v6 = *(v1 + 48);
  if (v5 >= 0xD20)
  {
    v7 = 3360;
  }

  else
  {
    v7 = v5;
  }

  sub_2337BDD40(v1, &v20 + 1, v22, &v20);
  sub_2337BDFCC(v22, &v20, SHIDWORD(v20));
  if (v6)
  {
    v8 = 0;
    v9 = v20;
    do
    {
      (*(**(v1 + 24) + 32))(*(v1 + 24), buf, (2 * v7));
      if (v5 >= 2)
      {
        v10 = buf;
        v11 = v9;
        v12 = v7 >> 1;
        do
        {
          v13 = v11 + 65;
          v14 = v11++ & 0x7F;
          v15 = v22[v13 & 0x7F] ^ v22[v11 & 0x7F];
          *v10 ^= v15;
          v10 += 4;
          v22[v14] = v15;
          --v12;
        }

        while (v12);
      }

      if (v5)
      {
        v16 = buf;
        v17 = v7;
        do
        {
          v18 = *v16;
          v16 += 2;
          *v4++ = bswap32(v18) >> 16;
          --v17;
        }

        while (v17);
      }

      v9 += v7 >> 1;
      ++v8;
    }

    while (v8 != v6);
  }

  v19[2](v19);
}

void sub_2337BDCB8(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CSonyUnpacker", &unk_233945DBE, v5, 2u);
  }
}

uint64_t *sub_2337BDD40(uint64_t a1, int *a2, int *a3, int *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  sub_233754E04(v20, (a1 + 24));
  sub_233735A18(v19, (a1 + 24), 2);
  v18 = 200896;
  v8 = *(a1 + 24);
  sub_2337268D8(&v21, &v18);
  (*(*v8 + 40))(v8, &v21, 0);
  v18 = (4 * sub_233725510(*(a1 + 24)) - 1);
  v9 = *(a1 + 24);
  sub_2337268D8(&v21, &v18);
  (*(*v9 + 40))(v9, &v21, 1);
  *a2 = sub_233725614(*(a1 + 24));
  v18 = 164600;
  v10 = *(a1 + 24);
  sub_2337268D8(&v21, &v18);
  (*(*v10 + 40))(v10, &v21, 0);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  (*(**(a1 + 24) + 32))(*(a1 + 24), &v21, 40);
  sub_2337BDFCC(a3, a4, *a2);
  v11 = 0;
  v12 = *a4;
  *a4 += 10;
  do
  {
    v13 = *(&v21 + v11);
    v14 = v12 + 65;
    v15 = v12++ & 0x7F;
    v16 = a3[v14 & 0x7F] ^ a3[v12 & 0x7F];
    a3[v15] = v16;
    *(&v21 + v11) = v16 ^ v13;
    v11 += 4;
  }

  while (v11 != 40);
  *a2 = *(&v22 + 6);
  sub_233735A90(v19);
  return sub_233725FD4(v20);
}

void sub_2337BDF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_233735A90(va);
  sub_233725FD4(va1);
  _Unwind_Resume(a1);
}

int *sub_2337BDFCC(int *result, _DWORD *a2, int a3)
{
  v3 = 48828125 * a3 + 1;
  v4 = 48828125 * v3 + 1;
  v5 = 48828125 * v4 + 1;
  *result = v3;
  result[1] = v4;
  v6 = ((97656250 * v5) | ((v5 ^ v3) >> 31)) + 2;
  result[2] = v5;
  result[3] = v6;
  v7 = result + 4;
  v8 = 123;
  do
  {
    v9 = v5 ^ v3;
    v3 = *(v7 - 3);
    v5 = v6;
    HIDWORD(v10) = v9;
    LODWORD(v10) = v6 ^ v3;
    v6 = v10 >> 31;
    *v7++ = v6;
    --v8;
  }

  while (v8);
  for (i = 0; i != 127; ++i)
  {
    result[i] = bswap32(result[i]);
  }

  *a2 = 127;
  return result;
}

uint64_t sub_2337BE06C(uint64_t a1)
{
  (*(*a1 + 72))(&v7);
  v2 = v7;
  v3 = (*(*a1 + 120))(a1);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2337BE4E0;
  v6[3] = &unk_2789EEF28;
  v6[4] = a1;
  v4 = sub_2337BE174(v2, @"lensCorrectionFilter", v3, v6);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v4;
}

void sub_2337BE15C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337BE174(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  sub_2337BEBCC(v7, v5, &__p);
  v9 = sub_233735E3C(a1 + 24, &__p);
  if (a1 + 32 == v9)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2337BEDA4;
    v20[3] = &unk_2789EEF70;
    v12 = v8;
    v21 = v12;
    sub_23386DB28(a1, v7, v20, &p_p);
    v13 = p_p;
    if (p_p)
    {
      v14 = sub_23386FD70(p_p);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v11 = [v14 longLongValue];
    }

    else
    {
      v11 = 0;
    }

    if (v25)
    {
      sub_2337239E8(v25);
    }

    if (!v13)
    {
      v11 = v12[2](v12);
    }

    p_p = &__p;
    v15 = sub_2337BEEAC((a1 + 24), &__p, &unk_233905F1C, &p_p, v23);
    v16 = (v15 + 7);
    v23[1] = v11;
    v23[0] = sub_2337BF0C8;
    if (v23 != v15 + 7)
    {
      v17 = *v16;
      if (*v16)
      {
        p_p = 0;
        v25 = 0;
        v17(2, v16, &p_p, 0, 0);
        v23[0](2, v23, v16, 0, 0);
        (p_p)(2, &p_p, v23, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        *(v15 + 16) = v11;
        v15[7] = sub_2337BF0C8;
        v23[0] = 0;
      }
    }

    sub_2337BF090(v23);
  }

  else
  {
    v10 = sub_2337BEDF0((v9 + 56));
    if (!v10)
    {
      sub_2337BEE3C();
    }

    v11 = *v10;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_2337BE450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  __cxa_free_exception(v28);

  if (a26)
  {
    sub_2337239E8(a26);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2337BE4E8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(*a1 + 72))(&v7);
  v4 = v7;
  v5 = (*(*a1 + 120))(a1);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2337BEAF8;
  v6[3] = &unk_2789EEF48;
  v6[4] = a1;
  sub_2337BE5F8(v4, @"lensCorrectionParameters", v5, v6, a2);
  if (v8)
  {
    sub_2337239E8(v8);
  }
}

void sub_2337BE5E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337BE5F8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = a3;
  v9 = a2;
  v29 = a4;
  v30 = v9;
  sub_2337BEBCC(v9, v6, &v40);
  v10 = sub_233735E3C(a1 + 24, &v40);
  if (a1 + 32 == v10)
  {
    LOBYTE(__p) = 0;
    v39 = 0;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_2337BF1E4;
    v33[3] = &unk_2789EEF98;
    v28 = v29;
    v34 = v28;
    sub_23386DB28(a1, v9, v33, &v35);
    if (v35)
    {
      v12 = sub_23386FD70(v35);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v13 = 0;
      __src = 0uLL;
      v32 = 0;
      while (v13 < [v12 count])
      {
        v14 = [v12 objectAtIndexedSubscript:v13];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v26 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v26, "RawCameraException");
          __cxa_throw(v26, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        [v14 doubleValue];
        v16 = __src.n128_u64[1];
        if (__src.n128_u64[1] >= v32)
        {
          v18 = __src.n128_u64[0];
          v19 = __src.n128_u64[1] - __src.n128_u64[0];
          v20 = (__src.n128_u64[1] - __src.n128_u64[0]) >> 3;
          v21 = v20 + 1;
          if ((v20 + 1) >> 61)
          {
            sub_2337235BC();
          }

          v22 = v32 - __src.n128_u64[0];
          if ((v32 - __src.n128_u64[0]) >> 2 > v21)
          {
            v21 = v22 >> 2;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            sub_233723798(&__src, v23);
          }

          *(8 * v20) = v15;
          v17 = 8 * v20 + 8;
          memcpy(0, v18, v19);
          v24 = __src.n128_u64[0];
          __src.n128_u64[0] = 0;
          __src.n128_u64[1] = v17;
          v32 = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *__src.n128_u64[1] = v15;
          v17 = v16 + 8;
        }

        __src.n128_u64[1] = v17;

        ++v13;
      }

      sub_2337BF26C(&__p, &__src);
      if (__src.n128_u64[0])
      {
        __src.n128_u64[1] = __src.n128_u64[0];
        operator delete(__src.n128_u64[0]);
      }
    }

    if (v36)
    {
      sub_2337239E8(v36);
    }

    if ((v39 & 1) == 0)
    {
      (v28)[2](&__src);
      sub_233767718(&__p, &__src);
      if (__src.n128_u64[0])
      {
        __src.n128_u64[1] = __src.n128_u64[0];
        operator delete(__src.n128_u64[0]);
      }

      if ((v39 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    __src.n128_u64[0] = &v40;
    v25 = sub_2337BEEAC((a1 + 24), &v40, &unk_233905F1C, &__src, &v35);
    sub_2337BF2E8((v25 + 7), &__p);
    if ((v39 & 1) == 0)
    {
LABEL_41:
      sub_233728FA8();
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_2337236E0(a5, __p, v38, (v38 - __p) >> 3);
    if (v39 == 1 && __p)
    {
      v38 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v11 = sub_2337BF434((v10 + 56));
    if (!v11)
    {
      sub_2337BEE3C();
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_2337236E0(a5, *v11, v11[1], (v11[1] - *v11) >> 3);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }
}

void sub_2337BE9FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, uint64_t a25, char a26)
{
  __cxa_free_exception(v27);

  if (a22)
  {
    sub_2337239E8(a22);
  }

  if (a26 == 1 && __p)
  {
    operator delete(__p);
  }

  if (*(v28 - 105) < 0)
  {
    operator delete(*(v28 - 128));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2337BEB00(uint64_t a1)
{
  *a1 = &unk_2849121B8;
  v3 = (a1 + 400);
  sub_233735AD4(&v3);
  return sub_233736628(a1);
}

uint64_t sub_2337BEB5C(uint64_t a1)
{
  *a1 = &unk_2849121B8;
  v4 = (a1 + 400);
  sub_233735AD4(&v4);
  v2 = sub_233736628(a1);
  return MEMORY[0x2383ABF10](v2, 0x10A1C4009B45E12);
}

void sub_2337BEBCC(void *a1@<X1>, int a2@<W2>, std::string *a3@<X8>)
{
  v5 = a1;
  v6 = [v5 UTF8String];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2337304FC();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v7;
  if (v7)
  {
    memmove(&__dst, v6, v7);
  }

  __dst.__r_.__value_.__s.__data_[v8] = 0;
  v9 = std::string::append(&__dst, "_", 1uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v13 = std::string::append(&v16, p_p, size);
  *a3 = *v13;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_2337BED4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2337BEDA4(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = (*(*(a1 + 32) + 16))();

  return [v1 numberWithUnsignedInt:v2];
}

uint64_t (**sub_2337BEDF0(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_28490C218, &unk_233905F18);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_2337BEE3C()
{
  exception = __cxa_allocate_exception(8uLL);
  exception->__vftable = 0;
  v1 = sub_2337BEE74(exception);
  __cxa_throw(v1, MEMORY[0x277D82758], sub_2337BEEA8);
}

std::bad_cast *sub_2337BEE74(std::bad_cast *a1)
{
  result = std::bad_cast::bad_cast(a1);
  result->__vftable = (MEMORY[0x277D828D0] + 16);
  return result;
}

void *sub_2337BEEAC(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *sub_233757640(a1, &v7, a2);
  if (!v5)
  {
    sub_2337BEF54();
  }

  return v5;
}

char **sub_2337BEFF4(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2337BF040(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2337BF040(uint64_t a1)
{
  sub_2337BF090((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t (**sub_2337BF090(uint64_t (**result)(void, void, void, void, void)))(void, void, void, void, void)
{
  if (*result)
  {
    return (*result)(0, result, 0, 0, 0);
  }

  return result;
}

void *sub_2337BF0C8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_2337BF0C8;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = sub_2337BF0C8;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_28490C218;
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, &unk_28490C218);
  }

  else
  {
    v6 = a5 == &unk_233905F18;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

BOOL sub_2337BF190(uint64_t a1, uint64_t a2)
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

id sub_2337BF1E4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))(__p);
  v1 = sub_2337BF480(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v1;
}

void sub_2337BF250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char **sub_2337BF26C(char **a1, char **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_23373176C(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    sub_2337236E0(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t sub_2337BF2E8(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  sub_2337236E0(v5 + 1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  *&v5[0] = sub_2337BF558;
  if (v5 != a1)
  {
    v3 = *a1;
    if (*a1)
    {
      v6[0] = 0;
      v6[1] = 0;
      v3(2, a1, v6, 0, 0);
      (*&v5[0])(2, v5, a1, 0, 0);
      (v6)[0](2, v6, v5, 0, 0);
      sub_2337BF090(v6);
    }

    else
    {
      *(a1 + 8) = *(v5 + 8);
      *(a1 + 24) = *(&v5[1] + 1);
      memset(v5 + 8, 0, 24);
      *a1 = sub_2337BF558;
      *&v5[0] = 0;
    }
  }

  sub_2337BF090(v5);
  return a1;
}

void sub_2337BF428(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_233721B78(a1);
}

uint64_t (**sub_2337BF434(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_28490C228, &unk_233905F20);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_2337BF480(double **a1)
{
  v2 = sub_233755CB8(a1[1] - *a1);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = [MEMORY[0x277CCABB0] numberWithDouble:*v3];
      [v2 addObject:v5];

      ++v3;
    }

    while (v3 != v4);
  }

  v6 = [MEMORY[0x277CBEA60] arrayWithArray:v2];

  return v6;
}

void *sub_2337BF558(int a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      a3[2] = 0;
      a3[3] = 0;
      a3[1] = 0;
      sub_2337236E0(a3 + 1, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
      result = 0;
      *a3 = sub_2337BF558;
      return result;
    }

    v8 = *(a2 + 8);
    if (v8)
    {
      *(a2 + 16) = v8;
      operator delete(v8);
    }

    result = 0;
LABEL_11:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
    *(a3 + 1) = *(a2 + 8);
    a3[3] = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *a3 = sub_2337BF558;
    goto LABEL_11;
  }

  if (a1 != 3)
  {
    return &unk_28490C228;
  }

  if (a4)
  {
    v7 = sub_2337BF190(a4, &unk_28490C228);
  }

  else
  {
    v7 = a5 == &unk_233905F20;
  }

  if (v7)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

void sub_2337BF660(uint64_t a1)
{
  v5 = &unk_28490CE28;
  v6 = 36;
  (*(*a1 + 160))(&v3);
  v2 = 20;
  strcpy(__p, "CIFF:CanonColorInfo1");
  (*(*v3 + 600))();
  if (v2 < 0)
  {
    operator delete(*__p);
  }

  if (v4)
  {
    sub_2337239E8(v4);
  }
}

void sub_2337BF768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337BF7A4(uint64_t a1, uint64_t a2, char *a3, _DWORD *a4)
{
  __p = 0;
  v13 = 0;
  v14 = 0;
  v6 = sub_2337921EC(a2, a3, &__p);
  v7 = __p;
  if (v6)
  {
    v8 = *(a1 + 8);
    if (v8 < (v13 - __p) >> 2)
    {
      *a4 = *(__p + v8);
      v9 = 1;
LABEL_5:
      v13 = v7;
      operator delete(v7);
      return v9;
    }
  }

  v9 = 0;
  v10 = 0;
  if (__p)
  {
    goto LABEL_5;
  }

  return v10;
}

void sub_2337BF838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337BF854(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t *a5)
{
  v6 = a4;
  if (a4 == 3)
  {
    LODWORD(a4) = 4;
  }

  v7 = sub_2337BF918(a1, a2, a3, a4, a5);
  if (v6 == 3)
  {
    if (v7)
    {
      v8 = *(*a5 + 8);
      v9 = (*a5 + 12);
      v15 = **a5;
      v10 = vld1_dup_f32(v9);
      sub_23372630C(&v16, 3uLL);
      v11 = *a5;
      v12 = v16;
      *a5 = v16;
      *v12 = vrev64_s32(vmul_s32(v10, v15));
      v12[1].i32[0] = v8 * v15.i32[0];
      v13 = a5[2];
      a5[2] = v17;
      *&v16 = v11;
      v17 = v13;
      if (v11)
      {
        *(&v16 + 1) = v11;
        operator delete(v11);
      }
    }
  }

  return 1;
}

uint64_t sub_2337BF918(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, uint64_t *a5)
{
  __p = 0;
  v15 = 0;
  v16 = 0;
  v8 = sub_2337921EC(a2, a3, &__p);
  v9 = __p;
  if (!v8 || *(a1 + 8) + a4 > ((v15 - __p) >> 2))
  {
    v10 = 0;
    goto LABEL_4;
  }

  sub_2337BFA0C(a5, a4);
  v9 = __p;
  if (!a4)
  {
    v10 = 1;
LABEL_4:
    if (!v9)
    {
      return v10;
    }

    goto LABEL_10;
  }

  v11 = 0;
  v12 = *a5;
  do
  {
    *(v12 + 4 * v11) = *&v9[4 * (v11 + *(a1 + 8))];
    ++v11;
  }

  while (a4 != v11);
  v10 = 1;
LABEL_10:
  v15 = v9;
  operator delete(v9);
  return v10;
}

void sub_2337BF9F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337BFA0C(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 4 * a2;
    }
  }

  else
  {
    sub_2337BFA3C(result, a2 - v2);
  }
}

void sub_2337BFA3C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_2337235BC();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_2337235D4(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

double sub_2337BFB98(uint64_t a1)
{
  if (sub_2337F9770(a1))
  {

    return sub_2338127E0(a1);
  }

  else
  {

    return sub_2338191FC();
  }
}

double sub_2337BFBF0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (sub_2337F9854(a1))
  {

    sub_2337F9884(a1, a2);
  }

  else
  {
    v15 = &unk_28490E658;
    (*(*a1 + 160))(&v9, a1);
    v5 = v9;
    sub_23372A488(&__p, "CIFF:CanonShotInfo");
    v6 = sub_233733D74(v5, &__p, &v15);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    if (v10)
    {
      sub_2337239E8(v10);
    }

    if (v6)
    {
      __p = 0;
      v13 = 0;
      v14 = 0;
      sub_2337C0120(&__p, qword_233905F60, qword_233905FF0, 0x12uLL);
      sub_23372A488(&v9, "CIFF:CanonShotInfo");
      v7 = (*(*a1 + 2968))(a1, &v9, &__p);
      if (v11 < 0)
      {
        operator delete(v9);
      }

      (*(*a1 + 2960))(a1, v7);
      if (__p)
      {
        v13 = __p;
        operator delete(__p);
      }
    }

    else
    {
      sub_233730758(a2, 3uLL);
      v8 = *a2;
      result = 1.78;
      *v8 = xmmword_233905F50;
      *(v8 + 16) = 0x3FF5EB851EB851ECLL;
    }
  }

  return result;
}

void sub_2337BFE34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337BFEA8(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v6 = &unk_28490CE28;
  sub_23372A488(__p, "CIFF:CanonColorInfo1");
  (*(*a1 + 2976))(a1, a2, __p, &v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2337BFF70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2337BFFA0(uint64_t a1, uint64_t a2, char *a3, _DWORD *a4)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v5 = sub_2337921EC(a2, a3, &v9);
  v6 = v9;
  v7 = v10 != v9 && v5;
  if (v7)
  {
    *a4 = *v9;
  }

  else if (!v9)
  {
    return 0;
  }

  v10 = v6;
  operator delete(v6);
  return v7;
}

void sub_2337C0020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337C003C(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, uint64_t *a5)
{
  __p = 0;
  v14 = 0;
  v15 = 0;
  v7 = sub_2337921EC(a2, a3, &__p);
  v8 = __p;
  if (!v7 || a4 > ((v14 - __p) >> 2))
  {
    v9 = 0;
    goto LABEL_4;
  }

  sub_2337BFA0C(a5, a4);
  v8 = __p;
  if (!a4)
  {
    v9 = 1;
LABEL_4:
    if (!v8)
    {
      return v9;
    }

    goto LABEL_10;
  }

  v10 = 0;
  v11 = *a5;
  do
  {
    *(v11 + v10) = *&v8[v10];
    v10 += 4;
  }

  while (4 * a4 != v10);
  v9 = 1;
LABEL_10:
  v14 = v8;
  operator delete(v8);
  return v9;
}

void sub_2337C0104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2337C0120(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    sub_233723580(result, a4);
  }

  return result;
}

void sub_2337C0178(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337C0194(uint64_t a1)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_233758F1C(&v6, dword_233906024, &dword_233906024[18], 0x12uLL);
  sub_23372A488(__p, "IFD0:EXIF:MAKERNOTE:ShotInfo");
  v2 = (*(*a1 + 2968))(a1, __p, &v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 2;
  }

  (*(*a1 + 2960))(a1, v3);
  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }
}

void sub_2337C0294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337C02CC(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v6 = &unk_28490CE28;
  sub_23372A488(__p, "IFD0:EXIF:MAKERNOTE:G9WhiteBalance");
  (*(*a1 + 2976))(a1, a2, __p, &v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2337C0394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337C03B0(void *a1)
{
  sub_2338035F8(a1);
  if ((*(*a1 + 2984))(a1))
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = __dynamic_cast(v2, &unk_28490A7B0, &unk_28490B1A0, 0);
      if (v3)
      {
        v4 = a1[4];
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_2337BC48C(v3, 1);
        if (v4)
        {

          sub_2337239E8(v4);
        }
      }
    }
  }
}

void sub_2337C0494(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2337239E8(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2337C04AC(uint64_t a1)
{
  if (sub_23373C264(a1) != 34713)
  {
    return 0;
  }

  v2 = sub_23373AD98(a1);
  return (*(*a1 + 344))(a1) == ((v2 >> 28) & 0xFFFFFFF0) * ((v2 + 9) / 10);
}

uint64_t sub_2337C054C(uint64_t a1)
{
  if ((*(*a1 + 2984))(a1))
  {
    return 1;
  }

  return sub_23373C264(a1);
}

id sub_2337C05C0(uint64_t *a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"hasWeirdCompressionMode"])
  {
    v4 = (*(*a1 + 2984))(a1);
    v5 = MEMORY[0x277CBEC28];
    if (v4)
    {
      v5 = MEMORY[0x277CBEC38];
    }

    v6 = v5;
  }

  else
  {
    v6 = sub_233804DCC(a1, v3);
  }

  v7 = v6;

  return v7;
}

void sub_2337C0688(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v31 = *MEMORY[0x277D85DE8];
  v2 = sub_23378E038(v1);
  v3 = v2;
  if ((v1 + 1) >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "CFujiS2Unpacker", &unk_233945DBE, buf, 2u);
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_2337C0A30;
  v29[3] = &unk_2789EE800;
  v29[4] = v1;
  v4 = MEMORY[0x2383AC810](v29);
  bzero(buf, 0x2E00uLL);
  v5 = sub_2337ADCC4(v1);
  v6 = *(v1 + 44);
  if ((v6 - 10000) < 0xFFFFD8F4 || (v6 & 3) != 0 || (v7 = *(v1 + 48), (v7 - 10000) < 0xFFFFD8F4) || (v7 & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = v5;
  v28 = v4;
  v9 = v6 - 4;
  v10 = 2 * v6;
  v11 = 4;
  do
  {
    (*(**(v1 + 24) + 32))(*(v1 + 24), buf, 4 * v7);
    v12 = 0;
    v13 = 0;
    v14 = (2 * v7);
    v15 = v8 + 2 * v9;
    do
    {
      v16 = bswap32(*&buf[v12]);
      v17 = bswap32(*&buf[v12 + 2]);
      v18 = bswap32(*&buf[v12 + 4]);
      v19 = bswap32(*&buf[v12 + 6]);
      v20 = bswap32(*&buf[v14]);
      v21 = bswap32(*&buf[v14 + 2]);
      v22 = bswap32(*&buf[v14 + 4]) >> 16;
      v23 = bswap32(*&buf[v14 + 6]);
      *v15 = 0;
      *(v15 + 2) = HIWORD(v20);
      *(v15 + 6) = HIWORD(v16);
      v24 = (v15 + v10);
      *v24 = HIWORD(v21);
      v24[1] = HIWORD(v17);
      v25 = v24 + v10;
      *v25 = 0;
      *(v25 + 2) = v22;
      *(v25 + 3) = HIWORD(v18);
      v26 = &v25[v10];
      *v26 = HIWORD(v23);
      v13 += 4;
      v14 += 8;
      *(v26 + 2) = HIWORD(v19);
      v12 += 8;
      v15 = &v25[v10 + v10];
      *(v26 + 3) = 0;
    }

    while (v13 < v7);
    v11 += 4;
    v9 -= 4;
  }

  while (v11 <= v6);
  v28[2](v28);
}

void sub_2337C0A30(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CFujiS2Unpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337C0AB8(os_signpost_id_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = sub_23378E038(a1);
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CPentaxK10DUnpacker", &unk_233945DBE, buf, 2u);
  }

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_2337C1314;
  v43[3] = &unk_2789EE800;
  v43[4] = a1;
  v4 = MEMORY[0x2383AC810](v43);
  v45[0] = 0;
  v45[1] = 0;
  v5 = sub_2337ADCC4(a1);
  v6 = *(a1 + 192);
  if (*(a1 + 200) - v6 <= 0x1DuLL || !sub_2337B4F10(v6, buf, 2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_233726998(&v42, (a1 + 44));
  sub_233726998(&v41, (a1 + 48));
  v44 = (*(*a1 + 152))(a1);
  sub_233723AE0(&v38, &v44);
  sub_233726938(&v40, &v38);
  LODWORD(v38) = v42;
  v7 = *sub_233757DB0(&v38, &v41);
  v38 = 2;
  sub_233723C18(&v39, &v38);
  v44 = v7;
  v8 = sub_233757DB0(&v44, &v39);
  if (*v8 < v40 || (v42 & 1) != 0)
  {
    v36 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v36, "RawCameraException");
    __cxa_throw(v36, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v10 = *(a1 + 44);
  v9 = *(a1 + 48);
  v11 = (*(*a1 + 152))(a1);
  v12 = &v5[2 * (v9 * v10)];
  v13 = &v12[-v11];
  (*(**(a1 + 24) + 32))(*(a1 + 24), v13, v11);
  if (v9)
  {
    v37 = v4;
    v14 = 0;
    v15 = 0;
    v16 = 32;
    do
    {
      v17 = v12 - v13 + ((39 - v16) >> 3);
      if (8 * v17 < 2 * ((v9 - v14) * v10))
      {
        v34 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v34, "RawCameraException");
        __cxa_throw(v34, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if ((v13 - v5 < v10 || v17 < (4 * v10)) && v12 != v13)
      {
        operator new[]();
      }

      if (v16 >= 16)
      {
        v15 = (v15 << 16) | (*v13 << 8) | v13[1];
        v13 += 2;
        v16 -= 16;
      }

      v18 = *&buf[2 * ((v15 << v16) >> 23)];
      v19 = ((v18 >> 10) & 0x1F) + v16;
      if (v18 > 0x8000)
      {
        v21 = v18;
      }

      else
      {
        if ((v18 & 0x8000) != 0)
        {
          v18 = *&buf[2 * (((v15 << v16) >> 16) & 0x3FF)];
          v19 += (v18 >> 10) & 0x1F;
        }

        v20 = v18 & 0x1F;
        if ((v18 & 0x1F) != 0)
        {
          if (v19 >= 16)
          {
            v15 = (v15 << 16) | (*v13 << 8) | v13[1];
            v13 += 2;
            v19 -= 16;
          }

          v21 = ((v15 << v19) >> -v20) - ((((v15 << v19) >> 31) - 1) >> -v20);
          v19 += v20;
        }

        else
        {
          v21 = (v18 << 8) & 0x8000;
        }
      }

      v22 = v14 & 1;
      v23 = LODWORD(v45[v22]) + v21;
      LODWORD(v45[v22]) = v23;
      if (v19 >= 16)
      {
        v15 = (v15 << 16) | (*v13 << 8) | v13[1];
        v13 += 2;
        v19 -= 16;
      }

      v24 = *&buf[2 * ((v15 << v19) >> 23)];
      v16 = ((v24 >> 10) & 0x1F) + v19;
      if (v24 > 0x8000)
      {
        v24 = v24;
      }

      else
      {
        if ((v24 & 0x8000) != 0)
        {
          v24 = *&buf[2 * (((v15 << v19) >> 16) & 0x3FF)];
          v16 += (v24 >> 10) & 0x1F;
        }

        v25 = v24 & 0x1F;
        if ((v24 & 0x1F) != 0)
        {
          if (v16 >= 16)
          {
            v15 = (v15 << 16) | (*v13 << 8) | v13[1];
            v13 += 2;
            v16 -= 16;
          }

          v24 = ((v15 << v16) >> -v25) - ((((v15 << v16) >> 31) - 1) >> -v25);
          v16 += v25;
        }

        else
        {
          v24 = (v24 << 8) & 0x8000;
        }
      }

      v26 = (v22 * 2) | 1;
      v27 = *(v45 + ((v22 * 2) | 1)) + v24;
      *(v45 + v26) = v27;
      if (v10 >= 3)
      {
        v28 = 2;
        do
        {
          if (v16 >= 16)
          {
            v15 = (v15 << 16) | (*v13 << 8) | v13[1];
            v13 += 2;
            v16 -= 16;
          }

          v29 = *&buf[2 * ((v15 << v16) >> 23)];
          v30 = ((v29 >> 10) & 0x1F) + v16;
          *v5 = v23;
          if (v29 > 0x8000)
          {
            LOWORD(v29) = v29;
          }

          else
          {
            if ((v29 & 0x8000) != 0)
            {
              v29 = *&buf[2 * (((v15 << v16) >> 16) & 0x3FF)];
              v30 += (v29 >> 10) & 0x1F;
            }

            v31 = v29 & 0x1F;
            if ((v29 & 0x1F) != 0)
            {
              if (v30 >= 16)
              {
                v15 = (v15 << 16) | (*v13 << 8) | v13[1];
                v13 += 2;
                v30 -= 16;
              }

              v29 = ((v15 << v30) >> -v31) - ((((v15 << v30) >> 31) - 1) >> -v31);
              v30 += v31;
            }

            else
            {
              LOWORD(v29) = (v29 << 8) & 0x8000;
            }
          }

          if (v30 >= 16)
          {
            v15 = (v15 << 16) | (*v13 << 8) | v13[1];
            v13 += 2;
            v30 -= 16;
          }

          v32 = *&buf[2 * ((v15 << v30) >> 23)];
          v16 = ((v32 >> 10) & 0x1F) + v30;
          *(v5 + 1) = v27;
          if (v32 > 0x8000)
          {
            LOWORD(v32) = v32;
          }

          else
          {
            if ((v32 & 0x8000) != 0)
            {
              v32 = *&buf[2 * (((v15 << v30) >> 16) & 0x3FF)];
              v16 += (v32 >> 10) & 0x1F;
            }

            v33 = v32 & 0x1F;
            if ((v32 & 0x1F) != 0)
            {
              if (v16 >= 16)
              {
                v15 = (v15 << 16) | (*v13 << 8) | v13[1];
                v13 += 2;
                v16 -= 16;
              }

              v32 = ((v15 << v16) >> -v33) - ((((v15 << v16) >> 31) - 1) >> -v33);
              v16 += v33;
            }

            else
            {
              LOWORD(v32) = (v32 << 8) & 0x8000;
            }
          }

          LOWORD(v23) = v29 + v23;
          LOWORD(v27) = v32 + v27;
          v5 += 4;
          v28 += 2;
        }

        while (v28 < v10);
      }

      *v5 = v23;
      *(v5 + 1) = v27;
      v5 += 4;
      ++v14;
    }

    while (v14 != v9);
    v4 = v37;
  }

  v4[2](v4);
}

void sub_2337C1314(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CPentaxK10DUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void *sub_2337C139C(void *a1)
{
  *a1 = &unk_28490FF40;
  v2 = a1[24];
  if (v2)
  {
    a1[25] = v2;
    operator delete(v2);
  }

  return sub_233723A54(a1);
}

void sub_2337C13FC(void *a1)
{
  *a1 = &unk_28490FF40;
  v2 = a1[24];
  if (v2)
  {
    a1[25] = v2;
    operator delete(v2);
  }

  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2337C1470(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  *&v54[17405] = *MEMORY[0x277D85DE8];
  v2 = sub_23378E038(v1);
  v3 = v2;
  if ((v1 + 1) >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "CFujiS3Unpacker", &unk_233945DBE, buf, 2u);
  }

  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = sub_2337C1898;
  v52[3] = &unk_2789EE800;
  v52[4] = v1;
  v50 = MEMORY[0x2383AC810](v52);
  bzero(buf, 0x4400uLL);
  v4 = sub_2337ADCC4(v1);
  v5 = 0;
  v6 = v1;
  v7 = *(v1 + 44);
  v48 = (2 * v7);
  v49 = v7;
  v8 = &v54[v48];
  v51 = (4 * v7);
  v9 = 2 * v51;
  v10 = v4 + 6 * v7;
  v11 = v4 + 2 * v7;
  v12 = v4 + 4 * v7;
  do
  {
    (*(**(v6 + 24) + 32))(*(v6 + 24), buf, v51);
    v13 = 0;
    v14 = -4;
    do
    {
      v15 = v4 + v13;
      v16 = (v10 + v13);
      v17 = *&v54[v13 - 1];
      v18 = v11 + v13;
      v19 = (v12 + v13);
      v20 = *&v54[v13 + 1];
      v21 = *&v54[v13 + 3];
      v22 = *&v8[v13 - 3];
      v23 = *&v8[v13 - 1];
      v24 = *&v8[v13 + 1];
      v25 = *&v8[v13 + 3];
      *v15 = buf[v13] | (buf[v13 + 1] << 8);
      *(v15 + 2) = 0;
      *(v15 + 4) = v20;
      *v18 = 0;
      *(v18 + 2) = v17;
      *(v18 + 6) = v21;
      *v19 = v22;
      v19[1] = v24;
      *v16 = 0;
      v16[1] = v23;
      v13 += 8;
      v16[2] = 0;
      v14 += 4;
      v16[3] = v25;
    }

    while (v14 >> 2 < 0x43F);
    v4 += v9;
    v10 += v9;
    v11 += v9;
    v12 += v9;
    v26 = v5 >= 0x5A0;
    v5 += 2;
  }

  while (!v26);
  if (*(v6 + 187))
  {
    v27 = sub_2337ADCC4(v6);
    v28 = 0;
    v29 = v27 - 2 * v51;
    v30 = 2 * v51;
    v31 = v29 + 2 * v49;
    v32 = v29 + 4 * v49;
    v33 = v27 + 6 * v49 - 2 * v51;
    v34 = &buf[v48 + 7];
    while (1)
    {
      (*(**(v6 + 24) + 32))(*(v6 + 24), buf, v51);
      v35 = 0;
      v36 = -4;
      while (1)
      {
        v36 += 4;
        if (v28)
        {
          break;
        }

LABEL_13:
        v35 += 8;
        if (v36 >> 2 >= 0x43F)
        {
          goto LABEL_16;
        }
      }

      v37 = *&v54[v35 + 3];
      v38 = *&buf[v48 + v35];
      v39 = *&v34[v35 - 5];
      v40 = *&v34[v35 - 3];
      v41 = *&v34[v35 - 1];
      v42 = *&v54[v35 + 1];
      v43 = *&buf[v35 + 2];
      v44 = v29 + v35;
      *(v44 + 2) = *&buf[v35];
      *(v44 + 6) = v42;
      *(v31 + v35 + 4) = v43;
      if (v36 >> 2 <= 0x43E)
      {
        break;
      }

      v47 = v32 + v35;
      *(v47 + 2) = v38;
      *(v47 + 6) = v40;
      *(v33 + v35 + 4) = v39;
LABEL_16:
      v29 += v30;
      v31 += v30;
      v32 += v30;
      v33 += v30;
      v26 = v28 >= 0x5A0;
      v28 += 2;
      if (v26)
      {
        goto LABEL_18;
      }
    }

    *(v31 + v35 + 8) = v37;
    v45 = v32 + v35;
    *(v45 + 2) = v38;
    *(v45 + 6) = v40;
    v46 = v33 + v35;
    *(v46 + 4) = v39;
    *(v46 + 8) = v41;
    goto LABEL_13;
  }

LABEL_18:
  v50[2](v50);
}

void sub_2337C1844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (**a12)(void))
{
  (a12[2])(a12, a2, a3, a4, a5, a6, a7, a8);

  _Unwind_Resume(a1);
}

void sub_2337C1898(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CFujiS3Unpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_2337C1928(void *a1)
{
  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

id sub_2337C1960(void *a1, double a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = *v21;
    v10 = *MEMORY[0x277CBFAF0];
    v11 = *MEMORY[0x277CBFB50];
    do
    {
      v12 = 0;
      v13 = v7;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v20 + 1) + 8 * v12);
        [v14 setValue:v13 forKey:v10];
        v15 = [v14 inputKeys];
        v16 = [v15 containsObject:@"inputScaleFactor"];

        if (v16)
        {
          v17 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
          [v14 setValue:v17 forKey:@"inputScaleFactor"];
        }

        v7 = [v14 valueForKey:v11];

        ++v12;
        v13 = v7;
      }

      while (v8 != v12);
      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  return v7;
}

void sub_2337C1B84(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    if (sub_233739CC0(a1))
    {
      (*(*a1 + 296))(&v9, a1, 160);
      if (v9)
      {
        v6 = sub_233739994(v5, *MEMORY[0x277CD3038], 0);
        if (v6)
        {
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(*(*v9 + 16))(v9)];
          [v6 setObject:v7 forKeyedSubscript:@"JPEGInterchangeFormat"];

          v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(*(*v9 + 24))(v9)];
          [v6 setObject:v8 forKeyedSubscript:@"JPEGInterchangeFormatLength"];
        }
      }

      if (v10)
      {
        sub_2337239E8(v10);
      }
    }

    if (sub_233739CC8(a1))
    {
      sub_2337C1D80(a1, v5);
    }

    else
    {
      sub_2337C2240(a1, v5);
      sub_2337C2D04(a1, a2, v5);
    }
  }
}

void sub_2337C1D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(a1);
}

void sub_2337C1D80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_2337854A4(v3, *MEMORY[0x277CD3468], 0);
  (*(*a1 + 144))(&v28, a1);
  v5 = (v29 - 3);
  if (v28 != v29 && v5 > v28)
  {
    v7 = v28 + 3;
    do
    {
      v8 = *(v7 - 1);
      v9 = *(v7 - 3);
      v10 = *(v5 + 16);
      *(v7 - 3) = *v5;
      *(v7 - 1) = v10;
      *v5 = v9;
      *(v5 + 16) = v8;
      v5 -= 24;
      v11 = v7 >= v5;
      v7 += 3;
    }

    while (!v11);
  }

  v12 = sub_2337D3AB8(&v28);
  [v4 setObject:v12 forKeyedSubscript:*MEMORY[0x277CD35E0]];

  v13 = (*(*a1 + 520))(a1);
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%d, %d}", v13, HIDWORD(v13)];
  [v4 setObject:v14 forKeyedSubscript:@"fullSize"];

  v15 = MEMORY[0x277CCACA8];
  sub_2337C3F74(a1, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v17 = [v15 stringWithUTF8String:p_p];
  [v4 setObject:v17 forKeyedSubscript:@"kCGImageSourceRawIdentifier"];

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v18 = (*(*a1 + 432))(a1);
  v19 = (*(*a1 + 456))(a1);
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%d, %d}", v19 + v18, (HIDWORD(v19) + HIDWORD(v18))];
  [v4 setObject:v20 forKeyedSubscript:@"cropOrigin"];

  v21 = (*(*a1 + 2760))(a1);
  [v4 setObject:v21 forKeyedSubscript:@"supportedSushiLevels"];

  (*(*a1 + 112))(&__p, a1);
  v22 = sub_233758E3C(__p.__r_.__value_.__l.__data_);
  [v4 setObject:v22 forKeyedSubscript:@"kCGImageSourceMethodVersion"];

  if (__p.__r_.__value_.__l.__size_)
  {
    sub_2337239E8(__p.__r_.__value_.__l.__size_);
  }

  v23 = sub_233739B8C(a1);
  v24 = sub_2338191A8(v23);
  [v4 setObject:v24 forKeyedSubscript:@"kCGImageSourceSushiLevel"];

  (*(*a1 + 296))(&__p, a1, 5000);
  v25 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0] && !getenv("RAWCAMERA_ENABLE_RAW_IMPORT_IN_SPARK"))
  {
    v26 = (*(*v25 + 32))(v25);
    [v4 setObject:v26 forKeyedSubscript:@"jpegThumbnail"];
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    sub_2337239E8(__p.__r_.__value_.__l.__size_);
  }

  __p.__r_.__value_.__r.__words[0] = &v28;
  sub_233735AD4(&__p);
}

void sub_2337C218C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  __p = &a17;
  sub_233735AD4(&__p);

  _Unwind_Resume(a1);
}

void sub_2337C2240(uint64_t *a1, void *a2)
{
  v3 = a2;
  if ((*(*a1 + 120))(a1) <= 6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (sub_233739BA4(a1))
  {
    v4 = v3;
    v5 = [MEMORY[0x277CBEB38] dictionary];
    [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277CD35E8]];
    (*(*a1 + 144))(&v51, a1);
    if (v51 != v52)
    {
      v6 = v52 - 3;
      if (v52 - 3 > v51)
      {
        v7 = v51 + 3;
        do
        {
          v8 = *(v7 - 1);
          v9 = *(v7 - 3);
          v10 = v6[2];
          *(v7 - 3) = *v6;
          *(v7 - 1) = v10;
          *v6 = v9;
          v6[2] = v8;
          v6 -= 3;
          v11 = v7 >= v6;
          v7 += 3;
        }

        while (!v11);
      }
    }

    v12 = sub_2337D3AB8(&v51);
    [v5 setObject:v12 forKeyedSubscript:*MEMORY[0x277CD35E0]];
    v13 = MEMORY[0x277CCACA8];
    sub_2337C3F74(a1, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v15 = [v13 stringWithUTF8String:p_p];
    [v5 setObject:v15 forKeyedSubscript:@"kCGImageSourceRawIdentifier"];

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v16 = (*(*a1 + 304))(a1);
    v17 = (*(*a1 + 320))(a1);
    v18 = (*(*a1 + 312))(a1);
    v19 = v16 | 2;
    if (!v17)
    {
      v19 = v16;
    }

    if (v18)
    {
      v20 = v19 | 4;
    }

    else
    {
      v20 = v19;
    }

    v21 = [MEMORY[0x277CCABB0] numberWithInt:v20];
    [v5 setObject:v21 forKeyedSubscript:@"kCGImageSourceVendorLensCorrectionFeatures"];

    v22 = (*(*a1 + 2760))(a1);
    [v5 setObject:v22 forKeyedSubscript:@"kCGImageSourceSupportedSushiLevels"];

    (*(*a1 + 112))(&__p, a1);
    v23 = sub_233758E3C(__p.__r_.__value_.__l.__data_);
    [v5 setObject:v23 forKeyedSubscript:@"kCGImageSourceMethodVersion"];

    if (__p.__r_.__value_.__l.__size_)
    {
      sub_2337239E8(__p.__r_.__value_.__l.__size_);
    }

    v24 = sub_233739B8C(a1);
    v25 = sub_2338191A8(v24);
    [v5 setObject:v25 forKeyedSubscript:@"kCGImageSourceSushiLevel"];

    if ((*(*a1 + 120))(a1) >= 8)
    {
      [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:off_27DE37C50];
    }

    if ((*(*a1 + 2480))(a1))
    {
      v26 = MEMORY[0x277CCABB0];
      (*(*a1 + 2520))(a1);
      v27 = [v26 numberWithDouble:?];
      [v5 setObject:v27 forKeyedSubscript:off_27DE37C00[0]];

      v28 = MEMORY[0x277CCABB0];
      (*(*a1 + 2528))(a1);
      v29 = [v28 numberWithDouble:?];
      [v5 setObject:v29 forKeyedSubscript:off_27DE37C08[0]];

      v30 = [MEMORY[0x277CCABB0] numberWithBool:(*(*a1 + 2536))(a1)];
      [v5 setObject:v30 forKeyedSubscript:off_27DE37C10[0]];

      v31 = MEMORY[0x277CCABB0];
      (*(*a1 + 2544))(a1);
      v32 = [v31 numberWithDouble:?];
      [v5 setObject:v32 forKeyedSubscript:off_27DE37C18[0]];

      v33 = MEMORY[0x277CCABB0];
      (*(*a1 + 2552))(a1);
      v34 = [v33 numberWithDouble:?];
      [v5 setObject:v34 forKeyedSubscript:off_27DE37C20[0]];

      v35 = MEMORY[0x277CCABB0];
      (*(*a1 + 2560))(a1);
      v36 = [v35 numberWithDouble:?];
      [v5 setObject:v36 forKeyedSubscript:off_27DE37C28[0]];

      v37 = MEMORY[0x277CCABB0];
      (*(*a1 + 2568))(a1);
      v38 = [v37 numberWithDouble:?];
      [v5 setObject:v38 forKeyedSubscript:off_27DE37C30[0]];

      v39 = (*(*a1 + 120))(a1);
      v40 = *a1;
      if (v39 > 8)
      {
        [MEMORY[0x277CCABB0] numberWithBool:(*(v40 + 2264))(a1)];
      }

      else
      {
        [MEMORY[0x277CCABB0] numberWithBool:(*(v40 + 2496))(a1)];
      }
      v41 = ;
      [v5 setObject:v41 forKeyedSubscript:off_27DE37BE8[0]];

      v42 = MEMORY[0x277CCABB0];
      (*(*a1 + 2504))(a1);
      v43 = [v42 numberWithDouble:?];
      [v5 setObject:v43 forKeyedSubscript:off_27DE37BF0[0]];

      v44 = MEMORY[0x277CCABB0];
      (*(*a1 + 2512))(a1);
      v45 = [v44 numberWithDouble:?];
      [v5 setObject:v45 forKeyedSubscript:off_27DE37BF8[0]];

      v46 = [MEMORY[0x277CCABB0] numberWithBool:(*(*a1 + 2576))(a1)];
      [v5 setObject:v46 forKeyedSubscript:off_27DE37C38[0]];

      v47 = [MEMORY[0x277CCABB0] numberWithBool:(*(*a1 + 2584))(a1)];
      [v5 setObject:v47 forKeyedSubscript:off_27DE37C40[0]];

      v48 = [MEMORY[0x277CCABB0] numberWithBool:(*(*a1 + 2592))(a1)];
      [v5 setObject:v48 forKeyedSubscript:off_27DE37C48[0]];
    }

    __p.__r_.__value_.__r.__words[0] = &v51;
    sub_233735AD4(&__p);
  }
}

void sub_2337C2C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  __p = &a15;
  sub_233735AD4(&__p);

  _Unwind_Resume(a1);
}

void sub_2337C2D04(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((*(*a1 + 120))(a1) <= 6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (sub_233739B8C(a1))
  {
    v6 = sub_2337854A4(v5, *MEMORY[0x277CD3468], 0);
    v7 = (*(*a1 + 2744))(a1, a2);
    if ([v7 count])
    {
      [v6 setObject:v7 forKeyedSubscript:@"filters"];
    }

    (*(*a1 + 720))(a1);
    v9 = v8;
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v6 setObject:v10 forKeyedSubscript:@"wx"];

    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    [v6 setObject:v11 forKeyedSubscript:@"wy"];

    (*(*a1 + 2624))(&v93, a1, a2, 1);
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:*v93];
    [v6 setObject:v12 forKeyedSubscript:@"otrcS0"];

    v13 = [MEMORY[0x277CCABB0] numberWithDouble:*(v93 + 1)];
    [v6 setObject:v13 forKeyedSubscript:@"otrcS1"];

    v14 = [MEMORY[0x277CCABB0] numberWithDouble:*(v93 + 3)];
    [v6 setObject:v14 forKeyedSubscript:@"otrcS2"];

    v15 = [MEMORY[0x277CCABB0] numberWithDouble:*(v93 + 5)];
    [v6 setObject:v15 forKeyedSubscript:@"otrcS3"];

    v16 = [MEMORY[0x277CCABB0] numberWithDouble:*(v93 + 7)];
    [v6 setObject:v16 forKeyedSubscript:@"otrcS4"];

    v17 = [MEMORY[0x277CCABB0] numberWithDouble:*(v93 + 2)];
    [v6 setObject:v17 forKeyedSubscript:@"otrcY1"];

    v18 = [MEMORY[0x277CCABB0] numberWithDouble:*(v93 + 4)];
    [v6 setObject:v18 forKeyedSubscript:@"otrcY2"];

    v19 = [MEMORY[0x277CCABB0] numberWithDouble:*(v93 + 6)];
    [v6 setObject:v19 forKeyedSubscript:@"otrcY3"];

    if (__p)
    {
      sub_2337239E8(__p);
    }

    (*(*a1 + 1200))(&v93, a1);
    if (sub_2337E0044(&v93) < 3 || sub_2337E003C(&v93) <= 2)
    {
      v89 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v89, "RawCameraException");
      __cxa_throw(v89, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v20 = MEMORY[0x277CCABB0];
    v91 = sub_2337DFCEC(&v93, 0);
    v92 = v21;
    v22 = [v20 numberWithDouble:{*sub_2337DFD6C(&v91, 0)}];
    [v6 setObject:v22 forKeyedSubscript:@"mc00"];

    v23 = MEMORY[0x277CCABB0];
    v91 = sub_2337DFCEC(&v93, 0);
    v92 = v24;
    v25 = [v23 numberWithDouble:{*sub_2337DFD6C(&v91, 1u)}];
    [v6 setObject:v25 forKeyedSubscript:@"mc01"];

    v26 = MEMORY[0x277CCABB0];
    v91 = sub_2337DFCEC(&v93, 0);
    v92 = v27;
    v28 = [v26 numberWithDouble:{*sub_2337DFD6C(&v91, 2u)}];
    [v6 setObject:v28 forKeyedSubscript:@"mc02"];

    v29 = MEMORY[0x277CCABB0];
    v91 = sub_2337DFCEC(&v93, 1u);
    v92 = v30;
    v31 = [v29 numberWithDouble:{*sub_2337DFD6C(&v91, 0)}];
    [v6 setObject:v31 forKeyedSubscript:@"mc10"];

    v32 = MEMORY[0x277CCABB0];
    v91 = sub_2337DFCEC(&v93, 1u);
    v92 = v33;
    v34 = [v32 numberWithDouble:{*sub_2337DFD6C(&v91, 1u)}];
    [v6 setObject:v34 forKeyedSubscript:@"mc11"];

    v35 = MEMORY[0x277CCABB0];
    v91 = sub_2337DFCEC(&v93, 1u);
    v92 = v36;
    v37 = [v35 numberWithDouble:{*sub_2337DFD6C(&v91, 2u)}];
    [v6 setObject:v37 forKeyedSubscript:@"mc12"];

    v38 = MEMORY[0x277CCABB0];
    v91 = sub_2337DFCEC(&v93, 2u);
    v92 = v39;
    v40 = [v38 numberWithDouble:{*sub_2337DFD6C(&v91, 0)}];
    [v6 setObject:v40 forKeyedSubscript:@"mc20"];

    v41 = MEMORY[0x277CCABB0];
    v91 = sub_2337DFCEC(&v93, 2u);
    v92 = v42;
    v43 = [v41 numberWithDouble:{*sub_2337DFD6C(&v91, 1u)}];
    [v6 setObject:v43 forKeyedSubscript:@"mc21"];

    v44 = MEMORY[0x277CCABB0];
    v91 = sub_2337DFCEC(&v93, 2u);
    v92 = v45;
    v46 = [v44 numberWithDouble:{*sub_2337DFD6C(&v91, 2u)}];
    [v6 setObject:v46 forKeyedSubscript:@"mc22"];

    if (__p)
    {
      v95 = __p;
      operator delete(__p);
    }

    (*(*a1 + 112))(&v93, a1);
    v47 = sub_233758CEC(v93);
    [v6 setObject:v47 forKeyedSubscript:@"version"];

    if (__p)
    {
      sub_2337239E8(__p);
    }

    v48 = [MEMORY[0x277CCABB0] numberWithInt:(*(*a1 + 1256))(a1)];
    [v6 setObject:v48 forKeyedSubscript:off_27DE37868[0]];

    v49 = [MEMORY[0x277CCABB0] numberWithInt:(*(*a1 + 2392))(a1)];
    [v6 setObject:v49 forKeyedSubscript:off_27DE37870[0]];

    v50 = MEMORY[0x277CCABB0];
    (*(*a1 + 1272))(a1);
    v51 = [v50 numberWithDouble:?];
    [v6 setObject:v51 forKeyedSubscript:off_27DE37878[0]];

    v52 = MEMORY[0x277CCABB0];
    (*(*a1 + 1280))(a1);
    v53 = [v52 numberWithDouble:?];
    [v6 setObject:v53 forKeyedSubscript:off_27DE37880[0]];

    v54 = MEMORY[0x277CCABB0];
    (*(*a1 + 2416))(a1);
    v55 = [v54 numberWithDouble:?];
    [v6 setObject:v55 forKeyedSubscript:off_27DE37888[0]];

    v56 = MEMORY[0x277CCABB0];
    (*(*a1 + 2400))(a1);
    v57 = [v56 numberWithDouble:?];
    [v6 setObject:v57 forKeyedSubscript:off_27DE378A0[0]];

    v58 = MEMORY[0x277CCABB0];
    (*(*a1 + 1296))(a1);
    v59 = [v58 numberWithDouble:?];
    [v6 setObject:v59 forKeyedSubscript:off_27DE37890[0]];

    v60 = MEMORY[0x277CCABB0];
    (*(*a1 + 1304))(a1);
    v61 = [v60 numberWithDouble:?];
    [v6 setObject:v61 forKeyedSubscript:off_27DE37898[0]];

    (*(*a1 + 912))(&v93, a1);
    if (__p == v93 || ([MEMORY[0x277CCABB0] numberWithInt:*v93], v62 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "setObject:forKeyedSubscript:", v62, off_27DE377E8[0]), v62, (__p - v93) < 9) || (objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", *(v93 + 1)), v63 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "setObject:forKeyedSubscript:", v63, off_27DE377F0[0]), v63, (__p - v93) < 0x11) || (objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", *(v93 + 2)), v64 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "setObject:forKeyedSubscript:", v64, off_27DE377F8[0]), v64, (__p - v93) <= 0x18))
    {
      sub_2337306B0();
    }

    v65 = [MEMORY[0x277CCABB0] numberWithInt:*(v93 + 3)];
    [v6 setObject:v65 forKeyedSubscript:off_27DE37800[0]];

    if (v93)
    {
      __p = v93;
      operator delete(v93);
    }

    v66 = (*(*a1 + 432))(a1);
    v67 = (*(*a1 + 456))(a1);
    v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%d, %d}", v67 + v66, (HIDWORD(v67) + HIDWORD(v66))];
    [v6 setObject:v68 forKeyedSubscript:@"cropOrigin"];

    if (!getenv("RAWCAMERA_ENABLE_RAW_IMPORT_IN_SPARK"))
    {
      (*(*a1 + 296))(&v93, a1, 5000);
      if (v93)
      {
        v69 = (*(*v93 + 32))(v93);
        [v6 setObject:v69 forKeyedSubscript:@"jpegThumbnail"];
      }

      if (__p)
      {
        sub_2337239E8(__p);
      }
    }

    v96.origin.x = (*(*a1 + 480))(a1);
    x = v96.origin.x;
    y = v96.origin.y;
    width = v96.size.width;
    height = v96.size.height;
    if (!CGRectIsEmpty(v96))
    {
      v74 = [MEMORY[0x277CCACA8] stringWithFormat:@"{{%f, %f}, {%f, %f}}", *&x, *&y, *&width, *&height];
      [v6 setObject:v74 forKeyedSubscript:@"thumbnailCrop"];
    }

    if (!(*(*a1 + 2480))(a1) || (v75 = (*(*a1 + 2664))(a1, 0, 0), v76 = 0.5, v75 < 0.5))
    {
      v76 = 0.0;
    }

    v77 = [MEMORY[0x277CCABB0] numberWithDouble:v76];
    [v6 setObject:v77 forKeyedSubscript:off_27DE37A90[0]];

    if ((*(*a1 + 2480))(a1))
    {
      v93 = 0;
      v91 = 0;
      v78 = (*(*a1 + 2664))(a1, &v93, &v91);
      v79 = (*(*a1 + 2672))(a1);
      v80 = [MEMORY[0x277CCABB0] numberWithDouble:v78];
      [v6 setObject:v80 forKeyedSubscript:@"rn"];

      v81 = [MEMORY[0x277CCABB0] numberWithDouble:v79];
      [v6 setObject:v81 forKeyedSubscript:@"rnp"];

      v82 = [MEMORY[0x277CCABB0] numberWithDouble:*&v93];
      [v6 setObject:v82 forKeyedSubscript:@"dngNoiseModelScale"];

      v83 = [MEMORY[0x277CCABB0] numberWithDouble:*&v91];
      [v6 setObject:v83 forKeyedSubscript:@"dngNoiseModelOffset"];
    }

    v84 = MEMORY[0x277CCABB0];
    (*(*a1 + 800))(a1, a2);
    v85 = [v84 numberWithDouble:?];
    [v6 setObject:v85 forKeyedSubscript:@"sushiFactor"];

    v86 = MEMORY[0x277CCABB0];
    (*(*a1 + 280))(a1);
    v87 = [v86 numberWithDouble:?];
    [v6 setObject:v87 forKeyedSubscript:@"airyDiskRatio"];

    v88 = (*(*a1 + 2936))(a1);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 setObject:v88 forKeyedSubscript:@"linearizationTable"];
    }
  }
}

void sub_2337C3DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, std::__shared_weak_count *a16, uint64_t a17)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(a1);
}

std::string *sub_2337C3F74@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  (*(*a1 + 80))(a1);
  result = (*(*a1 + 176))(a1);
  if (result)
  {
    return std::string::append(a2, " dng", 4uLL);
  }

  return result;
}

void sub_2337C3FFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_2337C4018(uint64_t a1)
{
  v2 = (*(*a1 + 272))(a1);
  v3 = 0.0;
  if (v2 == 0.707106781)
  {
    return v3;
  }

  v4 = log2(v2);
  (*(*a1 + 160))(&v29, a1, v4 + v4);
  v5 = (*(*v29 + 400))();
  if (v30)
  {
    sub_2337239E8(v30);
  }

  v6 = (*(*a1 + 328))(a1);
  if (v6 == 0.0)
  {
    v7 = [v5 valueForKeyPath:@"{Exif}.FocalPlaneXResolution"];
    if (!v7 || ([v5 valueForKeyPath:@"{Exif}.FocalPlaneResolutionUnit"], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
    {
      v15 = [v5 valueForKeyPath:@"{Exif}.FocalLength"];
      if (v15)
      {
        v16 = [v5 valueForKeyPath:@"{Exif}.FocalLenIn35mmFilm"];

        if (v16)
        {
          v17 = [v5 valueForKeyPath:@"{Exif}.FocalLength"];
          [v17 doubleValue];
          v19 = v18;

          v20 = [v5 valueForKeyPath:@"{Exif}.FocalLenIn35mmFilm"];
          [v20 doubleValue];
          v22 = v21;

          v23 = [v5 valueForKeyPath:@"PixelWidth"];
          [v23 doubleValue];
          v25 = v24;

          v6 = v19 / v22 * 35.0 * 1000.0 / v25;
        }
      }

      goto LABEL_15;
    }

    v9 = [v5 valueForKeyPath:@"{Exif}.FocalPlaneResolutionUnit"];
    v10 = [v9 intValue];

    if (v10 == 3)
    {
      v26 = [v5 valueForKeyPath:@"{Exif}.FocalPlaneXResolution"];
      [v26 doubleValue];
      v13 = v27;

      v14 = 10000.0;
      goto LABEL_14;
    }

    if (v10 == 2)
    {
      v11 = [v5 valueForKeyPath:@"{Exif}.FocalPlaneXResolution"];
      [v11 doubleValue];
      v13 = v12;

      v14 = 25400.0;
LABEL_14:
      v6 = v14 / v13;
    }
  }

LABEL_15:
  if (v6 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2 / 0.75 / v6;
  }

  return v3;
}

void sub_2337C432C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_2337C4398(uint64_t a1, unsigned int a2)
{
  v508 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v3 = (*(*a1 + 456))(a1);
  v4 = [MEMORY[0x277CBEB38] dictionary];
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  (*(*a1 + 112))(__p, a1);
  v5 = sub_233758CEC(__p[0]);
  [v4 setObject:v5 forKeyedSubscript:@"version"];

  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInt:(*(*a1 + 2168))(a1)];
  [v4 setObject:v6 forKeyedSubscript:@"pattern"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(v3)];
  [v4 setObject:v7 forKeyedSubscript:@"leftmargin"];

  (*(*a1 + 1120))(&v494, a1);
  v8 = v494;
  v9 = (*(*a1 + 256))(a1);
  (*(*a1 + 264))(a1);
  (*(*v8 + 8))(__p, v8, v9);
  if (v495)
  {
    sub_2337239E8(v495);
  }

  v10 = __p[0];
  if ((__p[1] - __p[0]) == 32)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:*__p[0]];
    [v4 setObject:v11 forKeyedSubscript:@"blackNoise0"];

    if ((__p[1] - __p[0]) < 9 || ([MEMORY[0x277CCABB0] numberWithDouble:*(__p[0] + 1)], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "setObject:forKeyedSubscript:", v12, @"blackNoise1"), v12, (__p[1] - __p[0]) < 0x11) || (objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", *(__p[0] + 2)), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "setObject:forKeyedSubscript:", v13, @"blackNoise2"), v13, (__p[1] - __p[0]) <= 0x18))
    {
      sub_2337306B0();
    }

    v14 = [MEMORY[0x277CCABB0] numberWithDouble:*(__p[0] + 3)];
    [v4 setObject:v14 forKeyedSubscript:@"blackNoise3"];

    v10 = __p[0];
  }

  if (v10)
  {
    __p[1] = v10;
    operator delete(v10);
  }

  (*(*a1 + 1024))(__p, a1);
  v15 = __p[0];
  if ((__p[1] - __p[0]) == 32)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInt:*__p[0]];
    [v4 setObject:v16 forKeyedSubscript:@"blackStdDev0"];

    if ((__p[1] - __p[0]) < 9 || ([MEMORY[0x277CCABB0] numberWithInt:*(__p[0] + 1)], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "setObject:forKeyedSubscript:", v17, @"blackStdDev1"), v17, (__p[1] - __p[0]) < 0x11) || (objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", *(__p[0] + 2)), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "setObject:forKeyedSubscript:", v18, @"blackStdDev2"), v18, (__p[1] - __p[0]) <= 0x18))
    {
      sub_2337306B0();
    }

    v19 = [MEMORY[0x277CCABB0] numberWithInt:*(__p[0] + 3)];
    [v4 setObject:v19 forKeyedSubscript:@"blackStdDev3"];

    v15 = __p[0];
  }

  if (v15)
  {
    __p[1] = v15;
    operator delete(v15);
  }

  (*(*a1 + 1016))(__p, a1);
  v20 = __p[0];
  if ((__p[1] - __p[0]) == 32)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithInt:*__p[0]];
    [v4 setObject:v21 forKeyedSubscript:@"black0"];

    if ((__p[1] - __p[0]) < 9 || ([MEMORY[0x277CCABB0] numberWithInt:*(__p[0] + 1)], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "setObject:forKeyedSubscript:", v22, @"black1"), v22, (__p[1] - __p[0]) < 0x11) || (objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", *(__p[0] + 2)), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "setObject:forKeyedSubscript:", v23, @"black2"), v23, (__p[1] - __p[0]) <= 0x18))
    {
      sub_2337306B0();
    }

    v24 = [MEMORY[0x277CCABB0] numberWithInt:*(__p[0] + 3)];
    [v4 setObject:v24 forKeyedSubscript:@"black3"];

    v20 = __p[0];
  }

  if (v20)
  {
    __p[1] = v20;
    operator delete(v20);
  }

  (*(*a1 + 912))(__p, a1);
  v25 = __p[0];
  if ((__p[1] - __p[0]) >= 0x11)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithDouble:*__p[0]];
    [v4 setObject:v26 forKeyedSubscript:off_27DE377E8[0]];

    if ((__p[1] - __p[0]) < 9 || ([MEMORY[0x277CCABB0] numberWithDouble:*(__p[0] + 1)], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "setObject:forKeyedSubscript:", v27, off_27DE377F0[0]), v27, (__p[1] - __p[0]) <= 0x10))
    {
      sub_2337306B0();
    }

    v28 = [MEMORY[0x277CCABB0] numberWithDouble:*(__p[0] + 2)];
    [v4 setObject:v28 forKeyedSubscript:off_27DE377F8[0]];

    v25 = __p[0];
    if ((__p[1] - __p[0]) >= 0x19)
    {
      v29 = [MEMORY[0x277CCABB0] numberWithDouble:*(__p[0] + 3)];
      [v4 setObject:v29 forKeyedSubscript:off_27DE37800[0]];

      v25 = __p[0];
    }
  }

  if (v25)
  {
    __p[1] = v25;
    operator delete(v25);
  }

  (*(*a1 + 744))(__p, a1);
  v30 = __p[0];
  if ((__p[1] - __p[0]) == 24)
  {
    v31 = [MEMORY[0x277CCABB0] numberWithDouble:*__p[0]];
    [v4 setObject:v31 forKeyedSubscript:@"factor0"];

    if ((__p[1] - __p[0]) < 9 || ([MEMORY[0x277CCABB0] numberWithDouble:*(__p[0] + 1)], v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "setObject:forKeyedSubscript:", v32, @"factor1"), v32, (__p[1] - __p[0]) <= 0x10))
    {
      sub_2337306B0();
    }

    v33 = [MEMORY[0x277CCABB0] numberWithDouble:*(__p[0] + 2)];
    [v4 setObject:v33 forKeyedSubscript:@"factor2"];

    v30 = __p[0];
  }

  if (v30)
  {
    __p[1] = v30;
    operator delete(v30);
  }

  (*(*a1 + 792))(__p, a1, a2);
  if (sub_2337E0044(__p) < 3 || sub_2337E003C(__p) <= 2)
  {
    v444 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v444, "RawCameraException");
    __cxa_throw(v444, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v34 = MEMORY[0x277CCABB0];
  v494 = sub_2337DFCEC(__p, 0);
  v495 = v35;
  v36 = [v34 numberWithDouble:{*sub_2337DFD6C(&v494, 0)}];
  [v4 setObject:v36 forKeyedSubscript:@"r0"];

  v37 = MEMORY[0x277CCABB0];
  v494 = sub_2337DFCEC(__p, 0);
  v495 = v38;
  v39 = [v37 numberWithDouble:{*sub_2337DFD6C(&v494, 1u)}];
  [v4 setObject:v39 forKeyedSubscript:@"r1"];

  v40 = MEMORY[0x277CCABB0];
  v494 = sub_2337DFCEC(__p, 0);
  v495 = v41;
  v42 = [v40 numberWithDouble:{*sub_2337DFD6C(&v494, 2u)}];
  [v4 setObject:v42 forKeyedSubscript:@"r2"];

  v43 = MEMORY[0x277CCABB0];
  v44 = sub_2337E0044(__p);
  v45 = 0.0;
  if (v44 >= 4)
  {
    v494 = sub_2337DFCEC(__p, 0);
    v495 = v46;
    v45 = *sub_2337DFD6C(&v494, 3u);
  }

  v47 = [v43 numberWithDouble:v45];
  [v4 setObject:v47 forKeyedSubscript:@"r3"];

  v48 = MEMORY[0x277CCABB0];
  v49 = sub_2337E0044(__p);
  v50 = 0.0;
  if (v49 >= 5)
  {
    v494 = sub_2337DFCEC(__p, 0);
    v495 = v51;
    v50 = *sub_2337DFD6C(&v494, 4u);
  }

  v52 = [v48 numberWithDouble:v50];
  [v4 setObject:v52 forKeyedSubscript:@"r4"];

  v53 = MEMORY[0x277CCABB0];
  v494 = sub_2337DFCEC(__p, 1u);
  v495 = v54;
  v55 = [v53 numberWithDouble:{*sub_2337DFD6C(&v494, 0)}];
  [v4 setObject:v55 forKeyedSubscript:@"g0"];

  v56 = MEMORY[0x277CCABB0];
  v494 = sub_2337DFCEC(__p, 1u);
  v495 = v57;
  v58 = [v56 numberWithDouble:{*sub_2337DFD6C(&v494, 1u)}];
  [v4 setObject:v58 forKeyedSubscript:@"g1"];

  v59 = MEMORY[0x277CCABB0];
  v494 = sub_2337DFCEC(__p, 1u);
  v495 = v60;
  v61 = [v59 numberWithDouble:{*sub_2337DFD6C(&v494, 2u)}];
  [v4 setObject:v61 forKeyedSubscript:@"g2"];

  v62 = MEMORY[0x277CCABB0];
  v63 = sub_2337E0044(__p);
  v64 = 0.0;
  if (v63 >= 4)
  {
    v494 = sub_2337DFCEC(__p, 1u);
    v495 = v65;
    v64 = *sub_2337DFD6C(&v494, 3u);
  }

  v66 = [v62 numberWithDouble:v64];
  [v4 setObject:v66 forKeyedSubscript:@"g3"];

  v67 = MEMORY[0x277CCABB0];
  v68 = sub_2337E0044(__p);
  v69 = 0.0;
  if (v68 >= 5)
  {
    v494 = sub_2337DFCEC(__p, 1u);
    v495 = v70;
    v69 = *sub_2337DFD6C(&v494, 4u);
  }

  v71 = [v67 numberWithDouble:v69];
  [v4 setObject:v71 forKeyedSubscript:@"g4"];

  v72 = MEMORY[0x277CCABB0];
  v494 = sub_2337DFCEC(__p, 2u);
  v495 = v73;
  v74 = [v72 numberWithDouble:{*sub_2337DFD6C(&v494, 0)}];
  [v4 setObject:v74 forKeyedSubscript:@"b0"];

  v75 = MEMORY[0x277CCABB0];
  v494 = sub_2337DFCEC(__p, 2u);
  v495 = v76;
  v77 = [v75 numberWithDouble:{*sub_2337DFD6C(&v494, 1u)}];
  [v4 setObject:v77 forKeyedSubscript:@"b1"];

  v78 = MEMORY[0x277CCABB0];
  v494 = sub_2337DFCEC(__p, 2u);
  v495 = v79;
  v80 = [v78 numberWithDouble:{*sub_2337DFD6C(&v494, 2u)}];
  [v4 setObject:v80 forKeyedSubscript:@"b2"];

  v81 = MEMORY[0x277CCABB0];
  v82 = sub_2337E0044(__p);
  v83 = 0.0;
  if (v82 >= 4)
  {
    v494 = sub_2337DFCEC(__p, 2u);
    v495 = v84;
    v83 = *sub_2337DFD6C(&v494, 3u);
  }

  v85 = [v81 numberWithDouble:v83];
  [v4 setObject:v85 forKeyedSubscript:@"b3"];

  v86 = MEMORY[0x277CCABB0];
  v87 = sub_2337E0044(__p);
  v88 = 0.0;
  if (v87 >= 5)
  {
    v494 = sub_2337DFCEC(__p, 2u);
    v495 = v89;
    v88 = *sub_2337DFD6C(&v494, 4u);
  }

  v90 = [v86 numberWithDouble:v88];
  [v4 setObject:v90 forKeyedSubscript:@"b4"];

  if (__p[1])
  {
    *&v450 = __p[1];
    operator delete(__p[1]);
  }

  (*(*a1 + 2624))(__p, a1, a2, 0);
  v91 = [MEMORY[0x277CCABB0] numberWithDouble:*__p[0]];
  [v4 setObject:v91 forKeyedSubscript:@"otrcS0"];

  v92 = [MEMORY[0x277CCABB0] numberWithDouble:*(__p[0] + 1)];
  [v4 setObject:v92 forKeyedSubscript:@"otrcS1"];

  v93 = [MEMORY[0x277CCABB0] numberWithDouble:*(__p[0] + 3)];
  [v4 setObject:v93 forKeyedSubscript:@"otrcS2"];

  v94 = [MEMORY[0x277CCABB0] numberWithDouble:*(__p[0] + 5)];
  [v4 setObject:v94 forKeyedSubscript:@"otrcS3"];

  v95 = [MEMORY[0x277CCABB0] numberWithDouble:*(__p[0] + 7)];
  [v4 setObject:v95 forKeyedSubscript:@"otrcS4"];

  v96 = [MEMORY[0x277CCABB0] numberWithDouble:*(__p[0] + 2)];
  [v4 setObject:v96 forKeyedSubscript:@"otrcY1"];

  v97 = [MEMORY[0x277CCABB0] numberWithDouble:*(__p[0] + 4)];
  [v4 setObject:v97 forKeyedSubscript:@"otrcY2"];

  v98 = [MEMORY[0x277CCABB0] numberWithDouble:*(__p[0] + 6)];
  [v4 setObject:v98 forKeyedSubscript:@"otrcY3"];

  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }

  v99 = [MEMORY[0x277CCABB0] numberWithBool:(*(*a1 + 1376))(a1)];
  [v4 setObject:v99 forKeyedSubscript:@"blackDespeckleEnabled"];

  v100 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  [v4 setObject:v100 forKeyedSubscript:@"shouldExtendRawEnabled"];

  v101 = [MEMORY[0x277CCABB0] numberWithBool:(*(*a1 + 1208))(a1)];
  [v4 setObject:v101 forKeyedSubscript:@"HREnabled"];

  v102 = [MEMORY[0x277CCABB0] numberWithBool:(*(*a1 + 2112))(a1)];
  [v4 setObject:v102 forKeyedSubscript:@"SPEEnabled"];

  v103 = [MEMORY[0x277CCABB0] numberWithBool:(*(*a1 + 1232))(a1)];
  [v4 setObject:v103 forKeyedSubscript:@"NREnabled"];

  v104 = [MEMORY[0x277CCABB0] numberWithBool:(*(*a1 + 2224))(a1)];
  [v4 setObject:v104 forKeyedSubscript:@"sharpenEdgesEnabled"];

  v105 = [MEMORY[0x277CCABB0] numberWithBool:(*(*a1 + 2264))(a1)];
  [v4 setObject:v105 forKeyedSubscript:@"chromaBlurEnabled"];

  v106 = [MEMORY[0x277CCABB0] numberWithBool:{(*(*a1 + 2408))(a1, a2)}];
  [v4 setObject:v106 forKeyedSubscript:@"boostEnabled"];

  [v4 setObject:&unk_284957A90 forKeyedSubscript:@"boostKind"];
  [v4 setObject:&unk_284958A68 forKeyedSubscript:@"gamutLimitationCase"];
  v107 = MEMORY[0x277CCABB0];
  (*(*a1 + 2120))(a1);
  v108 = [v107 numberWithDouble:?];
  [v4 setObject:v108 forKeyedSubscript:@"SPEThreshold"];

  v109 = MEMORY[0x277CCABB0];
  (*(*a1 + 1448))(a1);
  v110 = [v109 numberWithDouble:?];
  [v4 setObject:v110 forKeyedSubscript:@"sharpenRadius"];

  v111 = MEMORY[0x277CCABB0];
  (*(*a1 + 2232))(a1);
  v112 = [v111 numberWithDouble:?];
  [v4 setObject:v112 forKeyedSubscript:@"sharpenIntensity"];

  v113 = MEMORY[0x277CCABB0];
  (*(*a1 + 2256))(a1);
  v114 = [v113 numberWithDouble:?];
  [v4 setObject:v114 forKeyedSubscript:@"sharpenAbsoluteLimit"];

  v115 = MEMORY[0x277CCABB0];
  (*(*a1 + 2240))(a1);
  v116 = [v115 numberWithDouble:?];
  [v4 setObject:v116 forKeyedSubscript:@"sharpenEdgeIntensity"];

  v117 = MEMORY[0x277CCABB0];
  (*(*a1 + 1480))(a1);
  v118 = [v117 numberWithDouble:?];
  [v4 setObject:v118 forKeyedSubscript:@"sharpenEdgeThreshold"];

  v119 = MEMORY[0x277CCABB0];
  (*(*a1 + 1488))(a1);
  v120 = [v119 numberWithDouble:?];
  [v4 setObject:v120 forKeyedSubscript:@"sharpenEdgeMaskSoftness"];

  v121 = MEMORY[0x277CCABB0];
  (*(*a1 + 1496))(a1);
  v122 = [v121 numberWithDouble:?];
  [v4 setObject:v122 forKeyedSubscript:off_27DE37768[0]];

  v123 = MEMORY[0x277CCABB0];
  (*(*a1 + 1504))(a1);
  v124 = [v123 numberWithDouble:?];
  [v4 setObject:v124 forKeyedSubscript:off_27DE37740[0]];

  v125 = MEMORY[0x277CCABB0];
  (*(*a1 + 1552))(a1);
  v126 = [v125 numberWithDouble:?];
  [v4 setObject:v126 forKeyedSubscript:@"chromaBlurNoiseFactor"];

  v127 = MEMORY[0x277CCABB0];
  (*(*a1 + 1768))(a1);
  v128 = [v127 numberWithDouble:?];
  [v4 setObject:v128 forKeyedSubscript:off_27DE37650[0]];

  v129 = MEMORY[0x277CCABB0];
  (*(*a1 + 2304))(a1);
  v130 = [v129 numberWithDouble:?];
  [v4 setObject:v130 forKeyedSubscript:off_27DE37748[0]];

  v131 = MEMORY[0x277CCABB0];
  (*(*a1 + 2312))(a1);
  v132 = [v131 numberWithDouble:?];
  [v4 setObject:v132 forKeyedSubscript:@"chromaBlurEdgeThreshold2"];

  v133 = MEMORY[0x277CCABB0];
  (*(*a1 + 2280))(a1);
  v134 = [v133 numberWithDouble:?];
  [v4 setObject:v134 forKeyedSubscript:@"chromaBlurRadius2"];

  v135 = MEMORY[0x277CCABB0];
  (*(*a1 + 2432))(a1);
  v136 = [v135 numberWithDouble:?];
  [v4 setObject:v136 forKeyedSubscript:@"antiAliasingFilterStrength"];

  v137 = [MEMORY[0x277CCABB0] numberWithBool:(*(*a1 + 2472))(a1) ^ 1];
  [v4 setObject:v137 forKeyedSubscript:@"noAntiAliasingFilter"];

  v138 = [MEMORY[0x277CCABB0] numberWithBool:(*(*a1 + 2464))(a1)];
  [v4 setObject:v138 forKeyedSubscript:@"powerBlurThreePass"];

  v139 = MEMORY[0x277CCABB0];
  (*(*a1 + 1752))(a1);
  v140 = [v139 numberWithDouble:?];
  [v4 setObject:v140 forKeyedSubscript:@"greenReconstructionEdgeScale"];

  v141 = MEMORY[0x277CCABB0];
  (*(*a1 + 1568))(a1);
  v142 = [v141 numberWithDouble:?];
  [v4 setObject:v142 forKeyedSubscript:@"scale1"];

  v143 = MEMORY[0x277CCABB0];
  (*(*a1 + 1576))(a1);
  v144 = [v143 numberWithDouble:?];
  [v4 setObject:v144 forKeyedSubscript:@"scale2"];

  v145 = MEMORY[0x277CCABB0];
  (*(*a1 + 1272))(a1);
  v146 = [v145 numberWithDouble:?];
  [v4 setObject:v146 forKeyedSubscript:@"boostTransitionPoint"];

  v147 = MEMORY[0x277CCABB0];
  (*(*a1 + 1280))(a1);
  v148 = [v147 numberWithDouble:?];
  [v4 setObject:v148 forKeyedSubscript:@"boostTransitionWidth"];

  v149 = MEMORY[0x277CCABB0];
  (*(*a1 + 2416))(a1);
  v150 = [v149 numberWithDouble:?];
  [v4 setObject:v150 forKeyedSubscript:@"boostLuminanceAmount"];

  v151 = MEMORY[0x277CCABB0];
  (*(*a1 + 2400))(a1);
  v152 = [v151 numberWithDouble:?];
  [v4 setObject:v152 forKeyedSubscript:@"boostAmount"];

  v153 = MEMORY[0x277CCABB0];
  (*(*a1 + 1584))(a1);
  v154 = [v153 numberWithDouble:?];
  [v4 setObject:v154 forKeyedSubscript:@"shadowDesaturatePoint"];

  v155 = MEMORY[0x277CCABB0];
  (*(*a1 + 1592))(a1);
  v156 = [v155 numberWithDouble:?];
  [v4 setObject:v156 forKeyedSubscript:@"shadowDesaturateWidth"];

  v157 = MEMORY[0x277CCABB0];
  (*(*a1 + 2216))(a1);
  v158 = [v157 numberWithDouble:?];
  [v4 setObject:v158 forKeyedSubscript:@"shadowDesaturateAmount"];

  v159 = MEMORY[0x277CCABB0];
  (*(*a1 + 2088))(a1);
  v160 = [v159 numberWithDouble:?];
  [v4 setObject:v160 forKeyedSubscript:@"noiseInterpolant"];

  v161 = [MEMORY[0x277CCABB0] numberWithDouble:(*(*a1 + 256))(a1)];
  [v4 setObject:v161 forKeyedSubscript:@"ISOSetting"];

  v162 = MEMORY[0x277CCABB0];
  (*(*a1 + 264))(a1);
  v163 = [v162 numberWithDouble:?];
  [v4 setObject:v163 forKeyedSubscript:@"exposureTime"];

  v164 = [MEMORY[0x277CCABB0] numberWithBool:(*(*a1 + 2104))(a1)];
  [v4 setObject:v164 forKeyedSubscript:@"noiseTransitionEnabled"];

  v165 = MEMORY[0x277CCABB0];
  (*(*a1 + 2080))(a1);
  v166 = [v165 numberWithDouble:?];
  [v4 setObject:v166 forKeyedSubscript:@"noiseEstimate"];

  v167 = MEMORY[0x277CCABB0];
  (*(*a1 + 1384))(a1);
  v168 = [v167 numberWithDouble:?];
  [v4 setObject:v168 forKeyedSubscript:@"greenSplitRed"];

  v169 = MEMORY[0x277CCABB0];
  (*(*a1 + 1392))(a1);
  v170 = [v169 numberWithDouble:?];
  [v4 setObject:v170 forKeyedSubscript:@"greenSplitGreen1"];

  v171 = MEMORY[0x277CCABB0];
  (*(*a1 + 1400))(a1);
  v172 = [v171 numberWithDouble:?];
  [v4 setObject:v172 forKeyedSubscript:@"greenSplitBlue"];

  v173 = [MEMORY[0x277CCABB0] numberWithInt:(*(*a1 + 1408))(a1)];
  [v4 setObject:v173 forKeyedSubscript:@"greenBayerSplit"];

  v174 = MEMORY[0x277CCABB0];
  (*(*a1 + 2640))(a1);
  v175 = [v174 numberWithDouble:?];
  [v4 setObject:v175 forKeyedSubscript:off_27DE37660[0]];

  v176 = MEMORY[0x277CCABB0];
  (*(*a1 + 2648))(a1);
  v177 = [v176 numberWithDouble:?];
  [v4 setObject:v177 forKeyedSubscript:off_27DE37668[0]];

  v491 = 0;
  (*(*a1 + 2128))(__p, a1);
  v178 = __p[0];
  v179 = (*(*a1 + 256))(a1);
  (**v178)(v178, v179, &v494, &v491);
  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }

  LODWORD(v180) = v494;
  v181 = [MEMORY[0x277CCABB0] numberWithFloat:v180];
  [v4 setObject:v181 forKeyedSubscript:@"signalNoiseModelA0"];

  LODWORD(v182) = HIDWORD(v494);
  v183 = [MEMORY[0x277CCABB0] numberWithFloat:v182];
  [v4 setObject:v183 forKeyedSubscript:@"signalNoiseModelB0"];

  LODWORD(v184) = v495;
  v185 = [MEMORY[0x277CCABB0] numberWithFloat:v184];
  [v4 setObject:v185 forKeyedSubscript:@"signalNoiseModelC0"];

  LODWORD(v186) = HIDWORD(v495);
  v187 = [MEMORY[0x277CCABB0] numberWithFloat:v186];
  [v4 setObject:v187 forKeyedSubscript:@"signalNoiseModelPRNU0"];

  LODWORD(v188) = v496;
  v189 = [MEMORY[0x277CCABB0] numberWithFloat:v188];
  [v4 setObject:v189 forKeyedSubscript:@"signalNoiseModelA1"];

  LODWORD(v190) = v497;
  v191 = [MEMORY[0x277CCABB0] numberWithFloat:v190];
  [v4 setObject:v191 forKeyedSubscript:@"signalNoiseModelB1"];

  LODWORD(v192) = v498;
  v193 = [MEMORY[0x277CCABB0] numberWithFloat:v192];
  [v4 setObject:v193 forKeyedSubscript:@"signalNoiseModelC1"];

  LODWORD(v194) = v499;
  v195 = [MEMORY[0x277CCABB0] numberWithFloat:v194];
  [v4 setObject:v195 forKeyedSubscript:@"signalNoiseModelPRNU1"];

  LODWORD(v196) = v500;
  v197 = [MEMORY[0x277CCABB0] numberWithFloat:v196];
  [v4 setObject:v197 forKeyedSubscript:@"signalNoiseModelA2"];

  LODWORD(v198) = v501;
  v199 = [MEMORY[0x277CCABB0] numberWithFloat:v198];
  [v4 setObject:v199 forKeyedSubscript:@"signalNoiseModelB2"];

  LODWORD(v200) = v502;
  v201 = [MEMORY[0x277CCABB0] numberWithFloat:v200];
  [v4 setObject:v201 forKeyedSubscript:@"signalNoiseModelC2"];

  LODWORD(v202) = v503;
  v203 = [MEMORY[0x277CCABB0] numberWithFloat:v202];
  [v4 setObject:v203 forKeyedSubscript:@"signalNoiseModelPRNU2"];

  LODWORD(v204) = v504;
  v205 = [MEMORY[0x277CCABB0] numberWithFloat:v204];
  [v4 setObject:v205 forKeyedSubscript:@"signalNoiseModelA3"];

  LODWORD(v206) = v505;
  v207 = [MEMORY[0x277CCABB0] numberWithFloat:v206];
  [v4 setObject:v207 forKeyedSubscript:@"signalNoiseModelB3"];

  LODWORD(v208) = v506;
  v209 = [MEMORY[0x277CCABB0] numberWithFloat:v208];
  [v4 setObject:v209 forKeyedSubscript:@"signalNoiseModelC3"];

  LODWORD(v210) = v507;
  v211 = [MEMORY[0x277CCABB0] numberWithFloat:v210];
  [v4 setObject:v211 forKeyedSubscript:@"signalNoiseModelPRNU3"];

  v212 = [MEMORY[0x277CCABB0] numberWithInt:v491];
  [v4 setObject:v212 forKeyedSubscript:@"individualQuadratics"];

  (*(*a1 + 1016))(__p, a1);
  v213 = __p[0];
  v214 = __p[1];
  if (__p[0] == __p[1])
  {
    v218 = 0;
    goto LABEL_69;
  }

  v215 = -1;
  v216 = &v492;
  do
  {
    if (v215 == 3)
    {
      v447 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v447, "RawCameraException");
      __cxa_throw(v447, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v217 = *v213;
    if ((LODWORD(v217) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      v442 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v442, "RawCameraException");
      __cxa_throw(v442, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    *v216++ = v217;
    ++v213;
    ++v215;
  }

  while (v213 != v214);
  if (v215 <= 2)
  {
    v218 = v215 + 1;
LABEL_69:
    bzero(&v492 + (4 * v218), (16 - 4 * v218));
  }

  (*(*a1 + 2680))(a1, &v492);
  LODWORD(v219) = v492;
  v220 = [MEMORY[0x277CCABB0] numberWithFloat:v219];
  [v4 setObject:v220 forKeyedSubscript:@"black0"];

  LODWORD(v221) = HIDWORD(v492);
  v222 = [MEMORY[0x277CCABB0] numberWithFloat:v221];
  [v4 setObject:v222 forKeyedSubscript:@"black1"];

  LODWORD(v223) = v493;
  v224 = [MEMORY[0x277CCABB0] numberWithFloat:v223];
  [v4 setObject:v224 forKeyedSubscript:@"black2"];

  LODWORD(v225) = HIDWORD(v493);
  v226 = [MEMORY[0x277CCABB0] numberWithFloat:v225];
  [v4 setObject:v226 forKeyedSubscript:@"black3"];

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  (*(*a1 + 1120))(&v492, a1);
  v227 = v492;
  v228 = (*(*a1 + 256))(a1);
  (*(*a1 + 264))(a1);
  (*(*v227 + 8))(__p, v227, v228);
  if (v493)
  {
    sub_2337239E8(v493);
  }

  v229 = __p[0];
  if ((__p[1] - __p[0]) != 32)
  {
    v446 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v446, "RawCameraException");
    __cxa_throw(v446, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (__p[0] == __p[1])
  {
    v233 = 0;
LABEL_91:
    v235 = v233;
    do
    {
      v236 = @"darkNoise3";
      if (v235 <= 2)
      {
        v236 = off_2789EF060[v235];
      }

      [v4 setObject:&unk_28495DAF0 forKeyedSubscript:v236];
      ++v235;
    }

    while (v235 != 4);
    goto LABEL_95;
  }

  for (i = 0; ; ++i)
  {
    v231 = *v229;
    if ((LODWORD(v231) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      v443 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v443, "RawCameraException");
      __cxa_throw(v443, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (i == 2)
    {
      v232 = [MEMORY[0x277CCABB0] numberWithFloat:?];
      [v4 setObject:v232 forKeyedSubscript:@"darkNoise2"];
    }

    else if (i == 1)
    {
      v232 = [MEMORY[0x277CCABB0] numberWithFloat:?];
      [v4 setObject:v232 forKeyedSubscript:@"darkNoise1"];
    }

    else
    {
      v232 = [MEMORY[0x277CCABB0] numberWithFloat:?];
      if (i)
      {
        [v4 setObject:v232 forKeyedSubscript:@"darkNoise3"];
      }

      else
      {
        [v4 setObject:v232 forKeyedSubscript:@"darkNoise0"];
      }
    }

    ++v229;
    v233 = i + 1;
    if (v229 == __p[1])
    {
      break;
    }

    if (v233 == 4)
    {
      v234 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v234, "RawCameraException");
      __cxa_throw(v234, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  if (i <= 2)
  {
    goto LABEL_91;
  }

LABEL_95:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v237 = MEMORY[0x277CCABB0];
  (*(*a1 + 2640))(a1);
  v238 = [v237 numberWithDouble:?];
  [v4 setObject:v238 forKeyedSubscript:off_27DE37660[0]];

  v239 = MEMORY[0x277CCABB0];
  (*(*a1 + 2648))(a1);
  v240 = [v239 numberWithDouble:?];
  [v4 setObject:v240 forKeyedSubscript:off_27DE37668[0]];

  v241 = [MEMORY[0x277CCABB0] numberWithInt:(*(*a1 + 520))(a1)];
  [v4 setObject:v241 forKeyedSubscript:@"destWidth"];

  v242 = [MEMORY[0x277CCABB0] numberWithInt:(*(*a1 + 520))(a1) >> 32];
  [v4 setObject:v242 forKeyedSubscript:@"destHeight"];

  v243 = [MEMORY[0x277CCABB0] numberWithInt:(*(*a1 + 512))(a1)];
  [v4 setObject:v243 forKeyedSubscript:@"sourceWidth"];

  v244 = [MEMORY[0x277CCABB0] numberWithInt:(*(*a1 + 512))(a1) >> 32];
  [v4 setObject:v244 forKeyedSubscript:@"sourceHeight"];

  v245 = [MEMORY[0x277CCABB0] numberWithInt:(*(*a1 + 504))(a1)];
  [v4 setObject:v245 forKeyedSubscript:@"destHorizOffset"];

  v246 = [MEMORY[0x277CCABB0] numberWithInt:(*(*a1 + 504))(a1) >> 32];
  [v4 setObject:v246 forKeyedSubscript:@"destVertOffset"];

  v247 = (*(*a1 + 408))(a1);
  v248 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%d, %d}", v247, HIDWORD(v247)];
  [v4 setObject:v248 forKeyedSubscript:off_27DE37698[0]];

  v249 = (*(*a1 + 432))(a1);
  v251 = [MEMORY[0x277CCACA8] stringWithFormat:@"{{%d, %d}, {%d, %d}}", v249, HIDWORD(v249), v250, HIDWORD(v250)];
  [v4 setObject:v251 forKeyedSubscript:off_27DE376A0[0]];

  v252 = (*(*a1 + 456))(a1);
  v254 = [MEMORY[0x277CCACA8] stringWithFormat:@"{{%d, %d}, {%d, %d}}", v252, HIDWORD(v252), v253, HIDWORD(v253)];
  [v4 setObject:v254 forKeyedSubscript:off_27DE376A8[0]];

  v255 = (*(*a1 + 496))(a1);
  v257 = [MEMORY[0x277CCACA8] stringWithFormat:@"{{%d, %d}, {%d, %d}}", v255, HIDWORD(v255), v256, HIDWORD(v256)];
  [v4 setObject:v257 forKeyedSubscript:@"actualCropRect"];

  v258 = (*(*a1 + 496))(a1);
  v260 = [MEMORY[0x277CCACA8] stringWithFormat:@"{{%d, %d}, {%d, %d}}", v258, HIDWORD(v258), v259, HIDWORD(v259)];
  [v4 setObject:v260 forKeyedSubscript:@"paddedCropRect"];

  v261 = [MEMORY[0x277CCABB0] numberWithInt:(*(*a1 + 960))(a1)];
  [v4 setObject:v261 forKeyedSubscript:off_27DE37728[0]];

  if ((*(*a1 + 960))(a1) == 9)
  {
    v262 = (*(*a1 + 1008))(a1);
    v264 = [MEMORY[0x277CCACA8] stringWithFormat:@"{{%d, %d}, {%d, %d}}", v262, HIDWORD(v262), v263, HIDWORD(v263)];
    [v4 setObject:v264 forKeyedSubscript:@"v2blackSampleArea"];
  }

  v265 = [MEMORY[0x277CCABB0] numberWithInt:(*(*a1 + 576))(a1)];
  [v4 setObject:v265 forKeyedSubscript:@"bitsPerSample"];

  v266 = MEMORY[0x277CCABB0];
  (*(*a1 + 2528))(a1);
  v267 = [v266 numberWithDouble:?];
  [v4 setObject:v267 forKeyedSubscript:@"CNRAmount"];

  v268 = MEMORY[0x277CCABB0];
  (*(*a1 + 2608))(a1);
  v269 = [v268 numberWithDouble:?];
  [v4 setObject:v269 forKeyedSubscript:@"CNRNoiseFactor"];

  v270 = MEMORY[0x277CCABB0];
  (*(*a1 + 2600))(a1);
  v271 = [v270 numberWithDouble:?];
  [v4 setObject:v271 forKeyedSubscript:@"CNRRadius"];

  v272 = MEMORY[0x277CCABB0];
  (*(*a1 + 2616))(a1);
  v273 = [v272 numberWithDouble:?];
  [v4 setObject:v273 forKeyedSubscript:@"CNRBias"];

  v479 = 0u;
  v480 = 0u;
  v477 = 0u;
  v478 = 0u;
  v475 = 0u;
  v476 = 0u;
  v473 = 0u;
  v474 = 0u;
  v471 = 0u;
  v472 = 0u;
  v469 = 0u;
  v470 = 0u;
  v467 = 0u;
  v468 = 0u;
  v465 = 0u;
  v466 = 0u;
  v463 = 0u;
  v464 = 0u;
  v461 = 0u;
  v462 = 0u;
  v459 = 0u;
  v460 = 0u;
  v457 = 0u;
  v458 = 0u;
  v455 = 0u;
  v456 = 0u;
  v453 = 0u;
  v454 = 0u;
  v451 = 0u;
  v452 = 0u;
  *__p = 0u;
  v450 = 0u;
  (*(*a1 + 2696))(__p, a1, a2);
  v274 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v462];
  [v4 setObject:v274 forKeyedSubscript:@"FujiCAEnable"];

  v275 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE12(v474)];
  [v4 setObject:v275 forKeyedSubscript:@"FujiLensCorrectionEnable"];

  if (v462)
  {
    v276 = [MEMORY[0x277CCABB0] numberWithInt:DWORD1(v462)];
    [v4 setObject:v276 forKeyedSubscript:@"FujiCANumberOfPoints"];

    v277 = [MEMORY[0x277CCABB0] numberWithInt:DWORD2(v462)];
    [v4 setObject:v277 forKeyedSubscript:@"FujiCAMaxDistance"];

    LODWORD(v278) = HIDWORD(v462);
    v279 = [MEMORY[0x277CCABB0] numberWithFloat:v278];
    [v4 setObject:v279 forKeyedSubscript:@"lrTable0"];

    LODWORD(v280) = v463;
    v281 = [MEMORY[0x277CCABB0] numberWithFloat:v280];
    [v4 setObject:v281 forKeyedSubscript:@"lrTable1"];

    LODWORD(v282) = DWORD1(v463);
    v283 = [MEMORY[0x277CCABB0] numberWithFloat:v282];
    [v4 setObject:v283 forKeyedSubscript:@"lrTable2"];

    LODWORD(v284) = DWORD2(v463);
    v285 = [MEMORY[0x277CCABB0] numberWithFloat:v284];
    [v4 setObject:v285 forKeyedSubscript:@"lrTable3"];

    LODWORD(v286) = HIDWORD(v463);
    v287 = [MEMORY[0x277CCABB0] numberWithFloat:v286];
    [v4 setObject:v287 forKeyedSubscript:@"lrTable4"];

    LODWORD(v288) = v464;
    v289 = [MEMORY[0x277CCABB0] numberWithFloat:v288];
    [v4 setObject:v289 forKeyedSubscript:@"lrTable5"];

    LODWORD(v290) = DWORD1(v464);
    v291 = [MEMORY[0x277CCABB0] numberWithFloat:v290];
    [v4 setObject:v291 forKeyedSubscript:@"lrTable6"];

    LODWORD(v292) = DWORD2(v464);
    v293 = [MEMORY[0x277CCABB0] numberWithFloat:v292];
    [v4 setObject:v293 forKeyedSubscript:@"lrTable7"];

    LODWORD(v294) = HIDWORD(v464);
    v295 = [MEMORY[0x277CCABB0] numberWithFloat:v294];
    [v4 setObject:v295 forKeyedSubscript:@"lrTable8"];

    LODWORD(v296) = v465;
    v297 = [MEMORY[0x277CCABB0] numberWithFloat:v296];
    [v4 setObject:v297 forKeyedSubscript:@"lrTable9"];

    LODWORD(v298) = DWORD1(v465);
    v299 = [MEMORY[0x277CCABB0] numberWithFloat:v298];
    [v4 setObject:v299 forKeyedSubscript:@"lrTable10"];

    LODWORD(v300) = DWORD2(v465);
    v301 = [MEMORY[0x277CCABB0] numberWithFloat:v300];
    [v4 setObject:v301 forKeyedSubscript:@"lrTable11"];

    LODWORD(v302) = HIDWORD(v465);
    v303 = [MEMORY[0x277CCABB0] numberWithFloat:v302];
    [v4 setObject:v303 forKeyedSubscript:@"lrTable12"];

    LODWORD(v304) = v466;
    v305 = [MEMORY[0x277CCABB0] numberWithFloat:v304];
    [v4 setObject:v305 forKeyedSubscript:@"lrTable13"];

    LODWORD(v306) = DWORD1(v466);
    v307 = [MEMORY[0x277CCABB0] numberWithFloat:v306];
    [v4 setObject:v307 forKeyedSubscript:@"lrTable14"];

    LODWORD(v308) = DWORD2(v466);
    v309 = [MEMORY[0x277CCABB0] numberWithFloat:v308];
    [v4 setObject:v309 forKeyedSubscript:@"lrTable15"];

    LODWORD(v310) = HIDWORD(v466);
    v311 = [MEMORY[0x277CCABB0] numberWithFloat:v310];
    [v4 setObject:v311 forKeyedSubscript:@"caRed0"];

    LODWORD(v312) = v467;
    v313 = [MEMORY[0x277CCABB0] numberWithFloat:v312];
    [v4 setObject:v313 forKeyedSubscript:@"caRed1"];

    LODWORD(v314) = DWORD1(v467);
    v315 = [MEMORY[0x277CCABB0] numberWithFloat:v314];
    [v4 setObject:v315 forKeyedSubscript:@"caRed2"];

    LODWORD(v316) = DWORD2(v467);
    v317 = [MEMORY[0x277CCABB0] numberWithFloat:v316];
    [v4 setObject:v317 forKeyedSubscript:@"caRed3"];

    LODWORD(v318) = HIDWORD(v467);
    v319 = [MEMORY[0x277CCABB0] numberWithFloat:v318];
    [v4 setObject:v319 forKeyedSubscript:@"caRed4"];

    LODWORD(v320) = v468;
    v321 = [MEMORY[0x277CCABB0] numberWithFloat:v320];
    [v4 setObject:v321 forKeyedSubscript:@"caRed5"];

    LODWORD(v322) = DWORD1(v468);
    v323 = [MEMORY[0x277CCABB0] numberWithFloat:v322];
    [v4 setObject:v323 forKeyedSubscript:@"caRed6"];

    LODWORD(v324) = DWORD2(v468);
    v325 = [MEMORY[0x277CCABB0] numberWithFloat:v324];
    [v4 setObject:v325 forKeyedSubscript:@"caRed7"];

    LODWORD(v326) = HIDWORD(v468);
    v327 = [MEMORY[0x277CCABB0] numberWithFloat:v326];
    [v4 setObject:v327 forKeyedSubscript:@"caRed8"];

    LODWORD(v328) = v469;
    v329 = [MEMORY[0x277CCABB0] numberWithFloat:v328];
    [v4 setObject:v329 forKeyedSubscript:@"caRed9"];

    LODWORD(v330) = DWORD1(v469);
    v331 = [MEMORY[0x277CCABB0] numberWithFloat:v330];
    [v4 setObject:v331 forKeyedSubscript:@"caRed10"];

    LODWORD(v332) = DWORD2(v469);
    v333 = [MEMORY[0x277CCABB0] numberWithFloat:v332];
    [v4 setObject:v333 forKeyedSubscript:@"caRed11"];

    LODWORD(v334) = HIDWORD(v469);
    v335 = [MEMORY[0x277CCABB0] numberWithFloat:v334];
    [v4 setObject:v335 forKeyedSubscript:@"caRed12"];

    LODWORD(v336) = v470;
    v337 = [MEMORY[0x277CCABB0] numberWithFloat:v336];
    [v4 setObject:v337 forKeyedSubscript:@"caRed13"];

    LODWORD(v338) = DWORD1(v470);
    v339 = [MEMORY[0x277CCABB0] numberWithFloat:v338];
    [v4 setObject:v339 forKeyedSubscript:@"caRed14"];

    LODWORD(v340) = DWORD2(v470);
    v341 = [MEMORY[0x277CCABB0] numberWithFloat:v340];
    [v4 setObject:v341 forKeyedSubscript:@"caRed15"];

    LODWORD(v342) = HIDWORD(v470);
    v343 = [MEMORY[0x277CCABB0] numberWithFloat:v342];
    [v4 setObject:v343 forKeyedSubscript:@"caBlue0"];

    LODWORD(v344) = v471;
    v345 = [MEMORY[0x277CCABB0] numberWithFloat:v344];
    [v4 setObject:v345 forKeyedSubscript:@"caBlue1"];

    LODWORD(v346) = DWORD1(v471);
    v347 = [MEMORY[0x277CCABB0] numberWithFloat:v346];
    [v4 setObject:v347 forKeyedSubscript:@"caBlue2"];

    LODWORD(v348) = DWORD2(v471);
    v349 = [MEMORY[0x277CCABB0] numberWithFloat:v348];
    [v4 setObject:v349 forKeyedSubscript:@"caBlue3"];

    LODWORD(v350) = HIDWORD(v471);
    v351 = [MEMORY[0x277CCABB0] numberWithFloat:v350];
    [v4 setObject:v351 forKeyedSubscript:@"caBlue4"];

    LODWORD(v352) = v472;
    v353 = [MEMORY[0x277CCABB0] numberWithFloat:v352];
    [v4 setObject:v353 forKeyedSubscript:@"caBlue5"];

    LODWORD(v354) = DWORD1(v472);
    v355 = [MEMORY[0x277CCABB0] numberWithFloat:v354];
    [v4 setObject:v355 forKeyedSubscript:@"caBlue6"];

    LODWORD(v356) = DWORD2(v472);
    v357 = [MEMORY[0x277CCABB0] numberWithFloat:v356];
    [v4 setObject:v357 forKeyedSubscript:@"caBlue7"];

    LODWORD(v358) = HIDWORD(v472);
    v359 = [MEMORY[0x277CCABB0] numberWithFloat:v358];
    [v4 setObject:v359 forKeyedSubscript:@"caBlue8"];

    LODWORD(v360) = v473;
    v361 = [MEMORY[0x277CCABB0] numberWithFloat:v360];
    [v4 setObject:v361 forKeyedSubscript:@"caBlue9"];

    LODWORD(v362) = DWORD1(v473);
    v363 = [MEMORY[0x277CCABB0] numberWithFloat:v362];
    [v4 setObject:v363 forKeyedSubscript:@"caBlue10"];

    LODWORD(v364) = DWORD2(v473);
    v365 = [MEMORY[0x277CCABB0] numberWithFloat:v364];
    [v4 setObject:v365 forKeyedSubscript:@"caBlue11"];

    LODWORD(v366) = HIDWORD(v473);
    v367 = [MEMORY[0x277CCABB0] numberWithFloat:v366];
    [v4 setObject:v367 forKeyedSubscript:@"caBlue12"];

    LODWORD(v368) = v474;
    v369 = [MEMORY[0x277CCABB0] numberWithFloat:v368];
    [v4 setObject:v369 forKeyedSubscript:@"caBlue13"];

    LODWORD(v370) = DWORD1(v474);
    v371 = [MEMORY[0x277CCABB0] numberWithFloat:v370];
    [v4 setObject:v371 forKeyedSubscript:@"caBlue14"];

    LODWORD(v372) = DWORD2(v474);
    v373 = [MEMORY[0x277CCABB0] numberWithFloat:v372];
    [v4 setObject:v373 forKeyedSubscript:@"caBlue15"];
  }

  if (BYTE12(v474))
  {
    v374 = [MEMORY[0x277CCABB0] numberWithInt:DWORD1(v475)];
    [v4 setObject:v374 forKeyedSubscript:@"FujiLensCorrectionNumberOfPoints"];

    v375 = [MEMORY[0x277CCABB0] numberWithInt:v475];
    [v4 setObject:v375 forKeyedSubscript:@"FujiLensCorrectionMaxDistance"];

    LODWORD(v376) = DWORD2(v475);
    v377 = [MEMORY[0x277CCABB0] numberWithFloat:v376];
    [v4 setObject:v377 forKeyedSubscript:@"FujiLensCorrectionLR0"];

    LODWORD(v378) = HIDWORD(v475);
    v379 = [MEMORY[0x277CCABB0] numberWithFloat:v378];
    [v4 setObject:v379 forKeyedSubscript:@"FujiLensCorrectionLR1"];

    LODWORD(v380) = v476;
    v381 = [MEMORY[0x277CCABB0] numberWithFloat:v380];
    [v4 setObject:v381 forKeyedSubscript:@"FujiLensCorrectionLR2"];

    LODWORD(v382) = DWORD1(v476);
    v383 = [MEMORY[0x277CCABB0] numberWithFloat:v382];
    [v4 setObject:v383 forKeyedSubscript:@"FujiLensCorrectionLR3"];

    LODWORD(v384) = DWORD2(v476);
    v385 = [MEMORY[0x277CCABB0] numberWithFloat:v384];
    [v4 setObject:v385 forKeyedSubscript:@"FujiLensCorrectionLR4"];

    LODWORD(v386) = HIDWORD(v476);
    v387 = [MEMORY[0x277CCABB0] numberWithFloat:v386];
    [v4 setObject:v387 forKeyedSubscript:@"FujiLensCorrectionLR5"];

    LODWORD(v388) = v477;
    v389 = [MEMORY[0x277CCABB0] numberWithFloat:v388];
    [v4 setObject:v389 forKeyedSubscript:@"FujiLensCorrectionLR6"];

    LODWORD(v390) = DWORD1(v477);
    v391 = [MEMORY[0x277CCABB0] numberWithFloat:v390];
    [v4 setObject:v391 forKeyedSubscript:@"FujiLensCorrectionLR7"];

    LODWORD(v392) = DWORD2(v477);
    v393 = [MEMORY[0x277CCABB0] numberWithFloat:v392];
    [v4 setObject:v393 forKeyedSubscript:@"FujiLensCorrectionLR8"];

    LODWORD(v394) = HIDWORD(v477);
    v395 = [MEMORY[0x277CCABB0] numberWithFloat:v394];
    [v4 setObject:v395 forKeyedSubscript:@"FujiLensCorrectionLR9"];

    LODWORD(v396) = v478;
    v397 = [MEMORY[0x277CCABB0] numberWithFloat:v396];
    [v4 setObject:v397 forKeyedSubscript:@"FujiLensCorrectionLR10"];

    LODWORD(v398) = DWORD1(v478);
    v399 = [MEMORY[0x277CCABB0] numberWithFloat:v398];
    [v4 setObject:v399 forKeyedSubscript:@"FujiLensCorrectionLR11"];

    LODWORD(v400) = DWORD2(v478);
    v401 = [MEMORY[0x277CCABB0] numberWithFloat:v400];
    [v4 setObject:v401 forKeyedSubscript:@"FujiLensCorrectionLR12"];

    LODWORD(v402) = HIDWORD(v478);
    v403 = [MEMORY[0x277CCABB0] numberWithFloat:v402];
    [v4 setObject:v403 forKeyedSubscript:@"FujiLensCorrectionLR13"];

    LODWORD(v404) = v479;
    v405 = [MEMORY[0x277CCABB0] numberWithFloat:v404];
    [v4 setObject:v405 forKeyedSubscript:@"FujiLensCorrectionLR14"];

    LODWORD(v406) = DWORD1(v479);
    v407 = [MEMORY[0x277CCABB0] numberWithFloat:v406];
    [v4 setObject:v407 forKeyedSubscript:@"FujiLensCorrectionLR15"];

    LODWORD(v408) = DWORD2(v479);
    v409 = [MEMORY[0x277CCABB0] numberWithFloat:v408];
    [v4 setObject:v409 forKeyedSubscript:@"FujiLensCorrectionFactor0"];

    LODWORD(v410) = HIDWORD(v479);
    v411 = [MEMORY[0x277CCABB0] numberWithFloat:v410];
    [v4 setObject:v411 forKeyedSubscript:@"FujiLensCorrectionFactor1"];

    LODWORD(v412) = v480;
    v413 = [MEMORY[0x277CCABB0] numberWithFloat:v412];
    [v4 setObject:v413 forKeyedSubscript:@"FujiLensCorrectionFactor2"];

    LODWORD(v414) = DWORD1(v480);
    v415 = [MEMORY[0x277CCABB0] numberWithFloat:v414];
    [v4 setObject:v415 forKeyedSubscript:@"FujiLensCorrectionFactor3"];

    LODWORD(v416) = DWORD2(v480);
    v417 = [MEMORY[0x277CCABB0] numberWithFloat:v416];
    [v4 setObject:v417 forKeyedSubscript:@"FujiLensCorrectionFactor4"];

    LODWORD(v418) = HIDWORD(v480);
    v419 = [MEMORY[0x277CCABB0] numberWithFloat:v418];
    [v4 setObject:v419 forKeyedSubscript:@"FujiLensCorrectionFactor5"];

    LODWORD(v420) = v481;
    v421 = [MEMORY[0x277CCABB0] numberWithFloat:v420];
    [v4 setObject:v421 forKeyedSubscript:@"FujiLensCorrectionFactor6"];

    LODWORD(v422) = v482;
    v423 = [MEMORY[0x277CCABB0] numberWithFloat:v422];
    [v4 setObject:v423 forKeyedSubscript:@"FujiLensCorrectionFactor7"];

    LODWORD(v424) = v483;
    v425 = [MEMORY[0x277CCABB0] numberWithFloat:v424];
    [v4 setObject:v425 forKeyedSubscript:@"FujiLensCorrectionFactor8"];

    LODWORD(v426) = v484;
    v427 = [MEMORY[0x277CCABB0] numberWithFloat:v426];
    [v4 setObject:v427 forKeyedSubscript:@"FujiLensCorrectionFactor9"];

    LODWORD(v428) = v485;
    v429 = [MEMORY[0x277CCABB0] numberWithFloat:v428];
    [v4 setObject:v429 forKeyedSubscript:@"FujiLensCorrectionFactor10"];

    LODWORD(v430) = v486;
    v431 = [MEMORY[0x277CCABB0] numberWithFloat:v430];
    [v4 setObject:v431 forKeyedSubscript:@"FujiLensCorrectionFactor11"];

    LODWORD(v432) = v487;
    v433 = [MEMORY[0x277CCABB0] numberWithFloat:v432];
    [v4 setObject:v433 forKeyedSubscript:@"FujiLensCorrectionFactor12"];

    LODWORD(v434) = v488;
    v435 = [MEMORY[0x277CCABB0] numberWithFloat:v434];
    [v4 setObject:v435 forKeyedSubscript:@"FujiLensCorrectionFactor13"];

    LODWORD(v436) = v489;
    v437 = [MEMORY[0x277CCABB0] numberWithFloat:v436];
    [v4 setObject:v437 forKeyedSubscript:@"FujiLensCorrectionFactor14"];

    LODWORD(v438) = v490;
    v439 = [MEMORY[0x277CCABB0] numberWithFloat:v438];
    [v4 setObject:v439 forKeyedSubscript:@"FujiLensCorrectionFactor15"];
  }

  v440 = v4;

  return v440;
}

void sub_2337C8888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_2337C9490(uint64_t *a1, int a2)
{
  v622 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v3 = [MEMORY[0x277CBEB38] dictionary];
  (*(*a1 + 112))(__p, a1);
  v4 = sub_233758D94(__p[0]);
  [v3 setObject:v4 forKeyedSubscript:@"inputVersion"];

  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }

  v5 = MEMORY[0x277CCABB0];
  (*(*a1 + 112))(__p, a1);
  v6 = [v5 numberWithBool:sub_233758B00(__p[0])];
  [v3 setObject:v6 forKeyedSubscript:@"inputIsGenericDNG"];

  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:(*(*a1 + 2480))(a1)];
  [v3 setObject:v7 forKeyedSubscript:@"inputIsNoiseReductionEnabled"];

  v8 = sub_2338191A8(a2);
  [v3 setObject:v8 forKeyedSubscript:@"inputSushiMode"];

  v582 = (*(*a1 + 720))(a1);
  v583 = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [v3 setObject:v10 forKeyedSubscript:@"wx"];

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v583];
  [v3 setObject:v11 forKeyedSubscript:@"wy"];

  sub_233819238(&v582, __p);
  v12 = sub_2337BF480(__p);
  [v3 setObject:v12 forKeyedSubscript:@"inputNeutral"];

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v13 = [MEMORY[0x277CCABB0] numberWithBool:(*(*a1 + 1216))(a1)];
  [v3 setObject:v13 forKeyedSubscript:@"inputShouldLinearize"];

  v14 = MEMORY[0x277CCABB0];
  (*(*a1 + 2640))(a1);
  v15 = [v14 numberWithDouble:?];
  [v3 setObject:v15 forKeyedSubscript:@"inputXScale"];

  v16 = MEMORY[0x277CCABB0];
  (*(*a1 + 2648))(a1);
  v17 = [v16 numberWithDouble:?];
  [v3 setObject:v17 forKeyedSubscript:@"inputYScale"];

  v18 = MEMORY[0x277CCABB0];
  (*(*a1 + 2704))(a1);
  v19 = [v18 numberWithFloat:?];
  [v3 setObject:v19 forKeyedSubscript:@"inputNoiseReductionApplied"];

  sub_23373BC1C(a1);
  HIDWORD(v19) = v20;
  v21 = (*(*a1 + 536))(a1);
  v24 = [MEMORY[0x277CBF788] vectorWithCGRect:{v21, SHIDWORD(v19) - SHIDWORD(v21) - v23, v22}];
  [v3 setObject:v24 forKeyedSubscript:@"inputCropRect"];

  v25 = MEMORY[0x277CCABB0];
  (*(*a1 + 528))(a1);
  v26 = [v25 numberWithDouble:?];
  [v3 setObject:v26 forKeyedSubscript:@"inputScaleFactor"];

  if ((*(*a1 + 2480))(a1))
  {
    v621 = 0u;
    v620 = 0u;
    v619 = 0u;
    v618 = 0u;
    v617 = 0u;
    v616 = 0u;
    v615 = 0u;
    v614 = 0u;
    v613 = 0u;
    v612 = 0u;
    v611 = 0u;
    v610 = 0u;
    v609 = 0u;
    v608 = 0u;
    v607 = 0u;
    v606 = 0u;
    v605 = 0u;
    v604 = 0u;
    v602 = 0u;
    v603 = 0u;
    v600 = 0u;
    v601 = 0u;
    v598 = 0u;
    v599 = 0u;
    *v596 = 0u;
    v597 = 0u;
    v594 = 0u;
    v595 = 0u;
    memset(v593, 0, sizeof(v593));
    *__p = 0u;
    v592 = 0u;
    (*(*a1 + 2696))(__p, a1, a2);
    v589 = 0u;
    v590 = 0u;
    v587 = 0u;
    v588 = 0u;
    v585 = 0u;
    v586 = 0u;
    *v584 = 0u;
    sub_2338714E4(__p, v584);
    v27 = (*(*a1 + 800))(a1, a2);
    v28 = MEMORY[0x277CCABB0];
    (*(*a1 + 2520))(a1);
    v29 = [v28 numberWithDouble:?];
    [v3 setObject:v29 forKeyedSubscript:@"inputLNRAmount"];

    v30 = MEMORY[0x277CCABB0];
    (*(*a1 + 2528))(a1);
    v31 = [v30 numberWithDouble:?];
    [v3 setObject:v31 forKeyedSubscript:@"inputCNRAmount"];

    v32 = MEMORY[0x277CCABB0];
    (*(*a1 + 2544))(a1);
    v33 = [v32 numberWithDouble:?];
    [v3 setObject:v33 forKeyedSubscript:@"inputSharpenAmount"];

    v34 = MEMORY[0x277CCABB0];
    (*(*a1 + 2552))(a1);
    v35 = [v34 numberWithDouble:?];
    [v3 setObject:v35 forKeyedSubscript:@"inputSharpenThreshold"];

    v36 = MEMORY[0x277CCABB0];
    (*(*a1 + 2560))(a1);
    v37 = [v36 numberWithDouble:?];
    [v3 setObject:v37 forKeyedSubscript:@"inputContrastAmount"];

    v38 = MEMORY[0x277CCABB0];
    (*(*a1 + 2568))(a1);
    v39 = [v38 numberWithDouble:?];
    [v3 setObject:v39 forKeyedSubscript:@"inputDetailAmount"];

    v40 = MEMORY[0x277CCABB0];
    (*(*a1 + 2664))(a1, 0, 0);
    v41 = [v40 numberWithDouble:?];
    [v3 setObject:v41 forKeyedSubscript:@"inputRepresentativeNoise"];

    v42 = MEMORY[0x277CCABB0];
    (*(*a1 + 528))(a1);
    v43 = [v42 numberWithDouble:?];
    [v3 setObject:v43 forKeyedSubscript:@"inputScaleFactor"];

    v44 = MEMORY[0x277CCABB0];
    v45 = (*(*a1 + 2496))(a1);
    v46 = 0.0;
    if (v45)
    {
      (*(*a1 + 2512))(a1, 0.0);
    }

    v47 = [v44 numberWithDouble:v46];
    [v3 setObject:v47 forKeyedSubscript:@"inputMoireRadius"];

    v48 = MEMORY[0x277CCABB0];
    v49 = (*(*a1 + 2496))(a1);
    v50 = 0.0;
    if (v49)
    {
      (*(*a1 + 2504))(a1, 0.0);
    }

    v51 = [v48 numberWithDouble:v50];
    [v3 setObject:v51 forKeyedSubscript:@"inputMoireAmount"];

    v52 = MEMORY[0x277CCABB0];
    v53 = (*(*a1 + 120))(a1) <= 7 && (*(*a1 + 2664))(a1, 0, 0) < 0.5;
    v54 = [v52 numberWithInt:v53];
    [v3 setObject:v54 forKeyedSubscript:@"inputOpponentColorEnabled"];

    v55 = v27;
    v56 = [MEMORY[0x277CBF788] vectorWithX:(*v584 / v55) Y:(*(v584 + 1) / v55) Z:(*&v584[1] / v55) W:1.0];
    [v3 setObject:v56 forKeyedSubscript:@"inputNeutralFactors"];

    v57 = sub_2338191A8(a2);
    [v3 setObject:v57 forKeyedSubscript:@"inputSushiMode"];

    [v3 setObject:&unk_284957AA8 forKeyedSubscript:@"inputBoostMethod"];
    v58 = [MEMORY[0x277CBF788] vectorWithX:0.298999995 Y:0.587000012 Z:0.114 W:1.0];
    [v3 setObject:v58 forKeyedSubscript:@"inputLumFactors"];

    if ((*(*a1 + 120))(a1) >= 9)
    {
      v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(*(*a1 + 256))(a1)];
      [v3 setObject:v59 forKeyedSubscript:@"inputISO"];

      v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(*(*a1 + 2168))(a1)];
      [v3 setObject:v60 forKeyedSubscript:@"inputSensorPattern"];
    }
  }

  v61 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:(*(*a1 + 920))(a1)];
  [v3 setObject:v61 forKeyedSubscript:@"inputRange"];

  if ((*(*a1 + 2160))(a1))
  {
    v62 = &unk_284958A78;
  }

  else
  {
    v62 = &unk_284957AC0;
  }

  [v3 setObject:v62 forKeyedSubscript:@"inputTargetRange"];
  v63 = MEMORY[0x277CCABB0];
  (*(*a1 + 800))(a1, a2);
  v64 = [v63 numberWithDouble:?];
  [v3 setObject:v64 forKeyedSubscript:@"inputFactor"];

  v65 = MEMORY[0x277CCABB0];
  (*(*a1 + 928))(a1);
  v66 = [v65 numberWithDouble:?];
  [v3 setObject:v66 forKeyedSubscript:@"inputBaselineExposure"];

  (*(*a1 + 648))(__p, a1);
  v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:LODWORD(__p[1])];
  [v3 setObject:v67 forKeyedSubscript:@"inputCalibrationIlluminant1"];

  v68 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(__p[1])];
  [v3 setObject:v68 forKeyedSubscript:@"inputCalibrationIlluminant2"];

  v69 = sub_2337E1060(&v592);
  [v3 setObject:v69 forKeyedSubscript:@"inputXYZtoCamera1"];

  v70 = sub_2337E1060(&v593[1]);
  [v3 setObject:v70 forKeyedSubscript:@"inputXYZtoCamera2"];

  v71 = sub_2337E1060(&v595);
  [v3 setObject:v71 forKeyedSubscript:@"inputCameraCalibration1"];

  v72 = sub_2337E1060(&v597);
  [v3 setObject:v72 forKeyedSubscript:@"inputCameraCalibration2"];

  v73 = sub_2337E1060(&v603 + 2);
  [v3 setObject:v73 forKeyedSubscript:@"inputReduction1"];

  v74 = sub_2337E1060(&v605 + 2);
  [v3 setObject:v74 forKeyedSubscript:@"inputReduction2"];

  v75 = sub_2337E1060(&v599);
  [v3 setObject:v75 forKeyedSubscript:@"inputForwardMatrix1"];

  v76 = sub_2337E1060(&v601);
  [v3 setObject:v76 forKeyedSubscript:@"inputForwardMatrix2"];

  v77 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v603];
  [v3 setObject:v77 forKeyedSubscript:@"inputShouldUseForwardMatrix"];

  sub_2337D35EC(__p);
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"inputShouldRecoverHighlights"];
  if ((*(*a1 + 2152))(a1))
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"inputLinearized"];
  }

  v78 = MEMORY[0x277CCABB0];
  (*(*a1 + 952))(a1);
  v79 = [v78 numberWithDouble:?];
  [v3 setObject:v79 forKeyedSubscript:@"inputBias"];

  v80 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(*(*a1 + 2392))(a1)];
  [v3 setObject:v80 forKeyedSubscript:@"inputBoostKind"];

  (*(*a1 + 2624))(&v580, a1, a2, 1);
  v81 = [MEMORY[0x277CCABB0] numberWithDouble:*v580];
  [v3 setObject:v81 forKeyedSubscript:@"inputTRCs0"];

  v82 = [MEMORY[0x277CCABB0] numberWithDouble:v580[1]];
  [v3 setObject:v82 forKeyedSubscript:@"inputTRCs1"];

  v83 = [MEMORY[0x277CCABB0] numberWithDouble:v580[3]];
  [v3 setObject:v83 forKeyedSubscript:@"inputTRCs2"];

  v84 = [MEMORY[0x277CCABB0] numberWithDouble:v580[5]];
  [v3 setObject:v84 forKeyedSubscript:@"inputTRCs3"];

  v85 = [MEMORY[0x277CCABB0] numberWithDouble:v580[7]];
  [v3 setObject:v85 forKeyedSubscript:@"inputTRCs4"];

  v86 = [MEMORY[0x277CCABB0] numberWithDouble:v580[2]];
  [v3 setObject:v86 forKeyedSubscript:@"inputTRCy1"];

  v87 = [MEMORY[0x277CCABB0] numberWithDouble:v580[4]];
  [v3 setObject:v87 forKeyedSubscript:@"inputTRCy2"];

  v88 = [MEMORY[0x277CCABB0] numberWithDouble:v580[6]];
  [v3 setObject:v88 forKeyedSubscript:@"inputTRCy3"];

  v89 = [MEMORY[0x277CCABB0] numberWithDouble:v580[8]];
  [v3 setObject:v89 forKeyedSubscript:@"inputTRCy4"];

  v90 = MEMORY[0x277CCABB0];
  (*(*a1 + 1272))(a1);
  v91 = [v90 numberWithDouble:?];
  [v3 setObject:v91 forKeyedSubscript:@"inputBoostTransitionPoint"];

  v92 = MEMORY[0x277CCABB0];
  (*(*a1 + 1280))(a1);
  v93 = [v92 numberWithDouble:?];
  [v3 setObject:v93 forKeyedSubscript:@"inputBoostTransitionWidth"];

  v94 = MEMORY[0x277CCABB0];
  (*(*a1 + 2416))(a1);
  v95 = [v94 numberWithDouble:?];
  [v3 setObject:v95 forKeyedSubscript:@"inputBoostLuminanceAmount"];

  v96 = MEMORY[0x277CCABB0];
  (*(*a1 + 1296))(a1);
  v97 = [v96 numberWithDouble:?];
  [v3 setObject:v97 forKeyedSubscript:@"inputBoostShadowAmount"];

  v98 = MEMORY[0x277CCABB0];
  (*(*a1 + 2424))(a1);
  v99 = [v98 numberWithDouble:?];
  [v3 setObject:v99 forKeyedSubscript:@"inputBoostPreserveHueAmount"];

  v100 = MEMORY[0x277CCABB0];
  (*(*a1 + 2400))(a1);
  v101 = [v100 numberWithDouble:?];
  [v3 setObject:v101 forKeyedSubscript:@"inputBoostAmount"];

  v102 = MEMORY[0x277CCABB0];
  (*(*a1 + 2344))(a1);
  v103 = [v102 numberWithDouble:?];
  [v3 setObject:v103 forKeyedSubscript:@"inputHueMagMR"];

  v104 = MEMORY[0x277CCABB0];
  (*(*a1 + 2352))(a1);
  v105 = [v104 numberWithDouble:?];
  [v3 setObject:v105 forKeyedSubscript:@"inputHueMagRY"];

  v106 = MEMORY[0x277CCABB0];
  (*(*a1 + 2360))(a1);
  v107 = [v106 numberWithDouble:?];
  [v3 setObject:v107 forKeyedSubscript:@"inputHueMagYG"];

  v108 = MEMORY[0x277CCABB0];
  (*(*a1 + 2368))(a1);
  v109 = [v108 numberWithDouble:?];
  [v3 setObject:v109 forKeyedSubscript:@"inputHueMagGC"];

  v110 = MEMORY[0x277CCABB0];
  (*(*a1 + 2376))(a1);
  v111 = [v110 numberWithDouble:?];
  [v3 setObject:v111 forKeyedSubscript:@"inputHueMagCB"];

  v112 = MEMORY[0x277CCABB0];
  (*(*a1 + 2384))(a1);
  v113 = [v112 numberWithDouble:?];
  [v3 setObject:v113 forKeyedSubscript:@"inputHueMagBM"];

  (*(*a1 + 752))(&v577, a1);
  if (sub_2337E0044(&v577) < 3 || sub_2337E003C(&v577) <= 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v114 = MEMORY[0x277CCABB0];
  __p[0] = sub_2337DFCEC(&v577, 0);
  __p[1] = v115;
  v116 = [v114 numberWithDouble:{*sub_2337DFD6C(__p, 0)}];
  [v3 setObject:v116 forKeyedSubscript:@"inputM00"];

  v117 = MEMORY[0x277CCABB0];
  __p[0] = sub_2337DFCEC(&v577, 0);
  __p[1] = v118;
  v119 = [v117 numberWithDouble:{*sub_2337DFD6C(__p, 1u)}];
  [v3 setObject:v119 forKeyedSubscript:@"inputM01"];

  v120 = MEMORY[0x277CCABB0];
  __p[0] = sub_2337DFCEC(&v577, 0);
  __p[1] = v121;
  v122 = [v120 numberWithDouble:{*sub_2337DFD6C(__p, 2u)}];
  [v3 setObject:v122 forKeyedSubscript:@"inputM02"];

  v123 = MEMORY[0x277CCABB0];
  __p[0] = sub_2337DFCEC(&v577, 1u);
  __p[1] = v124;
  v125 = [v123 numberWithDouble:{*sub_2337DFD6C(__p, 0)}];
  [v3 setObject:v125 forKeyedSubscript:@"inputM10"];

  v126 = MEMORY[0x277CCABB0];
  __p[0] = sub_2337DFCEC(&v577, 1u);
  __p[1] = v127;
  v128 = [v126 numberWithDouble:{*sub_2337DFD6C(__p, 1u)}];
  [v3 setObject:v128 forKeyedSubscript:@"inputM11"];

  v129 = MEMORY[0x277CCABB0];
  __p[0] = sub_2337DFCEC(&v577, 1u);
  __p[1] = v130;
  v131 = [v129 numberWithDouble:{*sub_2337DFD6C(__p, 2u)}];
  [v3 setObject:v131 forKeyedSubscript:@"inputM12"];

  v132 = MEMORY[0x277CCABB0];
  __p[0] = sub_2337DFCEC(&v577, 2u);
  __p[1] = v133;
  v134 = [v132 numberWithDouble:{*sub_2337DFD6C(__p, 0)}];
  [v3 setObject:v134 forKeyedSubscript:@"inputM20"];

  v135 = MEMORY[0x277CCABB0];
  __p[0] = sub_2337DFCEC(&v577, 2u);
  __p[1] = v136;
  v137 = [v135 numberWithDouble:{*sub_2337DFD6C(__p, 1u)}];
  [v3 setObject:v137 forKeyedSubscript:@"inputM21"];

  v138 = MEMORY[0x277CCABB0];
  __p[0] = sub_2337DFCEC(&v577, 2u);
  __p[1] = v139;
  v140 = [v138 numberWithDouble:{*sub_2337DFD6C(__p, 2u)}];
  [v3 setObject:v140 forKeyedSubscript:@"inputM22"];

  if (!(*(*a1 + 2768))(a1))
  {
    [v3 setObject:&unk_284957AA8 forKeyedSubscript:@"inputLDCExecuteFlags"];
    goto LABEL_165;
  }

  if ((*(*a1 + 2808))(a1) == 5)
  {
    (*(*a1 + 2816))(v584, a1);
    v141 = ((LODWORD(v584[1]) - LODWORD(v584[0])) >> 3);
    if (v141 <= 1)
    {
      v508 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v508, "RawCameraException");
      __cxa_throw(v508, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v142 = *v584[0];
    v143 = *(v584[0] + 1);
    if (v141 != v142 + v142 * v143 + 2)
    {
      v509 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v509, "RawCameraException");
      __cxa_throw(v509, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    __p[0] = 0;
    sub_233731694(&v575, v142, __p);
    v574[1] = 0;
    v574[0] = 0;
    v573 = v574;
    v563 = 0;
    if (v142)
    {
      v144 = 0;
      v145 = 2;
      do
      {
        v146 = v145 + 1;
        v147 = v584[0];
        *(v575 + v144) = *(v584[0] + v145);
        __p[1] = 0;
        __p[0] = 0;
        *&v592 = 0;
        sub_233764ED4(__p, &v147[(v145 + 1)], &v147[v143 + (v145 + 1)], v143);
        v566 = &v563;
        v148 = sub_2337D3BA8(&v573, &v563, &unk_233905F1C, &v566);
        v149 = v148[5];
        if (v149)
        {
          v148[6] = v149;
          operator delete(v149);
          v148[5] = 0;
          v148[6] = 0;
          v148[7] = 0;
        }

        *(v148 + 5) = *__p;
        v148[7] = v592;
        v145 = v146 + v143;
        v144 = v563 + 1;
        v563 = v144;
      }

      while (v144 < v142);
    }

    (*(*a1 + 160))(&v571, a1);
    v150 = v571;
    sub_23372A488(__p, "IFD0:EXIF");
    v151 = (*(*v150 + 304))(v150, __p);
    if (SBYTE7(v592) < 0)
    {
      operator delete(__p[0]);
    }

    v152 = v576;
    if (v576 != v575)
    {
      v153 = (v576 - v575) >> 3;
      v152 = v575;
      do
      {
        v154 = v153 >> 1;
        v155 = (&v152->__vftable + (v153 >> 1));
        v157 = *v155;
        v156 = (v155 + 1);
        v153 += ~(v153 >> 1);
        if (v151 < v157)
        {
          v153 = v154;
        }

        else
        {
          v152 = v156;
        }
      }

      while (v153);
    }

    v158 = (v152 - v575) >> 3;
    v159 = (v142 - 1);
    if (v158 < v159)
    {
      v159 = v158;
    }

    if (v142)
    {
      v158 = v159;
    }

    v570 = v158;
    v160 = v158 - 1;
    if (!v158)
    {
      v160 = 0;
    }

    v569 = v160;
    v161 = *(v575 + v158);
    v162 = *(v575 + v160);
    if (vabdd_f64(v161, v162) >= 0.000000001)
    {
      v163 = v161 - v162;
    }

    else
    {
      v163 = 0.000000001;
    }

    __p[0] = &v569;
    v164 = sub_2337D3BA8(&v573, &v569, &unk_233905F1C, __p);
    v568 = 0;
    v566 = 0;
    v567 = 0;
    sub_2337236E0(&v566, v164[5], v164[6], (v164[6] - v164[5]) >> 3);
    __p[0] = &v570;
    v165 = sub_2337D3BA8(&v573, &v570, &unk_233905F1C, __p);
    v565 = 0;
    v563 = 0;
    v564 = 0;
    sub_2337236E0(&v563, v165[5], v165[6], (v165[6] - v165[5]) >> 3);
    __p[0] = 0;
    sub_233731694(v562, v143, __p);
    if (v143)
    {
      v166 = fmin(fmax((v151 - v162) / v163, 0.0), 1.0);
      v167 = v566;
      v168 = v563;
      v169 = v562[0];
      v170 = v143;
      do
      {
        v171 = *v167++;
        v172 = v171;
        v173 = *v168++;
        *v169++ = v166 * v173 + v172 * (1.0 - v166);
        --v170;
      }

      while (v170);
    }

    v174 = v143 >> 1;
    __p[0] = 0;
    sub_233731694(&v560, v174, __p);
    __p[0] = 0;
    sub_233731694(&v558, v174, __p);
    __p[0] = 0x3FF0000000000000;
    sub_233731694(v557, v174, __p);
    if (v557[0])
    {
      v557[1] = v557[0];
      operator delete(v557[0]);
    }

    if (v143 >= 2)
    {
      v175 = v560;
      v176 = v558;
      v177 = (v562[0] + 8);
      do
      {
        *v175++ = *(v177 - 1);
        v178 = *v177;
        v177 += 2;
        *v176++ = v178;
        --v174;
      }

      while (v174);
    }

    __p[0] = 0;
    sub_233731694(v556, 0x32uLL, __p);
    __p[0] = 0;
    sub_233731694(v555, 0x32uLL, __p);
    v179 = 0;
    *&v615 = 0;
    v614 = 0u;
    v613 = 0u;
    v612 = 0u;
    v611 = 0u;
    v610 = 0u;
    v609 = 0u;
    v608 = 0u;
    v607 = 0u;
    v606 = 0u;
    v605 = 0u;
    v604 = 0u;
    v602 = 0u;
    v603 = 0u;
    v600 = 0u;
    v601 = 0u;
    v598 = 0u;
    v599 = 0u;
    *v596 = 0u;
    v597 = 0u;
    v594 = 0u;
    v595 = 0u;
    memset(v593, 0, sizeof(v593));
    *__p = 0u;
    v592 = 0u;
    do
    {
      v552 = 0;
      v553 = 0;
      v554 = 0;
      sub_2337236E0(&v552, v560, v561, (v561 - v560) >> 3);
      v549 = 0;
      v550 = 0;
      v551 = 0;
      v180 = sub_2337236E0(&v549, v558, v559, (v559 - v558) >> 3);
      *&__p[v179] = sub_2337D020C(v179 / 50.0, v180, &v552, &v549);
      if (v549)
      {
        v550 = v549;
        operator delete(v549);
      }

      if (v552)
      {
        v553 = v552;
        operator delete(v552);
      }

      ++v179;
    }

    while (v179 != 51);
    v181 = [MEMORY[0x277CBF788] vectorWithValues:__p count:51];
    [v3 setObject:v181 forKeyedSubscript:@"inputScales"];

    [v3 setObject:&unk_284957AD8 forKeyedSubscript:@"inputLDCExecuteFlags"];
    if (v555[0])
    {
      v555[1] = v555[0];
      operator delete(v555[0]);
    }

    if (v556[0])
    {
      v556[1] = v556[0];
      operator delete(v556[0]);
    }

    if (v558)
    {
      v559 = v558;
      operator delete(v558);
    }

    if (v560)
    {
      v561 = v560;
      operator delete(v560);
    }

    if (v562[0])
    {
      v562[1] = v562[0];
      operator delete(v562[0]);
    }

    if (v563)
    {
      v564 = v563;
      operator delete(v563);
    }

    if (v566)
    {
      v567 = v566;
      operator delete(v566);
    }

    if (v572)
    {
      sub_2337239E8(v572);
    }

    sub_233730B2C(&v573, v574[0]);
    if (v575)
    {
      v576 = v575;
      operator delete(v575);
    }

    goto LABEL_83;
  }

  if ((*(*a1 + 2808))(a1) == 1)
  {
    (*(*a1 + 160))(__p, a1);
    sub_2337D032C(__p, v584);
    if (__p[1])
    {
      sub_2337239E8(__p[1]);
    }

    if (v584[0])
    {
      v575 = (*(*v584[0] + 464))(v584[0]);
      v576 = v183;
      sub_233768734(v584[0]);
      sub_23376873C(v584[0]);
      sub_233768744(v584[0]);
      sub_23376874C(v584[0]);
      sub_233768754(v584[0]);
      operator new();
    }

    goto LABEL_122;
  }

  v184 = (*(*a1 + 2808))(a1);
  v185 = *a1;
  if (v184 != 4)
  {
    if ((*(v185 + 2808))(a1) == 6)
    {
      (*(*a1 + 160))(__p, a1);
      sub_2337D0434(__p, v584);
      if (__p[1])
      {
        sub_2337239E8(__p[1]);
      }

      if (v584[0] && (*(*v584[0] + 792))(v584[0]))
      {
        v200 = *(v584[0] + 148);
        v201 = *v200;
        v202 = v200[1];
        v204 = v200[2];
        v203 = v200[3];
        (*(*v584[0] + 464))(v584[0]);
        v205 = 0;
        v206 = v203 * (v203 * v203);
        v207 = v203 * (v203 * v206);
        v210 = (v208 * v208 + v209 * v209) / (*(v584[0] + 302) * *(v584[0] + 302) + *(v584[0] + 303) * *(v584[0] + 303));
        *&v615 = 0;
        v614 = 0u;
        v613 = 0u;
        v612 = 0u;
        v611 = 0u;
        v610 = 0u;
        v609 = 0u;
        v608 = 0u;
        v607 = 0u;
        v606 = 0u;
        v605 = 0u;
        v604 = 0u;
        v211 = v203 * (v203 * v207);
        v212 = v201 * v206;
        v213 = v202 * v207;
        v214 = v204 * v211;
        v602 = 0u;
        v603 = 0u;
        v600 = 0u;
        v601 = 0u;
        v598 = 0u;
        v599 = 0u;
        *v596 = 0u;
        v597 = 0u;
        v594 = 0u;
        v595 = 0u;
        memset(v593, 0, sizeof(v593));
        *__p = 0u;
        v592 = 0u;
        do
        {
          v215 = v210 * ((v205 * v205) / 50.0 / 50.0);
          *&__p[v205++] = v203 + v212 * v215 + v213 * v215 * v215 + v215 * (v214 * v215) * v215;
        }

        while (v205 != 51);
        v216 = [MEMORY[0x277CBF788] vectorWithValues:__p count:51];
        [v3 setObject:v216 forKeyedSubscript:@"inputScales"];

        [v3 setObject:&unk_284957AD8 forKeyedSubscript:@"inputLDCExecuteFlags"];
        goto LABEL_122;
      }

      goto LABEL_121;
    }

    if ((*(*a1 + 2808))(a1) == 3)
    {
      (*(*a1 + 2816))(v584, a1);
      v182 = v584[0];
      v217 = (v584[1] - v584[0]) >> 3;
      if (v217 != 20 && v217 != 8)
      {
LABEL_84:
        if (v182)
        {
          v584[1] = v182;
          operator delete(v182);
        }

        goto LABEL_165;
      }

      v218 = 64;
      if ((v584[1] - v584[0]) == 64)
      {
        v218 = 16;
      }

      v521 = *v584[0];
      v518 = *(v584[0] + 1);
      v219 = (v584[0] + v218);
      v528 = *v219;
      v524 = v219[1];
      (*(*a1 + 160))(__p, a1);
      if (__p[0])
      {
        v575 = __p[0];
        v576 = __p[1];
        v220 = __p;
      }

      else
      {
        v220 = &v575;
      }

      v403 = v524;
      v402 = v528;
      *v220 = 0;
      v220[1] = 0;
      if (__p[1])
      {
        sub_2337239E8(__p[1]);
        v403 = v524;
        v402 = v528;
      }

      if (v575)
      {
        v404 = 0;
        *&v615 = 0;
        v614 = 0u;
        v613 = 0u;
        v612 = 0u;
        v611 = 0u;
        v610 = 0u;
        v609 = 0u;
        v608 = 0u;
        v607 = 0u;
        v606 = 0u;
        v605 = 0u;
        v604 = 0u;
        v602 = 0u;
        v603 = 0u;
        v600 = 0u;
        v601 = 0u;
        v598 = 0u;
        v599 = 0u;
        *v596 = 0u;
        v597 = 0u;
        v594 = 0u;
        v595 = 0u;
        memset(v593, 0, sizeof(v593));
        v405 = vdupq_lane_s64(v518, 0);
        *__p = 0u;
        v592 = 0u;
        v406 = 0x100000000;
        v407 = xmmword_233903BB0;
        v408 = vdupq_n_s64(0x4049000000000000uLL);
        v409 = vdupq_n_s64(2uLL);
        v410 = vdupq_lane_s64(v521, 0);
        v411 = vdupq_n_s64(0x33uLL);
        do
        {
          v412.i64[0] = v406.u32[0];
          v412.i64[1] = v406.u32[1];
          v413 = vdivq_f64(vcvtq_f64_u64(v412), v408);
          v414 = vmulq_f64(v413, v413);
          v415 = vmlaq_f64(vmlaq_f64(vmlaq_f64(v410, v414, v405), v414, vmulq_n_f64(v414, v402)), v414, vmulq_f64(v414, vmulq_n_f64(v414, v403)));
          if (vmovn_s64(vcgtq_u64(v411, v407)).u8[0])
          {
            __p[v404] = *&v415.f64[0];
          }

          if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x33uLL), *&v407)).i32[1])
          {
            __p[v404 + 1] = *&v415.f64[1];
          }

          v407 = vaddq_s64(v407, v409);
          v406 = vadd_s32(v406, 0x200000002);
          v404 += 2;
        }

        while (v404 != 52);
        v416 = [MEMORY[0x277CBF788] vectorWithValues:__p count:51];
        [v3 setObject:v416 forKeyedSubscript:@"inputScales"];

        [v3 setObject:&unk_284957AD8 forKeyedSubscript:@"inputLDCExecuteFlags"];
      }

      if (v576)
      {
        sub_2337239E8(v576);
      }

LABEL_83:
      v182 = v584[0];
      goto LABEL_84;
    }

    if ((*(*a1 + 2808))(a1) == 7)
    {
      (*(*a1 + 160))(__p, a1);
      sub_2337D04B8(__p, &v575);
      if (__p[1])
      {
        sub_2337239E8(__p[1]);
      }

      if (v575)
      {
        sub_2337A3898(v575, 1, v584);
        if ((v584[1] - v584[0]) == 16)
        {
          sub_2337D053C(v584[0], &v573);
          if (v573 && ((0xAAAAAAAAAAAAAAABLL * ((*(v573 + 3) - *(v573 + 2)) >> 3)) | 2) == 3)
          {
            sub_23384FCD4(v573, __p);
            v222 = __p[0];
            v223 = __p[1];
          }

          else
          {
            v223 = 0;
            v222 = 0;
          }

          if (v574[0])
          {
            sub_2337239E8(v574[0]);
          }
        }

        else
        {
          v223 = 0;
          v222 = 0;
        }

        v417 = (v223 - v222) >> 3;
        if (v417 == 20 || v417 == 8)
        {
          v418 = 8;
          if (v223 - v222 == 64)
          {
            v418 = 2;
          }

          v419 = &v222[v418];
          v523 = *v419;
          v520 = v419[1];
          v530 = *(v419 + 2);
          v526 = *(v419 + 3);
          (*(*v575 + 448))(v575);
          v421 = v420;
          (*(*v575 + 464))(v575);
          v422 = 0;
          *&v615 = 0;
          v614 = 0u;
          v613 = 0u;
          v612 = 0u;
          v611 = 0u;
          v610 = 0u;
          v609 = 0u;
          v608 = 0u;
          v607 = 0u;
          v606 = 0u;
          v605 = 0u;
          v604 = 0u;
          v602 = 0u;
          v603 = 0u;
          v600 = 0u;
          v601 = 0u;
          v598 = 0u;
          v599 = 0u;
          *v596 = 0u;
          v597 = 0u;
          v594 = 0u;
          v595 = 0u;
          memset(v593, 0, sizeof(v593));
          *__p = 0u;
          v592 = 0u;
          v425 = vdupq_lane_s64(v520, 0);
          v426 = sqrt((v423 * v423 + v424 * v424)) / sqrt((v421 * v421 + HIDWORD(v421) * HIDWORD(v421)));
          v427 = vdupq_lane_s64(v523, 0);
          v428 = 0x100000000;
          v429 = vdupq_n_s64(0x4049000000000000uLL);
          v430 = vdupq_n_s64(0x33uLL);
          v431 = xmmword_233903BB0;
          v432 = vdupq_n_s64(2uLL);
          do
          {
            v433.i64[0] = v428.u32[0];
            v433.i64[1] = v428.u32[1];
            v434 = vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(v433), v426), v429);
            v435 = vmulq_f64(v434, v434);
            v436 = vmlaq_f64(vmlaq_f64(vmlaq_f64(v427, v435, v425), v435, vmulq_n_f64(v435, v530)), v435, vmulq_f64(v435, vmulq_n_f64(v435, v526)));
            if (vmovn_s64(vcgtq_u64(v430, v431)).u8[0])
            {
              __p[v422] = *&v436.f64[0];
            }

            if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x33uLL), *&v431)).i32[1])
            {
              __p[v422 + 1] = *&v436.f64[1];
            }

            v431 = vaddq_s64(v431, v432);
            v428 = vadd_s32(v428, 0x200000002);
            v422 += 2;
          }

          while (v422 != 52);
          v437 = [MEMORY[0x277CBF788] vectorWithValues:__p count:51];
          [v3 setObject:v437 forKeyedSubscript:@"inputScales"];

          [v3 setObject:&unk_284957AD8 forKeyedSubscript:@"inputLDCExecuteFlags"];
        }

        sub_2337A3898(v575, 14, __p);
        sub_2337A6858(v584);
        *v584 = *__p;
        *&v585.f64[0] = v592;
        *&v592 = 0;
        __p[1] = 0;
        __p[0] = 0;
        v573 = __p;
        sub_233723948(&v573);
        if ((v584[1] - v584[0]) == 16)
        {
          sub_2337D05CC(v584[0], &v573);
          if (v573 && ((0xAAAAAAAAAAAAAAABLL * ((*(v573 + 3) - *(v573 + 2)) >> 3)) | 2) == 3)
          {
            sub_2337D8CC0(v573, __p);
            if (v222)
            {
              operator delete(v222);
            }

            v222 = __p[0];
            v223 = __p[1];
          }

          if (v223 - v222 == 152)
          {
            v438 = 0;
            *&v615 = 0;
            v614 = 0u;
            v613 = 0u;
            v612 = 0u;
            v611 = 0u;
            v610 = 0u;
            v609 = 0u;
            v608 = 0u;
            v607 = 0u;
            v606 = 0u;
            v605 = 0u;
            v604 = 0u;
            v602 = 0u;
            v603 = 0u;
            v600 = 0u;
            v601 = 0u;
            v598 = 0u;
            v599 = 0u;
            *v596 = 0u;
            v597 = 0u;
            v594 = 0u;
            v595 = 0u;
            memset(v593, 0, sizeof(v593));
            *__p = 0u;
            v592 = 0u;
            v439 = *(v573 + 20);
            do
            {
              v440 = *v222;
              v441 = 1;
              v442 = v438 / 50.0;
              do
              {
                v440 = v440 + v222[v441] * v442;
                v442 = v438 / 50.0 * v442;
                ++v441;
              }

              while (v441 != 15);
              if (v439)
              {
                v440 = 1.0 / v440;
              }

              *&__p[v438++] = v440;
            }

            while (v438 != 51);
            v443 = [MEMORY[0x277CBF788] vectorWithValues:__p count:{51, 50.0, 1.0}];
            [v3 setObject:v443 forKeyedSubscript:@"inputScales"];

            [v3 setObject:&unk_284957AD8 forKeyedSubscript:@"inputLDCExecuteFlags"];
          }

          if (v574[0])
          {
            sub_2337239E8(v574[0]);
          }
        }

        __p[0] = v584;
        sub_233723948(__p);
        if (v222)
        {
          operator delete(v222);
        }
      }

      v221 = v576;
      if (v576)
      {
        goto LABEL_164;
      }

      goto LABEL_165;
    }

    if ((*(*a1 + 2808))(a1) == 2)
    {
      (*(*a1 + 2816))(v584, a1);
      if ((v584[1] - v584[0]) != 64)
      {
        v510 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v510, "RawCameraException");
        __cxa_throw(v510, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v378 = *v584[0];
      v515 = *(v584[0] + 2);
      v516 = *(v584[0] + 3);
      v517 = *(v584[0] + 1);
      v519 = *(v584[0] + 4);
      v522 = *(v584[0] + 5);
      v525 = *(v584[0] + 6);
      v529 = *(v584[0] + 7);
      (*(*a1 + 456))(a1);
      v379 = 0;
      *&v615 = 0;
      v614 = 0u;
      v613 = 0u;
      v612 = 0u;
      v611 = 0u;
      v610 = 0u;
      v609 = 0u;
      v608 = 0u;
      v607 = 0u;
      v606 = 0u;
      v605 = 0u;
      v604 = 0u;
      v602 = 0u;
      v603 = 0u;
      v600 = 0u;
      v601 = 0u;
      v598 = 0u;
      v599 = 0u;
      *v596 = 0u;
      v597 = 0u;
      v594 = 0u;
      v595 = 0u;
      memset(v593, 0, sizeof(v593));
      *__p = 0u;
      v592 = 0u;
      v382 = vdupq_lane_s64(v515, 0);
      v383 = vdupq_lane_s64(v517, 0);
      v384 = vdupq_lane_s64(v516, 0);
      v385 = vdupq_lane_s64(v519, 0);
      v386 = vdupq_lane_s64(v522, 0);
      v387 = sqrt((v381 / 2 * (v381 / 2) + v380 / 2 * (v380 / 2))) / v378 * 0.0004;
      v388 = vdupq_lane_s64(v525, 0);
      v389 = vdupq_lane_s64(v529, 0);
      v390 = 0x100000000;
      v391 = xmmword_233903BB0;
      v392 = vdupq_n_s64(0x33uLL);
      v393 = vdupq_n_s64(2uLL);
      do
      {
        v394.i64[0] = v390.u32[0];
        v394.i64[1] = v390.u32[1];
        v395 = vcvtq_f64_u64(v394);
        v396 = vmulq_f64(vmulq_n_f64(v395, v387), v395);
        v397 = vmulq_f64(v396, v396);
        v398 = vmulq_f64(v396, v397);
        v399 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(vmlaq_f64(v383, v396, v382), v397, v384), v398, v385), vmulq_f64(v397, v397), v386), vmulq_f64(v397, v398), v388), vmulq_f64(v398, v398), v389);
        if (vmovn_s64(vcgtq_u64(v392, v391)).u8[0])
        {
          if (v399.f64[0] <= 1.0)
          {
            v400 = v399.f64[0];
          }

          else
          {
            v400 = 1.0;
          }

          *&__p[v379] = v400;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x33uLL), *&v391)).i32[1])
        {
          v399.f64[0] = v399.f64[1];
          if (v399.f64[1] > 1.0)
          {
            v399.f64[0] = 1.0;
          }

          __p[v379 + 1] = *&v399.f64[0];
        }

        v391 = vaddq_s64(v391, v393);
        v390 = vadd_s32(v390, 0x200000002);
        v379 += 2;
      }

      while (v379 != 52);
      v401 = [MEMORY[0x277CBF788] vectorWithValues:__p count:51];
      [v3 setObject:v401 forKeyedSubscript:@"inputScales"];

      [v3 setObject:&unk_284957AD8 forKeyedSubscript:@"inputLDCExecuteFlags"];
      goto LABEL_83;
    }

    if ((*(*a1 + 2808))(a1) == 8 || (*(*a1 + 2808))(a1) == 10)
    {
      (*(*a1 + 160))(__p, a1);
      sub_2337D065C(__p, v584);
      if (__p[1])
      {
        sub_2337239E8(__p[1]);
      }

      if (v584[0])
      {
        if ((*(*a1 + 240))(a1))
        {
          (*(*v584[0] + 840))(&v575);
        }

        else
        {
          (*(*v584[0] + 832))(&v575);
        }

        sub_2337D06E0(&v575, __p);
        v476 = __p[0];
        v477 = __p[1];
        __p[1] = 0;
        __p[0] = 0;
        if (v576)
        {
          sub_2337239E8(v576);
        }

        if (v476)
        {
          v478 = (*(*a1 + 2808))(a1);
          v479 = *v476;
          if (v478 == 10)
          {
            v480 = (v479 + 24);
          }

          else
          {
            v480 = (v479 + 16);
          }

          (*v480)(v476);
          v481 = 0;
          *&v615 = 0;
          v614 = 0u;
          v613 = 0u;
          v612 = 0u;
          v611 = 0u;
          v610 = 0u;
          v609 = 0u;
          v608 = 0u;
          v607 = 0u;
          v606 = 0u;
          v605 = 0u;
          v604 = 0u;
          v602 = 0u;
          v603 = 0u;
          v600 = 0u;
          v601 = 0u;
          v598 = 0u;
          v599 = 0u;
          *v596 = 0u;
          v597 = 0u;
          v594 = 0u;
          v595 = 0u;
          memset(v593, 0, sizeof(v593));
          *__p = 0u;
          v592 = 0u;
          do
          {
            v540 = 0;
            v541 = 0;
            v542 = 0;
            sub_2337236E0(&v540, v476[5], v476[6], (v476[6] - v476[5]) >> 3);
            v537 = 0;
            v538 = 0;
            v539 = 0;
            v482 = sub_2337236E0(&v537, v476[8], v476[9], (v476[9] - v476[8]) >> 3);
            *&__p[v481] = sub_2337D020C(v481 / 50.0, v482, &v540, &v537);
            if (v537)
            {
              v538 = v537;
              operator delete(v537);
            }

            if (v540)
            {
              v541 = v540;
              operator delete(v540);
            }

            ++v481;
          }

          while (v481 != 51);
          v483 = [MEMORY[0x277CBF788] vectorWithValues:__p count:51];
          [v3 setObject:v483 forKeyedSubscript:@"inputScales"];

          [v3 setObject:&unk_284957AD8 forKeyedSubscript:@"inputLDCExecuteFlags"];
        }

        else
        {
          [v3 setObject:&unk_284957AA8 forKeyedSubscript:@"inputLDCExecuteFlags"];
        }

        if (v477)
        {
          sub_2337239E8(v477);
        }

LABEL_122:
        v221 = v584[1];
        if (!v584[1])
        {
          goto LABEL_165;
        }

        goto LABEL_164;
      }

LABEL_121:
      [v3 setObject:&unk_284957AA8 forKeyedSubscript:@"inputLDCExecuteFlags"];
      goto LABEL_122;
    }

    if ((*(*a1 + 2808))(a1) != 9)
    {
      goto LABEL_165;
    }

    (*(*a1 + 160))(__p, a1);
    sub_2337D0764(__p, &v566);
    if (__p[1])
    {
      sub_2337239E8(__p[1]);
    }

    if (!v566)
    {
LABEL_458:
      v221 = v567;
      if (!v567)
      {
        goto LABEL_165;
      }

      goto LABEL_164;
    }

    v445 = (*(*v566 + 888))(v566);
    v446 = v566;
    if (v445 < 4)
    {
      v485 = (*(*a1 + 2776))(a1);
      if ((*(*v446 + 936))(v446, v485))
      {
        (*(*v566 + 944))(v584);
        v486 = (*(*v566 + 952))(v566);
        (*(*v566 + 984))(v566);
        v487 = (*(*v566 + 440))(v566);
        (*(*v566 + 464))(v566);
        v488 = 0;
        v491 = (v489 * v489 + v490 * v490) / (v487 * v487 + HIDWORD(v487) * HIDWORD(v487));
        v492 = *v584[0];
        v493 = *(v584[0] + 1);
        v494 = *(v584[0] + 2);
        *&v615 = 0;
        v614 = 0u;
        v613 = 0u;
        v612 = 0u;
        v611 = 0u;
        v610 = 0u;
        v609 = 0u;
        v608 = 0u;
        v607 = 0u;
        v606 = 0u;
        v605 = 0u;
        v604 = 0u;
        v602 = 0u;
        v603 = 0u;
        v600 = 0u;
        v601 = 0u;
        v598 = 0u;
        v599 = 0u;
        *v596 = 0u;
        v597 = 0u;
        v594 = 0u;
        v595 = 0u;
        memset(v593, 0, sizeof(v593));
        *__p = 0u;
        v592 = 0u;
        v495 = (v486 + 1.0);
        v496 = vdupq_lane_s64(COERCE__INT64(v494), 0);
        v497 = vdupq_lane_s64(COERCE__INT64(sqrt(v491)), 0);
        v498 = xmmword_233903BB0;
        v499 = vdupq_n_s64(0x33uLL);
        v500 = vdupq_n_s64(0x4049000000000000uLL);
        v501.i64[0] = 0xFFFFFFFFLL;
        v501.i64[1] = 0xFFFFFFFFLL;
        v502 = vdupq_n_s64(2uLL);
        do
        {
          v503.i64[0] = v498.i64[0] * v498.i64[0];
          v503.i64[1] = v498.i64[1] * v498.i64[1];
          v504 = vmulq_n_f64(vdivq_f64(vdivq_f64(vcvtq_f64_u64(vandq_s8(v503, v501)), v500), v500), v491);
          v505.i64[0] = v488;
          v505.i64[1] = (v488 + 1);
          v506 = vmlaq_f64(vmlaq_f64(vmulq_f64(vdivq_f64(vdivq_f64(vcvtq_f64_u64(v505), v500), v497), vmulq_n_f64(v504, v493)), v504, vmulq_n_f64(v504, v492)), v504, v496);
          if (vmovn_s64(vcgtq_u64(v499, v498)).u8[0])
          {
            *&__p[v488] = (v506.f64[0] + 1.0) / v495;
          }

          if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x33uLL), *&v498)).i32[1])
          {
            *&__p[v488 + 1] = (v506.f64[1] + 1.0) / v495;
          }

          v488 += 2;
          v498 = vaddq_s64(v498, v502);
        }

        while (v488 != 52);
        v507 = [MEMORY[0x277CBF788] vectorWithValues:__p count:51];
        [v3 setObject:v507 forKeyedSubscript:@"inputScales"];

        [v3 setObject:&unk_284957AD8 forKeyedSubscript:@"inputLDCExecuteFlags"];
        goto LABEL_455;
      }
    }

    else if ((*(*v566 + 872))(v566) == 1 && (*(*v566 + 864))(v566))
    {
      v447 = (*(*v566 + 888))(v566);
      (*(*v566 + 880))(v584);
      __p[0] = 0;
      sub_233731694(&v575, (v584[1] - v584[0]) >> 3, __p);
      __p[0] = 0;
      sub_233731694(&v573, (v584[1] - v584[0]) >> 3, __p);
      (*(*a1 + 432))(a1);
      v449 = v448;
      (*(*a1 + 432))(a1);
      v451 = v450;
      (*(*a1 + 456))(a1);
      v453 = v452;
      (*(*a1 + 456))(a1);
      v455 = v454;
      v456 = v584[0];
      if (v584[1] != v584[0])
      {
        v457 = 0;
        v458 = (v584[1] - v584[0]) >> 3;
        v459 = v573;
        v460 = v575;
        if (v458 <= 1)
        {
          v458 = 1;
        }

        do
        {
          v459[v457] = 100.0 / (v456[v457] + 100.0);
          v460[v457] = (v457 / (v447 - 1));
          ++v457;
        }

        while (v458 != v457);
      }

      if ((*(*v566 + 864))(v566) == 3)
      {
        v461 = v584[1] - v584[0];
        if (v584[1] != v584[0])
        {
          v462 = v461 >> 3;
          v463 = v573;
          v464 = (v573 + v461);
          if (v462 <= 1)
          {
            v462 = 1;
          }

          do
          {
            *v463 = *v463 / *(v464 - 1);
            ++v463;
            --v462;
          }

          while (v462);
        }
      }

      v465 = [Curve alloc];
      v466 = sqrtf((v449 * v449) + (v451 * v451));
      v527 = [(Curve *)v465 initWithCount:(v584[1] - v584[0]) >> 3 domainMin:v573 domainMax:*v575 * v466 values:*(v575 + v584[1] - v584[0] - 8) * v466];
      v467 = [Curve alloc];
      v535[0] = MEMORY[0x277D85DD0];
      v535[1] = 3221225472;
      v535[2] = sub_2337D07E8;
      v535[3] = &unk_2789EEFC0;
      v468 = v527;
      v536 = v468;
      v531 = [(Curve *)v467 initWithBlock:v535 domainMin:0.0 domainMax:v466];
      v469 = [Curve alloc];
      v470 = sqrtf((v453 * v453) + (v455 * v455));
      v533[0] = MEMORY[0x277D85DD0];
      v533[1] = 3221225472;
      v533[2] = sub_2337D085C;
      v533[3] = &unk_2789EEFC0;
      v471 = v531;
      v534 = v471;
      v472 = [(Curve *)v469 initWithBlock:v533 domainMin:0.0 domainMax:v470];
      v473 = 0;
      *&v615 = 0;
      v614 = 0u;
      v613 = 0u;
      v612 = 0u;
      v611 = 0u;
      v610 = 0u;
      v609 = 0u;
      v608 = 0u;
      v607 = 0u;
      v606 = 0u;
      v605 = 0u;
      v604 = 0u;
      v602 = 0u;
      v603 = 0u;
      v600 = 0u;
      v601 = 0u;
      v598 = 0u;
      v599 = 0u;
      *v596 = 0u;
      v597 = 0u;
      v594 = 0u;
      v595 = 0u;
      memset(v593, 0, sizeof(v593));
      *__p = 0u;
      v592 = 0u;
      do
      {
        v474 = [(Curve *)v472 function];
        *&__p[v473] = v474[2](((v470 * v473) / 50.0));

        ++v473;
      }

      while (v473 != 51);
      v475 = [MEMORY[0x277CBF788] vectorWithValues:__p count:51];
      [v3 setObject:v475 forKeyedSubscript:@"inputScales"];

      [v3 setObject:&unk_284957AD8 forKeyedSubscript:@"inputLDCExecuteFlags"];
      if (v573)
      {
        v574[0] = v573;
        operator delete(v573);
      }

      if (v575)
      {
        v576 = v575;
        operator delete(v575);
      }

LABEL_455:
      if (v584[0])
      {
        v584[1] = v584[0];
        operator delete(v584[0]);
      }

      goto LABEL_458;
    }

    [v3 setObject:&unk_284957AA8 forKeyedSubscript:@"inputLDCExecuteFlags"];
    goto LABEL_458;
  }

  (*(v185 + 456))(a1);
  v187 = v186;
  (*(*a1 + 160))(__p, a1);
  sub_2337D03B0(__p, &v563);
  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }

  if (v563)
  {
    sub_233790818(v563, __p);
    v188 = __p[0];
    v189 = __p[1] - __p[0];
    if (__p[1] != __p[0])
    {
      v190 = v189 >> 1;
      __p[0] = 0;
      sub_233731694(v584, v189 >> 1, __p);
      __p[0] = 0;
      sub_233731694(&v575, v190, __p);
      v191 = 0;
      v192 = sqrt((v187 * v187 + HIDWORD(v187) * HIDWORD(v187)));
      v193 = v190 - 1;
      v194 = v584[0];
      v195 = v575;
      if (v190 <= 1)
      {
        v196 = 1;
      }

      else
      {
        v196 = v190;
      }

      do
      {
        v194[v191] = v191 / (v190 - 1);
        v197 = v188[v191] * -0.0000610351562 + 1.0;
        if (fabs(v197) < 0.000000001)
        {
          v197 = dbl_233906140[v197 > 0.0];
        }

        v195[v191++] = 1.0 / v197;
      }

      while (v196 != v191);
      if (v188[v193] < 0)
      {
        v224 = v584[1];
        v225 = SHIDWORD(v187) / v192;
        if (v584[1] != v584[0])
        {
          v226 = (v584[1] - v584[0]) >> 3;
          v224 = v584[0];
          do
          {
            v227 = v226 >> 1;
            v228 = &v224[v226 >> 1];
            v230 = *v228;
            v229 = v228 + 1;
            v226 += ~(v226 >> 1);
            if (v225 < v230)
            {
              v226 = v227;
            }

            else
            {
              v224 = v229;
            }
          }

          while (v226);
        }

        v231 = v224 - v584[0];
        v232 = (v224 - v584[0]) >> 3;
        if (v193 >= v231 >> 3)
        {
          v193 = v232;
        }

        v233 = v193 - 1;
        if (!v193)
        {
          v233 = 0;
        }

        v234 = *(v584[0] + v193);
        v235 = *(v584[0] + v233);
        if (vabdd_f64(v234, v235) >= 0.000000001)
        {
          v236 = v234 - v235;
        }

        else
        {
          v236 = dbl_233906140[v234 - v235 > 0.0];
        }

        v198 = v575;
        v237 = fmin(fmax((v225 - v235) / v236, 0.0), 1.0);
        v199 = *(v575 + v193) * v237 + *(v575 + v233) * (1.0 - v237);
      }

      else
      {
        v198 = v575;
        v199 = *(v575 + v193);
      }

      do
      {
        *v198 = *v198 / v199;
        ++v198;
        --v196;
      }

      while (v196);
      __p[0] = 0;
      sub_233731694(&v573, 0x32uLL, __p);
      __p[0] = 0;
      sub_233731694(&v566, 0x32uLL, __p);
      v238 = 0;
      *&v615 = 0;
      v614 = 0u;
      v613 = 0u;
      v612 = 0u;
      v611 = 0u;
      v610 = 0u;
      v609 = 0u;
      v608 = 0u;
      v607 = 0u;
      v606 = 0u;
      v605 = 0u;
      v604 = 0u;
      v602 = 0u;
      v603 = 0u;
      v600 = 0u;
      v601 = 0u;
      v598 = 0u;
      v599 = 0u;
      *v596 = 0u;
      v597 = 0u;
      v594 = 0u;
      v595 = 0u;
      memset(v593, 0, sizeof(v593));
      *__p = 0u;
      v592 = 0u;
      do
      {
        v546 = 0;
        v547 = 0;
        v548 = 0;
        sub_2337236E0(&v546, v584[0], v584[1], (v584[1] - v584[0]) >> 3);
        v543 = 0;
        v544 = 0;
        v545 = 0;
        v239 = sub_2337236E0(&v543, v575, v576, (v576 - v575) >> 3);
        *&__p[v238] = sub_2337D020C(v238 / 50.0, v239, &v546, &v543);
        if (v543)
        {
          v544 = v543;
          operator delete(v543);
        }

        if (v546)
        {
          v547 = v546;
          operator delete(v546);
        }

        ++v238;
      }

      while (v238 != 51);
      v240 = [MEMORY[0x277CBF788] vectorWithValues:__p count:51];
      [v3 setObject:v240 forKeyedSubscript:@"inputScales"];

      [v3 setObject:&unk_284957AD8 forKeyedSubscript:@"inputLDCExecuteFlags"];
      if (v566)
      {
        v567 = v566;
        operator delete(v566);
      }

      if (v573)
      {
        v574[0] = v573;
        operator delete(v573);
      }

      if (v575)
      {
        v576 = v575;
        operator delete(v575);
      }

      if (v584[0])
      {
        v584[1] = v584[0];
        operator delete(v584[0]);
      }
    }

    if (v188)
    {
      operator delete(v188);
    }
  }

  v221 = v564;
  if (v564)
  {
LABEL_164:
    sub_2337239E8(v221);
  }

LABEL_165:
  if (sub_2338191D0(a2) || (*(*a1 + 544))(a1) >= 2)
  {
    v241 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(*(*a1 + 2168))(a1)];
    [v3 setObject:v241 forKeyedSubscript:@"inputPattern"];

    (*(*a1 + 1016))(__p, a1);
    if ((__p[1] - __p[0]) == 32)
    {
      v242 = [MEMORY[0x277CBF788] vectorWithX:*__p[0] Y:*(__p[0] + 1) Z:*(__p[0] + 2) W:*(__p[0] + 3)];
      [v3 setObject:v242 forKeyedSubscript:@"inputBlacks"];
    }

    (*(*a1 + 744))(v584, a1);
    if ((v584[1] - v584[0]) == 24)
    {
      v243 = [MEMORY[0x277CBF788] vectorWithX:*v584[0] Y:*(v584[0] + 1) Z:*(v584[0] + 2)];
      [v3 setObject:v243 forKeyedSubscript:@"inputFactors"];
    }

    v244 = MEMORY[0x277CCABB0];
    v245 = (*(*a1 + 2112))(a1);
    v246 = 0.0;
    if (v245)
    {
      v246 = 1.0;
    }

    v247 = [v244 numberWithDouble:v246];
    [v3 setObject:v247 forKeyedSubscript:@"inputDespeckle"];

    if (v584[0])
    {
      v584[1] = v584[0];
      operator delete(v584[0]);
    }

    goto LABEL_175;
  }

  if (!(*(*a1 + 2152))(a1))
  {
    goto LABEL_178;
  }

  (*(*a1 + 1016))(__p, a1);
  v248 = __p[0];
  if ((__p[1] - __p[0]) == 32)
  {
    v253 = [MEMORY[0x277CBF788] vectorWithX:*__p[0] Y:*(__p[0] + 1) Z:*(__p[0] + 2) W:*(__p[0] + 3)];
    [v3 setObject:v253 forKeyedSubscript:@"inputBlacks"];

LABEL_175:
    v248 = __p[0];
  }

  if (v248)
  {
    __p[1] = v248;
    operator delete(v248);
  }

LABEL_178:
  v249 = (*(*a1 + 520))(a1);
  v250 = [MEMORY[0x277CBF788] vectorWithX:v249 Y:SHIDWORD(v249)];
  [v3 setObject:v250 forKeyedSubscript:@"inputTargetSize"];

  if (a2 < 1)
  {
    goto LABEL_243;
  }

  [v3 setObject:&unk_284957AA8 forKeyedSubscript:@"inputGainMapExecute"];
  if (!(*(*a1 + 2840))(a1) || (*(*a1 + 2848))(a1) != 1)
  {
    goto LABEL_243;
  }

  (*(*a1 + 160))(__p, a1);
  sub_2337D04B8(__p, &v575);
  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }

  __p[1] = 0;
  __p[0] = 0;
  *&v592 = 0;
  if (v575)
  {
    (*(*v575 + 808))(v584);
    sub_2337D36E4(__p);
    *__p = *v584;
    *&v592 = v585.f64[0];
    v585.f64[0] = 0.0;
    v584[1] = 0;
    v584[0] = 0;
    v573 = v584;
    sub_2337A70E0(&v573);
    v251 = __p[1];
    v252 = __p[0];
  }

  else
  {
    v252 = 0;
    v251 = 0;
  }

  v254 = 0xEEEEEEEEEEEEEEEFLL * ((v251 - v252) >> 3);
  if (v254 == 1)
  {
    if ((*(v252 + 23) | 2) == 3)
    {
      v266 = *(*(v252 + 12) + 8) - **(v252 + 12);
      v267 = [MEMORY[0x277CBEB28] dataWithLength:4 * ((v266 >> 1) + (v266 >> 2))];
      v268 = v267;
      v269 = [v267 mutableBytes];
      v270 = *(__p[0] + 12);
      v271 = *v270;
      v272 = v270[1];
      v273 = v272 - *v270;
      if (v272 != *v270)
      {
        v274 = 0;
        v275 = v273 >> 2;
        v276 = *(__p[0] + 23);
        if (v275 <= 1)
        {
          v275 = 1;
        }

        v277 = (v269 + 8);
        do
        {
          if (v276 == 1)
          {
            v278 = *(v271 + 4 * v274);
            *(v277 - 1) = v278;
            *v277 = v278;
            *(v277 - 2) = v278;
          }

          else if (v276 == 3)
          {
            *(v277 - 2) = *(v271 + 4 * v274);
            *(v277 - 1) = *(v270[3] + 4 * v274);
            *v277 = *(v270[6] + 4 * v274);
          }

          ++v274;
          v277 += 3;
        }

        while (v275 != v274);
      }

      [v3 setObject:&unk_284957AD8 forKeyedSubscript:@"inputGainMapExecute"];
      v279 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(__p[0] + 22)];
      [v3 setObject:v279 forKeyedSubscript:@"inputGainMapStartPlane"];

      [v3 setObject:&unk_284957AF0 forKeyedSubscript:@"inputGainMapNumPlanes"];
      (*(*a1 + 432))(a1);
      v282 = [MEMORY[0x277CBF788] vectorWithCGRect:{*__p[0] / v280, *(__p[0] + 1) / v281, *(__p[0] + 2) / v280, *(__p[0] + 3) / v281}];
      [v3 setObject:v282 forKeyedSubscript:@"inputGainMapApplyRegion"];

      v283 = [MEMORY[0x277CBF788] vectorWithCGRect:{*(__p[0] + 4), *(__p[0] + 5), *(__p[0] + 6), *(__p[0] + 7)}];
      [v3 setObject:v283 forKeyedSubscript:@"inputGainMapRegion"];

      v284 = [MEMORY[0x277CBF788] vectorWithX:*(__p[0] + 8) Y:*(__p[0] + 9)];
      [v3 setObject:v284 forKeyedSubscript:@"inputGainMapSize"];

      [v3 setObject:v267 forKeyedSubscript:@"inputGainMapData"];
      goto LABEL_241;
    }

LABEL_446:
    v484 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v484, "RawCameraException");
    __cxa_throw(v484, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v254 != 4)
  {
    v513 = __cxa_allocate_exception(8uLL);
    *v513 = "Unexpected size of gainmap parameters";
    __cxa_throw(v513, MEMORY[0x277D82740], 0);
  }

  if (*(v252 + 23) != 1)
  {
    goto LABEL_446;
  }

  if (*(v252 + 53) != 1)
  {
    goto LABEL_446;
  }

  if (*(v252 + 83) != 1)
  {
    goto LABEL_446;
  }

  if (*(v252 + 113) != 1)
  {
    goto LABEL_446;
  }

  v255 = *(*(v252 + 12) + 8) - **(v252 + 12);
  if (v255 != *(*(v252 + 27) + 8) - **(v252 + 27) || v255 != *(*(v252 + 42) + 8) - **(v252 + 42) || v255 != *(*(v252 + 57) + 8) - **(v252 + 57))
  {
    goto LABEL_446;
  }

  v256 = (*(*a1 + 2168))(a1);
  if (__p[1] == __p[0])
  {
    v263 = 0xFFFFLL;
    v262 = 0xFFFFLL;
    v261 = 0xFFFFLL;
    v260 = 0xFFFFLL;
  }

  else
  {
    v257 = 0;
    if (0xEEEEEEEEEEEEEEEFLL * ((__p[1] - __p[0]) >> 3) <= 1)
    {
      v258 = 1;
    }

    else
    {
      v258 = 0xEEEEEEEEEEEEEEEFLL * ((__p[1] - __p[0]) >> 3);
    }

    v259 = (__p[0] + 8);
    v260 = 0xFFFFLL;
    v261 = 0xFFFFLL;
    v262 = 0xFFFFLL;
    v263 = 0xFFFFLL;
    do
    {
      v264 = 4 * *v259 + 2 * *(v259 - 1);
      v265 = ((0xC0u >> v264) & v256) >> (6 - v264);
      if (v265 == 2)
      {
        v260 = v257;
      }

      else if (v265 == 1)
      {
        if (v262 == 0xFFFF)
        {
          v262 = v257;
        }

        else
        {
          v263 = v257;
        }
      }

      else
      {
        v261 = v257;
        if (v265)
        {
          v512 = __cxa_allocate_exception(8uLL);
          *v512 = "Unexpected CFA pattern";
          __cxa_throw(v512, MEMORY[0x277D82740], 0);
        }
      }

      ++v257;
      v259 += 15;
    }

    while (v258 != v257);
  }

  if (v260 == 0xFFFF || v261 == 0xFFFF || v262 == 0xFFFF || v263 == 0xFFFF)
  {
    v514 = __cxa_allocate_exception(8uLL);
    *v514 = "bad CFA index";
    __cxa_throw(v514, MEMORY[0x277D82740], 0);
  }

  v285 = (*(*(__p[0] + 12) + 8) - **(__p[0] + 12)) >> 2;
  if (*(*(__p[0] + 12) + 8) != **(__p[0] + 12))
  {
    v286 = **(__p[0] + 15 * v262 + 12);
    v287 = **(__p[0] + 15 * v263 + 12);
    if (v285 <= 1)
    {
      v288 = 1;
    }

    else
    {
      v288 = (*(*(__p[0] + 12) + 8) - **(__p[0] + 12)) >> 2;
    }

    do
    {
      if (*v286 != *v287)
      {
        v511 = __cxa_allocate_exception(8uLL);
        *v511 = "mismatch in green channels";
        __cxa_throw(v511, MEMORY[0x277D82740], 0);
      }

      ++v286;
      ++v287;
      --v288;
    }

    while (v288);
  }

  v267 = [MEMORY[0x277CBEB28] dataWithLength:12 * v285];
  v289 = v267;
  v290 = [v267 mutableBytes];
  v291 = *(*(__p[0] + 12) + 8) - **(__p[0] + 12);
  if (v291)
  {
    v292 = v291 >> 2;
    v293 = **(__p[0] + 15 * v260 + 12);
    v294 = **(__p[0] + 15 * v262 + 12);
    v295 = **(__p[0] + 15 * v261 + 12);
    if (v292 <= 1)
    {
      v292 = 1;
    }

    v296 = (v290 + 8);
    do
    {
      v297 = *v293++;
      *(v296 - 2) = v297;
      v298 = *v294++;
      *(v296 - 1) = v298;
      v299 = *v295++;
      *v296 = v299;
      v296 += 3;
      --v292;
    }

    while (v292);
  }

  [v3 setObject:&unk_284957AD8 forKeyedSubscript:@"inputGainMapExecute"];
  v300 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(__p[0] + 22)];
  [v3 setObject:v300 forKeyedSubscript:@"inputGainMapStartPlane"];

  [v3 setObject:&unk_284957AF0 forKeyedSubscript:@"inputGainMapNumPlanes"];
  (*(*a1 + 432))(a1);
  v303 = [MEMORY[0x277CBF788] vectorWithCGRect:{*__p[0] / v301, *(__p[0] + 1) / v302, *(__p[0] + 2) / v301, *(__p[0] + 3) / v302}];
  [v3 setObject:v303 forKeyedSubscript:@"inputGainMapApplyRegion"];

  v304 = [MEMORY[0x277CBF788] vectorWithCGRect:{*(__p[0] + 4), *(__p[0] + 5), *(__p[0] + 6), *(__p[0] + 7)}];
  [v3 setObject:v304 forKeyedSubscript:@"inputGainMapRegion"];

  v305 = [MEMORY[0x277CBF788] vectorWithX:*(__p[0] + 8) Y:*(__p[0] + 9)];
  [v3 setObject:v305 forKeyedSubscript:@"inputGainMapSize"];

  [v3 setObject:v267 forKeyedSubscript:@"inputGainMapData"];
LABEL_241:

  v584[0] = __p;
  sub_2337A70E0(v584);
  if (v576)
  {
    sub_2337239E8(v576);
  }

LABEL_243:
  if (!(*(*a1 + 176))(a1))
  {
    goto LABEL_260;
  }

  [v3 setObject:&unk_284957AA8 forKeyedSubscript:@"inputVignetteExecute"];
  (*(*a1 + 160))(__p, a1);
  sub_2337D04B8(__p, &v575);
  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }

  __p[1] = 0;
  __p[0] = 0;
  *&v592 = 0;
  if (v575)
  {
    sub_2337A3898(v575, 3, v584);
    sub_2337A6858(__p);
    *__p = *v584;
    *&v592 = v585.f64[0];
    v585.f64[0] = 0.0;
    v584[1] = 0;
    v584[0] = 0;
    v573 = v584;
    sub_233723948(&v573);
    if (__p[0] != __p[1])
    {
      [v3 setObject:&unk_284957AD8 forKeyedSubscript:@"inputVignetteExecute"];
      v306 = __p[0];
      if (*__p[0])
      {
        v307 = __dynamic_cast(*__p[0], &unk_2849027A8, &unk_284937AE0, 0);
        if (v307)
        {
          v308 = *(v306 + 1);
          if (v308)
          {
            atomic_fetch_add_explicit(&v308->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          goto LABEL_254;
        }
      }

      else
      {
        v307 = 0;
      }

      v308 = 0;
LABEL_254:
      v584[1] = 0;
      v584[0] = 0;
      v585.f64[0] = 0.0;
      sub_2337236E0(v584, *(v307 + 2), *(v307 + 3), (*(v307 + 3) - *(v307 + 2)) >> 3);
      v309 = [MEMORY[0x277CCABB0] numberWithDouble:*v584[0]];
      [v3 setObject:v309 forKeyedSubscript:@"inputVignetteK0"];

      v310 = [MEMORY[0x277CCABB0] numberWithDouble:*(v584[0] + 1)];
      [v3 setObject:v310 forKeyedSubscript:@"inputVignetteK1"];

      v311 = [MEMORY[0x277CCABB0] numberWithDouble:*(v584[0] + 2)];
      [v3 setObject:v311 forKeyedSubscript:@"inputVignetteK2"];

      v312 = [MEMORY[0x277CCABB0] numberWithDouble:*(v584[0] + 3)];
      [v3 setObject:v312 forKeyedSubscript:@"inputVignetteK3"];

      v313 = [MEMORY[0x277CCABB0] numberWithDouble:*(v584[0] + 4)];
      [v3 setObject:v313 forKeyedSubscript:@"inputVignetteK4"];

      v314 = [MEMORY[0x277CBF788] vectorWithX:*(v307 + 5) Y:*(v307 + 6)];
      [v3 setObject:v314 forKeyedSubscript:@"inputVignetteCenter"];

      if (v584[0])
      {
        v584[1] = v584[0];
        operator delete(v584[0]);
      }

      if (v308)
      {
        sub_2337239E8(v308);
      }
    }
  }

  v584[0] = __p;
  sub_233723948(v584);
  if (v576)
  {
    sub_2337239E8(v576);
  }

LABEL_260:
  [v3 setObject:&unk_284957AA8 forKeyedSubscript:@"inputVignetteTableExecute"];
  if ((*(*a1 + 2832))(a1) != 1)
  {
    if ((*(*a1 + 2832))(a1) != 2)
    {
      [v3 setObject:&unk_284957AA8 forKeyedSubscript:@"inputVignetteTableExecute"];
      goto LABEL_295;
    }

    (*(*a1 + 160))(__p, a1);
    sub_2337D0764(__p, &v573);
    if (__p[1])
    {
      sub_2337239E8(__p[1]);
    }

    if (v573)
    {
      v328 = (*(*v573 + 896))(v573);
      v329 = v573;
      if (v328)
      {
        v330 = (*(*v573 + 904))(v573);
        (*(*v573 + 928))(__p);
        v331 = (*(*v573 + 920))(v573);
        LODWORD(v575) = 0;
        sub_2337D37D4(v584, (__p[1] - __p[0]) >> 2, &v575);
        LODWORD(v566) = 0;
        sub_2337D37D4(&v575, (__p[1] - __p[0]) >> 2, &v566);
        v332 = __p[0];
        v333 = v575;
        v334 = __p[1] - __p[0];
        if (__p[1] != __p[0])
        {
          v335 = 0;
          v336 = (v330 - 1);
          v337 = v584[0];
          if ((v334 >> 2) <= 1)
          {
            v338 = 1;
          }

          else
          {
            v338 = v334 >> 2;
          }

          do
          {
            v333[v335] = exp2f(v331 * v332[v335]);
            v337[v335] = v335 / v336;
            ++v335;
          }

          while (v338 != v335);
        }

        v339 = [MEMORY[0x277CBEA90] dataWithBytes:v333 length:v334];
        [v3 setObject:v339 forKeyedSubscript:@"inputVignetteTableData"];
        v340 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:(__p[1] - __p[0]) >> 2];
        [v3 setObject:v340 forKeyedSubscript:@"inputVignetteTableDataSize"];

        [v3 setObject:&unk_284957AD8 forKeyedSubscript:@"inputVignetteTableExecute"];
        if (v575)
        {
          v576 = v575;
          operator delete(v575);
        }

        if (v584[0])
        {
          v584[1] = v584[0];
          operator delete(v584[0]);
        }
      }

      else
      {
        v341 = (*(*a1 + 2776))(a1);
        if (!(*(*v329 + 960))(v329, v341))
        {
          goto LABEL_293;
        }

        [v3 setObject:&unk_284957AD8 forKeyedSubscript:@"inputVignetteExecute"];
        (*(*v573 + 968))(__p);
        v342 = (*(*v573 + 976))(v573);
        *&v343 = v342 * *(__p[0] + 3);
        v344 = [MEMORY[0x277CCABB0] numberWithFloat:v343];
        [v3 setObject:v344 forKeyedSubscript:@"inputVignetteK0"];

        *&v345 = v342 * *(__p[0] + 2);
        v346 = [MEMORY[0x277CCABB0] numberWithFloat:v345];
        [v3 setObject:v346 forKeyedSubscript:@"inputVignetteK1"];

        *&v347 = v342 * *(__p[0] + 1);
        v348 = [MEMORY[0x277CCABB0] numberWithFloat:v347];
        [v3 setObject:v348 forKeyedSubscript:@"inputVignetteK2"];

        *&v349 = v342 * *__p[0];
        v350 = [MEMORY[0x277CCABB0] numberWithFloat:v349];
        [v3 setObject:v350 forKeyedSubscript:@"inputVignetteK3"];

        [v3 setObject:&unk_284957AA8 forKeyedSubscript:@"inputVignetteK4"];
        v351 = (*(*v573 + 984))(v573);
        v353 = v352;
        v354 = (*(*v573 + 440))(v573);
        v355 = [MEMORY[0x277CBF788] vectorWithX:(v351 + (v354 / 2)) / v354 Y:(v353 + (SHIDWORD(v354) / 2)) / SHIDWORD(v354)];
        [v3 setObject:v355 forKeyedSubscript:@"inputVignetteCenter"];
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

LABEL_293:
    v327 = v574[0];
    if (!v574[0])
    {
      goto LABEL_295;
    }

    goto LABEL_294;
  }

  (*(*a1 + 160))(__p, a1);
  sub_2337D065C(__p, v584);
  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }

  if (v584[0])
  {
    __p[1] = 0;
    __p[0] = 0;
    *&v592 = 0;
    sub_2337D3760(__p, *(v584[0] + 162), *(v584[0] + 163), (*(v584[0] + 163) - *(v584[0] + 162)) >> 4);
    v315 = __p[1];
    v316 = __p[0];
    v317 = __p[1] - __p[0];
    v318 = [MEMORY[0x277CBEB28] dataWithLength:__p[1] - __p[0]];
    v319 = v318;
    v320 = [v318 mutableBytes];
    v321 = v317 >> 4;
    if (v315 != v316)
    {
      if (v321 <= 1)
      {
        v322 = 1;
      }

      else
      {
        v322 = v321;
      }

      v323 = (__p[0] + 8);
      do
      {
        v324 = *v323;
        v323 += 2;
        v325 = 100.0 / v324;
        *v320++ = v325;
        --v322;
      }

      while (v322);
    }

    [v3 setObject:v318 forKeyedSubscript:@"inputVignetteTableData"];
    v326 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v321];
    [v3 setObject:v326 forKeyedSubscript:@"inputVignetteTableDataSize"];

    [v3 setObject:&unk_284957AD8 forKeyedSubscript:@"inputVignetteTableExecute"];
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  v327 = v584[1];
  if (v584[1])
  {
LABEL_294:
    sub_2337239E8(v327);
  }

LABEL_295:
  if ((*(*a1 + 2480))(a1))
  {
    __p[0] = 0;
    v584[0] = 0;
    (*(*a1 + 2664))(a1, __p, v584);
    v356 = [MEMORY[0x277CBF788] vectorWithX:*v584 Y:*__p];
    [v3 setObject:v356 forKeyedSubscript:@"inputNoiseModel"];
  }

  if ((*(*a1 + 2712))(a1))
  {
    [v3 setObject:&unk_284957B08 forKeyedSubscript:@"inputGamutMapMax"];
  }

  if ((*(*a1 + 120))(a1) >= 9 && (*(*a1 + 176))(a1))
  {
    (*(*a1 + 160))(__p, a1);
    sub_2337D04B8(__p, &v575);
    if (__p[1])
    {
      sub_2337239E8(__p[1]);
    }

    if (v575)
    {
      if (sub_2337A53B0(v575))
      {
        (*(*a1 + 296))(&v573, a1, 5000);
        if (v573)
        {
          v357 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v573 + 4)];
          [v3 setObject:v357 forKeyedSubscript:@"inputOrientation"];
        }

        sub_2337A53D4(v575, __p);
        v358 = [MEMORY[0x277CCABB0] numberWithInt:LODWORD(__p[0])];
        [v3 setObject:v358 forKeyedSubscript:@"inputMapPointsV"];

        v359 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(__p[0])];
        [v3 setObject:v359 forKeyedSubscript:@"inputMapPointsH"];

        v360 = [MEMORY[0x277CCABB0] numberWithDouble:*&__p[1]];
        [v3 setObject:v360 forKeyedSubscript:@"inputMapSpacingV"];

        v361 = [MEMORY[0x277CCABB0] numberWithDouble:*&v592];
        [v3 setObject:v361 forKeyedSubscript:@"inputMapSpacingH"];

        v362 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v592 + 1)];
        [v3 setObject:v362 forKeyedSubscript:@"inputMapOriginV"];

        v363 = [MEMORY[0x277CCABB0] numberWithDouble:*v593];
        [v3 setObject:v363 forKeyedSubscript:@"inputMapOriginH"];

        v364 = [MEMORY[0x277CCABB0] numberWithInt:DWORD2(v593[0])];
        [v3 setObject:v364 forKeyedSubscript:@"inputMapPointsN"];

        *v584 = vcvtq_f64_f32(*(v593 + 12));
        v585 = vcvtq_f64_f32(*(&v593[1] + 4));
        *&v586 = *(&v593[1] + 3);
        v365 = [MEMORY[0x277CBF788] vectorWithValues:v584 count:5];
        [v3 setObject:v365 forKeyedSubscript:@"inputWeights"];
        v366 = [MEMORY[0x277CBEA90] dataWithBytes:v596[0] length:v596[1] - v596[0]];
        [v3 setObject:v366 forKeyedSubscript:@"inputGainData"];

        [v3 setObject:&unk_284957AD8 forKeyedSubscript:@"inputStrength"];
        v368 = BYTE12(v594);
        if (BYTE12(v594) == 1)
        {
          LODWORD(v367) = DWORD2(v594);
          v369 = [MEMORY[0x277CCABB0] numberWithFloat:v367];
        }

        else
        {
          v369 = &unk_28495DB00;
        }

        [v3 setObject:v369 forKeyedSubscript:@"inputGamma"];
        if (v368)
        {
        }

        if (v596[0])
        {
          v596[1] = v596[0];
          operator delete(v596[0]);
        }

        if (v574[0])
        {
          sub_2337239E8(v574[0]);
        }
      }

      if (v575 && sub_2337A61CC(v575))
      {
        v370 = MEMORY[0x277CBF788];
        sub_2337A6244(v575, __p);
        v371 = __p[0];
        sub_2337A6244(v575, v584);
        v372 = [v370 vectorWithValues:v371 count:(v584[1] - v584[0]) >> 3];
        [v3 setObject:v372 forKeyedSubscript:@"inputReferencePoints"];

        if (v584[0])
        {
          v584[1] = v584[0];
          operator delete(v584[0]);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v373 = MEMORY[0x277CBF788];
        sub_2337A62F0(v575, __p);
        v374 = __p[0];
        sub_2337A62F0(v575, v584);
        v375 = [v373 vectorWithValues:v374 count:(v584[1] - v584[0]) >> 3];
        [v3 setObject:v375 forKeyedSubscript:@"inputOutputPoints"];

        if (v584[0])
        {
          v584[1] = v584[0];
          operator delete(v584[0]);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }

    if (v576)
    {
      sub_2337239E8(v576);
    }
  }

  v376 = v3;
  if (v578)
  {
    v579 = v578;
    operator delete(v578);
  }

  if (v581)
  {
    sub_2337239E8(v581);
  }

  return v376;
}

void sub_2337CF390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36)
{
  v40 = STACK[0x250];
  if (STACK[0x250])
  {
    STACK[0x258] = v40;
    operator delete(v40);
  }

  v41 = STACK[0x268];
  if (STACK[0x268])
  {
    STACK[0x270] = v41;
    operator delete(v41);
  }

  v42 = STACK[0x2C0];
  if (STACK[0x2C0])
  {
    STACK[0x2C8] = v42;
    operator delete(v42);
  }

  if (STACK[0x220])
  {
    sub_2337239E8(STACK[0x220]);
  }

  v43 = STACK[0x288];
  if (STACK[0x288])
  {
    STACK[0x290] = v43;
    operator delete(v43);
  }

  if (STACK[0x2A8])
  {
    sub_2337239E8(STACK[0x2A8]);
  }

  _Unwind_Resume(a1);
}

double sub_2337D020C(double a1, uint64_t a2, double **a3, uint64_t *a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = v5 - *a3;
  v7 = *a4;
  if (v6 != a4[1] - *a4)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  if (v5 == v4)
  {
    return *(v7 + v6 - 8);
  }

  v8 = v6 >> 3;
  v9 = *a3;
  do
  {
    v10 = v8 >> 1;
    v11 = &v9[v8 >> 1];
    v13 = *v11;
    v12 = v11 + 1;
    v8 += ~(v8 >> 1);
    if (v13 > a1)
    {
      v8 = v10;
    }

    else
    {
      v9 = v12;
    }
  }

  while (v8);
  v14 = v9 - v4;
  if (v14 >= v6 >> 3)
  {
    return *(v7 + v6 - 8);
  }

  if (v9 == v4)
  {
    return *v7;
  }

  v15 = 8 * v14 - 8;
  v16 = *(v4 + v15);
  v17 = vabdd_f64(*v9, v16);
  if (v17 < 0.000000001)
  {
    v17 = 0.000000001;
  }

  v18 = fmin(fmax(vabdd_f64(a1, v16) / v17, 0.0), 1.0);
  return *(v7 + v9 - v4) * v18 + *(v7 + v15) * (1.0 - v18);
}

void *sub_2337D032C@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_284903320, &unk_284906948, 0)) != 0)
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void *sub_2337D03B0@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_284903320, &unk_2849085F8, 0)) != 0)
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void *sub_2337D0434@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_284903320, &unk_284905CA8, 0)) != 0)
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void *sub_2337D04B8@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_284903320, &unk_2849096C0, 0)) != 0)
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void *sub_2337D053C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2849027A8, &unk_284923B50, 0)) != 0)
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void *sub_2337D05CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2849027A8, &unk_284910FC0, 0)) != 0)
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void *sub_2337D065C@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_284903320, &unk_284907408, 0)) != 0)
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void *sub_2337D06E0@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_2849102A8, &unk_284938008, 0)) != 0)
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void *sub_2337D0764@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_284903320, &unk_284922B28, 0)) != 0)
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

double sub_2337D07E8(uint64_t a1, double a2)
{
  v2 = a2;
  if (a2 >= 0.00001)
  {
    v3 = [*(a1 + 32) function];
    v2 = v3[2](v2) * v2;
  }

  return v2;
}

double sub_2337D085C(uint64_t a1, double a2)
{
  v3 = 1.0;
  if (a2 >= 0.00001)
  {
    v4 = [*(a1 + 32) inverse];
    v3 = v4[2](a2) / a2;
  }

  return v3;
}

id sub_2337D08D4(uint64_t a1)
{
  v2 = (*(*a1 + 2752))(a1);
  if (sub_233739B94(a1))
  {
    v3 = [MEMORY[0x277CBEA60] array];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2337D0AF0;
    v13[3] = &unk_2789EEFE0;
    v13[4] = a1;
    v4 = MEMORY[0x2383AC810](v13);
    v5 = sub_233739B84(a1);
    v6 = sub_233739B8C(a1);
    (*(*a1 + 160))(&v8, a1);
    (*(*v8 + 608))(v10);
    v3 = sub_2337243C8(1, v2, v5, v6, v10, v4);
    v14 = &v12;
    sub_233723948(&v14);
    v14 = &v11;
    sub_233723948(&v14);
    v14 = v10;
    sub_233723948(&v14);
    if (v9)
    {
      sub_2337239E8(v9);
    }
  }

  return v3;
}

void sub_2337D0AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  sub_233725098(va);
  if (a7)
  {
    sub_2337239E8(a7);
  }

  _Unwind_Resume(a1);
}

id sub_2337D0AF0(uint64_t a1)
{
  v1 = (*(**(a1 + 32) + 616))(*(a1 + 32));

  return v1;
}

id sub_2337D0B48(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v2 = [MEMORY[0x277CBEB18] array];
  v3 = sub_2338191A8(0);
  [v2 addObject:v3];

  v4 = sub_2338191A8(1);
  [v2 addObject:v4];

  if ((*(*a1 + 2152))(a1))
  {
    sub_2338191A8(2);
  }

  else
  {
    v6 = sub_2338191A8(2);
    [v2 addObject:v6];

    sub_2338191A8(3);
  }
  v5 = ;
  [v2 addObject:v5];

  return v2;
}

void sub_2337D0CB8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_2337D0D00(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  (*(*a1 + 72))(&v7, a1);
  v2 = v7;
  v3 = (*(*a1 + 120))(a1);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2337D11D4;
  v6[3] = &unk_2789EF000;
  v6[4] = a1;
  v4 = sub_2337D0E68(v2, @"applyLensCorrection", v3, v6);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v4;
}

void sub_2337D0E40(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337D0E68(uint64_t a1, void *a2, int a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  sub_2337BEBCC(v7, a3, &__p);
  v9 = sub_233735E3C(a1 + 24, &__p);
  if (a1 + 32 == v9)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2337D3D18;
    v20[3] = &unk_2789EEF70;
    v12 = v8;
    v21 = v12;
    sub_23386DB28(a1, v7, v20, &p_p);
    v13 = p_p;
    if (p_p)
    {
      v14 = sub_23386FD70(p_p);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v11 = [v14 BOOLValue];
    }

    else
    {
      v11 = 0;
    }

    if (v25)
    {
      sub_2337239E8(v25);
    }

    if (!v13)
    {
      v11 = v12[2](v12);
    }

    p_p = &__p;
    v15 = sub_2337BEEAC((a1 + 24), &__p, &unk_233905F1C, &p_p, v23);
    v16 = (v15 + 7);
    v23[1] = v11;
    v23[0] = sub_2337D3DB0;
    if (v23 != v15 + 7)
    {
      v17 = *v16;
      if (*v16)
      {
        p_p = 0;
        v25 = 0;
        v17(2, v16, &p_p, 0, 0);
        v23[0](2, v23, v16, 0, 0);
        (p_p)(2, &p_p, v23, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        *(v15 + 64) = v11;
        v15[7] = sub_2337D3DB0;
        v23[0] = 0;
      }
    }

    sub_2337BF090(v23);
  }

  else
  {
    v10 = sub_2337D3D64((v9 + 56));
    if (!v10)
    {
      sub_2337BEE3C();
    }

    v11 = *v10;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_2337D1144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  __cxa_free_exception(v28);

  if (a26)
  {
    sub_2337239E8(a26);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2337D11FC(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337BE174(v2, @"lensCorrectionFilter", v3, &unk_284910118);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_2337D12A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337D12C8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(*a1 + 72))(&v6);
  v4 = v6;
  v5 = (*(*a1 + 120))(a1);
  sub_2337BE5F8(v4, @"lensCorrectionParameters", v5, &unk_284910138, a2);
  if (v7)
  {
    sub_2337239E8(v7);
  }
}

void sub_2337D137C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337D1394(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_2337D13A0(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337D1464(v2, @"lensVignetteCorrectionFilter", v3, &unk_284910158);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_2337D144C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337D1464(uint64_t a1, void *a2, int a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  sub_2337BEBCC(v7, a3, &__p);
  v9 = sub_233735E3C(a1 + 24, &__p);
  if (a1 + 32 == v9)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2337D3E78;
    v20[3] = &unk_2789EEF70;
    v12 = v8;
    v21 = v12;
    sub_23386DB28(a1, v7, v20, &p_p);
    v13 = p_p;
    if (p_p)
    {
      v14 = sub_23386FD70(p_p);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v11 = [v14 longLongValue];
    }

    else
    {
      v11 = 0;
    }

    if (v25)
    {
      sub_2337239E8(v25);
    }

    if (!v13)
    {
      v11 = v12[2](v12);
    }

    p_p = &__p;
    v15 = sub_2337BEEAC((a1 + 24), &__p, &unk_233905F1C, &p_p, v23);
    v16 = (v15 + 7);
    v23[1] = v11;
    v23[0] = sub_2337D3F10;
    if (v23 != v15 + 7)
    {
      v17 = *v16;
      if (*v16)
      {
        p_p = 0;
        v25 = 0;
        v17(2, v16, &p_p, 0, 0);
        v23[0](2, v23, v16, 0, 0);
        (p_p)(2, &p_p, v23, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        *(v15 + 16) = v11;
        v15[7] = sub_2337D3F10;
        v23[0] = 0;
      }
    }

    sub_2337BF090(v23);
  }

  else
  {
    v10 = sub_2337D3EC4((v9 + 56));
    if (!v10)
    {
      sub_2337BEE3C();
    }

    v11 = *v10;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_2337D1740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  __cxa_free_exception(v28);

  if (a26)
  {
    sub_2337239E8(a26);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2337D17D8(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  (*(*a1 + 72))(&v7, a1);
  v2 = v7;
  v3 = (*(*a1 + 120))(a1);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2337D1940;
  v6[3] = &unk_2789EF000;
  v6[4] = a1;
  v4 = sub_2337D0E68(v2, @"applyGainMap", v3, v6);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v4;
}

void sub_2337D1918(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337D1968(uint64_t a1)
{
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  (*(*a1 + 72))(&v7, a1);
  v2 = v7;
  v3 = (*(*a1 + 120))(a1);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2337D1E3C;
  v6[3] = &unk_2789EEF28;
  v6[4] = a1;
  v4 = sub_2337D1AD0(v2, @"gainMapFilter", v3, v6);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v4;
}

void sub_2337D1AA8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2337D1AD0(uint64_t a1, void *a2, int a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  sub_2337BEBCC(v7, a3, &__p);
  v9 = sub_233735E3C(a1 + 24, &__p);
  if (a1 + 32 == v9)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2337D3FD8;
    v20[3] = &unk_2789EEF70;
    v12 = v8;
    v21 = v12;
    sub_23386DB28(a1, v7, v20, &p_p);
    v13 = p_p;
    if (p_p)
    {
      v14 = sub_23386FD70(p_p);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v11 = [v14 longLongValue];
    }

    else
    {
      v11 = 0;
    }

    if (v25)
    {
      sub_2337239E8(v25);
    }

    if (!v13)
    {
      v11 = v12[2](v12);
    }

    p_p = &__p;
    v15 = sub_2337BEEAC((a1 + 24), &__p, &unk_233905F1C, &p_p, v23);
    v16 = (v15 + 7);
    v23[1] = v11;
    v23[0] = sub_2337D4070;
    if (v23 != v15 + 7)
    {
      v17 = *v16;
      if (*v16)
      {
        p_p = 0;
        v25 = 0;
        v17(2, v16, &p_p, 0, 0);
        v23[0](2, v23, v16, 0, 0);
        (p_p)(2, &p_p, v23, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        *(v15 + 16) = v11;
        v15[7] = sub_2337D4070;
        v23[0] = 0;
      }
    }

    sub_2337BF090(v23);
  }

  else
  {
    v10 = sub_2337D4024((v9 + 56));
    if (!v10)
    {
      sub_2337BEE3C();
    }

    v11 = *v10;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_2337D1DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  __cxa_free_exception(v28);

  if (a26)
  {
    sub_2337239E8(a26);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2337D1E78(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_2337D1E84(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(*a1 + 72))(&v6);
  v4 = v6;
  v5 = (*(*a1 + 120))(a1);
  sub_2337BE5F8(v4, @"chromaticAberrationParameters", v5, &unk_284910178, a2);
  if (v7)
  {
    sub_2337239E8(v7);
  }
}

void sub_2337D1F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2337D1F50(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_2337D1F5C(uint64_t a1)
{
  if (sub_233739B74(a1))
  {
    return 0;
  }

  v3 = *(*a1 + 2784);

  return v3(a1);
}

id sub_2337D1FFC(void *a1)
{
  v47[3] = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(byte_280C04E68, memory_order_acquire) & 1) == 0)
  {
    sub_2338FBAB4();
  }

  sub_2337269FC(&v43, a1 + 1);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3321888768;
  v41[2] = sub_2337D260C;
  v41[3] = &unk_2849101C8;
  v41[4] = v43;
  v42 = v44;
  if (v44)
  {
    atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v2 = MEMORY[0x2383AC810](v41);
  v3 = (*(*a1 + 408))(a1);
  v4 = sub_23373B814(a1);
  v5 = v4;
  v6 = HIDWORD(v4);
  if (byte_280C04E60)
  {
    v7 = 0x2000;
  }

  else
  {
    v7 = 0;
  }

  if (v7 < v4)
  {
    do
    {
      v5 = (v5 >> 1) & 0xFFFFFFFC;
    }

    while (v5 > v7);
  }

  if (byte_280C04E64)
  {
    v8 = 0x2000;
  }

  else
  {
    v8 = 0;
  }

  if (v8 < SHIDWORD(v4))
  {
    do
    {
      v6 = (v6 >> 1) & 0xFFFFFFFC;
    }

    while (v6 > v8);
  }

  v9 = MEMORY[0x277CBEB38];
  v46[0] = *MEMORY[0x277CBFA88];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v45[0] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  v45[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  v13 = *MEMORY[0x277CBFA78];
  v47[0] = v12;
  v47[1] = @"CRawImage";
  v14 = *MEMORY[0x277CBFA00];
  v46[1] = v13;
  v46[2] = v14;
  v47[2] = MEMORY[0x277CBEC38];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];
  v16 = [v9 dictionaryWithDictionary:v15];

  sub_23373BA14(a1);
  if (v40 != v39)
  {
    v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:(v40 - v39) >> 1];
    v18 = v39;
    v19 = 0;
    do
    {
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v18[v19]];
      [v17 setObject:v20 atIndexedSubscript:v19];

      ++v19;
      v18 = v39;
    }

    while (v19 < (v40 - v39) >> 1);
    [v16 setObject:v17 forKeyedSubscript:*MEMORY[0x277CBFA90]];
  }

  sub_23373BAC8(a1);
  if (v38 != __p)
  {
    v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:(v38 - __p) >> 1];
    v22 = __p;
    v23 = 0;
    do
    {
      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v22[v23]];
      [v21 setObject:v24 atIndexedSubscript:v23];

      ++v23;
      v22 = __p;
    }

    while (v23 < (v38 - __p) >> 1);
    [v16 setObject:v21 forKeyedSubscript:*MEMORY[0x277CBFA80]];
  }

  v25 = objc_alloc(MEMORY[0x277CBF758]);
  v26 = (*(*a1 + 2152))(a1);
  v27 = sub_2338F28E4();
  if (v26)
  {
    v28 = *MEMORY[0x277CBF9D8];
  }

  else
  {
    v28 = *MEMORY[0x277CBF980];
  }

  v29 = [v25 initWithImageProvider:v2 width:v3 height:v3 >> 32 format:v28 colorSpace:v27 options:v16];
  v30 = (*(*a1 + 432))(a1);
  v32 = v31;
  CGAffineTransformMakeTranslation(&v36, -v30, -((v3 - (((v31 & 0xFFFFFFFF00000000) + v30) & 0xFFFFFFFF00000000)) >> 32));
  v33 = [v29 imageByApplyingTransform:&v36];

  v34 = [v33 imageByCroppingToRect:{0.0, 0.0, v32, SHIDWORD(v32)}];

  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v42)
  {
    sub_2337239E8(v42);
  }

  if (v44)
  {
    sub_2337239E8(v44);
  }

  return v34;
}

void sub_2337D251C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a27)
  {
    sub_2337239E8(a27);
  }

  if (a29)
  {
    sub_2337239E8(a29);
  }

  _Unwind_Resume(a1);
}

uint64_t (***sub_2337D260C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(void)
{
  result = sub_233738EC8(*(a1 + 32));
  if (result)
  {
    v15 = *(a1 + 32);
    v16 = *(v15 + 296);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3321888768;
    v18[2] = sub_2337D26FC;
    v18[3] = &unk_284910198;
    v17 = *(a1 + 40);
    v18[4] = v15;
    v19 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = a2;
    v21 = a4;
    v22 = a5;
    v23 = a6;
    v24 = a7;
    v25 = a3;
    dispatch_sync(v16, v18);
    if (v19)
    {
      sub_2337239E8(v19);
    }

    return sub_233738EB8(*(a1 + 32));
  }

  return result;
}

uint64_t sub_2337D26FC(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4 = a1[9];
  v5 = a1[10];
  sub_2337D38E8(&v7, a1[7], a1[8]);
  sub_2337D38E8(&v8, v4, v5);
  return (*(*v2 + 368))(v2, v3, &v7, a1[11]);
}

void sub_2337D279C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337D2784);
}

uint64_t sub_2337D27A8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2337D27C4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_2337239E8(v1);
  }
}

id sub_2337D27D4(void *a1)
{
  v19[3] = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  sub_2337269FC(&v14, a1 + 1);
  sub_2337D2AD8(&v14, &v16);
  if (v15)
  {
    sub_2337239E8(v15);
  }

  if (!v16)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3321888768;
  v12[2] = sub_2337D2B5C;
  v12[3] = &unk_2849101F8;
  v12[4] = v16;
  v13 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v2 = MEMORY[0x2383AC810](v12);
  (*(*a1 + 432))(a1);
  v4 = v3;
  v5 = objc_alloc(MEMORY[0x277CBF758]);
  v6 = sub_2338F28E4();
  v7 = *MEMORY[0x277CBFA78];
  v18[0] = *MEMORY[0x277CBFA88];
  v18[1] = v7;
  v19[0] = &unk_284957B38;
  v19[1] = @"CRawImageFuji";
  v18[2] = *MEMORY[0x277CBFA00];
  v19[2] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v9 = [v5 initWithImageProvider:v2 width:v4 height:v4 >> 32 format:*MEMORY[0x277CBF9D8] colorSpace:v6 options:v8];

  if (v13)
  {
    sub_2337239E8(v13);
  }

  if (v17)
  {
    sub_2337239E8(v17);
  }

  return v9;
}

void sub_2337D2A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a15)
  {
    sub_2337239E8(a15);
  }

  if (a19)
  {
    sub_2337239E8(a19);
  }

  _Unwind_Resume(a1);
}

void *sub_2337D2AD8@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_284904BA8, &unk_284918550, 0)) != 0)
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void sub_2337D2E7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42, uint64_t a43, uint64_t a44, uint64_t a45, std::__shared_weak_count *a46)
{
  MEMORY[0x2383ABEF0](v46, 0x1000C80BDFB0063, a3, a4, a5, a6, a7, a8);
  if (a42)
  {
    sub_2337239E8(a42);
  }

  if (a46)
  {
    sub_2337239E8(a46);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2337D2E4CLL);
}

uint64_t sub_2337D2F40(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2337D2F5C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_2337239E8(v1);
  }
}

id sub_2337D2F6C(void *a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  if (sub_233739B84(a1))
  {
    v5 = sub_233739B84(a1);
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_233739B8C(a1);
  if ((*(*a1 + 120))(a1) <= 6)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  (*(*a1 + 160))(&v20, a1);
  v7 = (*(*v20 + 544))(v20);
  if (v21)
  {
    sub_2337239E8(v21);
  }

  if (!v7)
  {
    v8 = sub_2337269FC(&v25, a1 + 1);
    sub_2337D2AD8(v8, &v20);
    if (v26)
    {
      sub_2337239E8(v26);
    }

    if (v20)
    {
      sub_2337D27D4(a1);
    }

    else
    {
      sub_2337D1FFC(a1);
    }
    v7 = ;
    if (v21)
    {
      sub_2337239E8(v21);
    }
  }

  v9 = (*(*a1 + 2752))(a1, v5);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2337D3594;
  v24[3] = &unk_2789EEFE0;
  v24[4] = a1;
  v10 = MEMORY[0x2383AC810](v24);
  (*(*a1 + 160))(&v25, a1);
  (*(*v25 + 608))(&v20);
  v11 = sub_2337243C8(0, v9, v5, v6, &v20, v10);
  v27[0] = v23;
  sub_233723948(v27);
  v27[0] = v22;
  sub_233723948(v27);
  v27[0] = &v20;
  sub_233723948(v27);
  if (v26)
  {
    sub_2337239E8(v26);
  }

  (*(*a1 + 528))(a1);
  v12 = [v7 rcApplyFilters:v11 withScaleFactor:?];

  if (sub_233739B94(a1))
  {
    (*(*a1 + 160))(&v25, a1);
    (*(*v25 + 608))(&v20);
    v13 = sub_2337243C8(1, v9, v5, v6, &v20, v10);

    v27[0] = v23;
    sub_233723948(v27);
    v27[0] = v22;
    sub_233723948(v27);
    v27[0] = &v20;
    sub_233723948(v27);
    if (v26)
    {
      sub_2337239E8(v26);
    }

    (*(*a1 + 528))(a1);
    v14 = [v12 rcApplyFilters:v13 withScaleFactor:?];

    v11 = v13;
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  if (sub_233739B84(a1) && !sub_233739B94(a1))
  {
    v16 = v15;
    if (!a2)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v16 = [v15 imageByTaggingWithColorSpace:sub_233739BB4(a1)];

    if (!a2)
    {
      goto LABEL_31;
    }
  }

  (*(*a1 + 160))(&v20, a1);
  sub_2337269FC(&v18, a1 + 1);
  sub_23387546C(&v20, &v18);
  if (v19)
  {
    sub_2337239E8(v19);
  }

  if (v21)
  {
    sub_2337239E8(v21);
  }

LABEL_31:

  objc_autoreleasePoolPop(v4);

  return v16;
}