void jpeg_make_c_derived_tbl(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = a2;
  v35 = *MEMORY[0x1E69E9840];
  memset(v34, 0, 257);
  if (a3 >= 4)
  {
    v8 = *a1;
    *(v8 + 10) = 52;
    *(v8 + 12) = a3;
    (**a1)(a1);
  }

  v9 = a1 + 160;
  if (!v6)
  {
    v9 = a1 + 192;
  }

  v10 = *(v9 + 8 * v5);
  if (!v10)
  {
    v10 = _cg_jpeg_std_huff_table(a1, v6, v5);
  }

  v11 = *a4;
  if (!*a4)
  {
    v11 = (**(a1 + 8))(a1, 1, 1280);
    *a4 = v11;
  }

  v32 = v6;
  LODWORD(v12) = 0;
  for (i = 1; i != 17; ++i)
  {
    v14 = *(v10 + i);
    if (v12 + v14 >= 257)
    {
      v15 = *a1;
      *(v15 + 10) = 9;
      (*v15)(a1);
    }

    if (v14)
    {
      memset(&v34[v12], i, v14);
      LODWORD(v12) = v12 + v14;
    }
  }

  bzero(v33, 0x404uLL);
  v34[v12] = 0;
  v16 = v34[0];
  if (v34[0])
  {
    v17 = 0;
    v18 = 0;
    v19 = v34[0];
    do
    {
      if (v16 == v19)
      {
        v20 = &v33[v18];
        v21 = &v34[v18 + 1];
        do
        {
          *v20++ = v17++;
          v22 = *v21++;
          ++v18;
        }

        while (v16 == v22);
      }

      if (1 << v16 <= v17)
      {
        v23 = *a1;
        *(v23 + 10) = 9;
        (*v23)(a1);
      }

      v17 *= 2;
      ++v16;
      v19 = v34[v18];
    }

    while (v19);
  }

  v11[79] = 0u;
  v11[78] = 0u;
  v11[77] = 0u;
  v11[76] = 0u;
  v11[75] = 0u;
  v11[74] = 0u;
  v11[73] = 0u;
  v11[72] = 0u;
  v11[71] = 0u;
  v11[70] = 0u;
  v11[69] = 0u;
  v11[68] = 0u;
  v11[67] = 0u;
  v11[66] = 0u;
  v11[65] = 0u;
  v11[64] = 0u;
  if (v12 >= 1)
  {
    v24 = v11 + 64;
    v25 = (v10 + 17);
    v26 = v34;
    v27 = v33;
    v12 = v12;
    do
    {
      v29 = *v25++;
      v28 = v29;
      if (v32 && v28 > 0xF || *(v24 + v28))
      {
        v30 = *a1;
        *(v30 + 10) = 9;
        (*v30)(a1);
      }

      v31 = *v27++;
      *(v11 + v28) = v31;
      LOBYTE(v31) = *v26++;
      *(v24 + v28) = v31;
      --v12;
    }

    while (v12);
  }
}

uint64_t emit_eobrun(uint64_t result)
{
  v1 = *(result + 228);
  if (v1)
  {
    v2 = result;
    if (v1 == 1)
    {
      v3 = 0;
    }

    else
    {
      v4 = -1;
      do
      {
        v1 >>= 1;
        ++v4;
      }

      while (v1 > 1);
      v3 = v4 + 1;
      if (v4 >= 0xE)
      {
        v5 = *(result + 216);
        v6 = *v5;
        *(v6 + 40) = 41;
        result = (*v6)(v5);
      }
    }

    v7 = *(v2 + 224);
    v8 = *(v2 + 192);
    v9 = (16 * v3);
    if (v8)
    {
      ++*(*(v2 + 8 * v7 + 160) + 8 * v9);
    }

    else
    {
      v10 = *(v2 + 8 * v7 + 96);
      v11 = *(v10 + 4 * v9);
      v12 = v10 + v9;
      v13 = *(v12 + 1024);
      if (*(v12 + 1024) || (v21 = *(v2 + 216), v22 = *v21, *(v22 + 40) = 41, result = (*v22)(v21), (v8 = *(v2 + 192)) == 0))
      {
        v14 = *(v2 + 32) + v13;
        v15 = ((~(-1 << v13) & v11) << (24 - (*(v2 + 32) + v13))) | *(v2 + 24);
        if (v14 < 8)
        {
          v8 = 0;
        }

        else
        {
          do
          {
            v16 = v14;
            v17 = *(v2 + 200);
            *(v2 + 200) = v17 + 1;
            *v17 = BYTE2(v15);
            v18 = *(v2 + 208) - 1;
            *(v2 + 208) = v18;
            if (!v18)
            {
              result = dump_buffer_e(v2);
            }

            if ((~v15 & 0xFF0000) == 0)
            {
              v19 = *(v2 + 200);
              *(v2 + 200) = v19 + 1;
              *v19 = 0;
              v20 = *(v2 + 208) - 1;
              *(v2 + 208) = v20;
              if (!v20)
              {
                result = dump_buffer_e(v2);
              }
            }

            v15 <<= 8;
            v14 = v16 - 8;
          }

          while (v16 > 15);
          v8 = *(v2 + 192);
        }

        *(v2 + 24) = v15;
        *(v2 + 32) = v14;
      }
    }

    if (v3)
    {
      if (v8)
      {
        *(v2 + 228) = 0;
        v23 = (v2 + 232);
LABEL_52:
        *v23 = 0;
        return result;
      }

      v24 = *(v2 + 32) + v3;
      v25 = ((*(v2 + 228) & ~(-1 << v3)) << (24 - (*(v2 + 32) + v3))) | *(v2 + 24);
      if (v24 < 8)
      {
        v8 = 0;
      }

      else
      {
        do
        {
          v26 = v24;
          v27 = *(v2 + 200);
          *(v2 + 200) = v27 + 1;
          *v27 = BYTE2(v25);
          v28 = *(v2 + 208) - 1;
          *(v2 + 208) = v28;
          if (!v28)
          {
            result = dump_buffer_e(v2);
          }

          if ((~v25 & 0xFF0000) == 0)
          {
            v29 = *(v2 + 200);
            *(v2 + 200) = v29 + 1;
            *v29 = 0;
            v30 = *(v2 + 208) - 1;
            *(v2 + 208) = v30;
            if (!v30)
            {
              result = dump_buffer_e(v2);
            }
          }

          v25 <<= 8;
          v24 = v26 - 8;
        }

        while (v26 > 15);
        v8 = *(v2 + 192);
      }

      *(v2 + 24) = v25;
      *(v2 + 32) = v24;
    }

    v23 = (v2 + 232);
    v31 = *(v2 + 232);
    *(v2 + 228) = 0;
    if (v31 && !v8)
    {
      v32 = *(v2 + 240);
LABEL_38:
      v33 = *(v2 + 32);
      v34 = ((*v32 & 1) << (23 - v33)) | *(v2 + 24);
      if (v33 < 7)
      {
        v40 = v33 + 1;
      }

      else
      {
        v35 = v33 + 9;
        do
        {
          v36 = *(v2 + 200);
          *(v2 + 200) = v36 + 1;
          *v36 = BYTE2(v34);
          v37 = *(v2 + 208) - 1;
          *(v2 + 208) = v37;
          if (!v37)
          {
            result = dump_buffer_e(v2);
          }

          if ((~v34 & 0xFF0000) == 0)
          {
            v38 = *(v2 + 200);
            *(v2 + 200) = v38 + 1;
            *v38 = 0;
            v39 = *(v2 + 208) - 1;
            *(v2 + 208) = v39;
            if (!v39)
            {
              result = dump_buffer_e(v2);
            }
          }

          v34 <<= 8;
          v35 -= 8;
        }

        while (v35 > 15);
        v40 = v35 - 8;
      }

      *(v2 + 24) = v34;
      *(v2 + 32) = v40;
      while (--v31)
      {
        ++v32;
        if (!*(v2 + 192))
        {
          goto LABEL_38;
        }
      }
    }

    goto LABEL_52;
  }

  return result;
}

double jpeg_gen_optimal_table(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v53 = *MEMORY[0x1E69E9840];
  bzero(__b, 0x404uLL);
  v6 = 0;
  *(a3 + 2048) = 1;
  v7 = 256;
  while (1)
  {
    if (!*(a3 + 8 * v6))
    {
      goto LABEL_5;
    }

    if (v6 > 0xFF)
    {
      break;
    }

    __b[v7] = v6;
    v7 = v6;
LABEL_5:
    ++v6;
  }

  __b[v7] = -1;
  v8 = __b[256];
  if ((__b[256] & 0x80000000) == 0)
  {
    v9 = (a2 + 17);
    do
    {
      v10 = __b[v8];
      if ((v10 & 0x80000000) != 0)
      {
        v12 = 256;
      }

      else
      {
        v11 = *(a3 + 8 * v8);
        LODWORD(v12) = 256;
        v13 = v8;
        do
        {
          v14 = *(a3 + 8 * v10);
          if (v14 <= v11)
          {
            v12 = v12;
          }

          else
          {
            v8 = v10;
            v12 = v13;
          }

          if (v14 > v11)
          {
            v11 = *(a3 + 8 * v10);
          }

          v13 = v10;
          v10 = __b[v10];
        }

        while ((v10 & 0x80000000) == 0);
        v10 = __b[v8];
      }

      __b[v12] = v10;
      *v9++ = v8;
      v8 = __b[256];
    }

    while ((__b[256] & 0x80000000) == 0);
  }

  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  bzero(v49, 0x404uLL);
  memset(__b, 255, sizeof(__b));
LABEL_20:
  v15 = 0;
  LODWORD(v16) = -1;
  v17 = 1000000000;
  while (1)
  {
    do
    {
      v18 = *(a3 + 8 * v15);
      if (v18)
      {
        v19 = v18 <= v17;
      }

      else
      {
        v19 = 0;
      }

      v20 = !v19;
      if (v20)
      {
        v16 = v16;
      }

      else
      {
        v16 = v15;
      }

      if (!v20)
      {
        v17 = *(a3 + 8 * v15);
      }

      ++v15;
    }

    while (v15 != 257);
    v21 = 0;
    v22 = -1;
    v23 = 1000000000;
    do
    {
      v24 = *(a3 + 8 * v21);
      if (v24)
      {
        v25 = v16 == v21;
      }

      else
      {
        v25 = 1;
      }

      if (!v25 && v24 <= v23)
      {
        v22 = v21;
        v23 = *(a3 + 8 * v21);
      }

      ++v21;
    }

    while (v21 != 257);
    if ((v22 & 0x80000000) != 0)
    {
      break;
    }

    *(a3 + 8 * v16) += *(a3 + 8 * v22);
    *(a3 + 8 * v22) = 0;
    ++v49[v16];
    v28 = __b[v16];
    if ((v28 & 0x80000000) != 0)
    {
      v16 = v16;
    }

    else
    {
      do
      {
        v16 = v28;
        ++v49[v28];
        v28 = __b[v28];
      }

      while ((v28 & 0x80000000) == 0);
    }

    v15 = 0;
    __b[v16] = v22;
    ++v49[v22];
    v29 = __b[v22];
    LODWORD(v16) = -1;
    v17 = 1000000000;
    if ((v29 & 0x80000000) == 0)
    {
      do
      {
        ++v49[v29];
        v29 = __b[v29];
      }

      while ((v29 & 0x80000000) == 0);
      goto LABEL_20;
    }
  }

  v46 = a2;
  for (i = 0; i != 257; ++i)
  {
    v31 = v49[i];
    if (v31)
    {
      if (v31 >= 33)
      {
        v32 = *a1;
        *(v32 + 40) = 40;
        (*v32)(a1);
      }

      ++*(&v50 + v31);
    }
  }

  v47 = &v51 + 13;
  v33 = -30;
  v34 = 32;
  do
  {
    v35 = *(&v50 + v34);
    if (v35)
    {
      v36 = v34 - 1;
      do
      {
        v37 = v34 - 2;
        if (!*(&v50 + v34 - 2))
        {
          v38 = v47;
          v39 = v33;
          do
          {
            if (!v39)
            {
              v40 = *a1;
              *(v40 + 40) = 40;
              (*v40)(a1);
            }

            v41 = *v38--;
            ++v39;
          }

          while (!v41);
          v37 = -v39;
        }

        *(&v50 + v34) = v35 - 2;
        ++*(&v50 + v36);
        *(&v50 + v37 + 1) += 2;
        --*(&v50 + v37);
        v35 = *(&v50 + v34);
      }

      while (v35);
    }

    else
    {
      v36 = v34 - 1;
    }

    ++v33;
    --v47;
    v19 = v34 > 0x11;
    v34 = v36;
  }

  while (v19);
  v42 = &v51 + 1;
  do
  {
    v44 = *--v42;
    v43 = v44;
  }

  while (!v44);
  *v42 = v43 - 1;
  result = *&v50;
  *v46 = v50;
  *(v46 + 16) = v51;
  *(v46 + 276) = 0;
  return result;
}

uint64_t dump_buffer_e(void *a1)
{
  v2 = *(a1[27] + 40);
  result = (*(v2 + 24))();
  if (!result)
  {
    v4 = a1[27];
    v5 = *v4;
    *(v5 + 40) = 25;
    result = (*v5)(v4);
  }

  v6 = *(v2 + 8);
  a1[25] = *v2;
  a1[26] = v6;
  return result;
}

uint64_t emit_restart_e(uint64_t a1, char a2)
{
  result = emit_eobrun(a1);
  if (!*(a1 + 192))
  {
    v5 = *(a1 + 32);
    if (v5 >= 1)
    {
      v6 = (127 << (17 - v5)) | *(a1 + 24);
      v7 = v5 + 15;
      do
      {
        v8 = *(a1 + 200);
        *(a1 + 200) = v8 + 1;
        *v8 = BYTE2(v6);
        v9 = *(a1 + 208) - 1;
        *(a1 + 208) = v9;
        if (!v9)
        {
          result = dump_buffer_e(a1);
        }

        if ((~v6 & 0xFF0000) == 0)
        {
          v10 = *(a1 + 200);
          *(a1 + 200) = v10 + 1;
          *v10 = 0;
          v11 = *(a1 + 208) - 1;
          *(a1 + 208) = v11;
          if (!v11)
          {
            result = dump_buffer_e(a1);
          }
        }

        LODWORD(v6) = v6 << 8;
        v7 -= 8;
      }

      while (v7 > 15);
    }

    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    v12 = *(a1 + 200);
    *(a1 + 200) = v12 + 1;
    *v12 = -1;
    v13 = *(a1 + 208) - 1;
    *(a1 + 208) = v13;
    if (!v13)
    {
      result = dump_buffer_e(a1);
    }

    v14 = *(a1 + 200);
    *(a1 + 200) = v14 + 1;
    *v14 = a2 - 48;
    v15 = *(a1 + 208) - 1;
    *(a1 + 208) = v15;
    if (!v15)
    {
      result = dump_buffer_e(a1);
    }
  }

  v16 = *(a1 + 216);
  if (*(v16 + 460))
  {
    *(a1 + 228) = 0;
    *(a1 + 232) = 0;
  }

  else if (*(v16 + 372) >= 1)
  {
    v17 = 0;
    do
    {
      *(a1 + 36 + 4 * v17++) = 0;
    }

    while (v17 < *(v16 + 372));
  }

  return result;
}

uint64_t xf20toRGB16f<(ImageIOVectorLevel)0>::operator()(uint64_t a1, unsigned __int16 **a2, unsigned __int16 **a3, void *a4, __int16 *a5)
{
  v5 = a4[1];
  v6 = &kDefaultXF20ToRGB16fConversion;
  if (a5)
  {
    v6 = a5;
  }

  if (v5)
  {
    v7 = 0;
    v8 = a2[3];
    v9 = a3[3];
    v11 = a4[2];
    v10 = a4[3];
    v12 = *a4;
    v13 = *a3;
    v15 = *a2;
    v14 = a2[1];
    do
    {
      if ((v7 | 1) >= v14)
      {
        v16 = v15;
      }

      else
      {
        v16 = (v15 + v8);
      }

      v17 = (v12 + v10);
      if ((v7 | 1) >= v5)
      {
        v17 = v12;
      }

      if (v11 >= 2)
      {
        v18 = 0;
        v20 = v13;
        v21 = v16;
        v22 = v15;
        v19 = v12;
        do
        {
          _H7 = *v6;
          __asm { FCVT            S7, H7 }

          _H16 = v6[1];
          __asm { FCVT            S16, H16 }

          _H17 = v6[2];
          __asm { FCVT            S17, H17 }

          v33 = ((v20[1] >> 6) / 1023.0) - _S16;
          _S5 = ((*v20 >> 6) / 1023.0) - _S17;
          LOWORD(_S16) = v6[3];
          __asm { FCVT            S16, H16 }

          LOWORD(_S17) = v6[4];
          __asm { FCVT            S17, H17 }

          v37 = (((*v22 >> 6) / 1023.0) - _S7) * _S16;
          _S18 = v37 + (v33 * _S17);
          _H19 = v6[6];
          __asm { FCVT            S19, H19 }

          _H20 = v6[5];
          __asm { FCVT            S20, H20 }

          v43 = v37 + (v33 * _S19);
          _H22 = v6[7];
          __asm { FCVT            S22, H22 }

          _S1 = v37 + (_S5 * _S22);
          v47 = (((v22[1] >> 6) / 1023.0) - _S7) * _S16;
          _S21 = v43 + (_S5 * _S20);
          _S23 = v47 + (v33 * _S17);
          v50 = v47 + (v33 * _S19);
          _S2 = v47 + (_S5 * _S22);
          v52 = (((*v21 >> 6) / 1023.0) - _S7) * _S16;
          _S24 = v50 + (_S5 * _S20);
          _S25 = v52 + (v33 * _S17);
          v55 = v52 + (v33 * _S19);
          _S3 = v52 + (_S5 * _S22);
          _S4 = (((v21[1] >> 6) / 1023.0) - _S7) * _S16;
          _S7 = v55 + (_S5 * _S20);
          _S16 = _S4 + (v33 * _S17);
          _S6 = (_S4 + (v33 * _S19)) + (_S5 * _S20);
          __asm
          {
            FCVT            H17, S25
            FCVT            H3, S3
          }

          *v17 = LOWORD(_S17);
          v17[2] = LOWORD(_S3);
          _S3 = _S4 + (_S5 * _S22);
          __asm
          {
            FCVT            H4, S7
            FCVT            H5, S16
          }

          v17[3] = LOWORD(_S5);
          v17[1] = LOWORD(_S4);
          __asm { FCVT            H4, S6 }

          v17[4] = LOWORD(_S4);
          __asm { FCVT            H3, S3 }

          v17[5] = LOWORD(_S3);
          __asm { FCVT            H3, S18 }

          v17 += 6;
          *v19 = LOWORD(_S3);
          __asm { FCVT            H3, S21 }

          v19[1] = LOWORD(_S3);
          __asm
          {
            FCVT            H1, S1
            FCVT            H3, S23
          }

          v19[2] = LOWORD(_S1);
          v19[3] = LOWORD(_S3);
          __asm { FCVT            H1, S24 }

          v19[4] = LOWORD(_S1);
          __asm { FCVT            H1, S2 }

          v19[5] = LOWORD(_S1);
          v19 += 6;
          v62 = v18 + 4;
          v18 += 2;
          v22 += 2;
          v21 += 2;
          v20 += 2;
        }

        while (v62 <= v11);
      }

      else
      {
        v18 = 0;
        v19 = v12;
      }

      if (v18 < v11)
      {
        v63 = (v16[v18] >> 6) / 1023.0;
        v64 = &v13[v18];
        _H5 = *v6;
        __asm { FCVT            S5, H5 }

        _H6 = v6[1];
        __asm { FCVT            S6, H6 }

        v69 = ((v64[1] >> 6) / 1023.0) - _S6;
        LOWORD(_S6) = v6[2];
        __asm { FCVT            S6, H6 }

        _S3 = ((*v64 >> 6) / 1023.0) - _S6;
        LOWORD(_S6) = v6[3];
        __asm { FCVT            S6, H6 }

        v73 = (((v15[v18] >> 6) / 1023.0) - _S5) * _S6;
        _H7 = v6[4];
        __asm { FCVT            S7, H7 }

        _S16 = v73 + (v69 * _S7);
        _H17 = v6[6];
        __asm { FCVT            S17, H17 }

        _H19 = v6[5];
        __asm { FCVT            S19, H19 }

        _S18 = (v73 + (v69 * _S17)) + (_S3 * _S19);
        _H20 = v6[7];
        __asm { FCVT            S20, H20 }

        _S1 = v73 + (_S3 * _S20);
        v85 = (v63 - _S5) * _S6;
        _S5 = v85 + (v69 * _S7);
        _S4 = (v85 + (v69 * _S17)) + (_S3 * _S19);
        _S2 = v85 + (_S3 * _S20);
        __asm { FCVT            H3, S5 }

        *v17 = LOWORD(_S3);
        __asm { FCVT            H3, S4 }

        v17[1] = LOWORD(_S3);
        __asm { FCVT            H2, S2 }

        v17[2] = LOWORD(_S2);
        __asm { FCVT            H2, S16 }

        *v19 = LOWORD(_S2);
        __asm { FCVT            H2, S18 }

        v19[1] = LOWORD(_S2);
        __asm { FCVT            H1, S1 }

        v19[2] = LOWORD(_S1);
      }

      v15 += v8;
      v13 = (v13 + v9);
      v12 += v10;
      v7 += 2;
    }

    while (v7 < v5);
  }

  return 0;
}

uint64_t xf20toRGBA1010102<(ImageIOVectorLevel)0>::operator()(uint64_t a1, unsigned __int16 **a2, unsigned __int16 **a3, unint64_t **a4, char *a5)
{
  v8 = a4[1];
  v9 = &kDefaultXF20ToRGB16fConversion;
  if (a5)
  {
    v9 = a5;
  }

  if (v8)
  {
    v10 = 0;
    v11 = a2[3];
    v12 = a3[3];
    v14 = a4[2];
    v13 = a4[3];
    v15 = *a4;
    v16 = *a3;
    v17 = vdup_n_s32(0x447FC000u);
    __asm { FMOV            V2.2S, #1.0 }

    v24 = *a2;
    v23 = a2[1];
    do
    {
      if ((v10 | 1) >= v23)
      {
        v25 = v24;
      }

      else
      {
        v25 = (v24 + v11);
      }

      v26 = (v15 + v13);
      if ((v10 | 1) >= v8)
      {
        v26 = v15;
      }

      if (v14 >= 2)
      {
        v29 = 0;
        _D16.i16[0] = *v9;
        __asm { FCVT            S21, H16 }

        _D16.i32[0] = *(v9 + 2);
        _D16 = vrev64_s32(*&vcvtq_f32_f16(_D16));
        _H17 = *(v9 + 3);
        __asm { FCVT            S17, H17 }

        _H18 = *(v9 + 6);
        __asm { FCVT            S18, H18 }

        _D19.i32[0] = *(v9 + 2);
        v34 = vcvtq_f32_f16(_D19).u64[0];
        _D19.i16[0] = *(v9 + 7);
        __asm { FCVT            S19, H19 }

        _D19 = vdup_lane_s32(_D19, 0);
        v35 = vrev64_s32(v34);
        _D21 = vdup_lane_s32(_D21, 0);
        v36 = v16;
        v37 = v25;
        v38 = v24;
        v28 = v15;
        do
        {
          v39.i32[0] = *v36;
          v39.i32[1] = v36[1];
          v40.i32[0] = *v38;
          v40.i32[1] = v38[1];
          v41.i32[0] = *v37;
          v41.i32[1] = v37[1];
          v42 = vsub_f32(vdiv_f32(vcvt_f32_u32(vshr_n_u32(v40, 6uLL)), v17), _D21);
          _D22 = vsub_f32(vdiv_f32(vcvt_f32_u32(vshr_n_u32(v39, 6uLL)), v17), _D16);
          v44 = vmul_n_f32(vsub_f32(vdiv_f32(vcvt_f32_u32(vshr_n_u32(v41, 6uLL)), v17), _D21), _S17);
          __asm
          {
            FMLA            S26, S18, V22.S[1]
            FMLA            S27, S18, V22.S[1]
          }

          v47 = vdup_lane_s32(v44, 0);
          v48 = vmul_n_f32(v42, _S17);
          v49 = __PAIR64__(v44.u32[1], _S26);
          __asm { FMLA            S29, S18, V22.S[1] }

          v51 = __PAIR64__(v48.u32[1], _S29);
          v47.i32[0] = _S27;
          __asm { FMLA            S27, S18, V22.S[1] }

          v53 = vdup_lane_s32(v48, 0);
          v53.i32[0] = _S27;
          *v26++ = *&vorr_s8(vorr_s8(vshl_u32(vcvt_u32_f32(vrndx_f32(vmul_f32(vmaxnm_f32(vminnm_f32(vmla_f32(v49, v35, _D22), _D2), 0), v17))), 0x140000000ALL), vcvt_u32_f32(vrndx_f32(vmul_f32(vmaxnm_f32(vminnm_f32(vmla_n_f32(v44, _D19, _D22.f32[0]), _D2), 0), v17)))), vshl_u32(vcvt_u32_f32(vrndx_f32(vmul_f32(vmaxnm_f32(vminnm_f32(vrev64_s32(vmla_f32(v47, v35, _D22)), _D2), 0), v17))), 0xA00000014)) | 0xC0000000C0000000;
          *v28++ = *&vorr_s8(vorr_s8(vshl_u32(vcvt_u32_f32(vrndx_f32(vmul_f32(vmaxnm_f32(vminnm_f32(vmla_f32(v51, v35, _D22), _D2), 0), v17))), 0x140000000ALL), vcvt_u32_f32(vrndx_f32(vmul_f32(vmaxnm_f32(vminnm_f32(vmla_n_f32(v48, _D19, _D22.f32[0]), _D2), 0), v17)))), vshl_u32(vcvt_u32_f32(vrndx_f32(vmul_f32(vmaxnm_f32(vminnm_f32(vrev64_s32(vmla_f32(v53, v35, _D22)), _D2), 0), v17))), 0xA00000014)) | 0xC0000000C0000000;
          v27 = v29 + 2;
          v54 = v29 + 4;
          v38 += 2;
          v37 += 2;
          v36 += 2;
          v29 += 2;
        }

        while (v54 <= v14);
      }

      else
      {
        v27 = 0;
        v28 = v15;
      }

      if (v27 < v14)
      {
        v55 = (v25[v27] >> 6) / 1023.0;
        v56 = &v16[v27];
        v57.i32[0] = *v56;
        v57.i32[1] = v56[1];
        _D19.i16[0] = *v9;
        __asm { FCVT            S19, H19 }

        _H20 = *(v9 + 3);
        __asm { FCVT            S20, H20 }

        v60.f32[0] = (((v24[v27] >> 6) / 1023.0) - *_D19.i32) * _S20;
        _H21 = *(v9 + 6);
        __asm { FCVT            S21, H21 }

        _H22 = *(v9 + 7);
        __asm { FCVT            S22, H22 }

        v65 = (v55 - *_D19.i32) * _S20;
        _D19.i32[0] = *(v9 + 2);
        v66 = vcvtq_f32_f16(_D19).u64[0];
        _D18 = vsub_f32(vdiv_f32(vcvt_f32_u32(vrev64_s32(vshr_n_u32(v57, 6uLL))), v17), v66);
        v66.i32[0] = *(v9 + 2);
        _D19 = vcvtq_f32_f16(v66).u64[0];
        v68 = v60.f32[0] + (_D18.f32[0] * _S21);
        __asm { FMLA            S23, S22, V18.S[1] }

        v70.f32[0] = v65;
        v70.f32[1] = v65 + (_D18.f32[0] * _S21);
        __asm { FMLA            S17, S22, V18.S[1] }

        LODWORD(v56) = rintf(fmaxf(fminf(_S17, 1.0), 0.0) * 1023.0);
        v72 = vshl_u32(vcvt_u32_f32(vrndx_f32(vmul_f32(vmaxnm_f32(vminnm_f32(vmla_f32(v70, _D19, _D18), _D2), 0), v17))), 0xA00000014);
        _D21 = vdup_lane_s32(v72, 1);
        v60.f32[1] = v68;
        v73 = vshl_u32(vcvt_u32_f32(vrndx_f32(vmul_f32(vmaxnm_f32(vminnm_f32(vmla_f32(v60, _D19, _D18), _D2), 0), v17))), 0xA00000014);
        *v26 = vorr_s8(v72, _D21).u32[0] | v56 | 0xC0000000;
        _D16 = vorr_s8(v73, vdup_lane_s32(v73, 1));
        *v28 = _D16.i32[0] | rintf(fmaxf(fminf(_S23, 1.0), 0.0) * 1023.0) | 0xC0000000;
      }

      v24 += v11;
      v16 = (v16 + v12);
      v15 = (v15 + 2 * v13);
      v10 += 2;
    }

    while (v10 < v8);
  }

  return 0;
}

uint64_t ConvertXF20toRGB16f(unsigned __int16 **a1, unsigned __int16 **a2, void *a3, __int16 *a4, uint64_t a5)
{
  VectorLevel = ImageIOSIMD_GetVectorLevel(a1, a2);
  if (VectorLevel)
  {
    return xf20toRGB16f<(ImageIOVectorLevel)1>::operator()(&v11, a1, a2, a3, a4);
  }

  xf20toRGB16f<(ImageIOVectorLevel)0>::operator()(VectorLevel, a1, a2, a3, a4);
  return 0;
}

uint64_t ConvertXF20toRGBA1010102(unsigned __int16 **a1, unsigned __int16 **a2, unint64_t **a3, char *a4, uint64_t a5)
{
  VectorLevel = ImageIOSIMD_GetVectorLevel(a1, a2);
  if (VectorLevel)
  {
    return xf20toRGBA1010102<(ImageIOVectorLevel)1>::operator()(&v11, a1, a2, a3, a4);
  }

  xf20toRGBA1010102<(ImageIOVectorLevel)0>::operator()(VectorLevel, a1, a2, a3, a4);
  return 0;
}

void *GetXF20toRGB16fConversionInfo(int a1, int a2)
{
  v2 = &kDefaultXF20ToRGB16fConversion;
  if (a2)
  {
    v2 = &kXF20ToRGB16fConversion_Rec601_VideoRange;
  }

  v3 = &kXF20ToRGB16fConversion_Rec2020_FullRange;
  if (a2)
  {
    v3 = &kXF20ToRGB16fConversion_Rec2020_VideoRange;
  }

  v4 = &kXF20ToRGB16fConversion_Rec709_FullRange;
  if (a2)
  {
    v4 = &kXF20ToRGB16fConversion_Rec709_VideoRange;
  }

  if (a1 != 1)
  {
    v4 = 0;
  }

  if ((a1 - 9) >= 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  if ((a1 - 5) >= 2)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

uint64_t xf20toRGB16f<(ImageIOVectorLevel)1>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 *a5)
{
  v116 = *MEMORY[0x1E69E9840];
  v111 = 0uLL;
  VEC::xf20Constants::xf20Constants(&v111, a5);
  v8 = *a2;
  v9 = *a3;
  v11 = *a4;
  v10 = *(a4 + 8);
  v12 = vdupq_lane_s32(*(&v111 + 6), 0);
  v13 = *(a4 + 16);
  v14 = vrev32q_s16(v12);
  v15 = vdupq_lane_s16(*(&v111 + 6), 2);
  v16 = vdupq_lane_s16(*(&v111 + 6), 3);
  v16.i16[1] = WORD1(v111);
  v17 = vdupq_lane_s32(*v16.i8, 0);
  v16.i16[0] = HIWORD(v111);
  v16.i16[1] = WORD2(v111);
  v18 = vdupq_lane_s32(*v16.i8, 0);
  v90 = v10;
  if (v10 >= 2)
  {
    v19 = 0;
    v93 = *(a3 + 24);
    v94 = *(a2 + 24);
    v91 = v10 >> 1;
    v20 = vdupq_n_s16(0x1401u);
    v92 = *(a4 + 24);
    v21 = vdupq_n_s16(0xBC01u);
    v22 = xmmword_186205D50;
    v23 = xmmword_186205D60;
    v24 = xmmword_186205D70;
    v102 = v12;
    v104 = v15;
    v98 = v17;
    v100 = v14;
    v96 = v18;
    v106 = v21;
    v107 = v20;
    do
    {
      v25 = (v8 + v94);
      v26 = (v11 + v92);
      if (v13 >= 8)
      {
        v27 = 0;
        v30 = v8;
        v29 = v9;
        v28 = v11;
        do
        {
          v31 = *v30++;
          v32 = *&vshrq_n_u16(v31, 6uLL) | __PAIR128__(0x6400640064006400, 0x6400640064006400);
          v33 = *v25++;
          v34 = vmlaq_f16(v21, v20, v32);
          v35 = *&vshrq_n_u16(v33, 6uLL) | __PAIR128__(0x6400640064006400, 0x6400640064006400);
          v36 = *v29++;
          v37 = vmlaq_f16(v21, v20, v35);
          v38 = vmlaq_f16(v21, v20, (*&vshrq_n_u16(v36, 6uLL) | __PAIR128__(0x6400640064006400, 0x6400640064006400)));
          v39 = vmlaq_f16(vmlaq_f16(v15, vrev32q_s16(v38), v14), v38, v12);
          v40 = vmlaq_f16(v18, v38, v17);
          v41 = vtrn2q_s16(v40, v40);
          v42 = vtrn1q_s16(v40, v40);
          v43 = vmlaq_n_f16(v41, v34, *&v111);
          v44 = vmlaq_n_f16(v41, v37, *&v111);
          v45 = vmlaq_n_f16(v39, v34, *&v111);
          v46 = vmlaq_n_f16(v39, v37, *&v111);
          v124.val[1] = vmlaq_n_f16(v42, v34, *&v111);
          v121.val[1] = vmlaq_n_f16(v42, v37, *&v111);
          v117.val[0] = vzip2q_s16(v43, v45);
          v124.val[0] = vzip1q_s16(v43, v45);
          v47 = vqtbl2q_s8(v124, v22);
          v117.val[1] = v124.val[1];
          v124.val[0] = vextq_s8(v124.val[0], v117.val[0], 0xCuLL);
          *v28 = v47;
          v28[1] = vqtbl2q_s8(v124, v24);
          v28[2] = vqtbl2q_s8(v117, v23);
          v28 += 3;
          v117.val[0] = vzip2q_s16(v44, v46);
          v121.val[0] = vzip1q_s16(v44, v46);
          v48 = vqtbl2q_s8(v121, v22);
          v117.val[1] = v121.val[1];
          v121.val[0] = vextq_s8(v121.val[0], v117.val[0], 0xCuLL);
          *v26 = v48;
          v26[1] = vqtbl2q_s8(v121, v24);
          v26[2] = vqtbl2q_s8(v117, v23);
          v26 += 3;
          v49 = v27 + 16;
          v27 += 8;
        }

        while (v49 <= v13);
      }

      else
      {
        v27 = 0;
        v28 = v11;
        v29 = v9;
        v30 = v8;
      }

      if ((v13 & 7) != 0)
      {
        v95 = v13 - v27;
        v109 = 0u;
        __dst = 0u;
        v108 = 0u;
        v50 = 2 * (v13 - v27);
        memcpy(&__dst, v30, v50);
        memcpy(&v109, v25, v50);
        memcpy(&v108, v29, (v50 + 2) & 0xFFFFFFFFFFFFFFFCLL);
        v51 = vmlaq_f16(v106, v107, (*&vshrq_n_u16(__dst, 6uLL) | __PAIR128__(0x6400640064006400, 0x6400640064006400)));
        v52 = vmlaq_f16(v106, v107, (*&vshrq_n_u16(v109, 6uLL) | __PAIR128__(0x6400640064006400, 0x6400640064006400)));
        v53 = vmlaq_f16(v106, v107, (*&vshrq_n_u16(v108, 6uLL) | __PAIR128__(0x6400640064006400, 0x6400640064006400)));
        v54 = vmlaq_f16(vmlaq_f16(v104, vrev32q_s16(v53), v100), v53, v102);
        v55 = vmlaq_f16(v96, v53, v98);
        v56 = vtrn2q_s16(v55, v55);
        v57 = vtrn1q_s16(v55, v55);
        v58 = vmlaq_n_f16(v56, v51, *&v111);
        v59 = vmlaq_n_f16(v56, v52, *&v111);
        v60 = vmlaq_n_f16(v54, v51, *&v111);
        v61 = vmlaq_n_f16(v54, v52, *&v111);
        v125.val[1] = vmlaq_n_f16(v57, v51, *&v111);
        v122.val[1] = vmlaq_n_f16(v57, v52, *&v111);
        v118.val[0] = vzip2q_s16(v58, v60);
        v125.val[0] = vzip1q_s16(v58, v60);
        v62 = vqtbl2q_s8(v125, xmmword_186205D50);
        v118.val[1] = v125.val[1];
        v63 = vqtbl2q_s8(v118, xmmword_186205D60);
        v125.val[0] = vextq_s8(v125.val[0], v118.val[0], 0xCuLL);
        __src = v62;
        v113 = vqtbl2q_s8(v125, xmmword_186205D70);
        v118.val[0] = vzip2q_s16(v59, v61);
        v122.val[0] = vzip1q_s16(v59, v61);
        v64 = vqtbl2q_s8(v122, xmmword_186205D50);
        v118.val[1] = v122.val[1];
        v122.val[0] = vextq_s8(v122.val[0], v118.val[0], 0xCuLL);
        v114 = v63;
        v115[0] = v64;
        v115[1] = vqtbl2q_s8(v122, xmmword_186205D70);
        v115[2] = vqtbl2q_s8(v118, xmmword_186205D60);
        memcpy(v28, &__src, 6 * v95);
        memcpy(v26, v115, 6 * v95);
        v24 = xmmword_186205D70;
        v23 = xmmword_186205D60;
        v22 = xmmword_186205D50;
        v21 = v106;
        v20 = v107;
        v18 = v96;
        v17 = v98;
        v14 = v100;
        v12 = v102;
        v15 = v104;
      }

      v8 = (v8 + 2 * v94);
      v9 = (v9 + v93);
      v11 = (v11 + 2 * v92);
      ++v19;
    }

    while (v19 != v91);
  }

  if (v90)
  {
    if (v13 >= 8)
    {
      v66 = 0;
      v67 = vdupq_n_s16(0x1401u);
      v68 = vdupq_n_s16(0xBC01u);
      do
      {
        v69 = *v8++;
        v70 = vmlaq_f16(v68, v67, (*&vshrq_n_u16(v69, 6uLL) | __PAIR128__(0x6400640064006400, 0x6400640064006400)));
        v71 = *v9++;
        v72 = vmlaq_f16(v68, v67, (*&vshrq_n_u16(v71, 6uLL) | __PAIR128__(0x6400640064006400, 0x6400640064006400)));
        v73 = vmlaq_f16(vmlaq_f16(v15, vrev32q_s16(v72), v14), v72, v12);
        v74 = vmlaq_f16(v18, v72, v17);
        v75 = vmlaq_n_f16(vtrn2q_s16(v74, v74), v70, *&v111);
        v76 = vmlaq_n_f16(v73, v70, *&v111);
        v126.val[1] = vmlaq_n_f16(vtrn1q_s16(v74, v74), v70, *&v111);
        v123.val[0] = vzip2q_s16(v75, v76);
        v126.val[0] = vzip1q_s16(v75, v76);
        v77 = vqtbl2q_s8(v126, xmmword_186205D50);
        v123.val[1] = v126.val[1];
        v126.val[0] = vextq_s8(v126.val[0], v123.val[0], 0xCuLL);
        *v11 = v77;
        v11[1] = vqtbl2q_s8(v126, xmmword_186205D70);
        v11[2] = vqtbl2q_s8(v123, xmmword_186205D60);
        v11 += 3;
        v65 = v66 + 8;
        v78 = v66 + 16;
        v66 += 8;
      }

      while (v78 <= v13);
    }

    else
    {
      v65 = 0;
    }

    if ((v13 & 7) != 0)
    {
      v79 = v13 - v65;
      v109 = 0u;
      __dst = 0u;
      v80 = 2 * (v13 - v65);
      v103 = v12;
      v105 = v15;
      v99 = v17;
      v101 = v14;
      v97 = v18;
      memcpy(&__dst, v8, v80);
      memcpy(&v109, v9, (v80 + 2) & 0xFFFFFFFFFFFFFFFCLL);
      v81 = vdupq_n_s16(0x1401u);
      v82 = vdupq_n_s16(0xBC01u);
      v83 = vmlaq_f16(v82, v81, (*&vshrq_n_u16(__dst, 6uLL) | __PAIR128__(0x6400640064006400, 0x6400640064006400)));
      v84 = vmlaq_f16(v82, v81, (*&vshrq_n_u16(v109, 6uLL) | __PAIR128__(0x6400640064006400, 0x6400640064006400)));
      v85 = vmlaq_f16(v97, v84, v99);
      v86 = vmlaq_n_f16(vtrn2q_s16(v85, v85), v83, *&v111);
      v87 = vmlaq_n_f16(vmlaq_f16(vmlaq_f16(v105, vrev32q_s16(v84), v101), v84, v103), v83, *&v111);
      v119.val[1] = vmlaq_n_f16(vtrn1q_s16(v85, v85), v83, *&v111);
      v120.val[0] = vzip2q_s16(v86, v87);
      v119.val[0] = vzip1q_s16(v86, v87);
      v88 = vqtbl2q_s8(v119, xmmword_186205D50);
      v120.val[1] = v119.val[1];
      v119.val[0] = vextq_s8(v119.val[0], v120.val[0], 0xCuLL);
      __src = v88;
      v113 = vqtbl2q_s8(v119, xmmword_186205D70);
      v114 = vqtbl2q_s8(v120, xmmword_186205D60);
      memcpy(v11, &__src, 6 * v79);
    }
  }

  return 0;
}

uint64_t xf20toRGBA1010102<(ImageIOVectorLevel)1>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 *a5)
{
  v133[0] = 0;
  v133[1] = 0;
  VEC::xf20Constants::xf20Constants(v133, a5);
  v8 = *a2;
  v9 = *a3;
  v11 = *a4;
  v10 = *(a4 + 8);
  v12 = vdupq_lane_s32(*(v133 + 6), 0);
  v13 = *(a4 + 16);
  v14 = vrev32q_s16(v12);
  v15 = vdupq_lane_s16(*(v133 + 6), 2);
  v16 = vdupq_lane_s16(*(v133 + 6), 3);
  v16.i16[1] = WORD1(v133[0]);
  v17 = vdupq_lane_s32(*v16.i8, 0);
  v16.i16[0] = HIWORD(v133[1]);
  v16.i16[1] = WORD2(v133[0]);
  v18 = vdupq_lane_s32(*v16.i8, 0);
  v108 = v10;
  if (v10 >= 2)
  {
    v19 = 0;
    v111 = *(a3 + 24);
    v112 = *(a2 + 24);
    v109 = v10 >> 1;
    v20 = vdupq_n_s16(0x1401u);
    v21 = vdupq_n_s16(0xBC01u);
    v22 = vdupq_n_s16(0x63FEu);
    v110 = *(a4 + 24);
    v23.i64[0] = 0x3C003C003C003C00;
    v23.i64[1] = 0x3C003C003C003C00;
    v24.i64[0] = 0x300000003;
    v24.i64[1] = 0x300000003;
    v120 = v12;
    v122 = v15;
    v116 = v17;
    v118 = v14;
    v114 = v18;
    v124 = v21;
    v125 = v20;
    v126 = v22;
    do
    {
      v25 = (v8 + v112);
      v26 = (v11 + v110);
      if (v13 >= 8)
      {
        v31 = 0;
        v32 = *v133;
        v30 = v8;
        v29 = v9;
        v28 = v11;
        do
        {
          v33 = *v30++;
          v34 = vmlaq_f16(v21, v20, (*&vshrq_n_u16(v33, 6uLL) | __PAIR128__(0x6400640064006400, 0x6400640064006400)));
          v35 = *v25++;
          v36 = vmlaq_f16(v21, v20, (*&vshrq_n_u16(v35, 6uLL) | __PAIR128__(0x6400640064006400, 0x6400640064006400)));
          v37 = *v29++;
          v38 = vmlaq_f16(v21, v20, (*&vshrq_n_u16(v37, 6uLL) | __PAIR128__(0x6400640064006400, 0x6400640064006400)));
          v39 = vmlaq_f16(vmlaq_f16(v15, vrev32q_s16(v38), v14), v38, v12);
          v40 = vmlaq_f16(v18, v38, v17);
          v41 = vtrn2q_s16(v40, v40);
          v42 = vtrn1q_s16(v40, v40);
          v43 = vmlaq_n_f16(v39, v34, v32);
          v44 = vmlaq_n_f16(v42, v34, v32);
          v45 = vcvtnq_u16_f16(vmulq_f16(vminq_f16(vmlaq_n_f16(v41, v34, v32), v23), v22));
          v46 = vcvtnq_u16_f16(vmulq_f16(vminq_f16(v43, v23), v22));
          v47 = vcvtnq_u16_f16(vmulq_f16(vminq_f16(v44, v23), v22));
          *v28 = vsliq_n_s32(vmovl_u16(*v47.i8), vsliq_n_s32(vmovl_u16(*v46.i8), vsliq_n_s32(vmovl_u16(*v45.i8), v24, 0xAuLL), 0xAuLL), 0xAuLL);
          v28[1] = vsliq_n_s32(vmovl_high_u16(v47), vsliq_n_s32(vmovl_high_u16(v46), vsliq_n_s32(vmovl_high_u16(v45), v24, 0xAuLL), 0xAuLL), 0xAuLL);
          v28 += 2;
          v48 = vcvtnq_u16_f16(vmulq_f16(vminq_f16(vmlaq_n_f16(v41, v36, v32), v23), v22));
          v49 = vcvtnq_u16_f16(vmulq_f16(vminq_f16(vmlaq_n_f16(v39, v36, v32), v23), v22));
          v50 = vcvtnq_u16_f16(vmulq_f16(vminq_f16(vmlaq_n_f16(v42, v36, v32), v23), v22));
          *v26 = vsliq_n_s32(vmovl_u16(*v50.i8), vsliq_n_s32(vmovl_u16(*v49.i8), vsliq_n_s32(vmovl_u16(*v48.i8), v24, 0xAuLL), 0xAuLL), 0xAuLL);
          v26[1] = vsliq_n_s32(vmovl_high_u16(v50), vsliq_n_s32(vmovl_high_u16(v49), vsliq_n_s32(vmovl_high_u16(v48), v24, 0xAuLL), 0xAuLL), 0xAuLL);
          v26 += 2;
          v27 = v31 + 8;
          v51 = v31 + 16;
          v31 += 8;
        }

        while (v51 <= v13);
      }

      else
      {
        v27 = 0;
        v28 = v11;
        v29 = v9;
        v30 = v8;
      }

      if ((v13 & 7) != 0)
      {
        v113 = v13 - v27;
        v131 = 0u;
        __dst = 0u;
        v130 = 0u;
        v52 = 2 * (v13 - v27);
        memcpy(&__dst, v30, v52);
        memcpy(&v131, v25, v52);
        memcpy(&v130, v29, (v52 + 2) & 0xFFFFFFFFFFFFFFFCLL);
        v53 = vmlaq_f16(v124, v125, (*&vshrq_n_u16(__dst, 6uLL) | __PAIR128__(0x6400640064006400, 0x6400640064006400)));
        v54 = vmlaq_f16(v124, v125, (*&vshrq_n_u16(v131, 6uLL) | __PAIR128__(0x6400640064006400, 0x6400640064006400)));
        v55 = vmlaq_f16(v124, v125, (*&vshrq_n_u16(v130, 6uLL) | __PAIR128__(0x6400640064006400, 0x6400640064006400)));
        v56 = vmlaq_f16(vmlaq_f16(v122, vrev32q_s16(v55), v118), v55, v120);
        v57 = vmlaq_f16(v114, v55, v116);
        v58 = vtrn2q_s16(v57, v57);
        v59 = vtrn1q_s16(v57, v57);
        v60 = vmlaq_n_f16(v58, v53, *v133);
        v61 = vmlaq_n_f16(v56, v53, *v133);
        v62 = vmlaq_n_f16(v59, v53, *v133);
        v53.i64[0] = 0x3C003C003C003C00;
        v53.i64[1] = 0x3C003C003C003C00;
        v63 = vcvtnq_u16_f16(vmulq_f16(vminq_f16(v60, v53), v126));
        v64.i64[0] = 0x3C003C003C003C00;
        v64.i64[1] = 0x3C003C003C003C00;
        v65 = vcvtnq_u16_f16(vmulq_f16(vminq_f16(v61, v64), v126));
        v61.i64[0] = 0x3C003C003C003C00;
        v61.i64[1] = 0x3C003C003C003C00;
        v66 = vcvtnq_u16_f16(vmulq_f16(vminq_f16(v62, v61), v126));
        v67.i64[0] = 0x300000003;
        v67.i64[1] = 0x300000003;
        __src = vsliq_n_s32(vmovl_u16(*v66.i8), vsliq_n_s32(vmovl_u16(*v65.i8), vsliq_n_s32(vmovl_u16(*v63.i8), v67, 0xAuLL), 0xAuLL), 0xAuLL);
        v129 = vsliq_n_s32(vmovl_high_u16(v66), vsliq_n_s32(vmovl_high_u16(v65), vsliq_n_s32(vmovl_high_u16(v63), v67, 0xAuLL), 0xAuLL), 0xAuLL);
        v63.i64[0] = 0x3C003C003C003C00;
        v63.i64[1] = 0x3C003C003C003C00;
        v68 = vcvtnq_u16_f16(vmulq_f16(vminq_f16(vmlaq_n_f16(v58, v54, *v133), v63), v126));
        v58.i64[0] = 0x3C003C003C003C00;
        v58.i64[1] = 0x3C003C003C003C00;
        v69 = vcvtnq_u16_f16(vmulq_f16(vminq_f16(vmlaq_n_f16(v56, v54, *v133), v58), v126));
        v65.i64[0] = 0x3C003C003C003C00;
        v65.i64[1] = 0x3C003C003C003C00;
        v70 = vcvtnq_u16_f16(vmulq_f16(vminq_f16(vmlaq_n_f16(v59, v54, *v133), v65), v126));
        v60.i64[0] = 0x300000003;
        v60.i64[1] = 0x300000003;
        v127[0] = vsliq_n_s32(vmovl_u16(*v70.i8), vsliq_n_s32(vmovl_u16(*v69.i8), vsliq_n_s32(vmovl_u16(*v68.i8), v60, 0xAuLL), 0xAuLL), 0xAuLL);
        v127[1] = vsliq_n_s32(vmovl_high_u16(v70), vsliq_n_s32(vmovl_high_u16(v69), vsliq_n_s32(vmovl_high_u16(v68), v60, 0xAuLL), 0xAuLL), 0xAuLL);
        memcpy(v28, &__src, 4 * v113);
        memcpy(v26, v127, 4 * v113);
        v24.i64[0] = 0x300000003;
        v24.i64[1] = 0x300000003;
        v23.i64[0] = 0x3C003C003C003C00;
        v23.i64[1] = 0x3C003C003C003C00;
        v20 = v125;
        v22 = v126;
        v15 = v122;
        v21 = v124;
        v18 = v114;
        v17 = v116;
        v14 = v118;
        v12 = v120;
      }

      v8 = (v8 + 2 * v112);
      v9 = (v9 + v111);
      v11 = (v11 + 2 * v110);
      ++v19;
    }

    while (v19 != v109);
  }

  if (v108)
  {
    if (v13 >= 8)
    {
      v72 = 0;
      v73 = vdupq_n_s16(0x1401u);
      v74 = vdupq_n_s16(0xBC01u);
      v75 = *v133;
      v76.i64[0] = 0x3C003C003C003C00;
      v76.i64[1] = 0x3C003C003C003C00;
      v77 = vdupq_n_s16(0x63FEu);
      v78.i64[0] = 0x300000003;
      v78.i64[1] = 0x300000003;
      do
      {
        v79 = *v8++;
        v80 = vmlaq_f16(v74, v73, (*&vshrq_n_u16(v79, 6uLL) | __PAIR128__(0x6400640064006400, 0x6400640064006400)));
        v81 = *v9++;
        v82 = vmlaq_f16(v74, v73, (*&vshrq_n_u16(v81, 6uLL) | __PAIR128__(0x6400640064006400, 0x6400640064006400)));
        v83 = vmlaq_f16(vmlaq_f16(v15, vrev32q_s16(v82), v14), v82, v12);
        v84 = vmlaq_f16(v18, v82, v17);
        v85 = vtrn2q_s16(v84, v84);
        v86 = vmlaq_n_f16(v83, v80, v75);
        v87 = vmlaq_n_f16(vtrn1q_s16(v84, v84), v80, v75);
        v88 = vcvtnq_u16_f16(vmulq_f16(vminq_f16(vmlaq_n_f16(v85, v80, v75), v76), v77));
        v89 = vcvtnq_u16_f16(vmulq_f16(vminq_f16(v86, v76), v77));
        v90 = vcvtnq_u16_f16(vmulq_f16(vminq_f16(v87, v76), v77));
        *v11 = vsliq_n_s32(vmovl_u16(*v90.i8), vsliq_n_s32(vmovl_u16(*v89.i8), vsliq_n_s32(vmovl_u16(*v88.i8), v78, 0xAuLL), 0xAuLL), 0xAuLL);
        v11[1] = vsliq_n_s32(vmovl_high_u16(v90), vsliq_n_s32(vmovl_high_u16(v89), vsliq_n_s32(vmovl_high_u16(v88), v78, 0xAuLL), 0xAuLL), 0xAuLL);
        v11 += 2;
        v71 = v72 + 8;
        v91 = v72 + 16;
        v72 += 8;
      }

      while (v91 <= v13);
    }

    else
    {
      v71 = 0;
    }

    if ((v13 & 7) != 0)
    {
      v92 = v13 - v71;
      v127[0] = 0u;
      __dst = 0u;
      v93 = 2 * (v13 - v71);
      v121 = v12;
      v123 = v15;
      v117 = v17;
      v119 = v14;
      v115 = v18;
      memcpy(v127, v8, v93);
      memcpy(&__dst, v9, (v93 + 2) & 0xFFFFFFFFFFFFFFFCLL);
      v94 = vdupq_n_s16(0x1401u);
      v95 = vdupq_n_s16(0xBC01u);
      v96 = vmlaq_f16(v95, v94, (*&vshrq_n_u16(v127[0], 6uLL) | __PAIR128__(0x6400640064006400, 0x6400640064006400)));
      v97 = vmlaq_f16(v95, v94, (*&vshrq_n_u16(__dst, 6uLL) | __PAIR128__(0x6400640064006400, 0x6400640064006400)));
      v98 = vmlaq_f16(v115, v97, v117);
      v99 = vtrn2q_s16(v98, v98);
      v100 = vmlaq_n_f16(vmlaq_f16(vmlaq_f16(v123, vrev32q_s16(v97), v119), v97, v121), v96, *v133);
      v101 = vmlaq_n_f16(vtrn1q_s16(v98, v98), v96, *v133);
      v97.i64[0] = 0x3C003C003C003C00;
      v97.i64[1] = 0x3C003C003C003C00;
      v102 = vminq_f16(vmlaq_n_f16(v99, v96, *v133), v97);
      v103 = vdupq_n_s16(0x63FEu);
      v104 = vcvtnq_u16_f16(vmulq_f16(v102, v103));
      v105 = vcvtnq_u16_f16(vmulq_f16(vminq_f16(v100, v97), v103));
      v106 = vcvtnq_u16_f16(vmulq_f16(vminq_f16(v101, v97), v103));
      v103.i64[0] = 0x300000003;
      v103.i64[1] = 0x300000003;
      __src = vsliq_n_s32(vmovl_u16(*v106.i8), vsliq_n_s32(vmovl_u16(*v105.i8), vsliq_n_s32(vmovl_u16(*v104.i8), v103, 0xAuLL), 0xAuLL), 0xAuLL);
      v129 = vsliq_n_s32(vmovl_high_u16(v106), vsliq_n_s32(vmovl_high_u16(v105), vsliq_n_s32(vmovl_high_u16(v104), v103, 0xAuLL), 0xAuLL), 0xAuLL);
      memcpy(v11, &__src, 4 * v92);
    }
  }

  return 0;
}

__int16 VEC::xf20Constants::xf20Constants@<H0>(uint64_t a1@<X0>, __int16 *a2@<X1>)
{
  v2 = &kDefaultXF20ToRGB16fConversion;
  if (a2)
  {
    v2 = a2;
  }

  _H0 = v2[3];
  *a1 = _H0;
  _H1 = v2[4];
  *(a1 + 2) = _H1;
  _H2 = *v2;
  __asm
  {
    FCVT            S2, H2
    FCVT            S0, H0
  }

  _H3 = v2[1];
  __asm
  {
    FCVT            S3, H3
    FCVT            S1, H1
  }

  _S1 = (_S1 * _S3) + (_S2 * _S0);
  __asm { FCVT            H1, S1 }

  *(a1 + 4) = -*&_S1;
  LOWORD(_S1) = v2[5];
  *(a1 + 6) = LOWORD(_S1);
  _H4 = v2[6];
  *(a1 + 8) = _H4;
  __asm { FCVT            S4, H4 }

  v18 = (_S3 * _S4) + (_S2 * _S0);
  LOWORD(_S4) = v2[2];
  __asm
  {
    FCVT            S4, H4
    FCVT            S1, H1
  }

  _S1 = v18 + (_S4 * _S1);
  __asm { FCVT            H1, S1 }

  *(a1 + 10) = -*&_S1;
  LOWORD(_S1) = v2[7];
  *(a1 + 12) = LOWORD(_S1);
  __asm { FCVT            S1, H1 }

  _S0 = (_S4 * _S1) + (_S2 * _S0);
  __asm { FCVT            H0, S0 }

  *&result = -*&_S0;
  *(a1 + 14) = *&result;
  return result;
}

void *reallocarray(void *a1, unint64_t a2, unint64_t a3)
{
  if (a2 && (a3 | a2) >> 32 && !is_mul_ok(a2, a3))
  {
    v3 = __error();
    result = 0;
    *v3 = 12;
  }

  else
  {
    v5 = a3 * a2;
    result = malloc_type_realloc(a1, a3 * a2, 0x39EEDECCuLL);
    if (v5 <= 0 && result != 0)
    {
      __break(0x5519u);
    }
  }

  return result;
}

char *_cg_GifMakeMapObject(int a1, char *a2)
{
  v4 = 1;
  do
  {
    v5 = 1 << v4;
    if (v4 > 8)
    {
      break;
    }

    ++v4;
  }

  while (v5 < a1);
  if (v5 != a1)
  {
    return 0;
  }

  v6 = malloc_type_malloc(0x18uLL, 0x1020040D090CC53uLL);
  if (v6)
  {
    v7 = malloc_type_calloc(a1, 3uLL, 0x100004033FC2DF1uLL);
    v8 = 3 * a1;
    v9 = &v7[v8];
    if (!v7)
    {
      v9 = 0;
    }

    if (v7 > v9)
    {
      goto LABEL_18;
    }

    v10 = v7;
    if ((0xAAAAAAAAAAAAAAABLL * (v9 - v7)) < a1)
    {
      goto LABEL_18;
    }

    *(v6 + 2) = v7;
    *v6 = a1;
    if (!v7)
    {
LABEL_19:
      free(v6);
      return 0;
    }

    v11 = 0;
    do
    {
      ++v11;
    }

    while (v11 <= 8 && 1 << v11 < a1);
    if ((*(v6 + 1) = v11, v6[8] = 0, a2) && (&a2[v8] < a2 || (memcpy(v7, a2, 3 * a1), v10 > &v10[v8])) || v6 > v6 + 24)
    {
LABEL_18:
      __break(0x5519u);
      goto LABEL_19;
    }
  }

  return v6;
}

void _cg_GifFreeMapObject(void **a1)
{
  if (a1)
  {
    free(a1[2]);

    free(a1);
  }
}

void GifFreeExtensionFromSavedImage(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    if (*(a1 + 40) >= 1)
    {
      v3 = 0;
      v4 = 8;
      do
      {
        free(*(*(a1 + 48) + v4));
        ++v3;
        v4 += 24;
      }

      while (v3 < *(a1 + 40));
      v2 = *(a1 + 48);
    }

    free(v2);
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }
}

void GifFreeExtensionFromGifFile(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    if (*(a1 + 64) >= 1)
    {
      v3 = 0;
      v4 = 8;
      do
      {
        free(*(*(a1 + 72) + v4));
        ++v3;
        v4 += 24;
      }

      while (v3 < *(a1 + 64));
      v2 = *(a1 + 72);
    }

    free(v2);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }
}

void GifFreeSavedImages(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      v3 = v2 + 56 * *(a1 + 24);
      if (v2 >= v3)
      {
LABEL_14:
        free(v2);
        *(a1 + 24) = 0;
        *(a1 + 56) = 0;
      }

      else
      {
        v4 = *(a1 + 56);
        while (v2 <= v4)
        {
          v5 = v4 + 56;
          if (v4 + 56 > v3)
          {
            break;
          }

          v6 = *(v4 + 16);
          if (v6)
          {
            free(v6[2]);
            free(v6);
            *(v4 + 16) = 0;
          }

          v7 = *(v4 + 32);
          if (v7)
          {
            free(v7);
          }

          if (v4 > v5)
          {
            break;
          }

          GifFreeExtensionFromSavedImage(v4);
          v4 += 56;
          if (v5 >= *(a1 + 56) + 56 * *(a1 + 24))
          {
            v2 = *(a1 + 56);
            goto LABEL_14;
          }
        }

        __break(0x5519u);
      }
    }
  }
}

_OWORD *_cg_EGifOpen(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = malloc_type_malloc(0x70uLL, 0x10A00402F952F05uLL);
  if (!result)
  {
    goto LABEL_11;
  }

  v7 = result;
  if (result >= result + 7)
  {
    goto LABEL_14;
  }

  result[5] = 0u;
  result[6] = 0u;
  result[3] = 0u;
  result[4] = 0u;
  result[1] = 0u;
  result[2] = 0u;
  *result = 0u;
  result = malloc_type_malloc(0x4150uLL, 0x10A0040B4BDD98EuLL);
  if (!result)
  {
    v10 = v7;
LABEL_10:
    free(v10);
LABEL_11:
    v7 = 0;
    if (a3)
    {
      *a3 = 7;
    }

    return v7;
  }

  v8 = result;
  v9 = result + 1045;
  if (result > result + 1045)
  {
    goto LABEL_14;
  }

  bzero(result, 0x4150uLL);
  result = _InitHashTable();
  *(v8 + 2088) = result;
  if (!result)
  {
    free(v7);
    v10 = v8;
    goto LABEL_10;
  }

  if (v8 < v9)
  {
    *(v7 + 12) = v8;
    *(v8 + 5) = 0;
    *v8 = 1;
    *(v8 + 7) = a2;
    *(v7 + 11) = a1;
    *(v8 + 16712) = 0;
    *(v7 + 20) = 0;
    return v7;
  }

LABEL_14:
  __break(0x5519u);
  return result;
}

const char *EGifGetGifVersion(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = *(a1 + 24);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 56);
    do
    {
      v5 = v4 + 56 * v3;
      v6 = *(v5 + 40);
      if (v6 >= 1)
      {
        v7 = (*(v5 + 48) + 16);
        do
        {
          v9 = *v7;
          v7 += 6;
          v8 = v9;
          v10 = (1 << (v9 + 7)) & 0x61;
          if ((v9 - 249) <= 6 && v10 != 0 || v8 == 1)
          {
            *(v1 + 16712) = 1;
          }

          --v6;
        }

        while (v6);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  v13 = *(a1 + 64);
  if (v13 >= 1)
  {
    v14 = (*(a1 + 72) + 16);
    do
    {
      v16 = *v14;
      v14 += 6;
      v15 = v16;
      v17 = (1 << (v16 + 7)) & 0x61;
      if ((v16 - 249) <= 6 && v17 != 0 || v15 == 1)
      {
        *(v1 + 16712) = 1;
      }

      --v13;
    }

    while (v13);
  }

  if (*(v1 + 16712))
  {
    return "GIF89a";
  }

  else
  {
    return "GIF87a";
  }
}

size_t _cg_EGifPutScreenDesc(size_t a1, __int16 a2, __int16 a3, int a4, __int16 a5, int *a6)
{
  v25 = 0;
  v24 = 0;
  v7 = *(a1 + 96);
  if ((*v7 & 2) != 0)
  {
    result = 0;
    v9 = 3;
    goto LABEL_26;
  }

  if (*v7)
  {
    GifVersion = EGifGetGifVersion(a1);
    result = strlen(GifVersion);
    if (GifVersion <= &GifVersion[result])
    {
      v16 = InternalWrite(a1, GifVersion, result);
      if (strlen(GifVersion) != v16)
      {
LABEL_25:
        result = 0;
        v9 = 2;
        goto LABEL_26;
      }

      *a1 = a2;
      *(a1 + 2) = a3;
      *(a1 + 4) = a4;
      *(a1 + 6) = a5;
      if (!a6)
      {
        v18 = 0;
        *(a1 + 16) = 0;
        goto LABEL_14;
      }

      result = *a6;
      v17 = *(a6 + 2);
      if (!v17 || v17 + 3 <= &v17[3 * result] && v17 <= v17 + 3)
      {
        result = _cg_GifMakeMapObject(result, v17);
        *(a1 + 16) = result;
        if (!result)
        {
          v9 = 7;
          goto LABEL_26;
        }

        v18 = 128;
LABEL_14:
        __ptr = a2;
        InternalWrite(a1, &__ptr, 2);
        v27 = a3;
        InternalWrite(a1, &v27, 2);
        if (a6)
        {
          v19 = (a6[1] + 255) | v18 | (16 * a4 + 240);
          LOBYTE(v24) = (*(a6 + 4) - 1) | v18 | (16 * a4 - 16);
          if (*(a6 + 8) != 1)
          {
            goto LABEL_19;
          }

          v20 = v19 | 8;
        }

        else
        {
          v20 = v18 | (16 * a4 - 16) | 7;
        }

        LOBYTE(v24) = v20;
LABEL_19:
        HIBYTE(v24) = a5;
        v25 = *(a1 + 8);
        InternalWrite(a1, &v24, 3);
        if (!a6 || *a6 < 1)
        {
LABEL_24:
          *v7 |= 2u;
          return 1;
        }

        v21 = 0;
        v22 = 0;
        while (1)
        {
          v23 = (*(a6 + 2) + v21);
          v24 = *v23;
          v25 = *(v23 + 2);
          if (InternalWrite(a1, &v24, 3) != 3)
          {
            goto LABEL_25;
          }

          ++v22;
          v21 += 3;
          if (v22 >= *a6)
          {
            goto LABEL_24;
          }
        }
      }
    }

    __break(0x5519u);
    return result;
  }

  result = 0;
  v9 = 10;
LABEL_26:
  *(a1 + 80) = v9;
  return result;
}

size_t InternalWrite(size_t result, void *__ptr, int64_t a3)
{
  v4 = *(result + 96);
  v5 = *(v4 + 56);
  if (!v5)
  {
    return fwrite(__ptr, 1uLL, a3, *(v4 + 40));
  }

  if ((a3 & 0x80000000) != 0 || a3 > a3)
  {
    __break(0x5519u);
  }

  else
  {

    return v5();
  }

  return result;
}

char *_cg_EGifPutImageDesc(size_t a1, __int16 a2, __int16 a3, int a4, int a5, int a6, int *a7)
{
  v32 = 0;
  v14 = *(a1 + 96);
  if ((*v14 & 4) != 0 && *(v14 + 32) >= 0xFFFF0001uLL)
  {
    result = 0;
    v16 = 4;
LABEL_39:
    *(a1 + 80) = v16;
    return result;
  }

  if ((*v14 & 1) == 0)
  {
    result = 0;
    v16 = 10;
    goto LABEL_39;
  }

  *(a1 + 32) = a2;
  *(a1 + 34) = a3;
  *(a1 + 36) = a4;
  *(a1 + 38) = a5;
  *(a1 + 40) = a6;
  if (a7)
  {
    v17 = *(a1 + 48);
    if (v17)
    {
      _cg_GifFreeMapObject(v17);
      *(a1 + 48) = 0;
    }

    result = *a7;
    v18 = *(a7 + 2);
    if (v18)
    {
      if (v18 + 3 > &v18[3 * result] || v18 > v18 + 3)
      {
        __break(0x5519u);
        return result;
      }
    }

    result = _cg_GifMakeMapObject(result, v18);
    *(a1 + 48) = result;
    if (!result)
    {
      v16 = 7;
      goto LABEL_39;
    }

    v20 = 0x80;
  }

  else
  {
    v20 = 0;
    *(a1 + 48) = 0;
  }

  __ptr = 44;
  InternalWrite(a1, &__ptr, 1);
  v33 = a2;
  InternalWrite(a1, &v33, 2);
  v34 = a3;
  InternalWrite(a1, &v34, 2);
  v35 = a4;
  InternalWrite(a1, &v35, 2);
  v36 = a5;
  InternalWrite(a1, &v36, 2);
  if (a6)
  {
    v21 = 64;
  }

  else
  {
    v21 = 0;
  }

  v22 = v20 | v21;
  if (a7)
  {
    __ptr = (*(a7 + 4) - 1) | v22;
    InternalWrite(a1, &__ptr, 1);
    if (*a7 >= 1)
    {
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v25 = *(a7 + 2) + v23;
        __ptr = *v25;
        v32 = *(v25 + 1);
        if (InternalWrite(a1, &__ptr, 3) != 3)
        {
          break;
        }

        ++v24;
        v23 += 3;
        if (v24 >= *a7)
        {
          goto LABEL_27;
        }
      }

      result = 0;
      v16 = 2;
      goto LABEL_39;
    }
  }

  else
  {
    __ptr = v22;
    InternalWrite(a1, &__ptr, 1);
  }

LABEL_27:
  v26 = *(a1 + 16);
  v27 = *(a1 + 48);
  if (!(v26 | v27))
  {
    result = 0;
    v16 = 5;
    goto LABEL_39;
  }

  *v14 |= 4u;
  *(v14 + 32) = a5 * a4;
  if (v27)
  {
    v26 = v27;
  }

  v28 = *(a1 + 96);
  v29 = *(v26 + 4);
  if (v29 <= 2)
  {
    v30 = 2;
  }

  else
  {
    v30 = v29;
  }

  v37 = v30;
  InternalWrite(a1, &v37, 1);
  *(v28 + 64) = 0;
  *(v28 + 4) = v30;
  *(v28 + 6) = 1 << v30;
  *(v28 + 8) = (1 << v30) + 1;
  *(v28 + 10) = (1 << v30) + 2;
  *(v28 + 12) = v30 + 1;
  *(v28 + 14) = 1 << (v30 + 1);
  *(v28 + 18) = 4097;
  *(v28 + 22) = 0;
  *(v28 + 24) = 0;
  _ClearHashTable(*(v28 + 16704));
  if (!EGifCompressOutput(a1, *(v28 + 6)))
  {
    *(a1 + 80) = 8;
  }

  return 1;
}

uint64_t _cg_EGifPutLine(uint64_t result, unsigned __int8 *a2, unsigned int a3)
{
  v3 = *(result + 96);
  if ((*v3 & 1) == 0)
  {
    v4 = 10;
LABEL_7:
    *(result + 80) = v4;
    return 0;
  }

  if (!a3 && *(result + 36))
  {
    goto LABEL_18;
  }

  v5 = *(v3 + 32);
  if (v5 < a3)
  {
    v4 = 6;
    goto LABEL_7;
  }

  *(v3 + 32) = v5 - a3;
  v6 = &CodeMask[*(v3 + 4)];
  if (v6 < &CodeMask[9] && v6 >= CodeMask)
  {
    if (a3 >= 1)
    {
      v8 = a3;
      v9 = *v6;
      v10 = a2;
      do
      {
        *v10++ &= v9;
        --v8;
      }

      while (v8);
    }

    if ((a3 & 0x80000000) == 0)
    {
      return EGifCompressLine(result, a2, a3);
    }
  }

LABEL_18:
  __break(0x5519u);
  return result;
}

uint64_t EGifCompressLine(uint64_t result, unsigned __int8 *a2, unsigned int a3)
{
  v15 = result;
  v4 = *(result + 96);
  v5 = *(v4 + 16704);
  v6 = *(v4 + 18);
  if (v6 == 4097)
  {
    if (!a3)
    {
LABEL_26:
      __break(0x5519u);
      return result;
    }

    v6 = *a2;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 < a3)
  {
    v8 = &a2[a3];
    v9 = &a2[v7];
    v10 = a3 - v7;
    while (v9 < v8 && v9 >= a2 && v5 <= v5 + 0x8000)
    {
      v11 = *v9;
      result = _ExistsHashTable(v5, v11 | (v6 << 8));
      v12 = result;
      if ((result & 0x80000000) != 0)
      {
        if (!EGifCompressOutput(v15, v6))
        {
          goto LABEL_25;
        }

        v13 = *(v4 + 10);
        if (v13 < 4095)
        {
          ++*(v4 + 10);
          result = _InsertHashTable(v5, v11 | (v6 << 8), v13);
        }

        else
        {
          if (!EGifCompressOutput(v15, *(v4 + 6)))
          {
            goto LABEL_25;
          }

          *(v4 + 10) = *(v4 + 8) + 1;
          v14 = *(v4 + 4) + 1;
          *(v4 + 12) = v14;
          *(v4 + 14) = 1 << v14;
          result = _ClearHashTable(v5);
        }

        v12 = v11;
      }

      ++v9;
      v6 = v12;
      if (!--v10)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_26;
  }

  v12 = v6;
LABEL_20:
  *(v4 + 18) = v12;
  if (*(v4 + 32) || EGifCompressOutput(v15, v12) && EGifCompressOutput(v15, *(v4 + 8)) && EGifCompressOutput(v15, 4096))
  {
    return 1;
  }

LABEL_25:
  result = 0;
  *(v15 + 80) = 8;
  return result;
}

size_t _cg_EGifPutExtension(size_t a1, int a2, unsigned int a3, void *a4)
{
  v13 = 0;
  v12 = 0;
  if ((**(a1 + 96) & 1) == 0)
  {
    v5 = 0;
    *(a1 + 80) = 10;
    return v5;
  }

  if (a2)
  {
    LOBYTE(v12) = 33;
    HIBYTE(v12) = a2;
    v13 = a3;
    p_ptr = &v12;
    v9 = 3;
  }

  else
  {
    __ptr = a3;
    p_ptr = &__ptr;
    v9 = 1;
  }

  result = InternalWrite(a1, p_ptr, v9);
  if ((a3 & 0x80000000) == 0)
  {
    InternalWrite(a1, a4, a3);
    LOBYTE(v12) = 0;
    v5 = 1;
    InternalWrite(a1, &v12, 1);
    return v5;
  }

  __break(0x5519u);
  return result;
}

uint64_t _cg_EGifPutExtensionLeader(size_t a1, char a2)
{
  __ptr[2] = 0;
  if (**(a1 + 96))
  {
    __ptr[0] = 33;
    __ptr[1] = a2;
    InternalWrite(a1, __ptr, 2);
    return 1;
  }

  else
  {
    v2 = 0;
    *(a1 + 80) = 10;
  }

  return v2;
}

size_t _cg_EGifPutExtensionBlock(size_t a1, unsigned int a2, void *a3)
{
  if (**(a1 + 96))
  {
    __ptr = a2;
    result = InternalWrite(a1, &__ptr, 1);
    if ((a2 & 0x80000000) != 0)
    {
      __break(0x5519u);
    }

    else
    {
      InternalWrite(a1, a3, a2);
      return 1;
    }
  }

  else
  {
    result = 0;
    *(a1 + 80) = 10;
  }

  return result;
}

uint64_t _cg_EGifPutExtensionTrailer(size_t a1)
{
  if (**(a1 + 96))
  {
    __ptr = 0;
    v1 = 1;
    InternalWrite(a1, &__ptr, 1);
  }

  else
  {
    v1 = 0;
    *(a1 + 80) = 10;
  }

  return v1;
}

void _cg_EGifCloseFile(void *a1, int *a2)
{
  if (a1)
  {
    v3 = a1[12];
    if (v3)
    {
      if ((*v3 & 1) == 0)
      {
        if (a2)
        {
          v5 = 10;
LABEL_17:
          *a2 = v5;
          goto LABEL_18;
        }

        goto LABEL_18;
      }

      v6 = *(v3 + 5);
      __ptr = 59;
      InternalWrite(a1, &__ptr, 1);
      v7 = a1[6];
      if (v7)
      {
        _cg_GifFreeMapObject(v7);
        a1[6] = 0;
      }

      v8 = a1[2];
      if (v8)
      {
        _cg_GifFreeMapObject(v8);
        a1[2] = 0;
      }

      v9 = *(v3 + 2088);
      if (v9)
      {
        free(v9);
      }

      free(v3);
      if (v6)
      {
        if (v6 >= &v6[1])
        {
          __break(0x5519u);
          return;
        }

        if (fclose(v6))
        {
          if (a2)
          {
            v5 = 9;
            goto LABEL_17;
          }

LABEL_18:
          free(a1);
          return;
        }
      }

      free(a1);
      if (a2)
      {
        *a2 = 0;
      }
    }
  }
}

uint64_t EGifCompressOutput(uint64_t a1, int a2)
{
  v4 = *(a1 + 96);
  if (a2 == 4096)
  {
    if (*(v4 + 22) < 1)
    {
      LODWORD(v6) = 1;
    }

    else
    {
      v5 = *(v4 + 24);
      LODWORD(v6) = 1;
      do
      {
        if (!EGifBufferedOutput(a1, (v4 + 64), v5))
        {
          LODWORD(v6) = 0;
        }

        v5 = *(v4 + 24) >> 8;
        *(v4 + 24) = v5;
        v7 = (*(v4 + 22) - 8);
        *(v4 + 22) -= 8;
      }

      while (v7 > 0);
    }

    *(v4 + 22) = 0;
    if (EGifBufferedOutput(a1, (v4 + 64), 4096))
    {
      v6 = v6;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v8 = *(v4 + 22);
    v9 = (a2 << v8) | *(v4 + 24);
    *(v4 + 24) = v9;
    v10 = *(v4 + 12) + v8;
    *(v4 + 22) = v10;
    v6 = 1;
    if (v10 >= 8)
    {
      do
      {
        if (EGifBufferedOutput(a1, (v4 + 64), v9))
        {
          v6 = v6;
        }

        else
        {
          v6 = 0;
        }

        v9 = *(v4 + 24) >> 8;
        *(v4 + 24) = v9;
        v11 = (*(v4 + 22) - 8);
        *(v4 + 22) -= 8;
      }

      while (v11 > 7);
    }
  }

  if (a2 <= 4095 && *(v4 + 10) >= *(v4 + 14))
  {
    v12 = *(v4 + 12) + 1;
    *(v4 + 12) = v12;
    *(v4 + 14) = 1 << v12;
  }

  return v6;
}

uint64_t EGifBufferedOutput(uint64_t result, _BYTE *__ptr, int a3)
{
  v4 = result;
  if (a3 == 4096)
  {
    if (!*__ptr || InternalWrite(result, __ptr, *__ptr + 1) == *__ptr + 1)
    {
      *__ptr = 0;
      v5 = 1;
      if (InternalWrite(v4, __ptr, 1) == 1)
      {
        return v5;
      }
    }

    goto LABEL_15;
  }

  v6 = a3;
  v7 = *__ptr;
  if (v7 == 255)
  {
    result = InternalWrite(result, __ptr, 256);
    if (result != *__ptr + 1)
    {
LABEL_15:
      v5 = 0;
      *(v4 + 80) = 2;
      return v5;
    }

    v7 = 0;
  }

  v8 = (v7 + 1);
  *__ptr = v8;
  v9 = &__ptr[v8];
  if (v9 >= __ptr + 256 || v9 < __ptr)
  {
    __break(0x5519u);
    return result;
  }

  *v9 = v6;
  return 1;
}

unint64_t _cg_GifQuantizeBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v184[0] = *MEMORY[0x1E69E9840];
  bzero(v180, 0x2000uLL);
  v23 = *v18;
  result = malloc_type_malloc(0xC0000uLL, 0x1020040EFA1817AuLL);
  v25 = result + 786432;
  if (result)
  {
    v26 = result + 786432;
  }

  else
  {
    v26 = 0;
  }

  v178 = v26;
  if (!result)
  {
    return result;
  }

  v27 = result;
  v28 = 0;
  v29 = v20 * v22;
  v176 = &v16[v29];
  v177 = v16;
  v175 = &v14[v29];
  v174 = &v12[v29];
  v30 = result;
  v173 = &v10[v29];
  do
  {
    *v30 = v28 >> 10;
    *(v30 + 1) = (v28 >> 5) & 0x1F;
    *(v30 + 2) = v28 & 0x1F;
    *(v30 + 8) = 0;
    ++v28;
    v30 += 24;
  }

  while (v28 != 0x8000);
  v31 = v20 * v22;
  v32 = v16;
  v33 = v178;
  v35 = &v14[v29];
  v34 = &v16[v29];
  v37 = &v10[v29];
  v36 = &v12[v29];
  v38 = v8 + v23;
  if (v31 >= 1)
  {
    v39 = v31;
    v40 = v16;
    v41 = v14;
    v42 = v12;
    do
    {
      if (v40 >= v176 || v40 < v16 || v41 >= v175 || v41 < v14 || v42 >= v174 || v42 < v12)
      {
        goto LABEL_237;
      }

      v43 = result + 24 * ((*v40 << 7) & 0x7C00 | (32 * ((*v41 >> 3) & 0x1F)) | (*v42 >> 3));
      v44 = v43 + 24;
      v45 = v43 < result || v44 > v25;
      if (v45 || v43 > v44)
      {
        goto LABEL_237;
      }

      ++*(v43 + 8);
      ++v42;
      ++v41;
      ++v40;
      --v39;
    }

    while (v39);
  }

  v47 = 0;
  for (i = 0; i != 256; ++i)
  {
    v49 = &v180[32 * i];
    *(v49 + 8) = 0;
    v50 = v49 | 3;
    *(v49 + 16) = 0;
    *(v49 + 24) = 0;
    v51 = 3;
    v52 = v47;
    do
    {
      v53 = &v180[v52];
      v54 = &v180[v52] < v50 && v53 >= v49;
      if (!v54)
      {
        goto LABEL_237;
      }

      *v53 = 0;
      v55 = v53 + 3;
      if (v55 >= (v49 | 6) || v55 < v50)
      {
        goto LABEL_237;
      }

      *v55 = -1;
      ++v52;
      --v51;
    }

    while (v51);
    v47 += 32;
  }

  v57 = 0;
  v58 = v27;
  do
  {
    if (v58 < v27 || v58 + 24 > v178 || v58 > v58 + 24)
    {
      goto LABEL_237;
    }

    if (*(v58 + 8) > 0)
    {
      break;
    }

    ++v57;
    v58 += 24;
  }

  while (v57 != 0x8000);
  v59 = &v27[24 * v57];
  if (v59 && (v59 < v27 || v59 + 24 > v25 || v59 > v59 + 24))
  {
    goto LABEL_237;
  }

  v183 = &v27[24 * v57];
  v60 = v59 + 24;
  if (v57 > 0x7FFE)
  {
    v62 = 1;
    v64 = v59;
  }

  else
  {
    v61 = v57 - 0x7FFFLL;
    v62 = 1;
    v63 = v59 + 24;
    v64 = v59;
    do
    {
      if (v63 < v27 || v63 + 24 > v25 || v63 > v63 + 24)
      {
        goto LABEL_237;
      }

      if (*(v63 + 8) >= 1)
      {
        if (v64 + 24 > v60 || v59 > v64)
        {
          goto LABEL_237;
        }

        *(v64 + 16) = v63;
        ++v62;
        v59 = v27;
        v60 = v178;
        v64 = v63;
      }

      v63 += 24;
      v54 = __CFADD__(v61++, 1);
    }

    while (!v54);
  }

  if (v64 + 24 > v60 || v59 > v64)
  {
    goto LABEL_237;
  }

  *(v64 + 16) = 0;
  *&v181[5] = v62;
  v182 = v29;
  v65 = *v18;
  if (*v18 < 2)
  {
    v67 = 1;
    goto LABEL_162;
  }

  v168 = v31;
  v169 = v14;
  v170 = v10;
  v171 = v18;
  v172 = v27;
  v66 = 0;
  v179 = *v18;
  v67 = 1;
  v68 = v180;
  do
  {
    v69 = 0;
    v70 = -1;
    v71 = v181;
    do
    {
      v72 = &v180[32 * v69];
      v73 = v72 + 32;
      if (v72 < v180 || v73 > v184 || v72 > v73)
      {
        goto LABEL_237;
      }

      for (j = 0; j != 3; ++j)
      {
        v77 = &v71[j];
        if (&v71[j] >= (v72 | 6) || v77 < (v72 | 3))
        {
          goto LABEL_237;
        }

        v79 = *v77;
        if (v70 < v79 && *(v72 + 8) >= 2u)
        {
          SortRGBAxis = j;
          v66 = v69;
          v70 = v79;
        }
      }

      ++v69;
      v71 += 32;
    }

    while (v69 != v67);
    if (v70 == -1)
    {
      goto LABEL_160;
    }

    v80 = &v180[32 * v66];
    if (v80 < v180 || v80 + 32 > v184 || v80 > v80 + 32)
    {
      goto LABEL_237;
    }

    v81 = *(v80 + 2);
    v82 = malloc_type_malloc(8 * v81, 0x2004093837F09uLL);
    if (!v82)
    {
      free(v172);
      return 0;
    }

    v83 = v82;
    v84 = &v82[v81];
    v85 = *(v80 + 2);
    if (v85)
    {
      v86 = *(v80 + 3);
      if (v86)
      {
        v87 = v82;
        v88 = 1;
        while (1)
        {
          v89 = v87 + 1;
          v90 = v86 < v86 + 24 && v87 >= v82;
          v91 = !v90 || v89 > v84;
          if (v91 || v87 > v89)
          {
            break;
          }

          *v87++ = v86;
          if (v88 < v85)
          {
            v86 = *(v86 + 16);
            ++v88;
            if (v86)
            {
              continue;
            }
          }

          goto LABEL_103;
        }

LABEL_237:
        __break(0x5519u);
      }
    }

LABEL_103:
    if (v85 > v81)
    {
      goto LABEL_237;
    }

    qsort(v82, v85, 8uLL, SortCmpRtn);
    v93 = (*(v80 + 2) - 1);
    if (*(v80 + 2) != 1)
    {
      v94 = v83 + 1;
      v95 = (*(v80 + 2) - 1);
      while (v94 >= v83 && (v94 + 1) <= v84 && v94 <= v94 + 1 && v94 <= v84)
      {
        *(*(v94 - 1) + 16) = *v94;
        ++v94;
        if (!--v95)
        {
          goto LABEL_113;
        }
      }

      goto LABEL_237;
    }

    v93 = 0;
LABEL_113:
    v96 = &v83[v93];
    if (v96 < v83)
    {
      goto LABEL_237;
    }

    if (v96 + 8 > v84)
    {
      goto LABEL_237;
    }

    if (v96 > v96 + 8)
    {
      goto LABEL_237;
    }

    *(*v96 + 16) = 0;
    if (v83 >= v83 + 1)
    {
      goto LABEL_237;
    }

    if ((v83 + 1) > v84)
    {
      goto LABEL_237;
    }

    v97 = *v83;
    if (*v83 > *v83 + 24)
    {
      goto LABEL_237;
    }

    *(v80 + 3) = v97;
    free(v83);
    v98 = *(v97 + 8);
    v99 = *(v97 + 16);
    if (v99 && (v100 = *(v99 + 8), v101 = (*(v80 + 2) >> 1) - v98 - v100, v101 >= 0))
    {
      v102 = 1;
      v103 = v97;
      while (1)
      {
        v97 = v99;
        v99 = *(v99 + 16);
        if (!v99)
        {
          break;
        }

        ++v102;
        v98 += v100;
        v100 = *(v99 + 8);
        v103 = v97;
        v101 -= v100;
        if (v101 < 0)
        {
          goto LABEL_127;
        }
      }

      v99 = v97;
      v97 = v103;
    }

    else
    {
      v102 = 1;
    }

LABEL_127:
    v104 = SortRGBAxis;
    v105 = (v97 + SortRGBAxis);
    if (v105 >= v97 + 3 || v105 < v97)
    {
      goto LABEL_237;
    }

    v107 = &v180[32 * v67];
    if (v107 < v180 || v107 + 32 > v184 || v107 > v107 + 32)
    {
      goto LABEL_237;
    }

    v108 = 0;
    v109 = 8 * *v105;
    v110 = 8 * *(v99 + SortRGBAxis);
    *(v97 + 16) = 0;
    *(v107 + 2) = v98;
    *(v107 + 3) = v99;
    *(v80 + 2) -= v98;
    *(v107 + 2) = *(v80 + 2) - v102;
    *(v80 + 2) = v102;
    v111 = v80 + 3;
    v112 = v80 + 6;
    v113 = v107 + 3;
    v114 = v107 + 6;
    do
    {
      v115 = &v80[v108];
      v116 = &v80[v108] < v111 && v115 >= v80;
      v117 = &v68[v108 + 32];
      if (!v116 || v117 >= v113 || v117 < v107)
      {
        goto LABEL_237;
      }

      v121 = *v115;
      v120 = v115 + 3;
      *v117 = v121;
      if (v120 >= v112)
      {
        goto LABEL_237;
      }

      if (v120 < v111)
      {
        goto LABEL_237;
      }

      v122 = &v68[v108 + 35];
      if (v122 >= v114 || v122 < v113)
      {
        goto LABEL_237;
      }

      *v122 = *v120;
      ++v108;
    }

    while (v108 != 3);
    v123 = &v107[v104];
    if (&v107[v104] < v107)
    {
      goto LABEL_237;
    }

    v124 = &v113[v104];
    if (&v113[v104] >= v114)
    {
      goto LABEL_237;
    }

    if (v124 < v113)
    {
      goto LABEL_237;
    }

    *v124 += *v123 - v110;
    *v123 = v110;
    v125 = &v80[v104];
    if (&v80[v104] < v80)
    {
      goto LABEL_237;
    }

    v126 = &v111[v104];
    if (v126 >= v112 || v126 < v111)
    {
      goto LABEL_237;
    }

    *v126 = v109 - *v125;
    ++v67;
    v68 += 32;
  }

  while (v67 != v179);
  v67 = v179;
LABEL_160:
  v32 = v177;
  v33 = v178;
  v35 = v175;
  v34 = v176;
  v37 = v173;
  v36 = v174;
  v31 = v168;
  v14 = v169;
  v27 = v172;
  v38 = v8 + v23;
  v18 = v171;
  v65 = *v171;
  v10 = v170;
LABEL_162:
  if (v67 < v65 && v67 < v65)
  {
    v128 = v65 - v67;
    v129 = v8 + 3 * v67;
    while (v129 >= v8 && v129 + 3 <= v38 && v129 <= v129 + 3)
    {
      *(v129 + 2) = 0;
      *v129 = 0;
      v129 += 3;
      if (!--v128)
      {
        goto LABEL_171;
      }
    }

    goto LABEL_237;
  }

LABEL_171:
  v130 = 0;
  v131 = v8 + v67;
  do
  {
    v132 = &v180[32 * v130];
    v133 = v132 + 32;
    if (v132 < v180 || v133 > v184 || v132 > v133)
    {
      goto LABEL_237;
    }

    v136 = *(v132 + 2);
    if (v136 >= 1)
    {
      v137 = *(v132 + 3);
      if (v137)
      {
        v138 = 0;
        v139 = 0;
        v140 = 0;
        do
        {
          *(v137 + 3) = v130;
          v138 += *v137;
          v139 += *(v137 + 1);
          v140 += *(v137 + 2);
          v137 = *(v137 + 16);
        }

        while (v137);
        v141 = 8 * v138;
        v142 = 8 * v139;
        v137 = 8 * v140;
      }

      else
      {
        v142 = 0;
        v141 = 0;
      }

      v143 = (v8 + 3 * v130);
      if (v143 < v8 || (v143 + 3) > v131 || v143 > v143 + 3)
      {
        goto LABEL_237;
      }

      *v143 = v141 / v136;
      v143[1] = v142 / v136;
      v143[2] = v137 / v136;
    }

    ++v130;
  }

  while (v130 != v67);
  if (v31 >= 1)
  {
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v147 = v32;
    v148 = v14;
    v149 = v12;
    v150 = v10;
    while (v147 < v34 && v147 >= v32 && v148 < v35 && v148 >= v14 && v149 < v36 && v149 >= v12)
    {
      v151 = &v27[24 * ((*v147 << 7) & 0x7C00 | (32 * ((*v148 >> 3) & 0x1F)) | (*v149 >> 3))];
      v152 = v151 + 24;
      v153 = v151 < v27 || v152 > v33;
      v154 = v153 || v151 > v152;
      v155 = v154 || v150 >= v37;
      if (v155 || v150 < v10)
      {
        break;
      }

      v157 = v151[3];
      *v150 = v157;
      v158 = (v8 + 3 * v157);
      v159 = v158 + 3;
      v160 = v158 < v8 || v159 > v131;
      if (v160 || v158 > v159)
      {
        break;
      }

      v162 = *v147++;
      v163 = *v158 - v162;
      if (v163 < 0)
      {
        v163 = -v163;
      }

      if (v146 <= v163)
      {
        v146 = v163;
      }

      v164 = *v148++;
      v165 = v158[1] - v164;
      if (v165 < 0)
      {
        v165 = -v165;
      }

      if (v145 <= v165)
      {
        v145 = v165;
      }

      v166 = *v149++;
      v167 = v158[2] - v166;
      if (v167 < 0)
      {
        v167 = -v167;
      }

      if (v144 <= v167)
      {
        v144 = v167;
      }

      ++v150;
      if (!--v31)
      {
        goto LABEL_234;
      }
    }

    goto LABEL_237;
  }

  v146 = 0;
  v145 = 0;
  v144 = 0;
LABEL_234:
  fprintf(*MEMORY[0x1E69E9848], "Quantization L(0) errors: Red = %d, Green = %d, Blue = %d.\n", v146, v145, v144);
  free(v27);
  *v18 = v67;
  return 1;
}

unint64_t *SortCmpRtn(unint64_t *result, void *a2)
{
  v2 = *result;
  v3 = *result + 3;
  v4 = *result + SortRGBAxis;
  if (v4 < v3 && v4 >= v2)
  {
    v6 = (SortRGBAxis + 1) % 3u;
    v7 = (v2 + v6);
    if (v2 + v6 < v3 && v7 >= v2)
    {
      v9 = (SortRGBAxis + 2) % 3u;
      v10 = (v2 + v9);
      if (v2 + v9 < v3 && v10 >= v2)
      {
        return (((*(v2 + SortRGBAxis) << 16) | (*v7 << 8) | *v10) - ((*(*a2 + SortRGBAxis) << 16) | (*(*a2 + v6) << 8) | *(*a2 + v9)));
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t _cg_DGifGetScreenDesc(uint64_t a1)
{
  v14 = 0;
  __ptr = 0;
  if ((**(a1 + 96) & 8) == 0)
  {
    result = 0;
    v3 = 111;
LABEL_3:
    *(a1 + 80) = v3;
    return result;
  }

  result = DGifGetWord(a1, a1);
  if (result)
  {
    result = DGifGetWord(a1, (a1 + 2));
    if (result)
    {
      v4 = *(a1 + 96);
      v5 = *(v4 + 48);
      if (v5)
      {
        v6 = v5(a1, &__ptr, 3);
      }

      else
      {
        v6 = fread(&__ptr, 1uLL, 3uLL, *(v4 + 40));
      }

      if (v6 == 3)
      {
        v7 = __ptr;
        *(a1 + 4) = ((__ptr >> 4) & 7) + 1;
        *(a1 + 6) = HIBYTE(__ptr);
        *(a1 + 8) = v14;
        if ((v7 & 0x80000000) == 0)
        {
          *(a1 + 16) = 0;
          return 1;
        }

        result = _cg_GifMakeMapObject(1 << ((v7 & 7) + 1), 0);
        *(a1 + 16) = result;
        if (!result)
        {
          v3 = 109;
          goto LABEL_3;
        }

        *(result + 8) = (v7 & 8) != 0;
        v8 = *result;
        v9 = 3 * v8;
        v10 = *(a1 + 96);
        v11 = *(v10 + 48);
        if (v11)
        {
          if ((v8 & 0x80000000) == 0)
          {
            v12 = v11(a1, *(result + 16), 3 * v8);
            v9 = v9;
            goto LABEL_22;
          }
        }

        else if ((v8 & 0x80000000) == 0)
        {
          v12 = fread(*(result + 16), 1uLL, 3 * v8, *(v10 + 40));
LABEL_22:
          if (v12 != v9)
          {
            _cg_GifFreeMapObject(*(a1 + 16));
            result = 0;
            *(a1 + 16) = 0;
            v3 = 102;
            goto LABEL_3;
          }

          return 1;
        }

        __break(0x5519u);
      }

      else
      {
        *(a1 + 80) = 102;
        _cg_GifFreeMapObject(*(a1 + 16));
        result = 0;
        *(a1 + 16) = 0;
      }
    }
  }

  return result;
}

void _cg_DGifOpen(uint64_t a1, int (*a2)(uint64_t, _DWORD *, uint64_t), int *a3)
{
  v6 = malloc_type_malloc(0x70uLL, 0x10A00402F952F05uLL);
  if (!v6)
  {
    if (!a3)
    {
      return;
    }

    v12 = 109;
LABEL_10:
    *a3 = v12;
    return;
  }

  v7 = v6;
  *(__ptr + 3) = 0;
  __ptr[0] = 0;
  if (v6 >= v6 + 7)
  {
    goto LABEL_31;
  }

  v6[5] = 0u;
  v6[6] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  *v6 = 0u;
  v8 = malloc_type_calloc(1uLL, 0x4150uLL, 0x10A0040B4BDD98EuLL);
  if (!v8)
  {
    if (a3)
    {
      *a3 = 109;
    }

    goto LABEL_25;
  }

  v9 = v8;
  v10 = v8 + 16720;
  if (v8 > v8 + 16720 || (bzero(v8, 0x4150uLL), v9 >= v10))
  {
LABEL_31:
    __break(0x5519u);
    return;
  }

  *v9 = 8;
  *(v9 + 5) = 0;
  *(v9 + 6) = a2;
  *(v7 + 88) = a1;
  *(v7 + 96) = v9;
  *(v7 + 104) = 0;
  if (a2)
  {
    v11 = a2(v7, __ptr, 6);
  }

  else
  {
    v11 = fread(__ptr, 1uLL, 6uLL, 0);
  }

  if (v11 != 6)
  {
    if (a3)
    {
      v14 = 102;
      goto LABEL_23;
    }

LABEL_24:
    free(v9);
LABEL_25:
    free(v7);
    return;
  }

  BYTE2(__ptr[1]) = 0;
  if (LOWORD(__ptr[0]) != 18759 || BYTE2(__ptr[0]) != 70)
  {
    if (a3)
    {
      v14 = 103;
LABEL_23:
      *a3 = v14;
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if (_cg_DGifGetScreenDesc(v7))
  {
    *(v7 + 80) = 0;
    v9[16712] = HIBYTE(__ptr[0]) == 57;
    return;
  }

  free(v9);
  free(v7);
  if (a3)
  {
    v12 = 104;
    goto LABEL_10;
  }
}

uint64_t DGifGetWord(uint64_t a1, _WORD *a2)
{
  __ptr = 0;
  v4 = *(a1 + 96);
  v5 = *(v4 + 48);
  if (v5)
  {
    v6 = v5(a1, &__ptr, 2);
  }

  else
  {
    v6 = fread(&__ptr, 1uLL, 2uLL, *(v4 + 40));
  }

  if (v6 == 2)
  {
    *a2 = __ptr;
    return 1;
  }

  else
  {
    result = 0;
    *(a1 + 80) = 102;
  }

  return result;
}

uint64_t _cg_DGifGetRecordType(uint64_t a1, int *a2)
{
  v3 = *(a1 + 96);
  if ((*v3 & 8) != 0)
  {
    __ptr = 0;
    v7 = *(v3 + 48);
    if (v7)
    {
      v8 = v7(a1, &__ptr, 1);
    }

    else
    {
      v8 = fread(&__ptr, 1uLL, 1uLL, *(v3 + 40));
    }

    if (v8 == 1)
    {
      switch(__ptr)
      {
        case '!':
          v9 = 3;
          break;
        case ';':
          v9 = 4;
          break;
        case ',':
          v9 = 2;
          break;
        default:
          result = 0;
          *a2 = 0;
          v5 = 107;
          goto LABEL_12;
      }

      *a2 = v9;
      return 1;
    }

    result = 0;
    v5 = 102;
  }

  else
  {
    result = 0;
    v5 = 111;
  }

LABEL_12:
  *(a1 + 80) = v5;
  return result;
}

unint64_t _cg_DGifGetImageDesc(uint64_t a1)
{
  v25 = 0;
  __ptr = 0;
  v2 = *(a1 + 96);
  if ((*v2 & 8) == 0)
  {
    result = 0;
    v4 = 111;
LABEL_3:
    *(a1 + 80) = v4;
    return result;
  }

  result = DGifGetWord(a1, (a1 + 32));
  if (result)
  {
    result = DGifGetWord(a1, (a1 + 34));
    if (result)
    {
      result = DGifGetWord(a1, (a1 + 36));
      if (result)
      {
        result = DGifGetWord(a1, (a1 + 38));
        if (result)
        {
          v5 = *(a1 + 96);
          v6 = *(v5 + 48);
          if (v6)
          {
            v7 = v6(a1, &__ptr, 1);
          }

          else
          {
            v7 = fread(&__ptr, 1uLL, 1uLL, *(v5 + 40));
          }

          if (v7 == 1)
          {
            v8 = __ptr;
            *(a1 + 40) = (__ptr & 0x40) != 0;
            v9 = *(a1 + 48);
            if (v9)
            {
              _cg_GifFreeMapObject(v9);
              *(a1 + 48) = 0;
              if ((__ptr & 0x80) == 0)
              {
                goto LABEL_26;
              }
            }

            else if ((v8 & 0x80) == 0)
            {
              goto LABEL_26;
            }

            result = _cg_GifMakeMapObject(1 << ((v8 & 7) + 1), 0);
            *(a1 + 48) = result;
            if (!result)
            {
              goto LABEL_48;
            }

            v10 = *result;
            v11 = (3 * v10);
            v12 = *(a1 + 96);
            v13 = *(v12 + 48);
            if (v13)
            {
              if ((v10 & 0x80000000) != 0)
              {
                goto LABEL_49;
              }

              v14 = v13(a1, *(result + 16), (3 * v10));
            }

            else
            {
              if ((v10 & 0x80000000) != 0 || 3 * v10 < v11)
              {
                goto LABEL_49;
              }

              v14 = fread(*(result + 16), 1uLL, v11, *(v12 + 40));
            }

            if (v14 == v11)
            {
LABEL_26:
              result = *(a1 + 56);
              if (result)
              {
                v15 = *(a1 + 24);
                if (v15 < 1)
                {
                  goto LABEL_49;
                }

                result = reallocarray(result, v15 + 1, 0x38uLL);
                if (!result)
                {
                  goto LABEL_48;
                }

                v16 = *(a1 + 24);
                if (v15 < v16 || v16 < -1)
                {
                  goto LABEL_49;
                }

                v17 = v16 + 1;
                *(a1 + 24) = v17;
                *(a1 + 56) = result;
              }

              else
              {
                result = malloc_type_malloc(0x38uLL, 0x10300409283B079uLL);
                v18 = result + 56;
                if (!result)
                {
                  v18 = 0;
                }

                if ((v18 - result) < 1)
                {
                  goto LABEL_49;
                }

                *(a1 + 56) = result;
                v17 = 1;
                *(a1 + 24) = 1;
                if (!result)
                {
                  *(a1 + 24) = 0;
                  *(a1 + 56) = 0;
                  goto LABEL_48;
                }
              }

              v19 = result + 56 * v17;
              v20 = (v19 - 56);
              if (v19 >= 0x38 && v20 >= result)
              {
                v21 = *(a1 + 32);
                *(v19 - 40) = *(a1 + 48);
                *v20 = v21;
                if (v20 <= v19 - 32)
                {
                  v22 = *(a1 + 48);
                  if (!v22)
                  {
LABEL_44:
                    *(v19 - 8) = 0;
                    *(v19 - 32) = 0;
                    *(v19 - 24) = 0;
                    *(v19 - 16) = 0;
                    *(v2 + 32) = *(a1 + 38) * *(a1 + 36);
                    return DGifSetupDecompress(a1);
                  }

                  result = *v22;
                  v23 = *(v22 + 2);
                  if (!v23 || v23 + 3 <= &v23[3 * result] && v23 <= v23 + 3)
                  {
                    result = _cg_GifMakeMapObject(result, v23);
                    *(v19 - 40) = result;
                    if (result)
                    {
                      goto LABEL_44;
                    }

LABEL_48:
                    v4 = 109;
                    goto LABEL_3;
                  }
                }
              }

LABEL_49:
              __break(0x5519u);
              return result;
            }

            _cg_GifFreeMapObject(*(a1 + 48));
            result = 0;
            *(a1 + 80) = 102;
          }

          else
          {
            *(a1 + 80) = 102;
            _cg_GifFreeMapObject(*(a1 + 48));
            result = 0;
          }

          *(a1 + 48) = 0;
        }
      }
    }
  }

  return result;
}

void *DGifSetupDecompress(uint64_t a1)
{
  __ptr = 0;
  v2 = *(a1 + 96);
  v3 = *(v2 + 48);
  if (v3)
  {
    if (v3(a1, &__ptr, 1))
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!fread(&__ptr, 1uLL, 1uLL, *(v2 + 40)))
  {
    return 0;
  }

LABEL_3:
  v4 = __ptr;
  if (__ptr >= 9u)
  {
    v5 = 0;
    *(a1 + 80) = 102;
    return v5;
  }

  *(v2 + 64) = 0;
  *(v2 + 4) = v4;
  v5 = 1;
  *(v2 + 6) = 1 << v4;
  *(v2 + 8) = (1 << v4) + 1;
  *(v2 + 10) = (1 << v4) + 2;
  v6 = v4 + 1;
  *(v2 + 12) = v6;
  *(v2 + 14) = 1 << v6;
  *(v2 + 20) = 0;
  *(v2 + 16) = 4112;
  *(v2 + 24) = 0;
  result = memset((v2 + 8512), 16, 0x2000uLL);
  if (v2 + 8512 <= (v2 + 16704))
  {
    return v5;
  }

  __break(0x5519u);
  return result;
}

uint64_t _cg_DGifGetLine(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 96);
  if ((*v4 & 8) == 0)
  {
    v5 = 111;
LABEL_10:
    result = 0;
    *(v3 + 80) = v5;
    return result;
  }

  if (!a3)
  {
    if (*(result + 36))
    {
LABEL_20:
      __break(0x5519u);
      return result;
    }

    v9 = *(v4 + 32);
    v6 = (v4 + 32);
    if (v9 <= 0xFFFF0000)
    {
      a3 = 0;
      goto LABEL_13;
    }

LABEL_9:
    v5 = 108;
    goto LABEL_10;
  }

  v7 = *(v4 + 32);
  v6 = (v4 + 32);
  v8 = v7 - a3;
  *v6 = v8;
  if (v8 > 0xFFFF0000)
  {
    goto LABEL_9;
  }

  if ((a3 & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_13:
  result = DGifDecompressLine(result, a2, a3);
  if (result)
  {
    if (*v6)
    {
      return 1;
    }

    else
    {
      v10 = 0;
      do
      {
        result = _cg_DGifGetCodeNext(v3, &v10);
        if (!result)
        {
          break;
        }

        result = 1;
      }

      while (v10);
    }
  }

  return result;
}

int64_t DGifDecompressLine(int64_t result, _BYTE *a2, uint64_t a3)
{
  v3 = *(result + 96);
  v4 = *(v3 + 10);
  if (v4 > 4095)
  {
    return 0;
  }

  v5 = result;
  v6 = v3 + 4415;
  v72 = *(v3 + 4);
  v7 = *(v3 + 3);
  v8 = *(v3 + 8);
  if (*(v3 + 10) && (v9 = a3 - 1, a3 >= 1))
  {
    if (v9 >= v4 - 1)
    {
      v9 = v4 - 1;
    }

    v10 = v9 + 1;
    v11 = v10;
    v12 = &v3[*(v3 + 10) + 319];
    v13 = a2;
    while (v12 < v6 && v12 >= v3 + 320)
    {
      v14 = *v12--;
      *v13++ = v14;
      v4 = (v4 - 1);
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

LABEL_136:
    __break(0x5519u);
  }

  else
  {
    v11 = 0;
LABEL_13:
    if (v11 >= a3)
    {
LABEL_132:
      *(v3 + 8) = v8;
      *(v3 + 10) = v4;
      return 1;
    }

    else
    {
      v71 = v7;
      v15 = (v3 + 8512);
      v16 = (v3 + 16704);
      v66 = v3 + 4413;
      v73 = 0;
      v67 = a3;
      v68 = v3 + 320;
      v69 = &a2[a3];
      v70 = v3 + 8511;
      while (1)
      {
        v17 = v11;
        v18 = a2;
        v19 = a3;
        v20 = v5;
        result = DGifDecompressInput(v5, &v73);
        if (!result)
        {
          break;
        }

        v21 = v73;
        if (v73 == v72)
        {
          result = 0;
          *(v20 + 80) = 113;
          return result;
        }

        if (v73 == v71)
        {
          result = memset(v3 + 8512, 16, 0x2000uLL);
          if (v15 > (v3 + 16704))
          {
            goto LABEL_136;
          }

          *(v3 + 5) = *(v3 + 4) + 1;
          v22 = *(v3 + 2) + 1;
          *(v3 + 6) = v22;
          *(v3 + 7) = 1 << v22;
          v8 = 4112;
          *(v3 + 8) = 4112;
          v5 = v20;
          a3 = v19;
          a2 = v18;
          v11 = v17;
          v6 = v3 + 4415;
        }

        else
        {
          a2 = v18;
          if (v73 >= v71)
          {
            v31 = (v15 + 2 * v73);
            v33 = (v31 + 1) <= v16 && v31 <= v31 + 1 && v31 >= v15;
            v5 = v20;
            a3 = v19;
            v11 = v17;
            v24 = v3 + 8511;
            if (!v33)
            {
              goto LABEL_136;
            }

            if (*v31 == 4112)
            {
              if (v73 == *(v3 + 5) - 2)
              {
                LOBYTE(v34) = v8;
                if (v8 > v71)
                {
                  v35 = 4097;
                  v34 = v8;
                  do
                  {
                    if (!--v35)
                    {
                      break;
                    }

                    if (v34 > 4095)
                    {
                      goto LABEL_77;
                    }

                    v36 = (v15 + 2 * v34);
                    if (v36 < v15 || (v36 + 1) > v16 || v36 > v36 + 1)
                    {
                      goto LABEL_136;
                    }

                    v34 = *v36;
                  }

                  while (v34 > v71);
                }
              }

              else
              {
                LOBYTE(v34) = v73;
                if (v73 > v71)
                {
                  v38 = 4097;
                  v34 = v73;
                  do
                  {
                    if (!--v38)
                    {
                      break;
                    }

                    if (v34 > 4095)
                    {
LABEL_77:
                      LOBYTE(v34) = 16;
                      break;
                    }

                    v39 = (v15 + 2 * v34);
                    if (v39 < v15 || (v39 + 1) > v16 || v39 > v39 + 1)
                    {
                      goto LABEL_136;
                    }

                    v34 = *v39;
                  }

                  while (v34 > v71);
                }
              }

              v43 = &v68[v4];
              if (v43 >= v6 || v43 < v68)
              {
                goto LABEL_136;
              }

              *v43 = v34;
              v45 = &v66[*(v3 + 5)];
              if (v45 >= v70 || v45 < v6)
              {
                goto LABEL_136;
              }

              v4 = (v4 + 1);
              *v45 = v34;
              v37 = v8;
            }

            else
            {
              v37 = v73;
            }

            if (v4 > 4094)
            {
              goto LABEL_133;
            }

            v47 = 0;
            v48 = v4;
            v49 = v4 << 32;
            v50 = &v3[v4 + 320];
            while (v37 > v71 && v37 <= 4095)
            {
              v51 = &v6[v37];
              if (v51 >= v70)
              {
                goto LABEL_136;
              }

              if (v51 < v6)
              {
                goto LABEL_136;
              }

              v52 = (v50 + v47);
              if (v50 + v47 >= v6)
              {
                goto LABEL_136;
              }

              if (v52 < v68)
              {
                goto LABEL_136;
              }

              *v52 = *v51;
              v53 = (v15 + 2 * v37);
              if ((v53 + 1) > v16 || v53 > v53 + 1 || v53 < v15)
              {
                goto LABEL_136;
              }

              v37 = *v53;
              ++v47;
              v49 += 0x100000000;
              if (v4 + v47 == 4095)
              {
                goto LABEL_133;
              }
            }

            if (v37 >= 4096)
            {
LABEL_133:
              result = 0;
              *(v20 + 80) = 112;
              return result;
            }

            v54 = &v68[v49 >> 32];
            if (v54 >= v6 || v54 < v68)
            {
              goto LABEL_136;
            }

            v55 = (v4 + 1);
            *v54 = v37;
            v4 = v55 + v47;
            if (v55 + v47 && v17 < a3)
            {
              v56 = 0;
              v57 = v48 + v47;
              v58 = v3 + 320;
              while (1)
              {
                v59 = v58 + v48 + v47;
                v60 = v59 < v6 && v59 >= v68;
                result = &v18[v17 + v56];
                v61 = !v60 || result >= v69;
                if (v61 || result < v18)
                {
                  goto LABEL_136;
                }

                v63 = v56 + 1;
                *result = *(v58 + v57);
                if (v57 != v56)
                {
                  result = v63 + v17;
                  v58 = (v58 - 1);
                  ++v56;
                  if (result < v67)
                  {
                    continue;
                  }
                }

                v4 = (v55 + v47 - v63);
                v11 = (v17 + v63);
                break;
              }
            }
          }

          else
          {
            v23 = &v18[v17];
            a3 = v19;
            v24 = v3 + 8511;
            if (v23 >= v69 || v23 < v18)
            {
              goto LABEL_136;
            }

            v5 = v20;
            v11 = (v17 + 1);
            *v23 = v73;
          }

          if (v8 != 4112)
          {
            v25 = v15 + 2 * *(v3 + 5);
            v26 = v25 - 2;
            if (v25 - 2 > v16)
            {
              goto LABEL_136;
            }

            v27 = (v25 - 4);
            if (v27 > v26 || v27 < v15)
            {
              goto LABEL_136;
            }

            if (*v27 == 4112)
            {
              *v27 = v8;
              v28 = *(v3 + 5);
              if (v21 == *(v3 + 5) - 2)
              {
                if (v8 > v71)
                {
                  v29 = 4097;
                  do
                  {
                    if (!--v29)
                    {
                      break;
                    }

                    if (v8 > 4095)
                    {
                      LOBYTE(v8) = 16;
                      break;
                    }

                    v30 = (v15 + 2 * v8);
                    if (v30 < v15 || (v30 + 1) > v16 || v30 > v30 + 1)
                    {
                      goto LABEL_136;
                    }

                    v8 = *v30;
                  }

                  while (v8 > v71);
                }

                v64 = &v66[v28];
                if (v64 >= v24 || v64 < v6)
                {
                  goto LABEL_136;
                }

                *v64 = v8;
              }

              else
              {
                LOBYTE(v40) = v21;
                if (v21 > v71)
                {
                  v41 = 4097;
                  v40 = v21;
                  do
                  {
                    if (!--v41)
                    {
                      break;
                    }

                    if (v40 > 4095)
                    {
                      LOBYTE(v40) = 16;
                      break;
                    }

                    v42 = (v15 + 2 * v40);
                    if (v42 < v15 || (v42 + 1) > v16 || v42 > v42 + 1)
                    {
                      goto LABEL_136;
                    }

                    v40 = *v42;
                  }

                  while (v40 > v71);
                }

                v65 = &v66[v28];
                if (v65 >= v24 || v65 < v6)
                {
                  goto LABEL_136;
                }

                *v65 = v40;
              }
            }
          }

          v8 = v21;
        }

        if (v11 >= a3)
        {
          goto LABEL_132;
        }
      }
    }
  }

  return result;
}

size_t _cg_DGifGetCodeNext(uint64_t a1, uint64_t *a2)
{
  __ptr = 0;
  v4 = *(a1 + 96);
  v5 = *(v4 + 48);
  if (v5)
  {
    result = v5(a1, &__ptr, 1);
  }

  else
  {
    result = fread(&__ptr, 1uLL, 1uLL, *(v4 + 40));
  }

  if (result == 1)
  {
    v7 = __ptr;
    if (!__ptr)
    {
      *a2 = 0;
      *(v4 + 64) = 0;
      result = 1;
      *(v4 + 32) = 0;
      return result;
    }

    v8 = (v4 + 64);
    if (v4 + 64 > (v4 + 320) || (*a2 = v8, v4 + 64 >= (v4 + 320)))
    {
      __break(0x5519u);
      return result;
    }

    *v8 = v7;
    v9 = *(a1 + 96);
    v10 = *(v9 + 48);
    v11 = *a2;
    if (v10)
    {
      v12 = v10(a1, v11 + 1);
    }

    else
    {
      v12 = fread((v11 + 1), 1uLL, v7, *(v9 + 40));
    }

    if (v12 == __ptr)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 80) = 102;
  return result;
}

size_t _cg_DGifGetExtension(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  v4 = *(a1 + 96);
  if ((*v4 & 8) != 0)
  {
    __ptr = 0;
    v9 = *(v4 + 48);
    if (v9)
    {
      v10 = v9(a1, &__ptr, 1);
    }

    else
    {
      v10 = fread(&__ptr, 1uLL, 1uLL, *(v4 + 40));
    }

    if (v10 == 1)
    {
      *a2 = __ptr;
      return _cg_DGifGetExtensionNext(a1, a3);
    }

    result = 0;
    v6 = 102;
  }

  else
  {
    result = 0;
    v6 = 111;
  }

  *(a1 + 80) = v6;
  return result;
}

size_t _cg_DGifGetExtensionNext(uint64_t a1, uint64_t *a2)
{
  __ptr = 0;
  v4 = *(a1 + 96);
  v5 = *(v4 + 48);
  if (v5)
  {
    result = v5(a1, &__ptr, 1);
  }

  else
  {
    result = fread(&__ptr, 1uLL, 1uLL, *(v4 + 40));
  }

  if (result == 1)
  {
    v7 = __ptr;
    if (!__ptr)
    {
      *a2 = 0;
      return 1;
    }

    v8 = (v4 + 64);
    if (v4 + 64 > (v4 + 320) || (*a2 = v8, v4 + 64 >= (v4 + 320)))
    {
      __break(0x5519u);
      return result;
    }

    *v8 = v7;
    v9 = *(a1 + 96);
    v10 = *(v9 + 48);
    v11 = *a2;
    if (v10)
    {
      v12 = v10(a1, v11 + 1);
    }

    else
    {
      v12 = fread((v11 + 1), 1uLL, v7, *(v9 + 40));
    }

    if (v12 == __ptr)
    {
      return 1;
    }
  }

  result = 0;
  *(a1 + 80) = 102;
  return result;
}

uint64_t _cg_DGifExtensionToGCB(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != 4)
  {
    return 0;
  }

  *a3 = (*a2 >> 2) & 7;
  *(a3 + 4) = (*a2 & 2) != 0;
  *(a3 + 8) = *(a2 + 1);
  if (*a2)
  {
    v3 = a2[3];
  }

  else
  {
    v3 = -1;
  }

  *(a3 + 12) = v3;
  return 1;
}

uint64_t _cg_DGifCloseFile(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 104))
  {
    return 0;
  }

  *(a1 + 104) = 1;
  if (!*(a1 + 96))
  {
    return 0;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    _cg_GifFreeMapObject(v5);
    *(a1 + 48) = 0;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    _cg_GifFreeMapObject(v6);
    *(a1 + 16) = 0;
  }

  if (*(a1 + 56))
  {
    GifFreeSavedImages(a1);
    *(a1 + 24) = 0;
    *(a1 + 56) = 0;
  }

  GifFreeExtensionFromGifFile(a1);
  v7 = *(a1 + 96);
  if ((*v7 & 8) == 0)
  {
    if (a2)
    {
      *a2 = 111;
    }

LABEL_18:
    free(v7);
    free(a1);
    return 0;
  }

  if (v7[5])
  {
    if (fclose(v7[5]))
    {
      if (a2)
      {
        *a2 = 110;
      }

      v7 = *(a1 + 96);
      goto LABEL_18;
    }

    v7 = *(a1 + 96);
  }

  free(v7);
  free(a1);
  if (a2)
  {
    *a2 = 0;
  }

  return 1;
}

size_t _cg_DGifGetCode(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  v3 = *(a1 + 96);
  if ((*v3 & 8) != 0)
  {
    *a2 = v3[2];
    return _cg_DGifGetCodeNext(a1, a3);
  }

  else
  {
    *(a1 + 80) = 111;
    return 0;
  }
}

size_t DGifDecompressInput(size_t result, _DWORD *a2)
{
  v2 = result;
  v3 = *(result + 96);
  v4 = *(v3 + 12);
  if (v4 > 12)
  {
LABEL_2:
    result = 0;
    v5 = 112;
    goto LABEL_3;
  }

  v7 = *(v3 + 22);
  if (v7 >= v4)
  {
LABEL_24:
    v20 = &DGifDecompressInput_CodeMasks + 2 * v4;
    v21 = v20 + 2;
    if (v20 < &DGifDecompressInput_CodeMasks || v21 > byte_186205DB4 || v20 > v21)
    {
LABEL_39:
      __break(0x5519u);
    }

    else
    {
      v24 = *(v3 + 24);
      *a2 = v24 & *(&DGifDecompressInput_CodeMasks + v4);
      *(v3 + 24) = v24 >> v4;
      *(v3 + 22) = v7 - v4;
      v25 = *(v3 + 10);
      if (v25 <= 4096)
      {
        *(v3 + 10) = v25 + 1;
        v26 = *(v3 + 14);
        if (v4 <= 11 && v25 >= v26)
        {
          *(v3 + 14) = 2 * v26;
          *(v3 + 12) = v4 + 1;
        }
      }

      return 1;
    }

    return result;
  }

  v9 = (v3 + 64);
  LOBYTE(v8) = *(v3 + 64);
  while (v8)
  {
    v10 = *(v3 + 65);
    *(v3 + 65) = v10 + 1;
    v11 = &v9[v10];
    if (v11 >= v3 + 320 || v11 < v9)
    {
      goto LABEL_39;
    }

    v13 = *v11;
LABEL_23:
    LOBYTE(v8) = v8 - 1;
    *(v3 + 64) = v8;
    *(v3 + 24) |= v13 << v7;
    v19 = v7 + 8;
    v7 = (v7 + 8);
    *(v3 + 22) = v19;
    if (v7 >= v4)
    {
      goto LABEL_24;
    }
  }

  v14 = *(v2 + 96);
  v15 = *(v14 + 48);
  if (v15)
  {
    v16 = v15(v2, v3 + 64, 1);
  }

  else
  {
    v16 = fread((v3 + 64), 1uLL, 1uLL, *(v14 + 40));
  }

  if (v16 == 1)
  {
    if (!*v9)
    {
      goto LABEL_2;
    }

    v17 = *(v2 + 96);
    v18 = *(v17 + 48);
    result = v18 ? v18(v2, v3 + 65) : fread((v3 + 65), 1uLL, *v9, *(v17 + 40));
    v8 = *v9;
    if (result == v8)
    {
      v13 = *(v3 + 65);
      *(v3 + 65) = 2;
      LOWORD(v7) = *(v3 + 22);
      LOWORD(v4) = *(v3 + 12);
      goto LABEL_23;
    }
  }

  result = 0;
  v5 = 102;
LABEL_3:
  *(v2 + 80) = v5;
  return result;
}

char *_InitHashTable()
{
  result = malloc_type_malloc(0x8000uLL, 0x1000040B0612BB1uLL);
  if (result)
  {
    if (result >= result + 0x8000)
    {
      __break(0x5519u);
    }

    else
    {

      return memset(result, 255, 0x8000uLL);
    }
  }

  return result;
}

void *_ClearHashTable(char *a1)
{
  result = memset(a1, 255, 0x8000uLL);
  if (a1 + 0x8000 < a1)
  {
    __break(0x5519u);
  }

  return result;
}

unint64_t _InsertHashTable(unint64_t result, unsigned int a2, __int16 a3)
{
  for (i = a2 ^ (a2 >> 12); ; LOWORD(i) = i + 1)
  {
    i &= 0x1FFFu;
    v4 = (result + 4 * i);
    v5 = v4 + 1;
    v6 = v4 < result || v5 > result + 0x8000;
    if (v6 || v4 > v5)
    {
      break;
    }

    if (*v4 >= 0xFFFFF000)
    {
      *v4 = a3 & 0xFFF | (a2 << 12);
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t _ExistsHashTable(unint64_t a1, unsigned int a2)
{
  v2 = a1 + 0x8000;
  LOWORD(v3) = (a2 ^ (a2 >> 12)) & 0x1FFF;
  v4 = (a1 + 4 * v3);
  v5 = v4 + 1;
  if (v4 < a1 || v5 > v2 || v4 >= v5)
  {
LABEL_18:
    __break(0x5519u);
  }

  else
  {
    while (1)
    {
      v8 = *v4;
      if (v8 >> 12 == 0xFFFFF)
      {
        break;
      }

      if (v8 >> 12 == a2)
      {
        return v8 & 0xFFF;
      }

      v3 = (v3 + 1) & 0x1FFF;
      v4 = (a1 + 4 * v3);
      v9 = v4 + 1;
      if (v4 < a1 || v9 > v2 || v4 >= v9)
      {
        goto LABEL_18;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

IIODictionary *CreatePropertiesFromAppleMakerNote(unsigned __int8 *a1, unint64_t a2)
{
  kdebug_trace();
  v10 = 0;
  v9 = 0;
  *v8 = 0;
  memset(v7, 0, sizeof(v7));
  IIOScanner::IIOScanner(v7, a1, a2, 0);
  if (a2 - 64513 > 0xFFFFFFFFFFFF040ELL)
  {
    IIOScanner::skip(v7, 0xAuLL);
    if (IIOScanner::getVal16(v7) == 1)
    {
      Val16 = IIOScanner::getVal16(v7);
      if (Val16 == 19789)
      {
        v5 = 0;
LABEL_8:
        IIOScanner::setEndianness(v7, v5);
        if (&a1[12 * IIOScanner::getVal16(v7) + 10] <= &a1[a2])
        {
          operator new();
        }

        goto LABEL_11;
      }

      if (Val16 == 18761)
      {
        v5 = 1;
        goto LABEL_8;
      }
    }

    else
    {
      _cg_jpeg_mem_term("CreatePropertiesFromAppleMakerNote", 201, "*** ERROR: cannot handle version '%d' makernote\n");
    }

LABEL_11:
    kdebug_trace();
    goto LABEL_12;
  }

  _cg_jpeg_mem_term("CreatePropertiesFromAppleMakerNote", 193, "*** ERROR: bad makerNote length: %d\n");
LABEL_12:
  IIOScanner::~IIOScanner(v7);
  return 0;
}

void sub_185F0AD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  IIOScanner::~IIOScanner(va);
  _Unwind_Resume(a1);
}

void IIOTag::updateTypeAndCount(IIOTag *this, uint64_t a2)
{
  *(this + 40) = 1;
  switch(*(this + 4))
  {
    case 1:
    case 4:
    case 5:
    case 6:
    case 7:
    case 9:
    case 0xA:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x12:
    case 0x14:
    case 0x19:
    case 0x1B:
    case 0x1C:
    case 0x1E:
    case 0x1F:
    case 0x22:
    case 0x26:
    case 0x28:
    case 0x2C:
    case 0x2D:
    case 0x2E:
    case 0x2F:
    case 0x32:
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
    case 0x37:
    case 0x38:
    case 0x39:
    case 0x3A:
    case 0x3B:
    case 0x3C:
    case 0x3D:
    case 0x3F:
    case 0x41:
    case 0x42:
    case 0x43:
    case 0x44:
    case 0x45:
    case 0x46:
    case 0x47:
    case 0x48:
    case 0x49:
    case 0x4A:
    case 0x52:
    case 0x53:
    case 0x55:
    case 0x58:
    case 0x59:
    case 0x5C:
    case 0x60:
    case 0x61:
      v3 = 9;
      goto LABEL_3;
    case 2:
    case 3:
    case 0x31:
    case 0x3E:
    case 0x40:
    case 0x4C:
    case 0x4E:
    case 0x4F:
    case 0x50:
    case 0x51:
    case 0x54:
    case 0x5A:
    case 0x5B:
    case 0x5D:
    case 0x5F:
      goto LABEL_15;
    case 8:
    case 0x24:
      *(this + 5) = 10;
      StringLenMax = 3;
      goto LABEL_17;
    case 0xB:
    case 0x11:
    case 0x15:
    case 0x18:
    case 0x20:
    case 0x29:
    case 0x2A:
    case 0x2B:
      *(this + 5) = 2;
      StringLenMax = 36;
      goto LABEL_17;
    case 0xC:
    case 0x13:
      v5 = 10;
      goto LABEL_11;
    case 0x16:
      *(this + 5) = 7;
      *(this + 40) = 0;
      goto LABEL_16;
    case 0x17:
    case 0x25:
      v3 = 16;
      goto LABEL_3;
    case 0x1A:
      *(this + 5) = 2;
      StringLenMax = 5;
      goto LABEL_17;
    case 0x1D:
    case 0x21:
    case 0x27:
    case 0x30:
    case 0x4B:
    case 0x4D:
      v3 = 10;
LABEL_3:
      *(this + 5) = v3;
      StringLenMax = 1;
      goto LABEL_17;
    case 0x23:
      v5 = 9;
LABEL_11:
      *(this + 5) = v5;
      StringLenMax = 2;
      goto LABEL_17;
    case 0x57:
    case 0x62:
      *(this + 5) = 2;
      StringLenMax = IIOTag::getStringLenMax(this, 0x24u);
      goto LABEL_17;
    case 0x5E:
      *(this + 5) = 1;
      StringLenMax = 4;
      goto LABEL_17;
    default:
      if (IIO_OSAppleInternalBuild(this, a2))
      {
        LogError("updateTypeAndCount", 762, "*** ERROR: Unknown AppleMakerNote tag '%d'. If this tagID was added recently, please file a bug against ImageIO to add support for the new tagID.\n", *(this + 4));
        *(this + 40) = 0;
LABEL_15:
        *(this + 5) = 7;
LABEL_16:
        StringLenMax = IIOTag::getByteCountOfCFObject(this);
LABEL_17:
        *(this + 3) = StringLenMax;
      }

      else
      {
        LogError("updateTypeAndCount", 769, "*** ERROR: Unknown AppleMakerNote tag '%d' - ignoring...\n", *(this + 4));
        StringLenMax = *(this + 3);
      }

      v6 = StringLenMax;
      SizeForTiffType = GetSizeForTiffType(*(this + 5));
      *(this + 2) = SizeForTiffType * v6;
      if (SizeForTiffType * v6 && *(this + 5) == 2)
      {
        memset(v9, 0, sizeof(v9));
        IIOString::IIOString(v9, *(this + 4));
        v8 = IIOString::length(v9);
        if (v8)
        {
          if (*(IIOString::utf8String(v9) + v8 - 1))
          {
            *(this + 3) += GetSizeForTiffType(*(this + 5));
            *(this + 2) += GetSizeForTiffType(*(this + 5));
          }
        }

        IIOString::~IIOString(v9);
      }

      return;
  }
}

void sub_185F0AFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t IIOTag::getStringLenMax(IIOTag *this, unsigned int a2)
{
  v3 = *(this + 4);
  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(v3))
  {
    return 0;
  }

  LODWORD(result) = CFStringGetLength(v3);
  if (result >= a2)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

CFIndex IIOTag::getByteCountOfCFObject(IIOTag *this)
{
  v1 = *(this + 4);
  if ((*(this + 40) & 1) == 0)
  {
    goto LABEL_7;
  }

  TypeID = CFDataGetTypeID();
  if (TypeID == CFGetTypeID(v1))
  {
    return CFDataGetLength(v1);
  }

  v4 = CFStringGetTypeID();
  if (v4 == CFGetTypeID(v1))
  {
    memset(v9, 0, sizeof(v9));
    IIOString::IIOString(v9, v1);
    v5 = IIOString::utf8String(v9);
    if (v5)
    {
      Length = strlen(v5) + 1;
    }

    else
    {
      Length = 0;
    }

    IIOString::~IIOString(v9);
  }

  else
  {
LABEL_7:
    Data = CFPropertyListCreateData(*MEMORY[0x1E695E480], v1, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (Data)
    {
      v7 = Data;
      Length = CFDataGetLength(Data);
      CFRelease(v7);
    }

    else
    {
      return 0;
    }
  }

  return Length;
}

void sub_185F0B1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t IIOTag::writePropertyAndData(IIOTag *this, IIOWriteStream *a2, IIOWriteStream *a3)
{
  IIOWriteStream::write16(a2, *(this + 4));
  IIOWriteStream::write16(a2, *(this + 5));
  IIOWriteStream::write32(a2, *(this + 3));
  if (*(this + 2) > 4uLL)
  {
    v7 = *(this + 12);
    v8 = IIOImageSource::count(a3) + v7;
    IIOWriteStream::write32(a2, v8);
    *(this + 6) = v8;

    return IIOTag::writeData(this, a3);
  }

  else
  {
    result = IIOTag::writeData(this, a2);
    if ((result & 0xFFFFFFFC) == 0)
    {
      *v9 = 0;
      return IIOWriteStream::writeBytes(a2, v9, (4 - result) & 7);
    }
  }

  return result;
}

uint64_t IIOTag::writeData(CFTypeRef *this, IIOWriteStream *a2)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v4 = CFGetTypeID(this[4]);
  TypeID = CFArrayGetTypeID();
  if (v4 == TypeID)
  {
    operator new();
  }

  v6 = *(this + 5);
  if (v6 <= 7)
  {
    if (*(this + 5) > 3u)
    {
      if (v6 - 6 >= 2)
      {
        if (v6 != 4)
        {
          if (v6 != 5)
          {
            goto LABEL_34;
          }

          goto LABEL_18;
        }

        goto LABEL_22;
      }

LABEL_14:
      v10 = IIOTag::writeBytes(this, a2);
      goto LABEL_33;
    }

    if (v6 - 1 < 2)
    {
      goto LABEL_14;
    }

    if (v6 == 3)
    {
LABEL_26:
      if (v4 == TypeID)
      {
        v18[3] = this[2] + v22[3];
        v7 = v15;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 0x40000000;
        v8 = &unk_1E6EF8AE8;
        v9 = ___ZN6IIOTag9writeDataEP14IIOWriteStream_block_invoke_2;
        goto LABEL_28;
      }

      IIOTag::writeBits16(TypeID, a2, this[4]);
      v10 = 2;
      goto LABEL_33;
    }

LABEL_34:
    _cg_jpeg_mem_term("writeData", 911, "*** unhandled tagType (%d) for tagID %d\n");
    goto LABEL_29;
  }

  if (*(this + 5) <= 0xCu)
  {
    if (v6 == 8)
    {
      goto LABEL_26;
    }

    if (v6 != 9)
    {
      if (v6 == 10)
      {
LABEL_18:
        if (v4 == TypeID)
        {
          v18[3] = this[2] + v22[3];
          v7 = v16;
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 0x40000000;
          v8 = &unk_1E6EF8AC0;
          v9 = ___ZN6IIOTag9writeDataEP14IIOWriteStream_block_invoke;
          goto LABEL_28;
        }

        IIOTag::writeRational(TypeID, a2, this[4]);
        goto LABEL_32;
      }

      goto LABEL_34;
    }

LABEL_22:
    if (v4 == TypeID)
    {
      v18[3] = this[2] + v22[3];
      v7 = v14;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 0x40000000;
      v8 = &unk_1E6EF8B10;
      v9 = ___ZN6IIOTag9writeDataEP14IIOWriteStream_block_invoke_3;
      goto LABEL_28;
    }

    IIOTag::writeBits32(TypeID, a2, this[4]);
    v10 = 4;
LABEL_33:
    v22[3] = v10;
    goto LABEL_29;
  }

  if (v6 - 16 >= 3)
  {
    if (v6 != 13)
    {
      goto LABEL_34;
    }

    goto LABEL_22;
  }

  if (v4 != TypeID)
  {
    IIOTag::writeBits64(TypeID, a2, this[4]);
LABEL_32:
    v10 = 8;
    goto LABEL_33;
  }

  v18[3] = this[2] + v22[3];
  v7 = v13;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v8 = &unk_1E6EF8B38;
  v9 = ___ZN6IIOTag9writeDataEP14IIOWriteStream_block_invoke_4;
LABEL_28:
  v7[2] = v9;
  v7[3] = v8;
  v7[6] = this;
  v7[7] = a2;
  v7[4] = &v21;
  v7[5] = &v17;
  IIOArray::enumerate(0, v7);
LABEL_29:
  v11 = v22[3];
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v11;
}

void sub_185F0B68C(_Unwind_Exception *a1)
{
  MEMORY[0x186602850](v1, 0x10A1C4047070A01);
  _Block_object_dispose((v2 - 112), 8);
  _Block_object_dispose((v2 - 80), 8);
  _Unwind_Resume(a1);
}

unint64_t IIOTag::writeBytes(IIOTag *this, IIOWriteStream *a2)
{
  if ((*(this + 40) & 1) == 0)
  {
    goto LABEL_7;
  }

  TypeID = CFDataGetTypeID();
  if (TypeID == CFGetTypeID(*(this + 4)))
  {
    Data = CFRetain(*(this + 4));
    goto LABEL_8;
  }

  v6 = CFStringGetTypeID();
  if (v6 != CFGetTypeID(*(this + 4)))
  {
LABEL_7:
    Data = CFPropertyListCreateData(*MEMORY[0x1E695E480], *(this + 4), kCFPropertyListBinaryFormat_v1_0, 0, 0);
LABEL_8:
    v10 = Data;
    if (!Data)
    {
      return 0;
    }

    Length = CFDataGetLength(Data);
    v12 = *(this + 2);
    if (Length < v12)
    {
      v12 = CFDataGetLength(v10);
    }

    BytePtr = CFDataGetBytePtr(v10);
    IIOWriteStream::writeBytes(a2, BytePtr, v12);
    CFRelease(v10);
    return v12;
  }

  memset(v19, 0, sizeof(v19));
  IIOString::IIOString(v19, *(this + 4));
  v7 = IIOString::utf8String(v19);
  v8 = v7;
  if (v7)
  {
    v9 = strlen(v7);
  }

  else
  {
    v9 = 0;
  }

  v14 = v9;
  v12 = *(this + 2);
  if (v12 - 1 <= v9)
  {
    if (v12 - 1 < v9)
    {
      LogError("writeBytes", 946, "*** ERROR: {MakerApple} tag-%d: expected string length: %d (got: %d) --> clipping\n", *(this + 4), v12 - 1, v9);
      v12 = *(this + 2);
    }

    IIOWriteStream::writeBytes(a2, v8, v12);
  }

  else
  {
    LogError("writeBytes", 953, "*** ERROR: {MakerApple} tag-%d: expected string length: %d (got: %d) --> padding\n", *(this + 4), v12 - 1, v9);
    IIOWriteStream::writeBytes(a2, v8, v14);
    v18 = 46;
    if (*(this + 2) - 1 > v14)
    {
      v15 = v14 + 1;
      do
      {
        IIOWriteStream::writeBytes(a2, &v18, 1uLL);
      }

      while (*(this + 2) - 1 > v15++);
    }

    v18 = 0;
    IIOWriteStream::writeBytes(a2, &v18, 1uLL);
    v12 = 0;
  }

  IIOString::~IIOString(v19);
  return v12;
}

void sub_185F0B8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN6IIOTag9writeDataEP14IIOWriteStream_block_invoke(uint64_t a1, const __CFString *a2, uint64_t a3, _BYTE *a4)
{
  result = IIOTag::writeRational(a1, *(a1 + 56), a2);
  *(*(*(a1 + 32) + 8) + 24) += 8;
  if (*(*(*(a1 + 32) + 8) + 24) >= *(*(*(a1 + 40) + 8) + 24))
  {
    *a4 = 1;
  }

  return result;
}

uint64_t IIOTag::writeRational(IIOTag *this, IIOWriteStream *a2, const __CFString *a3)
{
  memset(v8, 0, sizeof(v8));
  IIONumber::IIONumber(v8, a3);
  v4 = IIONumber::floatNum(v8);
  v6 = 1;
  v7 = 0;
  SRationalApprox(v4, &v7, &v6);
  IIOWriteStream::write32(a2, v7);
  IIOWriteStream::write32(a2, v6);
  IIONumber::~IIONumber(v8);
  return 8;
}

void sub_185F0B9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN6IIOTag9writeDataEP14IIOWriteStream_block_invoke_2(uint64_t a1, const __CFString *a2, uint64_t a3, _BYTE *a4)
{
  result = IIOTag::writeBits16(a1, *(a1 + 56), a2);
  *(*(*(a1 + 32) + 8) + 24) += 2;
  if (*(*(*(a1 + 32) + 8) + 24) >= *(*(*(a1 + 40) + 8) + 24))
  {
    *a4 = 1;
  }

  return result;
}

uint64_t IIOTag::writeBits16(IIOTag *this, IIOWriteStream *a2, const __CFString *a3)
{
  memset(v6, 0, sizeof(v6));
  IIONumber::IIONumber(v6, a3);
  v4 = IIONumber::uint16Num(v6);
  IIOWriteStream::write16(a2, v4);
  IIONumber::~IIONumber(v6);
  return 2;
}

void sub_185F0BACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN6IIOTag9writeDataEP14IIOWriteStream_block_invoke_3(uint64_t a1, const __CFString *a2, uint64_t a3, _BYTE *a4)
{
  result = IIOTag::writeBits32(a1, *(a1 + 56), a2);
  *(*(*(a1 + 32) + 8) + 24) += 4;
  if (*(*(*(a1 + 32) + 8) + 24) >= *(*(*(a1 + 40) + 8) + 24))
  {
    *a4 = 1;
  }

  return result;
}

uint64_t IIOTag::writeBits32(IIOTag *this, IIOWriteStream *a2, const __CFString *a3)
{
  memset(v6, 0, sizeof(v6));
  IIONumber::IIONumber(v6, a3);
  v4 = IIONumber::uint32Num(v6);
  IIOWriteStream::write32(a2, v4);
  IIONumber::~IIONumber(v6);
  return 4;
}

void sub_185F0BBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN6IIOTag9writeDataEP14IIOWriteStream_block_invoke_4(uint64_t a1, const __CFString *a2, uint64_t a3, _BYTE *a4)
{
  result = IIOTag::writeBits64(a1, *(a1 + 56), a2);
  *(*(*(a1 + 32) + 8) + 24) += 8;
  if (*(*(*(a1 + 32) + 8) + 24) >= *(*(*(a1 + 40) + 8) + 24))
  {
    *a4 = 1;
  }

  return result;
}

uint64_t IIOTag::writeBits64(IIOTag *this, IIOWriteStream *a2, const __CFString *a3)
{
  memset(v6, 0, sizeof(v6));
  IIONumber::IIONumber(v6, a3);
  v4 = IIONumber::uint64Num(v6);
  IIOWriteStream::write64(a2, v4);
  IIONumber::~IIONumber(v6);
  return 8;
}

void sub_185F0BC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void AppleMakerNoteWriter::AppleMakerNoteWriter(AppleMakerNoteWriter *this, const __CFDictionary *a2, char a3)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *this = &unk_1EF4D24A8;
  *(this + 1) = a2;
  *(this + 16) = a3;
  memset(v5, 0, sizeof(v5));
  IIODictionary::IIODictionary(v5, a2);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN20AppleMakerNoteWriterC2EPK14__CFDictionaryb_block_invoke;
  v4[3] = &__block_descriptor_tmp_19;
  v4[4] = this;
  IIODictionary::enumerate(v5, v4);
  IIODictionary::~IIODictionary(v5);
}

void sub_185F0BD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIODictionary::~IIODictionary(va);
  v14 = *v12;
  if (*v12)
  {
    *(v11 + 32) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void ___ZN20AppleMakerNoteWriterC2EPK14__CFDictionaryb_block_invoke(uint64_t a1, const __CFString *this, void *a3)
{
  if (*MEMORY[0x1E695E738] != a3)
  {
    IIOTag::CreateTagWithProperty(this, a3, a3);
  }
}

void AppleMakerNoteWriter::~AppleMakerNoteWriter(AppleMakerNoteWriter *this)
{
  *this = &unk_1EF4D24A8;
  v2 = *(this + 3);
  v3 = *(this + 4);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 3);
  }

  *(this + 4) = v2;
  if (v2)
  {
    operator delete(v2);
  }
}

{
  AppleMakerNoteWriter::~AppleMakerNoteWriter(this);

  JUMPOUT(0x186602850);
}

uint64_t AppleMakerNoteWriter::writePropertiesAndData(AppleMakerNoteWriter *this, IIOWriteStream *a2, IIOWriteStream *a3)
{
  IIOWriteStream::writeBytes(a2, "Apple iOS", 0xAuLL);
  IIOWriteStream::write16(a2, 1);
  if (*(this + 16))
  {
    v6 = 18761;
  }

  else
  {
    v6 = 19789;
  }

  IIOWriteStream::write16(a2, v6);
  IIOWriteStream::write16(a2, (*(this + 8) - *(this + 6)) >> 3);
  v7 = *(this + 3);
  v8 = *(this + 4);
  v9 = 126 - 2 * __clz((v8->i64 - v7) >> 3);
  v15 = IIOTag::TagCompare;
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **,false>(v7, v8, &v15, v10, 1);
  v12 = *(this + 3);
  v11 = *(this + 4);
  while (v12 != v11)
  {
    v13 = *v12++;
    IIOTag::writePropertyAndData(v13, a2, a3);
  }

  return IIOWriteStream::write32(a2, 0);
}

void AppleMakerNoteWriter::writeToBuffer(AppleMakerNoteWriter *this, unsigned __int8 *__b, size_t a3)
{
  v5 = *(this + 4);
  v6 = *(this + 3);
  v7 = 12 * (v5 - v6) + 20;
  for (i = a3 - v7; v6 != v5; *(v9 + 48) = v7)
  {
    v9 = *v6++;
  }

  memset(__b, 85, a3);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  IIOWriteStream::IIOWriteStream(v12, __b, v7, *(this + 16));
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  IIOWriteStream::IIOWriteStream(v10, &__b[v7], i, *(this + 16));
  AppleMakerNoteWriter::writePropertiesAndData(this, v12, v10);
  IIOWriteStream::~IIOWriteStream(v10);
  IIOWriteStream::~IIOWriteStream(v12);
}

void sub_185F0C120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  IIOWriteStream::~IIOWriteStream(&a9);
  IIOWriteStream::~IIOWriteStream(va);
  _Unwind_Resume(a1);
}

uint64_t AppleMakerNoteGetLength(const __CFDictionary *a1)
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  AppleMakerNoteWriter::AppleMakerNoteWriter(&v7, a1, 0);
  if (*(&v8 + 1) == v9)
  {
    v1 = 0;
  }

  else
  {
    v1 = 0;
    v2 = *(&v8 + 1);
    do
    {
      v3 = *v2++;
      v4 = *(v3 + 16);
      if (v4 <= 4)
      {
        v4 = 0;
      }

      v1 += v4;
    }

    while (v2 != v9);
  }

  v5 = v1 + 12 * ((v9 - *(&v8 + 1)) >> 3);
  AppleMakerNoteWriter::~AppleMakerNoteWriter(&v7);
  return v5 + 20;
}

void AppleMakerNoteWriteToBuffer(const __CFDictionary *a1, unsigned __int8 *a2, size_t a3, char a4)
{
  kdebug_trace();
  memset(v8, 0, sizeof(v8));
  AppleMakerNoteWriter::AppleMakerNoteWriter(v8, a1, a4);
  AppleMakerNoteWriter::writeToBuffer(v8, a2, a3);
  kdebug_trace();
  AppleMakerNoteWriter::~AppleMakerNoteWriter(v8);
}

void std::__throw_length_error[abi:fe200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:fe200100](exception, a1);
  __cxa_throw(exception, off_1E6EF85C0, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:fe200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void std::__throw_bad_array_new_length[abi:fe200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **,false>(uint64_t result, int8x16_t *a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      result = (*a3)(a2[-1].i64[1], v9->i64[0]);
      if (result)
      {
        v59 = v9->i64[0];
        v9->i64[0] = a2[-1].i64[1];
LABEL_98:
        a2[-1].i64[1] = v59;
        return result;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **>(v9, a2->i64, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **>(v9, a2->i64, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **,IIOTag **>(v9->i64, a2->i64, a2->i64, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *a3;
    if (v12 >= 0x81)
    {
      v15 = v14(v8[v13], *v8);
      v16 = (*a3)(a2[-1].i64[1], v8[v13]);
      if (v15)
      {
        v17 = *v8;
        if (v16)
        {
          *v8 = a2[-1].i64[1];
          a2[-1].i64[1] = v17;
        }

        else
        {
          *v8 = v8[v13];
          v8[v13] = v17;
          if ((*a3)(a2[-1].i64[1]))
          {
            v25 = v8[v13];
            v8[v13] = a2[-1].i64[1];
            a2[-1].i64[1] = v25;
          }
        }
      }

      else if (v16)
      {
        v21 = v8[v13];
        v8[v13] = a2[-1].i64[1];
        a2[-1].i64[1] = v21;
        if ((*a3)(v8[v13], *v8))
        {
          v22 = *v8;
          *v8 = v8[v13];
          v8[v13] = v22;
        }
      }

      v26 = v13 - 1;
      v27 = (*a3)(v8[v13 - 1], v8[1]);
      v28 = (*a3)(a2[-1].i64[0], v8[v13 - 1]);
      if (v27)
      {
        v29 = v8[1];
        if (v28)
        {
          v8[1] = a2[-1].i64[0];
          a2[-1].i64[0] = v29;
        }

        else
        {
          v8[1] = v8[v26];
          v8[v26] = v29;
          if ((*a3)(a2[-1].i64[0]))
          {
            v33 = v8[v26];
            v8[v26] = a2[-1].i64[0];
            a2[-1].i64[0] = v33;
          }
        }
      }

      else if (v28)
      {
        v30 = v8[v26];
        v8[v26] = a2[-1].i64[0];
        a2[-1].i64[0] = v30;
        if ((*a3)(v8[v26], v8[1]))
        {
          v31 = v8[1];
          v8[1] = v8[v26];
          v8[v26] = v31;
        }
      }

      v34 = v13 + 1;
      v35 = (*a3)(v8[v13 + 1], v8[2]);
      v36 = (*a3)(a2[-2].i64[1], v8[v13 + 1]);
      if (v35)
      {
        v37 = v8[2];
        if (v36)
        {
          v8[2] = a2[-2].i64[1];
          a2[-2].i64[1] = v37;
        }

        else
        {
          v8[2] = v8[v34];
          v8[v34] = v37;
          if ((*a3)(a2[-2].i64[1]))
          {
            v40 = v8[v34];
            v8[v34] = a2[-2].i64[1];
            a2[-2].i64[1] = v40;
          }
        }
      }

      else if (v36)
      {
        v38 = v8[v34];
        v8[v34] = a2[-2].i64[1];
        a2[-2].i64[1] = v38;
        if ((*a3)(v8[v34], v8[2]))
        {
          v39 = v8[2];
          v8[2] = v8[v34];
          v8[v34] = v39;
        }
      }

      v41 = (*a3)(v8[v13], v8[v26]);
      v42 = (*a3)(v8[v34], v8[v13]);
      if (v41)
      {
        v43 = v8[v26];
        if (v42)
        {
          v8[v26] = v8[v34];
          v8[v34] = v43;
          v44 = v8[v13];
          goto LABEL_59;
        }

        v8[v26] = v8[v13];
        v8[v13] = v43;
        v47 = (*a3)(v8[v34]);
        v44 = v8[v13];
        if (v47)
        {
          v46 = v8[v34];
          v8[v13] = v46;
          v8[v34] = v44;
LABEL_58:
          v44 = v46;
        }
      }

      else
      {
        v44 = v8[v13];
        if (v42)
        {
          v8[v13] = v8[v34];
          v8[v34] = v44;
          v45 = (*a3)();
          v44 = v8[v13];
          if (v45)
          {
            v46 = v8[v26];
            v8[v26] = v44;
            v8[v13] = v46;
            goto LABEL_58;
          }
        }
      }

LABEL_59:
      v48 = *v8;
      *v8 = v44;
      v8[v13] = v48;
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v18 = v14(*v8, v8[v13]);
    v19 = (*a3)(a2[-1].i64[1], *v8);
    if (v18)
    {
      v20 = v8[v13];
      if (!v19)
      {
        v8[v13] = *v8;
        *v8 = v20;
        if ((*a3)(a2[-1].i64[1]))
        {
          v32 = *v8;
          *v8 = a2[-1].i64[1];
          a2[-1].i64[1] = v32;
        }

LABEL_38:
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v8[v13] = a2[-1].i64[1];
      a2[-1].i64[1] = v20;
      if (a5)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_38;
      }

      v23 = *v8;
      *v8 = a2[-1].i64[1];
      a2[-1].i64[1] = v23;
      if (!(*a3)(*v8, v8[v13]))
      {
        goto LABEL_38;
      }

      v24 = v8[v13];
      v8[v13] = *v8;
      *v8 = v24;
      if (a5)
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    if (((*a3)(*(v8 - 1), *v8) & 1) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:fe200100]<std::_ClassicAlgPolicy,IIOTag **,BOOL (*&)(IIOTag *,IIOTag *)>(v8, a2->i64, a3);
      v9 = result;
      goto LABEL_66;
    }

LABEL_61:
    v49 = std::__partition_with_equals_on_right[abi:fe200100]<std::_ClassicAlgPolicy,IIOTag **,BOOL (*&)(IIOTag *,IIOTag *)>(v8, a2->i64, a3);
    if ((v50 & 1) == 0)
    {
      goto LABEL_64;
    }

    v51 = std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **>(v8, v49, a3);
    v9 = &v49->u64[1];
    result = std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **>(&v49->i64[1], a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v49;
      if (v51)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v51)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **,false>(v8, v49, a3, -v11, a5 & 1);
      v9 = &v49->u64[1];
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      return std::__sort4[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **,0>(v9, &v9->i64[1], v9[1].i64, &a2[-1].i64[1], a3);
    }

    if (v12 == 5)
    {
      std::__sort4[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **,0>(v9, &v9->i64[1], v9[1].i64, &v9[1].i64[1], a3);
      result = (*a3)(a2[-1].i64[1], v9[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v54 = v9[1].i64[1];
      v9[1].i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v54;
      result = (*a3)(v9[1].i64[1], v9[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v55 = v9[1].i64[0];
      v9[1].i64[0] = v9[1].i64[1];
      v9[1].i64[1] = v55;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v57 = v9->i64[1];
      v56 = v9[1].i64[0];
      v58 = v9->i64[0];
      v9->i64[1] = v56;
      v9[1].i64[0] = v57;
      result = (*a3)(v56, v58);
      goto LABEL_91;
    }

    goto LABEL_11;
  }

  v52 = (*a3)(v9->i64[1], v9->i64[0]);
  result = (*a3)(a2[-1].i64[1], v9->i64[1]);
  if ((v52 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v60 = v9->i64[1];
    v9->i64[1] = a2[-1].i64[1];
    a2[-1].i64[1] = v60;
    result = (*a3)(v9->i64[1], v9->i64[0]);
LABEL_91:
    if (result)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }

    return result;
  }

  v53 = v9->i64[0];
  if (result)
  {
    v9->i64[0] = a2[-1].i64[1];
    a2[-1].i64[1] = v53;
    return result;
  }

  v9->i64[0] = v9->i64[1];
  v9->i64[1] = v53;
  result = (*a3)(a2[-1].i64[1]);
  if (result)
  {
    v59 = v9->i64[1];
    v9->i64[1] = a2[-1].i64[1];
    goto LABEL_98;
  }

  return result;
}

uint64_t std::__sort4[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **,0>(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        result = (*a3)(v9, v10);
        if (result)
        {
          v11 = *v8;
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 8) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*a3)(v11, *(v4 + v12 - 8));
            v12 -= 8;
            if ((result & 1) == 0)
            {
              v13 = (v4 + v12 + 8);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v11;
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = -8;
      v9 = 8;
      while (1)
      {
        v10 = *(v4 + v7);
        v7 = v9;
        result = (*a3)(*v5, v10);
        if (result)
        {
          break;
        }

LABEL_9:
        v9 = v7 + 8;
        ++v5;
        v8 -= 8;
        if (v5 == a2)
        {
          return result;
        }
      }

      v11 = *v5;
      v12 = v5;
      v13 = v8;
      while (1)
      {
        *v12 = *(v12 - 1);
        if (!v13)
        {
          break;
        }

        result = (*a3)(v11, *(v12 - 2));
        v13 += 8;
        --v12;
        if ((result & 1) == 0)
        {
          *v12 = v11;
          goto LABEL_9;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t std::__partition_with_equals_on_left[abi:fe200100]<std::_ClassicAlgPolicy,IIOTag **,BOOL (*&)(IIOTag *,IIOTag *)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = *a1;
  result = (*a3)(*a1, *(a2 - 1));
  if (result)
  {
    v8 = a1 + 1;
    while (v8 != a2)
    {
      v9 = *v8++;
      result = (*a3)(v6, v9);
      if (result)
      {
        v10 = v8 - 1;
        goto LABEL_9;
      }
    }

    goto LABEL_24;
  }

  v11 = a1 + 1;
  do
  {
    v10 = v11;
    if (v11 >= a2)
    {
      break;
    }

    ++v11;
    result = (*a3)(v6, *v10);
  }

  while ((result & 1) == 0);
LABEL_9:
  v12 = a2;
  if (v10 < a2)
  {
    v12 = a2;
    while (v12 != a1)
    {
      v13 = *--v12;
      result = (*a3)(v6, v13);
      if ((result & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_24;
  }

LABEL_20:
  if (v10 < v12)
  {
    v14 = *v10;
    *v10 = *v12;
    v15 = v10 + 1;
    *v12 = v14;
    while (v15 != a2)
    {
      v16 = *v15++;
      result = (*a3)(v6, v16);
      if (result)
      {
        v10 = v15 - 1;
        while (v12 != a1)
        {
          v17 = *--v12;
          result = (*a3)(v6, v17);
          if ((result & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        break;
      }
    }

LABEL_24:
    __break(1u);
    return result;
  }

  if (v10 - 1 != a1)
  {
    *a1 = *(v10 - 1);
  }

  *(v10 - 1) = v6;
  return v10;
}

uint64_t std::__partition_with_equals_on_right[abi:fe200100]<std::_ClassicAlgPolicy,IIOTag **,BOOL (*&)(IIOTag *,IIOTag *)>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v5 = result;
  v6 = 0;
  v7 = *result;
  do
  {
    v8 = &v5[v6 + 1];
    if (v8 == a2)
    {
      goto LABEL_26;
    }

    result = (*a3)(*v8, v7);
    ++v6;
  }

  while ((result & 1) != 0);
  v9 = &v5[v6];
  if (v6 != 1)
  {
    v10 = a2;
    while (v10 != v5)
    {
      v11 = *--v10;
      result = (*a3)(v11, v7);
      if (result)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_26;
  }

  v10 = a2;
  do
  {
    if (v9 >= v10)
    {
      break;
    }

    v12 = *--v10;
    result = (*a3)(v12, v7);
  }

  while ((result & 1) == 0);
LABEL_12:
  if (v9 < v10)
  {
    v13 = v9;
    v14 = v10;
LABEL_14:
    v15 = *v13;
    *v13 = *v14;
    *v14 = v15;
    v16 = v13 + 1;
    while (v16 != a2)
    {
      v17 = *v16++;
      result = (*a3)(v17, v7);
      if ((result & 1) == 0)
      {
        v13 = v16 - 1;
        while (v14 != v5)
        {
          v18 = *--v14;
          result = (*a3)(v18, v7);
          if (result)
          {
            if (v13 < v14)
            {
              goto LABEL_14;
            }

            result = (v16 - 2);
            goto LABEL_23;
          }
        }

        break;
      }
    }

LABEL_26:
    __break(1u);
    return result;
  }

  result = (v9 - 1);
LABEL_23:
  if (result != v5)
  {
    *v5 = *result;
  }

  *result = v7;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **>(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v14 = (*a3)(a1[1], *a1);
        v15 = (*a3)(*(a2 - 1), a1[1]);
        if (v14)
        {
          v16 = *a1;
          if (v15)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v16;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v16;
          if (!(*a3)(*(a2 - 1)))
          {
            return 1;
          }

          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v15)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v21;
        v13 = (*a3)(a1[1], *a1);
        break;
      case 4:
        std::__sort4[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v11 = a1[1];
        v10 = a1[2];
        v12 = *a1;
        a1[1] = v10;
        a1[2] = v11;
        v13 = (*a3)(v10, v12);
        break;
      default:
        goto LABEL_17;
    }

    if (v13)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v17 = (*a3)(a1[1], *a1);
  v18 = a1 + 2;
  v19 = (*a3)(a1[2], a1[1]);
  if (v17)
  {
    v20 = *a1;
    if (v19)
    {
      *a1 = a1[2];
      a1[2] = v20;
    }

    else
    {
      v23 = a1[2];
      *a1 = a1[1];
      a1[1] = v20;
      if ((*a3)(v23))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v19)
  {
    v22 = a1[1];
    a1[1] = a1[2];
    a1[2] = v22;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v24 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v25 = 0;
  v26 = 0;
  while (1)
  {
    if ((*a3)(*v24, *v18))
    {
      v27 = *v24;
      v28 = v25;
      while (1)
      {
        v29 = a1 + v28;
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v28 -= 8;
        if (((*a3)(v27, *(v29 + 1)) & 1) == 0)
        {
          v30 = (a1 + v28 + 24);
          goto LABEL_40;
        }
      }

      v30 = a1;
LABEL_40:
      *v30 = v27;
      if (++v26 == 8)
      {
        return v24 + 1 == a2;
      }
    }

    v18 = v24;
    v25 += 8;
    if (++v24 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__partial_sort_impl[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **,IIOTag **>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(*v12, *a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        v16 = std::__floyd_sift_down[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **>(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          std::__sift_up[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **>(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **>(uint64_t result, unsigned int (**a2)(void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(*v12, v12[1]))
      {
        ++v12;
        v11 = v13;
      }

      result = (*a2)(*v12, *v5);
      if ((result & 1) == 0)
      {
        v14 = *v5;
        do
        {
          v15 = v12;
          *v5 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 8 * v16);
          if (2 * v11 + 2 < a3)
          {
            if ((*a2)(*v12, v12[1]))
            {
              ++v12;
              v16 = 2 * v11 + 2;
            }
          }

          result = (*a2)(*v12, v14);
          v5 = v15;
          v11 = v16;
        }

        while (!result);
        *v15 = v14;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **>(void *a1, unsigned int (**a2)(void, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = v8[2];
      v12 = v8 + 2;
      if ((*a2)(*(v12 - 1), v13))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:fe200100]<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = (*a3)(*v8, *(a2 - 8));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        result = (*a3)(*v8, v10);
        v9 = v11;
      }

      while ((result & 1) != 0);
      *v11 = v10;
    }
  }

  return result;
}

void kd_roi_level_node::~kd_roi_level_node(kd_roi_level_node *this)
{
  *this = &unk_1EF4D24E8;
  if (*(this + 17) == 1)
  {
    __assert_rtn("~kd_roi_level_node", "roi.cpp", 55, "!active");
  }

  if (*(this + 5))
  {
    v2 = *(this + 7);
    if (v2 < 1)
    {
      goto LABEL_9;
    }

    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 5) + 8 * i);
      if (v4)
      {
        MEMORY[0x186602830](v4, 0x1000C8077774924);
        v2 = *(this + 7);
      }
    }

    if (*(this + 5))
    {
LABEL_9:
      MEMORY[0x186602830]();
    }
  }

  *this = &unk_1EF4D2540;
}

{
  kd_roi_level_node::~kd_roi_level_node(this);

  JUMPOUT(0x186602850);
}

void *kd_roi_level_node::pull(kd_roi_level_node *this, unsigned __int8 *__dst, int a3)
{
  if (*(this + 17) != 1 || *(this + 5) != a3 || *(this + 6) < 1)
  {
    kd_roi_level_node::pull();
  }

  while (!*(this + 9))
  {
    kd_roi_level::advance(*(this + 1));
  }

  result = memcpy(__dst, *(*(this + 5) + 8 * *(this + 8)), a3);
  v7 = *(this + 8);
  v8 = *(this + 9) - 1;
  v9 = *(this + 6);
  if (v7 + 1 == *(this + 7))
  {
    v10 = 0;
  }

  else
  {
    v10 = v7 + 1;
  }

  *(this + 8) = v10;
  *(this + 9) = v8;
  *(this + 6) = v9 - 1;
  return result;
}

_BYTE *kd_roi_level::advance(kd_roi_level *this)
{
  if (!*this)
  {
    kd_roi_level::advance();
  }

  v2 = *(this + 12);
  v3 = *(this + 14) + v2;
  v4 = *(this + 16);
  if (v4 >= v3)
  {
    kd_roi_level::advance();
  }

  v5 = *(this + 16);
  if (*(this + 108) == 1)
  {
    v6 = this + 8 * (v4 & 1);
    v7 = *(v6 + 19) + v4;
    v8 = *(v6 + 23) + v4;
    v5 = v7 <= v2 ? *(this + 12) : v7;
    v4 = v8 >= v3 ? v3 - 1 : v8;
    if (v4 - v5 + 1 > *(this + 28))
    {
      kd_roi_level::advance();
    }
  }

  v10 = *(this + 17);
  v9 = *(this + 18);
  if (v4 >= v9 + v10)
  {
    v11 = *(this + 28);
    do
    {
      v12 = *(this + 29) + v9;
      if (v12 < v11)
      {
        v11 = 0;
      }

      (*(**this + 24))(*this, *(*(this + 15) + 8 * (v12 - v11)), *(this + 15));
      v9 = *(this + 18);
      v11 = *(this + 28);
      if (v9 == v11)
      {
        v13 = *(this + 29) + 1;
        *(this + 29) = v13;
        v10 = *(this + 17) + 1;
        *(this + 17) = v10;
        if (v13 == v9)
        {
          *(this + 29) = 0;
        }
      }

      else
      {
        *(this + 18) = ++v9;
        v10 = *(this + 17);
      }
    }

    while (v4 >= v9 + v10);
  }

  if (v5 - v10 < 0)
  {
    kd_roi_level::advance();
  }

  v14 = *(this + 29) + v5 - v10;
  if (v14 >= *(this + 28))
  {
    v15 = *(this + 28);
  }

  else
  {
    v15 = 0;
  }

  v16 = v14 - v15;
  result = memcpy(*(this + 16), *(*(this + 15) + 8 * (v14 - v15)), *(this + 15));
  if (v5 < v4)
  {
    do
    {
      if (v16 + 1 == *(this + 28))
      {
        v16 = 0;
      }

      else
      {
        ++v16;
      }

      v18 = *(this + 15);
      if (v18 >= 1)
      {
        v19 = *(this + 16);
        v20 = *(*(this + 15) + 8 * v16);
        v21 = v18 + 1;
        do
        {
          v22 = *v20++;
          *v19++ |= v22;
          --v21;
        }

        while (v21 > 1);
      }

      ++v5;
    }

    while (v5 != v4);
  }

  if (*(this + 108) == 1)
  {
    v23 = 2 * (*(this + 16) & 1);
  }

  else
  {
    v23 = 0;
  }

  if (*(this + 109) == 1)
  {
    v24 = 0;
    v25 = 1;
    v26 = v23;
    do
    {
      v27 = v25;
      if ((*(this + v26 + 40) & 1) == 0)
      {
        v28 = *(this + v26 + 1);
        if (!v28)
        {
          kd_roi_level::advance();
        }

        result = kd_roi_level_node::advance(v28);
        if (result)
        {
          v29 = *(this + 2 * v24 + 20);
          v30 = *(this + 2 * v24 + 24);
          v31 = *(this + 13);
          v32 = (v31 + v24) & 1;
          LODWORD(v33) = *(this + 15) + ~v32;
          v34 = (v33 >> 1) + 1;
          v35 = *(this + 16);
          v36 = v35 + v32;
          if (v33 >> 1 < 0 || ((v32 + v29) & 0x80000000) == 0)
          {
            v45 = (v33 >> 1) + 1;
          }

          else
          {
            v37 = (v23 ^ v31) & 1;
            v38 = ~v37;
            v39 = (v35 + v32 - v37);
            do
            {
              v40 = 0;
              if (v30 >= v33)
              {
                v41 = v33;
              }

              else
              {
                v41 = v30;
              }

              if (v41 >= -v32)
              {
                v40 = 0;
                v42 = v39;
                v43 = v38;
                do
                {
                  v44 = *v42++;
                  v40 |= v44;
                  ++v43;
                }

                while (v43 < v41);
              }

              *result++ = v40;
              v45 = v34 - 1;
              LODWORD(v33) = v33 - 2;
              v36 += 2;
              if (v34 <= 1)
              {
                break;
              }

              LODWORD(v32) = v32 + 2;
              v38 -= 2;
              --v34;
            }

            while (v32 + v29 < 0);
          }

          if (v45 < 1 || v33 < v30)
          {
            v49 = v45;
          }

          else
          {
            do
            {
              if (v29 <= v30)
              {
                v46 = 0;
                v47 = v30 - v29 + 1;
                v48 = v29;
                do
                {
                  v46 |= *(v36 + v48++);
                  --v47;
                }

                while (v47);
              }

              else
              {
                v46 = 0;
              }

              *result++ = v46;
              v49 = v45 - 1;
              LODWORD(v33) = v33 - 2;
              v36 += 2;
              if (v45 <= 1)
              {
                break;
              }

              --v45;
            }

            while (v33 >= v30);
          }

          if (v49 >= 1)
          {
            v33 = v33;
            do
            {
              if (v33 >= v29)
              {
                v50 = 0;
                v51 = v29;
                do
                {
                  v50 |= *(v36 + v51);
                }

                while (v51++ < v33);
              }

              else
              {
                v50 = 0;
              }

              *result++ = v50;
              v33 -= 2;
              v36 += 2;
              v53 = __OFSUB__(v49--, 1);
            }

            while (!((v49 < 0) ^ v53 | (v49 == 0)));
          }
        }
      }

      v25 = 0;
      ++v26;
      LOBYTE(v23) = v23 + 1;
      v24 = 1;
    }

    while ((v27 & 1) != 0);
  }

  else
  {
    v54 = *(this + v23 + 1);
    if (!v54)
    {
      kd_roi_level::advance();
    }

    result = kd_roi_level_node::advance(v54);
    if (result)
    {
      result = memcpy(result, *(this + 16), *(this + 15));
    }
  }

  ++*(this + 16);
  if (*(this + 11) == 4)
  {
    result = (*(**this + 16))();
    *this = 0;
  }

  return result;
}

uint64_t kd_roi_level_node::advance(kd_roi_level_node *this)
{
  if (*(this + 17))
  {
    v2 = *(this + 9);
    if (*(this + 6) <= v2)
    {
      kd_roi_level_node::advance();
    }

    v3 = *(this + 7);
    if (v2 == v3)
    {
      operator new[]();
    }

    v5 = *(this + 9);
    v6 = *(this + 8) + v5;
    if (v6 >= v3)
    {
      v7 = *(this + 7);
    }

    else
    {
      v7 = 0;
    }

    *(this + 9) = v5 + 1;
    return *(*(this + 5) + 8 * (v6 - v7));
  }

  else
  {
    result = 0;
    *(this + 16) = 0;
  }

  return result;
}

_DWORD *kd_roi_level::notify_release(_DWORD *this, kd_roi_level_node *a2)
{
  v2 = this;
  v3 = 0;
  while (*&this[2 * v3 + 2] != a2)
  {
    if (++v3 == 4)
    {
      goto LABEL_9;
    }
  }

  v4 = this + v3;
  if (v4[40] == 1)
  {
LABEL_9:
    kd_roi_level::notify_release();
  }

  v4[40] = 1;
  v5 = this[11] + 1;
  this[11] = v5;
  if (v5 == 4)
  {
    this = (*(**this + 16))();
    *v2 = 0;
  }

  return this;
}

void sub_185F0DFBC(void *a1)
{
  __cxa_begin_catch(a1);
  if (*v1)
  {
    kdu_roi_level::create(*v1);
  }

  *v1 = 0;
  __cxa_rethrow();
}

void kd_roi_level::init(int32x4_t *a1, int32x4_t *a2, uint64_t a3)
{
  v19 = a2;
  a1->i64[0] = a3;
  kdu_node::get_dims(&v19, a1 + 3);
  v4 = 0;
  a1[2].i32[3] = 0;
  do
  {
    v18 = kdu_node::access_child(&v19, v4);
    if (v18)
    {
      v17 = 0uLL;
      kdu_node::get_dims(&v18, &v17);
      operator new();
    }

    a1->i64[v4 + 1] = 0;
    a1[2].i8[v4 + 8] = 1;
    ++a1[2].i32[3];
    ++v4;
  }

  while (v4 != 4);
  v6 = a1[1].i64[0];
  v5 = a1[1].i64[1];
  a1[6].i8[13] = v6 != 0;
  a1[6].i8[12] = v5 != 0;
  v16 = 0.0;
  v17.i32[0] = 0;
  LODWORD(v18) = 0;
  *v15 = 0;
  if (v6)
  {
    kdu_node::get_kernel_info(&v19, v17.i32, &v18, &v16, &v15[1], v15, a1[5].i32, a1[6].i32, &a1[5].i32[2], &a1[6].i32[2], 0);
    if ((a1[6].i8[12] & 1) == 0)
    {
LABEL_7:
      v7 = 1;
      goto LABEL_16;
    }
  }

  else if (!v5)
  {
    goto LABEL_7;
  }

  v8 = 1;
  kdu_node::get_kernel_info(&v19, v17.i32, &v18, &v16, &v15[1], v15, &a1[4].i32[3], &a1[5].i32[3], &a1[5].i32[1], &a1[6].i32[1], 1);
  v9 = 0;
  v10 = 0;
  do
  {
    v11 = v8;
    v12 = 2 * v9;
    v13 = a1[5].i32[v12 + 3];
    v14 = a1[4].i32[v12 + 3];
    if (v10 <= v13)
    {
      v10 = v13;
    }

    if (v10 <= -v14)
    {
      v10 = -v14;
    }

    v9 = 1;
    v8 = 0;
  }

  while ((v11 & 1) != 0);
  v7 = (2 * v10) | 1;
LABEL_16:
  a1[7].i32[0] = v7;
  operator new[]();
}

kd_roi_level *kdu_roi_level::destroy(kd_roi_level **this)
{
  result = *this;
  if (result)
  {
    kd_roi_level::~kd_roi_level(result);
    result = MEMORY[0x186602850]();
  }

  *this = 0;
  return result;
}

uint64_t kdu_roi_level::acquire_node(kdu_roi_level *this, unsigned int a2)
{
  if (a2 >= 4)
  {
    kdu_roi_level::acquire_node();
  }

  result = *(*this + 8 * a2 + 8);
  if (result)
  {
    if ((*(result + 16) & 1) == 0)
    {
      kdu_roi_level::acquire_node();
    }

    *(result + 16) = 256;
  }

  return result;
}

void kd_roi_level::~kd_roi_level(kd_roi_level *this)
{
  for (i = 8; i != 40; i += 8)
  {
    v3 = *(this + i);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  if (*(this + 15))
  {
    v4 = *(this + 28);
    if (v4 < 1)
    {
      goto LABEL_12;
    }

    for (j = 0; j < v4; ++j)
    {
      v6 = *(*(this + 15) + 8 * j);
      if (v6)
      {
        MEMORY[0x186602830](v6, 0x1000C8077774924);
        v4 = *(this + 28);
      }
    }

    if (*(this + 15))
    {
LABEL_12:
      MEMORY[0x186602830]();
    }
  }

  v7 = *(this + 16);
  if (v7)
  {
    MEMORY[0x186602830](v7, 0x1000C8077774924);
  }

  if (*this)
  {
    (*(**this + 16))(*this);
  }
}

uint64_t kd_tile::kd_tile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 104) = 0;
  v10 = a1 + 104;
  *(a1 + 280) = 0;
  *(a1 + 212) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 244) = 0;
  *a1 = a2;
  *(a1 + 24) = a3;
  if (*(a3 + 16))
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    kdu_error::kdu_error(v13, "Kakadu Core Error:\n");
    (*(*&v13[0] + 16))(v13, "Assert ");
    (*(*&v13[0] + 16))(v13, "tref->tile == NULL");
    (*(*&v13[0] + 16))(v13, " FAILED");
    kdu_error::~kdu_error(v13);
  }

  *(a1 + 12) = a4;
  *(a1 + 8) = HIDWORD(a4) + *(a2 + 224) * a4;
  *(a1 + 184) = 0;
  *(a1 + 288) = 0;
  *(a1 + 32) = 0;
  v11 = *(a2 + 8);
  if (v11 && ((*(**(v11 + 552) + 24))(*(v11 + 552)) & 2) != 0)
  {
    kd_precinct_pointer_server::initialize(v10, *(a2 + 48));
  }

  *(a1 + 212) = a5;
  *(a1 + 220) = a6;
  *(a1 + 236) = 0;
  *(a1 + 328) = 0;
  *(a1 + 287) = 0;
  *(a1 + 320) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0;
  *(a1 + 297) = 0;
  *(a1 + 289) = 0;
  *(a1 + 316) = 0;
  *(a1 + 308) = 0;
  *(a1 + 300) = 0;
  return a1;
}

uint64_t kd_precinct_pointer_server::initialize(uint64_t this, kd_buf_server *a2)
{
  if (*this)
  {
    kd_precinct_pointer_server::initialize();
  }

  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 60) = 0;
  *(this + 72) = 0;
  *this = a2;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void kd_tile::~kd_tile(kd_tile *this)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(*this + 440) == this)
  {
    *&v21 = 0;
    *v19 = 0u;
    v20 = 0u;
    kdu_error::kdu_error(v19, "Kakadu Core Error:\n");
    (*(*v19 + 16))(v19, "Assert ");
    (*(*v19 + 16))(v19, "this != codestream->active_tile");
    (*(*v19 + 16))(v19, " FAILED");
    kdu_error::~kdu_error(v19);
  }

  if (*(this + 288) == 1)
  {
    kd_tile::remove_from_in_progress_list(this);
  }

  v2 = *(this + 10);
  if (v2)
  {
    kd_pp_markers::~kd_pp_markers(v2);
    MEMORY[0x186602850]();
  }

  v3 = *(this + 11);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(this + 3))
  {
    v4 = **this;
    if (!v4 || (*(this + 287) & 1) != 0)
    {
      goto LABEL_17;
    }

    (*(*v4 + 16))(**this, "\n>> New attributes for tile ");
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *v19 = 0u;
    if (*(v4 + 8))
    {
      sprintf(v19, "%x");
    }

    else
    {
      sprintf(v19, "%d");
    }

    (*(*v4 + 16))(v4, v19);
    (*(*v4 + 16))(v4, ":\n");
    kdu_params::textualize_attributes(*(*this + 24), v4, *(this + 2), *(this + 2), 1);
    (*(*v4 + 32))(v4, 0);
    if (*(this + 3))
    {
LABEL_17:
      if ((*(this + 287) & 1) == 0 && (*(this + 290) & 1) == 0)
      {
        for (i = 1; ; ++i)
        {
          v17 = kdu_params::access_cluster(*(*this + 24), i);
          if (!v17)
          {
            break;
          }

          v18 = kdu_params::access_unique(v17, *(this + 2), -1, 0);
          if (v18)
          {
            (*(*v18 + 16))(v18);
          }
        }
      }
    }
  }

  v5 = *(this + 12);
  if (v5)
  {
    MEMORY[0x186602850](v5, 0x1020C40539952E0);
  }

  v6 = *(this + 34);
  if (v6)
  {
    v7 = v6 - 16;
    v8 = *(v6 - 8);
    if (v8)
    {
      v9 = (v6 + 224 * v8 - 224);
      v10 = -224 * v8;
      do
      {
        kd_tile_comp::~kd_tile_comp(v9);
        v9 = (v11 - 224);
        v10 += 224;
      }

      while (v10);
    }

    MEMORY[0x186602830](v7, 0x10A0C802A3299D9);
  }

  v12 = *(this + 32);
  for (*(this + 33) = v12; v12; *(this + 33) = v12)
  {
    *(this + 32) = *(v12 + 7);
    kd_mct_stage::~kd_mct_stage(v12);
    MEMORY[0x186602850]();
    v12 = *(this + 32);
  }

  v13 = *(this + 3);
  if (v13 && *(v13 + 16) != this)
  {
    *&v21 = 0;
    *v19 = 0u;
    v20 = 0u;
    kdu_error::kdu_error(v19, "Kakadu Core Error:\n");
    (*(*v19 + 16))(v19, "Assert ");
    (*(*v19 + 16))(v19, "tile_ref->tile == this");
    (*(*v19 + 16))(v19, " FAILED");
    kdu_error::~kdu_error(v19);
  }

  if (*(this + 290) == 1)
  {
    if (!*(this + 3))
    {
      *&v21 = 0;
      *v19 = 0u;
      v20 = 0u;
      kdu_error::kdu_error(v19, "Kakadu Core Error:\n");
      (*(*v19 + 16))(v19, "Assert ");
      (*(*v19 + 16))(v19, "tile_ref != NULL");
      (*(*v19 + 16))(v19, " FAILED");
      kdu_error::~kdu_error(v19);
    }

    kd_tile::withdraw_from_unloadable_list(this);
    v14 = 0;
    v15 = *(this + 3);
    goto LABEL_39;
  }

  v15 = *(this + 3);
  if (*(this + 287) == 1)
  {
    if (!v15)
    {
      *&v21 = 0;
      *v19 = 0u;
      v20 = 0u;
      kdu_error::kdu_error(v19, "Kakadu Core Error:\n");
      (*(*v19 + 16))(v19, "Assert ");
      (*(*v19 + 16))(v19, "tile_ref != NULL");
      (*(*v19 + 16))(v19, " FAILED");
      kdu_error::~kdu_error(v19);
    }

    v14 = 0;
    goto LABEL_39;
  }

  if (v15)
  {
    v14 = -1;
LABEL_39:
    *(v15 + 16) = v14;
    kd_buf_server::augment_structure_bytes(*(*this + 48), -*(this + 70));
  }

  kd_precinct_pointer_server::disable(this + 13);
}

void sub_185F0ED28(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *kd_tile::remove_from_in_progress_list(uint64_t *this)
{
  if (*(this + 288) == 1)
  {
    v1 = *this;
    v2 = *(*this + 360);
    if (v2 <= 0)
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
      kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
      (*(v5 + 16))(&v5, "Assert ");
      (*(v5 + 16))(&v5, "codestream->num_incomplete_tiles > 0");
      (*(v5 + 16))(&v5, " FAILED");
      kdu_error::~kdu_error(&v5);
    }

    *(v1 + 360) = v2 - 1;
    v3 = this[6];
    if (v3)
    {
      v4 = this[5];
      *(v3 + 40) = v4;
      if (v4)
      {
LABEL_6:
        *(v4 + 48) = this[6];
LABEL_13:
        *(this + 288) = 0;
        this[5] = 0;
        this[6] = 0;
        return this;
      }
    }

    else
    {
      if (*(v1 + 336) != this)
      {
        v7 = 0;
        v5 = 0u;
        v6 = 0u;
        kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
        (*(v5 + 16))(&v5, "Assert ");
        (*(v5 + 16))(&v5, "this == codestream->tiles_in_progress_head");
        (*(v5 + 16))(&v5, " FAILED");
        kdu_error::~kdu_error(&v5);
      }

      v4 = this[5];
      *(v1 + 336) = v4;
      if (v4)
      {
        goto LABEL_6;
      }
    }

    if (*(v1 + 344) != this)
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
      kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
      (*(v5 + 16))(&v5, "Assert ");
      (*(v5 + 16))(&v5, "this == codestream->tiles_in_progress_tail");
      (*(v5 + 16))(&v5, " FAILED");
      kdu_error::~kdu_error(&v5);
    }

    *(v1 + 344) = this[6];
    goto LABEL_13;
  }

  return this;
}

_BYTE *kdu_message::operator<<(_BYTE *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  *v3 = 0u;
  if (a1[8])
  {
    sprintf(v3, "%x");
  }

  else
  {
    sprintf(v3, "%d");
  }

  (*(*a1 + 16))(a1, v3);
  return a1;
}

uint64_t *kd_tile::withdraw_from_unloadable_list(uint64_t *this)
{
  if ((*(this + 290) & 1) == 0)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
    (*(v5 + 16))(&v5, "Assert ");
    (*(v5 + 16))(&v5, "is_unloadable");
    (*(v5 + 16))(&v5, " FAILED");
    kdu_error::~kdu_error(&v5);
  }

  v1 = this[8];
  if (v1)
  {
    v2 = this[7];
    *(v1 + 56) = v2;
    if (v2)
    {
LABEL_5:
      *(v2 + 64) = this[8];
      v3 = *this;
      goto LABEL_12;
    }
  }

  else
  {
    if (*(*this + 480) != this)
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
      kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
      (*(v5 + 16))(&v5, "Assert ");
      (*(v5 + 16))(&v5, "codestream->unloadable_tiles_head == this");
      (*(v5 + 16))(&v5, " FAILED");
      kdu_error::~kdu_error(&v5);
    }

    v2 = this[7];
    *(*this + 480) = v2;
    if (v2)
    {
      goto LABEL_5;
    }
  }

  v3 = *this;
  if (*(*this + 488) != this)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
    (*(v5 + 16))(&v5, "Assert ");
    (*(v5 + 16))(&v5, "codestream->unloadable_tiles_tail == this");
    (*(v5 + 16))(&v5, " FAILED");
    kdu_error::~kdu_error(&v5);
  }

  *(v3 + 488) = this[8];
LABEL_12:
  if (*(v3 + 496) == this)
  {
    *(v3 + 496) = this[7];
  }

  this[7] = 0;
  this[8] = 0;
  v4 = *(v3 + 504);
  *(v3 + 504) = v4 - 1;
  if (v4 <= 0)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    kdu_error::kdu_error(&v5, "Kakadu Core Error:\n");
    (*(v5 + 16))(&v5, "Assert ");
    (*(v5 + 16))(&v5, "codestream->num_unloadable_tiles >= 0");
    (*(v5 + 16))(&v5, " FAILED");
    kdu_error::~kdu_error(&v5);
  }

  *(this + 290) = 0;
  return this;
}

uint64_t kd_buf_server::augment_structure_bytes(uint64_t this, uint64_t a2)
{
  v2 = *(this + 40) + a2;
  *(this + 40) = v2;
  if (v2 < 0)
  {
    kd_buf_server::augment_structure_bytes();
  }

  if (v2 > *(this + 48))
  {
    *(this + 48) = v2;
  }

  return this;
}

uint64_t kd_tile::release(kd_tile *this)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!*(this + 3) || *(*this + 440) == this)
  {
    *&v27 = 0;
    *v25 = 0u;
    v26 = 0u;
    kdu_error::kdu_error(v25, "Kakadu Core Error:\n");
    (*(*v25 + 16))(v25, "Assert ");
    (*(*v25 + 16))(v25, "(tile_ref != NULL) && (this != codestream->active_tile)");
    (*(*v25 + 16))(v25, " FAILED");
    kdu_error::~kdu_error(v25);
  }

  if (*(*this + 8) && (*(this + 287) & 1) == 0 && (*(this + 184) & 1) != 0)
  {
    *(this + 4) = 0;
    v2 = *(this + 10);
    if (v2)
    {
      kd_pp_markers::~kd_pp_markers(v2);
      MEMORY[0x186602850]();
      *(this + 10) = 0;
    }

    v3 = *(this + 11);
    if (v3)
    {
      (*(*v3 + 8))(v3);
      *(this + 11) = 0;
    }

    v4 = *(this + 12);
    if (v4)
    {
      MEMORY[0x186602850](v4, 0x1020C40539952E0);
      *(this + 12) = 0;
    }

    kd_precinct_pointer_server::disable(this + 13);
    v5 = *(this + 47);
    if (v5 >= 1)
    {
      for (i = 0; i < v5; ++i)
      {
        v7 = *(this + 34) + 224 * i;
        v8 = *(v7 + 68);
        if ((v8 & 0x80000000) == 0)
        {
          v9 = 0;
          do
          {
            v10 = *(v7 + 176) + 704 * v9;
            if (*(v10 + 192) * *(v10 + 196) >= 1)
            {
              v11 = 0;
              v12 = 8 * (*(v10 + 192) * *(v10 + 196));
              do
              {
                v13 = *(v10 + 232);
                v14 = *(v13 + v11);
                if (v14)
                {
                  v15 = (*(v13 + v11) & 1) == 0;
                }

                else
                {
                  v15 = 0;
                }

                if (v15)
                {
                  *(v14 + 8) = 0;
                  kd_precinct::closing(v14);
                  kd_precinct_size_class::release(*(v14 + 72), v14);
                }

                *(v13 + v11) = 0;
                v11 += 8;
              }

              while (v12 != v11);
              v8 = *(v7 + 68);
            }
          }

          while (v9++ < v8);
          v5 = *(this + 47);
        }
      }
    }

    v17 = **this;
    v18 = *(this + 287);
    if (v17 && (*(this + 287) & 1) == 0)
    {
      (*(*v17 + 16))(**this, "\n>> New attributes for tile ");
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      *v25 = 0u;
      if (*(v17 + 8))
      {
        sprintf(v25, "%x");
      }

      else
      {
        sprintf(v25, "%d");
      }

      (*(*v17 + 16))(v17, v25);
      (*(*v17 + 16))(v17, ":\n");
      kdu_params::textualize_attributes(*(*this + 24), v17, *(this + 2), *(this + 2), 1);
      (*(*v17 + 32))(v17, 0);
      v18 = *(this + 287);
    }

    if ((v18 & 1) == 0 && (*(this + 290) & 1) == 0)
    {
      v19 = kdu_params::access_cluster(*(*this + 24), 1u);
      if (v19)
      {
        v20 = 2;
        do
        {
          v21 = kdu_params::access_unique(v19, *(this + 2), -1, 0);
          if (v21)
          {
            (*(*v21 + 16))(v21);
          }

          v19 = kdu_params::access_cluster(*(*this + 24), v20++);
        }

        while (v19);
      }
    }

    if (*(*(this + 3) + 16) != this)
    {
      *&v27 = 0;
      *v25 = 0u;
      v26 = 0u;
      kdu_error::kdu_error(v25, "Kakadu Core Error:\n");
      (*(*v25 + 16))(v25, "Assert ");
      (*(*v25 + 16))(v25, "tile_ref->tile == this");
      (*(*v25 + 16))(v25, " FAILED");
      kdu_error::~kdu_error(v25);
    }

    if (*(this + 290) == 1)
    {
      kd_tile::withdraw_from_unloadable_list(this);
      v22 = *(this + 3);
    }

    else
    {
      v22 = *(this + 3);
      if (*(this + 287) != 1)
      {
        *(v22 + 16) = -1;
        goto LABEL_52;
      }
    }

    *(v22 + 16) = 0;
LABEL_52:
    result = kd_buf_server::augment_structure_bytes(*(*this + 48), -*(this + 70));
    *(this + 70) = 0;
    *(this + 3) = 0;
    *(this + 2) = -1;
    v24 = *this;
    *(this + 9) = *(*this + 512);
    *(v24 + 512) = this;
    return result;
  }

  kd_tile::~kd_tile(this);
  return MEMORY[0x186602850]();
}

void kd_tile::initialize(kd_tile *this)
{
  if (*(this + 293) == 1)
  {
    v15 = 0;
    *v13 = 0u;
    v14 = 0u;
    kdu_error::kdu_error(v13, "Kakadu Core Error:\n");
    (*(*v13 + 16))(v13, "Assert ");
    (*(*v13 + 16))(v13, "!needs_reinit");
    (*(*v13 + 16))(v13, " FAILED");
    kdu_error::~kdu_error(v13);
  }

  v2 = *this;
  *(this + 47) = *(*this + 168);
  *(this + 300) = 0;
  if (!*(v2 + 8) || (*(this + 292) & 1) != 0 || (*(this + 4) = **(this + 3), (kd_tile::read_tile_part_header(this) & 1) != 0))
  {
    v3 = kdu_params::access_cluster(*(*this + 24), "COD");
    if (!v3)
    {
      v15 = 0;
      *v13 = 0u;
      v14 = 0u;
      kdu_error::kdu_error(v13, "Kakadu Core Error:\n");
      (*(*v13 + 16))(v13, "Assert ");
      (*(*v13 + 16))(v13, "cod != NULL");
      (*(*v13 + 16))(v13, " FAILED");
      kdu_error::~kdu_error(v13);
    }

    v12 = kdu_params::access_relation(v3, *(this + 2), -1, 0, 1);
    v4 = kdu_params::access_cluster(*(*this + 24), "QCD");
    if (!v4)
    {
      v15 = 0;
      *v13 = 0u;
      v14 = 0u;
      kdu_error::kdu_error(v13, "Kakadu Core Error:\n");
      (*(*v13 + 16))(v13, "Assert ");
      (*(*v13 + 16))(v13, "qcd != NULL");
      (*(*v13 + 16))(v13, " FAILED");
      kdu_error::~kdu_error(v13);
    }

    kdu_params::access_relation(v4, *(this + 2), -1, 0, 1);
    v5 = kdu_params::access_cluster(*(*this + 24), "RGN");
    if (!v5)
    {
      v15 = 0;
      *v13 = 0u;
      v14 = 0u;
      kdu_error::kdu_error(v13, "Kakadu Core Error:\n");
      (*(*v13 + 16))(v13, "Assert ");
      (*(*v13 + 16))(v13, "rgn != NULL");
      (*(*v13 + 16))(v13, " FAILED");
      kdu_error::~kdu_error(v13);
    }

    kdu_params::access_relation(v5, *(this + 2), -1, 0, 1);
    v6 = kdu_params::access_cluster(*(*this + 24), "ORG");
    if (!v6)
    {
      v15 = 0;
      *v13 = 0u;
      v14 = 0u;
      kdu_error::kdu_error(v13, "Kakadu Core Error:\n");
      (*(*v13 + 16))(v13, "Assert ");
      (*(*v13 + 16))(v13, "org != NULL");
      (*(*v13 + 16))(v13, " FAILED");
      kdu_error::~kdu_error(v13);
    }

    v7 = kdu_params::access_relation(v6, *(this + 2), -1, 0, 1);
    if (!kdu_params::get(v12, "Cuse_sop", 0, 0, this + 284, 1, 1, 1) || !kdu_params::get(v12, "Cuse_eph", 0, 0, this + 285, 1, 1, 1) || !kdu_params::get(v12, "Cycc", 0, 0, this + 286, 1, 1, 1) || !kdu_params::get(v12, "Calign_blk_last", 0, 0, this + 61, 1, 1, 1) || !kdu_params::get(v12, "Calign_blk_last", 0, 1, this + 62, 1, 1, 1) || (kdu_params::get(v12, "Clayers", 0, 0, this + 48, 1, 1, 1) & 1) == 0)
    {
      v15 = 0;
      *v13 = 0u;
      v14 = 0u;
      kdu_error::kdu_error(v13, "Kakadu Core Error:\n");
      (*(*v13 + 16))(v13, "Corrupt jp2 file: invalid COD parameters ");
      kdu_error::~kdu_error(v13);
    }

    v8 = *(this + 48);
    v9 = *this;
    if (v8 > *(*this + 256))
    {
      *(v9 + 256) = v8;
    }

    if (*(v9 + 16))
    {
      v13[0] = 0;
      if ((kdu_params::get(v7, "ORGtparts", 0, 0, v13, 1, 1, 1) & 1) == 0)
      {
        v13[0] = 0;
      }

      if ((kdu_params::get(v7, "ORGgen_plt", 0, 0, this + 294, 1, 1, 1) & 1) == 0)
      {
        *(this + 294) = 0;
      }

      v10 = v13[0];
      *(this + 295) = v13[0] & 1;
      *(this + 296) = (v10 & 4) != 0;
      *(this + 297) = (v10 & 2) != 0;
    }

    if (*(this + 32))
    {
      v15 = 0;
      *v13 = 0u;
      v14 = 0u;
      kdu_error::kdu_error(v13, "Kakadu Core Error:\n");
      (*(*v13 + 16))(v13, "Assert ");
      (*(*v13 + 16))(v13, "mct_head == NULL");
      (*(*v13 + 16))(v13, " FAILED");
      kdu_error::~kdu_error(v13);
    }

    if (*(*this + 164) == 1)
    {
      kd_mct_stage::create_stages(this + 32, this + 33, *(*this + 24), *(this + 2), *(this + 47), *(*this + 312), *(*this + 176), *(*this + 320));
    }

    v11 = *(this + 47);
    *(this + 49) = *(this + 48);
    is_mul_ok(v11, 0xE0uLL);
    operator new[]();
  }

  v15 = 0;
  *v13 = 0u;
  v14 = 0u;
  kdu_error::kdu_error(v13, "Kakadu Core Error:\n");
  (*(*v13 + 16))(v13, "read_failure in kd_tile::initialize ");
  kdu_error::~kdu_error(v13);
}

uint64_t kd_tile::read_tile_part_header(kd_tile *this, uint64_t a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v3 = *this;
  if (!*(*this + 8))
  {
    *&v69 = 0;
    *v67 = 0u;
    v68 = 0u;
    kdu_error::kdu_error(v67, "Kakadu Core Error:\n");
    (*(*v67 + 16))(v67, "Assert ");
    (*(*v67 + 16))(v67, "codestream->in != NULL");
    (*(*v67 + 16))(v67, " FAILED");
    kdu_error::~kdu_error(v67);
  }

  if (*(v3 + 418) == 1)
  {
    if (*(this + 76))
    {
      *&v69 = 0;
      *v67 = 0u;
      v68 = 0u;
      kdu_error::kdu_error(v67, "Kakadu Core Error:\n");
      (*(*v67 + 16))(v67, "Assert ");
      (*(*v67 + 16))(v67, "next_tpart == 0");
      (*(*v67 + 16))(v67, " FAILED");
      kdu_error::~kdu_error(v67);
    }

    if (*(this + 290) == 1)
    {
      kd_tile::withdraw_from_unloadable_list(this);
    }

    kd_codestream::unload_tiles_to_cache_threshold(*this);
    if (kd_compressed_input::set_tileheader_scope(*(*this + 8)))
    {
      v5 = *(*this + 24);
      if (kd_marker::read(*(*this + 32), 0, 0))
      {
        do
        {
          v6 = *(*this + 32);
          v7 = *(v6 + 16);
          if (v7 == 65377)
          {
            *&v69 = 0;
            *v67 = 0u;
            v68 = 0u;
            kdu_error::kdu_error(v67, "Kakadu Core Error:\n");
            (*(*v67 + 16))(v67, "You cannot use PPM or PPT marker segments (packed packet headers) with cached compressed data sources.");
            kdu_error::~kdu_error(v67);
          }

          kdu_params::translate_marker_segment(v5, v7, *(v6 + 20), *(v6 + 32), *(this + 2), 0);
        }

        while ((kd_marker::read(*(*this + 32), 0, 0) & 1) != 0);
      }

      if ((*(*(*this + 8) + 544) & 1) == 0)
      {
        *&v69 = 0;
        *v67 = 0u;
        v68 = 0u;
        kdu_error::kdu_error(v67, "Kakadu Core Error:\n");
        (*(*v67 + 16))(v67, "Found non-marker code while parsing tile header marker segments.  Chances are that a marker segment length field is incorrect!");
        kdu_error::~kdu_error(v67);
      }

      kdu_params::finalize_all(v5, *(this + 2), 1);
    }

    else
    {
      *(this + 287) = 1;
    }

    *(this + 300) = 0x100000001;
    ++*(*this + 460);
    *(this + 328) = 1;
    if (*(this + 291) == 1)
    {
      *&v69 = 0;
      *v67 = 0u;
      v68 = 0u;
      kdu_error::kdu_error(v67, "Kakadu Core Error:\n");
      (*(*v67 + 16))(v67, "Assert ");
      (*(*v67 + 16))(v67, "!closed");
      (*(*v67 + 16))(v67, " FAILED");
      kdu_error::~kdu_error(v67);
    }

    kd_tile::adjust_unloadability(this, v4);
    return 1;
  }

  if (*(this + 328))
  {
LABEL_20:
    if (*(v3 + 440) == this)
    {
      *&v69 = 0;
      *v67 = 0u;
      v68 = 0u;
      kdu_error::kdu_error(v67, "Kakadu Core Error:\n");
      (*(*v67 + 16))(v67, "Assert ");
      (*(*v67 + 16))(v67, "this != codestream->active_tile");
      (*(*v67 + 16))(v67, " FAILED");
      kdu_error::~kdu_error(v67);
    }

    return 0;
  }

  if (*(this + 75) >= 1 && *(this + 76) >= 255)
  {
    kd_tile::finished_reading(this, a2);
    v3 = *this;
    goto LABEL_20;
  }

  v9 = *(v3 + 440);
  while (2)
  {
    if (!v9)
    {
      goto LABEL_45;
    }

    *&v63 = 0;
    v66 = 0;
    if (!*(v9 + 96))
    {
      *&v69 = 0;
      *v67 = 0u;
      v68 = 0u;
      kdu_error::kdu_error(v67, "Kakadu Core Error:\n");
      (*(*v67 + 16))(v67, "Invalid code-stream!\n");
      (*(*v67 + 16))(v67, "\t'active->sequencer' is NULL");
      kdu_error::~kdu_error(v67);
    }

    do
    {
      v10 = kd_packet_sequencer::next_in_sequence(*(v9 + 96), &v63, &v66);
      if (!v10)
      {
        break;
      }

      v11 = *v10;
      if (!*v10)
      {
        v11 = kd_precinct_ref::instantiate_precinct(v10, v63, v66);
        goto LABEL_41;
      }

      if ((v11 & 1) == 0 && (*(v11 + 17) & 1) == 0)
      {
        if (v11 == 3)
        {
          v11 = 0;
        }

        else if (*(v11 + 20) == 1)
        {
          kd_precinct_size_class::withdraw_from_inactive_list(*(v11 + 72), v11);
          kd_precinct::activate(v11);
        }

LABEL_41:
        if (!kd_precinct::desequence_packet(v11, a2))
        {
          break;
        }
      }
    }

    while (v9 == *(*this + 440));
    if (v9 == *(*this + 440))
    {
      *(*this + 440) = 0;
      kd_tile::adjust_unloadability(v9, a2);
    }

LABEL_45:
    if (*(*(this + 3) + 16) != this)
    {
      *&v69 = 0;
      *v67 = 0u;
      v68 = 0u;
      kdu_error::kdu_error(v67, "Kakadu Core Error:\n");
      (*(*v67 + 16))(v67, "Assert ");
      (*(*v67 + 16))(v67, "tile_ref->tile == this");
      (*(*v67 + 16))(v67, " FAILED");
      kdu_error::~kdu_error(v67);
    }

    v12 = *this;
    v13 = *(*this + 72);
    if (!v13)
    {
      if (*(*(v12 + 32) + 16) != -112)
      {
        v15 = *(v12 + 8);
        if ((*(v15 + 544) & 1) == 0)
        {
          if (*(v12 + 448) <= 0)
          {
            *&v69 = 0;
            *v67 = 0u;
            v68 = 0u;
            kdu_error::kdu_error(v67, "Kakadu Core Error:\n");
            (*(*v67 + 16))(v67, "Assert ");
            (*(*v67 + 16))(v67, "codestream->next_sot_address > 0");
            (*(*v67 + 16))(v67, " FAILED");
            kdu_error::~kdu_error(v67);
          }

          if (*(v15 + 608) == 1)
          {
            kd_tile::read_tile_part_header();
          }

          (*(*v15 + 16))(v15, v15 + *(v12 + 448) - (*(v15 + 560) + *(v15 + 528)) + 14);
          kd_marker::read(*(*this + 32), 0, 0);
LABEL_65:
          v12 = *this;
        }
      }

LABEL_66:
      *(v12 + 448) = 0;
      goto LABEL_67;
    }

    v14 = *(this + 4);
    if (v14)
    {
      kd_compressed_input::seek(*(v12 + 8), *v14);
      *(this + 4) = *(*(this + 4) + 8);
      kd_marker::read(*(*this + 32), 0, 0);
      v12 = *this;
      goto LABEL_67;
    }

    if ((*(v13 + 24) & 1) != 0 || (v16 = *(this + 3), *v16) && !v16[1])
    {
      *(this + 75) = *(this + 76);
      kd_tile::finished_reading(this, a2);
      return 0;
    }

    if (*(*(v12 + 32) + 16) == -112 && *(v12 + 224) == 1 && *(v12 + 220) == 1)
    {
      goto LABEL_66;
    }

    v17 = *(v12 + 8);
    a2 = *(v12 + 448);
    if ((*(v17 + 544) & 1) == 0 && a2 >= 1)
    {
      kd_compressed_input::seek(v17, a2);
      kd_marker::read(*(*this + 32), 0, 0);
      goto LABEL_65;
    }

    if (a2 < 0)
    {
      return 0;
    }

LABEL_67:
    if (*(*(v12 + 8) + 544) != 1)
    {
      v18 = *(v12 + 32);
      if (*(v18 + 16) != -112)
      {
        *&v69 = 0;
        *v67 = 0u;
        v68 = 0u;
        kdu_error::kdu_error(v67, "Kakadu Core Error:\n");
        (*(*v67 + 16))(v67, "Invalid marker code found in code-stream!\n");
        (*(*v67 + 16))(v67, "\tExpected SOT marker and got ");
        print_marker_code(*(*(*this + 32) + 16), v67);
        (*(*v67 + 16))(v67, ".");
        kdu_error::~kdu_error(v67);
      }

      if (*(v18 + 20) != 8)
      {
        *&v69 = 0;
        *v67 = 0u;
        v68 = 0u;
        kdu_error::kdu_error(v67, "Kakadu Core Error:\n");
        (*(*v67 + 16))(v67, "Assert ");
        (*(*v67 + 16))(v67, "seg_length == 8");
        (*(*v67 + 16))(v67, " FAILED");
        kdu_error::~kdu_error(v67);
      }

      v19 = *(v18 + 32);
      v20 = __rev16(*v19);
      v21 = *(v19 + 1);
      v22 = *(v19 + 6);
      v23 = *(v19 + 7);
      v24 = *(v12 + 224);
      if (v20 >= *(v12 + 220) * v24)
      {
        *&v69 = 0;
        *v67 = 0u;
        v68 = 0u;
        kdu_error::kdu_error(v67, "Kakadu Core Error:\n");
        (*(*v67 + 16))(v67, "Corrupt SOT marker segment found in codestream: tile-number lies outside the range of available tiles derived from the SIZ marker segment.");
        kdu_error::~kdu_error(v67);
      }

      v25 = (v20 / v24);
      v26 = (v20 % v24);
      v27 = v26 - *(v12 + 232);
      v28 = v25 - *(v12 + 228);
      if (v27 < 0 || v28 < 0 || (v29 = *(v12 + 240), v27 >= v29) || v28 >= *(v12 + 236))
      {
        *&v69 = 0;
        *v67 = 0u;
        v68 = 0u;
        kdu_error::kdu_error(v67, "Kakadu Core Error:\n");
        (*(*v67 + 16))(v67, "Assert ");
        (*(*v67 + 16))(v67, "(rel_sot_idx.x >= 0) && (rel_sot_idx.y >= 0) && (rel_sot_idx.x < codestream->tile_indices.size.x) && (rel_sot_idx.y < codestream->tile_indices.size.y)");
        (*(*v67 + 16))(v67, " FAILED");
        kdu_error::~kdu_error(v67);
      }

      v30 = *(v12 + 8);
      if (*(v30 + 608) == 1)
      {
        kd_tile::read_tile_part_header();
      }

      v31 = bswap32(v21);
      v32 = v29 * v28;
      v33 = v31;
      v34 = *(v12 + 328) + 24 * v27 + 24 * v32;
      v62 = *(v30 + 560) - v30 + *(v30 + 528) - *(*(v12 + 32) + 20) - 18;
      if (!*(v12 + 448))
      {
        *(v12 + 448) = v62 + v31;
        v39 = *(v12 + 72);
        if (v39)
        {
          if ((*(v39 + 24) & 1) == 0 && (!*v34 || *(v34 + 8)))
          {
            kd_tpart_pointer_server::add_tpart(v39, v34, v62);
            if (!v33)
            {
              *(v34 + 8) = 0;
              *(*this + 448) = -1;
            }
          }
        }
      }

      v35 = *(v34 + 16);
      if (v35 == -1)
      {
LABEL_85:
        v36 = *this;
        v37 = *(*this + 40);
        if (v37)
        {
          kd_pp_markers::ignore_tpart(v37);
          v36 = *this;
        }

        v38 = *(v36 + 32);
        *(v38 + 16) = 0;
        *(v38 + 20) = 0;
        *(v38 + 40) = 0;
        goto LABEL_88;
      }

      if (v35)
      {
        if (*(v35 + 328) == 1)
        {
          goto LABEL_85;
        }

        if (*(v35 + 293) == 1)
        {
          if ((*(*this + 408) & 1) == 0)
          {
            *&v69 = 0;
            *v67 = 0u;
            v68 = 0u;
            kdu_error::kdu_error(v67, "Kakadu Core Error:\n");
            (*(*v67 + 16))(v67, "Assert ");
            (*(*v67 + 16))(v67, "codestream->allow_restart");
            (*(*v67 + 16))(v67, " FAILED");
            kdu_error::~kdu_error(v67);
          }

          kd_tile::reinitialize(*(v34 + 16));
          goto LABEL_88;
        }
      }

      if (v35 != this)
      {
        if (*(*this + 72))
        {
          if (v35)
          {
            if (!*(v35 + 32))
            {
              v40 = *(v34 + 8);
              *(v35 + 32) = v40;
              if (!v40)
              {
                *(v35 + 32) = *v34;
                v41 = *(v35 + 304);
                if (v41 >= 2)
                {
                  for (i = 1; i < v41; ++i)
                  {
                    v43 = *(*(v35 + 32) + 8);
                    *(v35 + 32) = v43;
                    if (!v43)
                    {
                      *&v69 = 0;
                      *v67 = 0u;
                      v68 = 0u;
                      kdu_error::kdu_error(v67, "Kakadu Core Error:\n");
                      (*(*v67 + 16))(v67, "Assert ");
                      (*(*v67 + 16))(v67, "active->tpart_ptrs != NULL");
                      (*(*v67 + 16))(v67, " FAILED");
                      kdu_error::~kdu_error(v67);
                    }
                  }
                }
              }
            }
          }

          goto LABEL_88;
        }

        if (!v33)
        {
          kd_tile::finished_reading(this, a2);
          return 0;
        }
      }

      if (v35)
      {
        if (*(v35 + 8) != v20)
        {
          *&v69 = 0;
          *v67 = 0u;
          v68 = 0u;
          kdu_error::kdu_error(v67, "Kakadu Core Error:\n");
          (*(*v67 + 16))(v67, "Assert ");
          (*(*v67 + 16))(v67, "active->t_num == sot_tnum");
          (*(*v67 + 16))(v67, " FAILED");
          kdu_error::~kdu_error(v67);
        }

        if (*(v35 + 304) != v22)
        {
          v65 = 0;
          v63 = 0u;
          v64 = 0u;
          kdu_error::kdu_error(&v63, "Kakadu Core Error:\n");
          (*(v63 + 16))(&v63, "Missing or out-of-sequence tile-parts for tile number ");
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          *v67 = 0u;
          if (BYTE8(v63))
          {
            sprintf(v67, "%x");
          }

          else
          {
            sprintf(v67, "%d");
          }

          (*(v63 + 16))(&v63, v67);
          (*(v63 + 16))(&v63, " in code-stream!");
          kdu_error::~kdu_error(&v63);
        }

        if (v23)
        {
          v44 = *(v35 + 300);
          if (v44)
          {
            if (v44 != v23)
            {
              v65 = 0;
              v63 = 0u;
              v64 = 0u;
              kdu_error::kdu_error(&v63, "Kakadu Core Error:\n");
              (*(v63 + 16))(&v63, "The number of tile-parts for tile number ");
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              *v67 = 0u;
              if (BYTE8(v63))
              {
                sprintf(v67, "%x");
              }

              else
              {
                sprintf(v67, "%d");
              }

              (*(v63 + 16))(&v63, v67);
              (*(v63 + 16))(&v63, " is identified by different non-zero values in different SOT markers for the tile!");
              kdu_error::~kdu_error(&v63);
            }
          }

          else
          {
            *(v35 + 300) = v23;
          }
        }

        if (*(v35 + 290) == 1)
        {
          kd_tile::withdraw_from_unloadable_list(v35);
        }

        kd_codestream::unload_tiles_to_cache_threshold(*this);
        v45 = *(*this + 24);
        v46 = kdu_params::access_cluster(v45, "COD");
        v47 = kdu_params::access_relation(v46, v20, -1, 0, 1);
        if (!v47)
        {
          *&v69 = 0;
          *v67 = 0u;
          v68 = 0u;
          kdu_error::kdu_error(v67, "Kakadu Core Error:\n");
          (*(*v67 + 16))(v67, "Assert ");
          (*(*v67 + 16))(v67, "cod != NULL");
          (*(*v67 + 16))(v67, " FAILED");
          kdu_error::~kdu_error(v67);
        }

        v48 = kdu_params::access_cluster(v45, "POC");
        v49 = kdu_params::access_relation(v48, v20, -1, 0, 1);
        if (!v49)
        {
          *&v69 = 0;
          *v67 = 0u;
          v68 = 0u;
          kdu_error::kdu_error(v67, "Kakadu Core Error:\n");
          (*(*v67 + 16))(v67, "Assert ");
          (*(*v67 + 16))(v67, "poc != NULL");
          (*(*v67 + 16))(v67, " FAILED");
          kdu_error::~kdu_error(v67);
        }

        if (*(v35 + 80))
        {
          *&v69 = 0;
          *v67 = 0u;
          v68 = 0u;
          kdu_error::kdu_error(v67, "Kakadu Core Error:\n");
          (*(*v67 + 16))(v67, "Assert ");
          (*(*v67 + 16))(v67, "active->ppt_markers == NULL");
          (*(*v67 + 16))(v67, " FAILED");
          kdu_error::~kdu_error(v67);
        }

        if (!kd_marker::read(*(*this + 32), 0, 0))
        {
LABEL_174:
          if ((*(*(*this + 8) + 544) & 1) == 0)
          {
            *&v69 = 0;
            *v67 = 0u;
            v68 = 0u;
            kdu_error::kdu_error(v67, "Kakadu Core Error:\n");
            (*(*v67 + 16))(v67, "Found non-marker code while looking for SOD marker to terminate a tile-part header.  Chances are that a marker segment length field is incorrect!");
            kdu_error::~kdu_error(v67);
          }

          return 0;
        }

        do
        {
          v50 = *(*this + 32);
          v51 = *(v50 + 16);
          switch(v51)
          {
            case 65368:
              kd_precinct_pointer_server::add_plt_marker(v35 + 104, v50, v47, v49);
              break;
            case 65377:
              if (!*(*this + 160))
              {
                *&v69 = 0;
                *v67 = 0u;
                v68 = 0u;
                kdu_warning::kdu_warning(v67, "Kakadu Core Warning:\n");
                (*(*v67 + 16))(v67, "Profile violation detected (code-stream is technically illegal).  PPT marker segments may not appear within a Profile-0 code-stream.  You should set Sprofile to 1 or 2.");
                *(*this + 160) = 2;
                kdu_warning::~kdu_warning(v67);
              }

              v52 = *(v35 + 80);
              if (!v52)
              {
                operator new();
              }

              kd_pp_markers::add_marker(v52, *(*this + 32));
            case 65427:
              goto LABEL_152;
            default:
              kdu_params::translate_marker_segment(v45, *(v50 + 16), *(v50 + 20), *(v50 + 32), v20, v22);
              break;
          }
        }

        while ((kd_marker::read(*(*this + 32), 0, 0) & 1) != 0);
        if (!v51)
        {
          goto LABEL_174;
        }

LABEL_152:
        kdu_params::finalize_all(v45, v20, 1);
        v53 = *(*this + 8);
        if (*(v53 + 608) == 1)
        {
          kd_tile::read_tile_part_header();
        }

        v54 = *(v53 + 560);
        v55 = *(v53 + 528);
        v56 = *(*this + 40);
        if (*(v35 + 80))
        {
          if (v56)
          {
            *&v69 = 0;
            *v67 = 0u;
            v68 = 0u;
            kdu_error::kdu_error(v67, "Kakadu Core Error:\n");
            (*(*v67 + 16))(v67, "Use of both PPM and PPT marker segments is illegal!");
            kdu_error::~kdu_error(v67);
          }

          v57 = *(v35 + 88);
          if (!v57)
          {
            operator new();
          }

          kd_pp_markers::transfer_tpart(*(v35 + 80), v57);
          v58 = *(v35 + 80);
          if (v58)
          {
            kd_pp_markers::~kd_pp_markers(v58);
            MEMORY[0x186602850]();
          }

          *(v35 + 80) = 0;
        }

        else if (v56)
        {
          v59 = *(v35 + 88);
          if (!v59)
          {
            operator new();
          }

          kd_pp_markers::transfer_tpart(v56, v59);
        }

        v60 = v54 - v53 + v55 - 14;
        if (v33)
        {
          if (v62 + v33 - v60 < 0)
          {
            *&v69 = 0;
            *v67 = 0u;
            v68 = 0u;
            kdu_error::kdu_error(v67, "Kakadu Core Error:\n");
            (*(*v67 + 16))(v67, "Assert ");
            (*(*v67 + 16))(v67, "tpart_body_length >= 0");
            (*(*v67 + 16))(v67, " FAILED");
            kdu_error::~kdu_error(v67);
          }

          kd_precinct_pointer_server::start_tpart_body((v35 + 104), v60, v62 + v33 - v60, v47, v49, *(v35 + 88) != 0, 0);
        }

        else
        {
          kd_precinct_pointer_server::start_tpart_body((v35 + 104), v60, 0, v47, v49, *(v35 + 88) != 0, 1);
        }

        ++*(v35 + 304);
        *(*this + 440) = v35;
        kd_tile::adjust_unloadability(v35, v61);
        ++*(*this + 460);
      }

      else
      {
        kd_codestream::create_tile(*this, v25 | (v26 << 32));
      }

LABEL_88:
      v9 = *(*this + 440);
      if (v9 == this)
      {
        return 1;
      }

      continue;
    }

    break;
  }

  if (*(v12 + 448))
  {
    return 0;
  }

  result = 0;
  *(v12 + 448) = -1;
  return result;
}

float kd_tile::find_multicomponent_energy_gain(kd_tile *this, int a2, int a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a3 && *(*this + 184))
  {
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    kdu_error::kdu_error(v38, "Kakadu Core Error:\n");
    (*(*v38 + 16))(v38, "Assert ");
    (*(*v38 + 16))(v38, "codestream->component_access_mode == KDU_WANT_OUTPUT_COMPONENTS");
    (*(*v38 + 16))(v38, " FAILED");
    kdu_error::~kdu_error(v38);
  }

  v4 = *(this + 32);
  if (!v4)
  {
    if (a2 > 2 || (*(this + 286) & 1) == 0 || *(this + 47) < 3)
    {
      v23 = (*(*this + 320) + 48 * a2);
      if (!a3 || (v24 = v23[4], v17 = 0.0, (v24 & 0x80000000) == 0) && *(*(this + 34) + 224 * v24 + 185) == 1)
      {
        v17 = 1.0 / (1 << *v23) * (1.0 / (1 << *v23));
      }

      goto LABEL_60;
    }

    memset(v38, 0, 24);
    v21 = *(this + 34);
    if (*(v21 + 224 * a2 + 76) == 1)
    {
      if (a2 == 1)
      {
        *v38 = vdupq_n_s64(0x3FB0000000000000uLL);
        *&v38[4] = 0x3FE2000000000000;
        goto LABEL_54;
      }

      if (a2)
      {
        *&v38[4] = 0x3FB0000000000000;
        _Q0 = xmmword_186205E40;
LABEL_53:
        *v38 = _Q0;
LABEL_54:
        v29 = 0;
        v30 = (*(*this + 320) + 16);
        v17 = 0.0;
        do
        {
          if (!a3 || (*v30 & 0x80000000) == 0 && *(v21 + 224 * *v30 + 185) == 1)
          {
            v31 = 1.0 / (1 << *(v30 - 4));
            v17 = v17 + *&v38[v29] * v31 * v31;
          }

          v29 += 2;
          v30 += 12;
        }

        while (v29 != 6);
        goto LABEL_60;
      }
    }

    else
    {
      if (a2 == 1)
      {
        *&v38[2] = xmmword_186205E20;
        goto LABEL_54;
      }

      if (a2)
      {
        _Q0 = xmmword_186205E30;
        goto LABEL_53;
      }
    }

    *&v38[4] = 0x3FF0000000000000;
    __asm { FMOV            V0.2D, #1.0 }

    goto LABEL_53;
  }

  v5 = 1.0;
  v6 = a2;
  v7 = a2;
  while (1)
  {
    v37 = -1;
    v38[0] = 0;
    v9 = (v4 + 32);
    v8 = *(v4 + 32);
    if (v8 <= 0)
    {
      break;
    }

LABEL_10:
    for (i = 0; i < v8; ++i)
    {
      v11 = *(v4 + 40) + 152 * i;
      if (!a3 || *(v11 + 36))
      {
        v12 = *(v11 + 8);
        if (v12 >= 1)
        {
          for (j = 0; j < v12; ++j)
          {
            if (!a3 || *(*(v11 + 24) + j) == 1)
            {
              v14 = *(*(v11 + 16) + 4 * j);
              if (v14 >= v6 && v14 <= v7)
              {
                v16 = *(v4 + 48);
                if (v16)
                {
                  v5 = *(*(v16 + 24) + 48 * v14 + 44);
                }

                kd_mct_block::analyze_sensitivity(v11, j, v5, v38, &v37, a3);
                v12 = *(v11 + 8);
              }
            }
          }

          v8 = *v9;
        }
      }
    }

    v7 = v37;
    v6 = v38[0];
    v4 = *(v4 + 56);
    if (!v4)
    {
      v17 = 0.0;
      if (v38[0] <= v37)
      {
        v18 = (*(*(this + 33) + 24) + 48 * v38[0] + 44);
        v19 = v37 - v38[0] + 1;
        do
        {
          if ((a3 ^ 1 | *(v18 - 4)))
          {
            v20 = (*v18 / (1 << *(v18 - 11)));
            v17 = v17 + v20 * v20;
          }

          v18 += 12;
          --v19;
        }

        while (v19);
      }

      goto LABEL_60;
    }
  }

  while (1)
  {
    v4 = *(v4 + 56);
    if (!v4)
    {
      break;
    }

    v37 = -1;
    v38[0] = 0;
    v8 = *(v4 + 32);
    if (v8 >= 1)
    {
      v6 = 0;
      v9 = (v4 + 32);
      v7 = -1;
      goto LABEL_10;
    }
  }

  v17 = 0.0;
LABEL_60:
  v32 = (1 << *(*(*this + 312) + 104 * a2 + 16));
  v33 = v17 * (v32 * v32);
  if (v33 < 0.0001)
  {
    return 0.0001;
  }

  return v33;
}

void kd_resolution::build_decomposition_structure(kd_resolution *this, kdu_params *a2, kdu_kernels *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  *v26 = 3;
  memset(v27, 0, 98);
  memset(&v26[2], 0, 98);
  *(this + 222) = 1;
  if (*(this + 24))
  {
    if (a2)
    {
      kdu_params::get(a2, "Cdecomp", *(this + 25) - 1, 0, v26, 1, 1, 1);
      v4 = *v26;
    }

    else
    {
      v4 = 3;
    }

    v5 = cod_params::transpose_decomp(v4);
    *(this + 222) = cod_params::expand_decomp_bands(*v26, v27, v6) - 1;
    cod_params::expand_decomp_bands(v5, &v26[2], v7);
  }

  else
  {
    v27[0] = 0;
  }

  if (*(this + 30))
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    kdu_error::kdu_error(&v23, "Kakadu Core Error:\n");
    (*(v23 + 16))(&v23, "Assert ");
    (*(v23 + 16))(&v23, "subbands == NULL");
    (*(v23 + 16))(&v23, " FAILED");
    kdu_error::~kdu_error(&v23);
  }

  if (*(this + 222) <= 3uLL)
  {
    v8 = this + 256;
    v9 = *(this + 222);
    *(this + 30) = v8;
    if (v9)
    {
      v10 = 0;
      v11 = *(this + 24);
      v12 = this + 306;
      do
      {
        *(v12 - 50) = 0;
        *(v12 - 42) = this;
        *v12 = 1;
        if (v11)
        {
          v13 = v27[v10 + 1];
        }

        else
        {
          v13 = 0;
        }

        v12[5] = v10;
        *(v12 + 1) = v13;
        v12 += 144;
        ++v10;
      }

      while (v9 != v10);
      v14 = 0;
      do
      {
        if (*(this + 24))
        {
          v15 = v26[v14 + 3];
        }

        else
        {
          v15 = 0;
        }

        v16 = 0;
        v17 = __rev16(v15);
        if ((v9 & 0xFE) != 0)
        {
          v18 = v9;
        }

        else
        {
          v18 = 1;
        }

        for (i = 52; *&v8[i] != v17; i += 144)
        {
          if (v18 == ++v16)
          {
            v25 = 0;
            v23 = 0u;
            v24 = 0u;
            kdu_error::kdu_error(&v23, "Kakadu Core Error:\n");
            (*(v23 + 16))(&v23, "Assert ");
            (*(v23 + 16))(&v23, "k < num_subbands");
            (*(v23 + 16))(&v23, " FAILED");
            kdu_error::~kdu_error(&v23);
          }
        }

        v8[144 * v14++ + 56] = v16;
      }

      while (v14 < v9);
    }

    if (*(this + 28))
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      kdu_error::kdu_error(&v23, "Kakadu Core Error:\n");
      (*(v23 + 16))(&v23, "Assert ");
      (*(v23 + 16))(&v23, "intermediate_nodes == NULL");
      (*(v23 + 16))(&v23, " FAILED");
      kdu_error::~kdu_error(&v23);
    }

    v20 = 0;
    v21 = 0;
    *(this + 223) = 0;
    v22 = *v26;
    while (1)
    {
      v20 += 2;
      if (((v22 >> v20) & 3) != 0)
      {
        *(this + 223) = ++v21;
      }

      if (v20 >= 0x1D)
      {
        operator new[]();
      }
    }
  }

  operator new[]();
}